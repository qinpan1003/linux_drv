#include	"include.h"

//--------------------------------------------------------------------------------------------------*/
/*/ 用户级发送消息			这两个函数已经使用宏定义替换
void send(int dec,MSG* p_msg)
{
	sendrecv(SEND,dec,p_msg);
}
//--------------------------------------------------------------------------------------------------*/
/*/ 用户级接收消息
void recv(int src,MSG* p_msg)
{
	sendrecv(RECV,src,p_msg);
}
//--------------------------------------------------------------------------------------------------*/
// 死锁检测
int deadlock(int src,int dec)	
{
	TCB* p_src = src + task_table;
	TCB* p_dec = dec + task_table;
	TCB* p_tmp = p_src;
	disable_int();
	assert(if_off);
	while(p_tmp->t_stat == RECVING)	// 从消息源开始检测，如果发现消息转回了接收源，则判断为死锁
	{
		if(p_tmp->recvfrom == ANY || p_tmp->recvfrom == INTERRUPT)	// 本函数把对ANY和INTERRUPT的等待不识为死锁。实际使用要看情况，如果不可能有其他进程或中断向接收者发信息，也会产生死锁
			break;
		p_tmp = p_tmp->recvfrom + task_table;
		if(p_tmp == p_dec)		// 此时发现死锁
		{
			//--------------------------------------------------------*/
			// 打印死锁信息
			p_tmp = p_src;
			printk("deadlocd: ");
			while(1)
				{
					printk("%d<-",p_tmp->pid);
					if(p_tmp == p_dec)
					{
						printk("\n");
						break;
					}
					p_tmp = p_tmp->recvfrom + task_table;
				}
			//--------------------------------------------------------*/
			enable_int();
			printk("src %d ,dec %d ",src,dec);
			return	0;	// 死锁成立
		}
	}
	p_tmp = p_dec;
	while(p_tmp->t_stat == SENDING || p_tmp->t_stat == BOTHING)	// 再从接收源开始检测，如果发现消息转回了发送源，则判断为死锁
	{
		p_tmp = p_tmp->sendto + task_table;
		if(p_tmp == p_src)		// 此时发现死锁
		{
			//--------------------------------------------------------*/
			// 打印死锁信息
			p_tmp = p_dec;
			printk("deadlocd: ");
			while(1)
				{
					printk("%d->",p_tmp->pid);
					if(p_tmp == p_src)
					{
						printk("\n");
						break;
					}
					p_tmp = p_tmp->sendto + task_table;
				}
			//--------------------------------------------------------*/
			enable_int();
			printk("src %d ,dec %d ",src,dec);
			return	0;	// 死锁成立
		}
	}
	enable_int();
	return	-1;			// 死锁不成立
}
//--------------------------------------------------------------------------------------------------*/
//--------------------------------------------------------------------------------------------------*/
// 等待中断
void interrupt_wait(void)
{
	MSG msg;
	assert(if_on);		// 确保中断允许
	sendrecv(RECV,INTERRUPT,&msg);
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：系统级发送消息
输入参数：接收者pid	dec
	发送者pid	src
	消息地址	p_msg
输出参数：0 发送成功，-1 发送失败（可能导致死锁，所以拒绝发送）
*/
int sys_send(int dec,int src,MSG* p_msg,FUN sendrev)
{
	if(dec == INTERRUPT) return	0;	// 不能给中断发送消息。发送操作被忽略掉，但是也被认为“发送成功”
	TCB* p_dec = task_table + dec;
	TCB* p_src = task_table + src;
	disable_int();
	assert(if_off);
	if(p_dec->t_stat == RECVING && (p_dec->recvfrom == src || p_dec->recvfrom == ANY))
	{
		// 目的进程正在等待本进程、或任意进程发送消息
		assert(if_off);
		memcopy(va2pa(p_dec->pdb,p_dec->p_msg),va2pa(p_src->pdb,p_msg),sizeof(MSG));
		p_dec->t_stat = READY;
		
		if(sendrev == BOTH)				// 发了还要接收
		{
			p_src->t_stat	= RECVING;
			p_src->recvfrom	= dec;
			p_src->p_msg 	= p_msg;		// 漏写这一句,折腾了我半天,快崩溃了
			assert(deadlock(dec,src) == -1);	// 死锁检测
			sched();
		}
	}
	else
	{
		// 目的进程目前没有等待本进程，也没有等待任何进程发送消息
		assert(if_off);
		if(deadlock(src,dec) == 0)	// 如果继续操作，就会构成死锁
		{
			enable_int();
			printk("deadlock 0");
			return	-1;
		}
		if(sendrev == BOTH)
			p_src->t_stat = BOTHING;
		else if(sendrev == SEND)
			p_src->t_stat = SENDING;
		else
			assert(0);
		assert(deadlock(src,dec) == -1);	// 死锁检测
		p_src->sendto = dec;
		p_src->p_msg = p_msg;
		if(p_dec->p_mymsg)
			{
				assert(if_off);
				TCB* p_tmp = p_dec->p_mymsg;
				while(p_tmp->p_nextsending)
					p_tmp = p_tmp->p_nextsending;
				p_tmp->p_nextsending = p_src;
			}
		else
			p_dec->p_mymsg = p_src;
		sched();
	}
	enable_int();
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：系统级接收消息
输入参数：接收者pid	dec
	发送者pid	src
	消息地址	p_msg
输出参数：0 接收成功，-1 接收失败（可能导致死锁，所以拒绝接收）
*/
int sys_recv(int dec,int src,MSG* p_msg)
{
	TCB* p_dec = task_table + dec;
	disable_int();
	assert(if_off);
	if(p_dec->has_int_msg && ( src == ANY || src == INTERRUPT ))
	{	// 待接收源是ANY或INTERRUPT时，中断都可以打进来
		// 优先处理中断消息
		p_msg->sender	= INTERRUPT;
		p_msg->recver	= dec;
		p_msg->type	= HARD_INT;
		p_dec->has_int_msg	= 0;
		enable_int();		// 此处不用检测死锁，因为不可能发生
		return	0;
	}
	assert(if_off);
	TCB* p_src;
	if(src == ANY)
	{
		// 接收任意进程发送的消息
		if(p_dec->p_mymsg)
		{
			assert(if_off);
			assert((p_dec->p_mymsg - task_table < NR_TOTAL) && (p_dec->p_mymsg - task_table >= 0));
			p_src = p_dec->p_mymsg;
			memcopy(va2pa(p_dec->pdb,p_msg),va2pa(p_src->pdb,p_src->p_msg),sizeof(MSG));
			p_dec->p_mymsg = p_src->p_nextsending;
			p_src->p_nextsending = 0;		// 漏写这一句，让我折腾了两天
			
			if(p_src->t_stat == BOTHING)
			{
				p_src->t_stat	= RECVING;
				p_src->recvfrom	= dec;
				assert(deadlock(dec,p_src - task_table) == -1);	// 死锁检测
			}
			else if(p_src->t_stat == SENDING)
			{
				p_src->t_stat	= READY;
			}
			else
				assert(0);
		}
		else
		{
			assert(if_off);
			if(deadlock(src,dec) == 0)		// 如果继续操作，就会构成死锁
			{
				enable_int();
				printk("deadlock 1");
				return	-1;
			}
			p_dec->t_stat = RECVING;
			p_dec->p_msg = p_msg;
			p_dec->recvfrom = src;
			sched();
			assert(deadlock(src,dec) == -1);	// 死锁检测
		}
	}
	else
	{	// 接收指定进程发送的消息
		assert(if_off);
		p_src = task_table + src;
		if((p_src->t_stat == SENDING || p_src->t_stat == BOTHING) && p_src->sendto == dec)
		{
			// 发送源在接收者的消息队列里
			assert(if_off);
			memcopy(va2pa(p_dec->pdb,p_msg),va2pa(p_src->pdb,p_src->p_msg),sizeof(MSG));
			
			if(p_src->t_stat == BOTHING)
			{
				p_src->t_stat	= RECVING;
				p_src->recvfrom	= dec;
				assert(deadlock(dec,src) == -1);	// 死锁检测
			}
			else if(p_src->t_stat == SENDING)
				p_src->t_stat	= READY;
			else
				assert(0);
			
			if(p_dec->p_mymsg == p_src)
			{
				// 发送源在消息队列头部
				p_dec->p_mymsg = p_src->p_nextsending;
			}
			else
			{
				// 发送源不在消息队列头部
				assert(if_off);
				TCB* p_pre = p_dec->p_mymsg;
				p_dec = p_pre->p_nextsending;
				while(p_dec != p_src)
					{
						p_pre = p_dec;
						p_dec = p_dec->p_nextsending;
					}
				p_pre->p_nextsending = p_dec->p_nextsending;
			}
			p_src->p_nextsending = 0;
			assert(p_src->p_nextsending == 0);
		}
		else
		{
			// 发送源没有在消息队列里
			assert(if_off);
			if(deadlock(src,dec) == 0)	// 如果继续操作，就会构成死锁
			{
				enable_int();
				printk("deadlock 2");
				return	-1;
			}
			p_dec->t_stat = RECVING;
			p_dec->p_msg = p_msg;
			p_dec->recvfrom = src;
			sched();
		}
	}
	enable_int();
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
// 中断级发送消息
void int_send(TCB* pt)
{
	disable_int();
	assert(if_off);
	if(pt->t_stat == RECVING && ( pt->recvfrom == ANY || pt->recvfrom == INTERRUPT ))
	{
		// 进程pt正在等待消息
		pt->p_msg->sender	= INTERRUPT;
		pt->p_msg->recver	= pt - task_table;
		pt->p_msg->type	= HARD_INT;
		pt->t_stat = READY;
	}
	else
	{
		// 进程pt当前没有等待消息
		pt->has_int_msg = 1;
	}
	enable_int();
}


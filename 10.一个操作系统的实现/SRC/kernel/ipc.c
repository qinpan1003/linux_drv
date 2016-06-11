#include	"include.h"

//--------------------------------------------------------------------------------------------------*/
/*/ �û���������Ϣ			�����������Ѿ�ʹ�ú궨���滻
void send(int dec,MSG* p_msg)
{
	sendrecv(SEND,dec,p_msg);
}
//--------------------------------------------------------------------------------------------------*/
/*/ �û���������Ϣ
void recv(int src,MSG* p_msg)
{
	sendrecv(RECV,src,p_msg);
}
//--------------------------------------------------------------------------------------------------*/
// �������
int deadlock(int src,int dec)	
{
	TCB* p_src = src + task_table;
	TCB* p_dec = dec + task_table;
	TCB* p_tmp = p_src;
	disable_int();
	assert(if_off);
	while(p_tmp->t_stat == RECVING)	// ����ϢԴ��ʼ��⣬���������Ϣת���˽���Դ�����ж�Ϊ����
	{
		if(p_tmp->recvfrom == ANY || p_tmp->recvfrom == INTERRUPT)	// �������Ѷ�ANY��INTERRUPT�ĵȴ���ʶΪ������ʵ��ʹ��Ҫ�������������������������̻��ж�������߷���Ϣ��Ҳ���������
			break;
		p_tmp = p_tmp->recvfrom + task_table;
		if(p_tmp == p_dec)		// ��ʱ��������
		{
			//--------------------------------------------------------*/
			// ��ӡ������Ϣ
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
			return	0;	// ��������
		}
	}
	p_tmp = p_dec;
	while(p_tmp->t_stat == SENDING || p_tmp->t_stat == BOTHING)	// �ٴӽ���Դ��ʼ��⣬���������Ϣת���˷���Դ�����ж�Ϊ����
	{
		p_tmp = p_tmp->sendto + task_table;
		if(p_tmp == p_src)		// ��ʱ��������
		{
			//--------------------------------------------------------*/
			// ��ӡ������Ϣ
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
			return	0;	// ��������
		}
	}
	enable_int();
	return	-1;			// ����������
}
//--------------------------------------------------------------------------------------------------*/
//--------------------------------------------------------------------------------------------------*/
// �ȴ��ж�
void interrupt_wait(void)
{
	MSG msg;
	assert(if_on);		// ȷ���ж�����
	sendrecv(RECV,INTERRUPT,&msg);
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�ϵͳ��������Ϣ
���������������pid	dec
	������pid	src
	��Ϣ��ַ	p_msg
���������0 ���ͳɹ���-1 ����ʧ�ܣ����ܵ������������Ծܾ����ͣ�
*/
int sys_send(int dec,int src,MSG* p_msg,FUN sendrev)
{
	if(dec == INTERRUPT) return	0;	// ���ܸ��жϷ�����Ϣ�����Ͳ��������Ե�������Ҳ����Ϊ�����ͳɹ���
	TCB* p_dec = task_table + dec;
	TCB* p_src = task_table + src;
	disable_int();
	assert(if_off);
	if(p_dec->t_stat == RECVING && (p_dec->recvfrom == src || p_dec->recvfrom == ANY))
	{
		// Ŀ�Ľ������ڵȴ������̡���������̷�����Ϣ
		assert(if_off);
		memcopy(va2pa(p_dec->pdb,p_dec->p_msg),va2pa(p_src->pdb,p_msg),sizeof(MSG));
		p_dec->t_stat = READY;
		
		if(sendrev == BOTH)				// ���˻�Ҫ����
		{
			p_src->t_stat	= RECVING;
			p_src->recvfrom	= dec;
			p_src->p_msg 	= p_msg;		// ©д��һ��,�������Ұ���,�������
			assert(deadlock(dec,src) == -1);	// �������
			sched();
		}
	}
	else
	{
		// Ŀ�Ľ���Ŀǰû�еȴ������̣�Ҳû�еȴ��κν��̷�����Ϣ
		assert(if_off);
		if(deadlock(src,dec) == 0)	// ��������������ͻṹ������
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
		assert(deadlock(src,dec) == -1);	// �������
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
�������ܣ�ϵͳ��������Ϣ
���������������pid	dec
	������pid	src
	��Ϣ��ַ	p_msg
���������0 ���ճɹ���-1 ����ʧ�ܣ����ܵ������������Ծܾ����գ�
*/
int sys_recv(int dec,int src,MSG* p_msg)
{
	TCB* p_dec = task_table + dec;
	disable_int();
	assert(if_off);
	if(p_dec->has_int_msg && ( src == ANY || src == INTERRUPT ))
	{	// ������Դ��ANY��INTERRUPTʱ���ж϶����Դ����
		// ���ȴ����ж���Ϣ
		p_msg->sender	= INTERRUPT;
		p_msg->recver	= dec;
		p_msg->type	= HARD_INT;
		p_dec->has_int_msg	= 0;
		enable_int();		// �˴����ü����������Ϊ�����ܷ���
		return	0;
	}
	assert(if_off);
	TCB* p_src;
	if(src == ANY)
	{
		// ����������̷��͵���Ϣ
		if(p_dec->p_mymsg)
		{
			assert(if_off);
			assert((p_dec->p_mymsg - task_table < NR_TOTAL) && (p_dec->p_mymsg - task_table >= 0));
			p_src = p_dec->p_mymsg;
			memcopy(va2pa(p_dec->pdb,p_msg),va2pa(p_src->pdb,p_src->p_msg),sizeof(MSG));
			p_dec->p_mymsg = p_src->p_nextsending;
			p_src->p_nextsending = 0;		// ©д��һ�䣬��������������
			
			if(p_src->t_stat == BOTHING)
			{
				p_src->t_stat	= RECVING;
				p_src->recvfrom	= dec;
				assert(deadlock(dec,p_src - task_table) == -1);	// �������
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
			if(deadlock(src,dec) == 0)		// ��������������ͻṹ������
			{
				enable_int();
				printk("deadlock 1");
				return	-1;
			}
			p_dec->t_stat = RECVING;
			p_dec->p_msg = p_msg;
			p_dec->recvfrom = src;
			sched();
			assert(deadlock(src,dec) == -1);	// �������
		}
	}
	else
	{	// ����ָ�����̷��͵���Ϣ
		assert(if_off);
		p_src = task_table + src;
		if((p_src->t_stat == SENDING || p_src->t_stat == BOTHING) && p_src->sendto == dec)
		{
			// ����Դ�ڽ����ߵ���Ϣ������
			assert(if_off);
			memcopy(va2pa(p_dec->pdb,p_msg),va2pa(p_src->pdb,p_src->p_msg),sizeof(MSG));
			
			if(p_src->t_stat == BOTHING)
			{
				p_src->t_stat	= RECVING;
				p_src->recvfrom	= dec;
				assert(deadlock(dec,src) == -1);	// �������
			}
			else if(p_src->t_stat == SENDING)
				p_src->t_stat	= READY;
			else
				assert(0);
			
			if(p_dec->p_mymsg == p_src)
			{
				// ����Դ����Ϣ����ͷ��
				p_dec->p_mymsg = p_src->p_nextsending;
			}
			else
			{
				// ����Դ������Ϣ����ͷ��
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
			// ����Դû������Ϣ������
			assert(if_off);
			if(deadlock(src,dec) == 0)	// ��������������ͻṹ������
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
// �жϼ�������Ϣ
void int_send(TCB* pt)
{
	disable_int();
	assert(if_off);
	if(pt->t_stat == RECVING && ( pt->recvfrom == ANY || pt->recvfrom == INTERRUPT ))
	{
		// ����pt���ڵȴ���Ϣ
		pt->p_msg->sender	= INTERRUPT;
		pt->p_msg->recver	= pt - task_table;
		pt->p_msg->type	= HARD_INT;
		pt->t_stat = READY;
	}
	else
	{
		// ����pt��ǰû�еȴ���Ϣ
		pt->has_int_msg = 1;
	}
	enable_int();
}


#include	"def.h"
#include	"tty.h"
#include	"ipc.h"
#include	"task.h"
#ifndef	_PROTO_H_
#define	_PROTO_H_
int kmain (void);
//--------------------------------------------------------------------------------------------------*/
// 异常门初始化程序
void init_idt_exception(void);
// 硬中断初始化程序
void init_idt_hwint(void);
// 软中断初始化程序
void init_idt_swint(void);
// 定时器初始化程序
void init_timer(void);
//--------------------------------------------------------------------------------------------------*/
// 中断默认入口
void IntHandler		(void);
//--------------------------------------------------------------------------------------------------*/
// 异常入口
void divide_error		(void);
void single_step_exception	(void);
void nmi			(void);
void breakpoint_exception	(void);
void overflow		(void);
void bounds_check		(void);
void inval_opcode		(void);
void copr_not_available	(void);
void double_fault		(void);
void copr_seg_overrun	(void);
void inval_tss		(void);
void segment_not_present	(void);
void stack_exception	(void);
void general_protection	(void);
void page_fault		(void);
void copr_error		(void);
void ac_error		(void);
void mc_error		(void);
void xf_error		(void);
//--------------------------------------------------------------------------------------------------*/
// 硬中断入口
void _hwint00 (void);
void _hwint01 (void);
void _hwint02 (void);
void _hwint03 (void);
void _hwint04 (void);
void _hwint05 (void);
void _hwint06 (void);
void _hwint07 (void);
void _hwint08 (void);
void _hwint09 (void);
void _hwint10 (void);
void _hwint11 (void);
void _hwint12 (void);
void _hwint13 (void);
void _hwint14 (void);
void _hwint15 (void);
//--------------------------------------------------------------------------------------------------*/
// 软中断入口
void _sys_call(void);
//--------------------------------------------------------------------------------------------------*/
// 任务、进程初始化
void Init_Task(void);
void Init_Proc(void);
//--------------------------------------------------------------------------------------------------*/
// 任务、进程切换函数
void sched(void);
//--------------------------------------------------------------------------------------------------*/
// 系统调用1	宏内核
U32 sendrecv(FUN sendrev,int src_dec,MSG* p_msg);
U32 do_write(char * buf);
U32 waiting(int tick);
void set_pdb(U32* pdb);
//--------------------------------------------------------------------------------------------------*/
// 系统调用2	微内核
// 以下系统调用使用IPC机制实现
// 函数声明已转移至task_sys.h
//--------------------------------------------------------------------------------------------------*/
// 键盘
// 键盘初始化程序
void init_keyboard(void);
// 设置键盘状态灯
void set_led(void);
// 键盘处理函数
void keyboard_handler(void);
// 从扫描码缓冲区读取一个数据
U8 get_byte_from_kbuf(void);
// TTY按键取码分析函数
void keyboard_read(TTY * p_tty);
// 按键处理函数
void in_process(TTY * p_tty);
//--------------------------------------------------------------------------------------------------*/
// vga
void init_vga(void);
void re_start_addr(void);
void re_cur(void);
//--------------------------------------------------------------------------------------------------*/
// tty
void init_tty(void);
void select_console(int tty_no);
void tty_dev_read(TTY * p_tty);
void tty_dev_write(TTY * p_tty);
int tty_do_read(TTY_MSG* p_tty_msg);
void tty_do_write(TTY_MSG* p_tty_msg);
void console_scroll(int line);
void auto_scroll(void);
//--------------------------------------------------------------------------------------------------*/
// ipc
#define	send(dec,p_msg)	sendrecv(SEND,(dec),(p_msg))
#define	recv(src,p_msg)	sendrecv(RECV,(src),(p_msg))
void interrupt_wait(void);
void int_send(TCB* pt);		// 中断级发送消息


//--------------------------------------------------------------------------------------------------*/
// 分页机制
U32	get_cr2(void);




#endif	// _PROTO_H_



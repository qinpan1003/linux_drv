#include	"def.h"
#include	"tty.h"
#include	"ipc.h"
#include	"task.h"
#ifndef	_PROTO_H_
#define	_PROTO_H_
int kmain (void);
//--------------------------------------------------------------------------------------------------*/
// �쳣�ų�ʼ������
void init_idt_exception(void);
// Ӳ�жϳ�ʼ������
void init_idt_hwint(void);
// ���жϳ�ʼ������
void init_idt_swint(void);
// ��ʱ����ʼ������
void init_timer(void);
//--------------------------------------------------------------------------------------------------*/
// �ж�Ĭ�����
void IntHandler		(void);
//--------------------------------------------------------------------------------------------------*/
// �쳣���
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
// Ӳ�ж����
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
// ���ж����
void _sys_call(void);
//--------------------------------------------------------------------------------------------------*/
// ���񡢽��̳�ʼ��
void Init_Task(void);
void Init_Proc(void);
//--------------------------------------------------------------------------------------------------*/
// ���񡢽����л�����
void sched(void);
//--------------------------------------------------------------------------------------------------*/
// ϵͳ����1	���ں�
U32 sendrecv(FUN sendrev,int src_dec,MSG* p_msg);
U32 do_write(char * buf);
U32 waiting(int tick);
void set_pdb(U32* pdb);
//--------------------------------------------------------------------------------------------------*/
// ϵͳ����2	΢�ں�
// ����ϵͳ����ʹ��IPC����ʵ��
// ����������ת����task_sys.h
//--------------------------------------------------------------------------------------------------*/
// ����
// ���̳�ʼ������
void init_keyboard(void);
// ���ü���״̬��
void set_led(void);
// ���̴�����
void keyboard_handler(void);
// ��ɨ���뻺������ȡһ������
U8 get_byte_from_kbuf(void);
// TTY����ȡ���������
void keyboard_read(TTY * p_tty);
// ����������
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
void int_send(TCB* pt);		// �жϼ�������Ϣ


//--------------------------------------------------------------------------------------------------*/
// ��ҳ����
U32	get_cr2(void);




#endif	// _PROTO_H_



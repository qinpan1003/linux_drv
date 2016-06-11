#include	"include.h"

//--------------------------------------------------------------------------------------------------*/
// 初始化vga
void init_vga(void)
{
	re_start_addr();
	re_cur();
}
//--------------------------------------------------------------------------------------------------*/
// 重设显示起始地址
void re_start_addr(void)
{
	U32 start_addr;
	disable_int();
	start_addr = tty_current->p_console->vga_base + tty_current->p_console->vga_offset;
	out_byte(CRTC_ADD_REG,Start_Addr_L_Reg);
	out_byte(CRTC_DAT_REG,(start_addr>>1) & 0xff);
	out_byte(CRTC_ADD_REG,Start_Addr_H_Reg);
	out_byte(CRTC_DAT_REG,( start_addr >> 9 ) & 0xff);
	enable_int();
}
//--------------------------------------------------------------------------------------------------*/
// 刷新光标位置
void re_cur(void)
{
	U32 cursor;
	disable_int();
	cursor = tty_current->p_console->cursor + tty_current->p_console->vga_base + tty_current->p_console->vga_offset;
	out_byte(CRTC_ADD_REG,Cur_Loc_L_Reg);
	out_byte(CRTC_DAT_REG,(cursor >> 1)&0xff);
	out_byte(CRTC_ADD_REG,Cur_Loc_H_Reg);
	out_byte(CRTC_DAT_REG,(cursor >>9 )&0xff);
	enable_int();
}
//--------------------------------------------------------------------------------------------------*/
// 滚屏
void console_scroll(int line)
{
	int offset;
	
	disable_int();
	offset = tty_current->p_console->vga_offset + 160 * line;
	enable_int();
	
	if(offset < 0)
		offset = 0;
	if(offset > VGA_SIZE_PER_CON - 160 * 25)
		offset = VGA_SIZE_PER_CON - 160 * 25;
	
	disable_int();
	tty_current->p_console->cursor -= offset - tty_current->p_console->vga_offset;
	tty_current->p_console->vga_offset = offset;
	enable_int();
	
	re_start_addr();
}
//--------------------------------------------------------------------------------------------------*/
// 自动滚屏
void auto_scroll(void)
{
	disable_int();
	while(tty_current->p_console->cursor >= 160 * 25 && tty_current->p_console->vga_offset < VGA_SIZE_PER_CON - 160 * 25)
		console_scroll(1);	// 这个函数只能在tty_current中使用
	while(tty_current->p_console->cursor < 0 && tty_current->p_console->vga_offset > 0)
		console_scroll(-1);	// 这个函数只能在tty_current中使用
	enable_int();
}



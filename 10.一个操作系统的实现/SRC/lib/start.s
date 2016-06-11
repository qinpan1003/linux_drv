extern	app_start
extern	app_exit
extern	main
extern	printf
extern	exit
global	_start
_start	:
	call	app_start	; 程序启动初始化。主要是打开标准输入输出设备
	
	call	main	; 操作系统已经将参数argc和argv压栈
	add	esp,8
	
	push	eax	; 退出码
	
	push	SEXIT
	call	printf
	add	esp,4
	
	call	app_exit	; 程序退出。主要是关闭标准输入输出设备
	
	call	exit	; 此时栈顶保存的是退出码

SEXIT	db	10,'#>',0
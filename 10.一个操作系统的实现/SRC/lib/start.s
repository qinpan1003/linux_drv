extern	app_start
extern	app_exit
extern	main
extern	printf
extern	exit
global	_start
_start	:
	call	app_start	; ����������ʼ������Ҫ�Ǵ򿪱�׼��������豸
	
	call	main	; ����ϵͳ�Ѿ�������argc��argvѹջ
	add	esp,8
	
	push	eax	; �˳���
	
	push	SEXIT
	call	printf
	add	esp,4
	
	call	app_exit	; �����˳�����Ҫ�ǹرձ�׼��������豸
	
	call	exit	; ��ʱջ����������˳���

SEXIT	db	10,'#>',0
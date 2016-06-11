
kernel:     file format elf32-i386

Disassembly of section Kernel:

00010000 <Kernel>:
   10000:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   10005:	e8 4a 00 00 00       	call   0x10054
   1000a:	e8 f1 7c 00 00       	call   0x17d00
   1000f:	0f 01 15 20 f4 01 00 	lgdtl  0x1f420
   10016:	66 b8 08 00          	mov    $0x8,%ax
   1001a:	8e d8                	movl   %eax,%ds
   1001c:	8e c0                	movl   %eax,%es
   1001e:	8e e0                	movl   %eax,%fs
   10020:	8e e8                	movl   %eax,%gs
   10022:	8e d0                	movl   %eax,%ss
   10024:	ea 2b 00 01 00 10 00 	ljmp   $0x10,$0x1002b
   1002b:	6a 00                	push   $0x0
   1002d:	9d                   	popf   
   1002e:	e8 8f 09 00 00       	call   0x109c2
   10033:	0f 01 1d c4 aa 02 00 	lidtl  0x2aac4
   1003a:	66 b8 28 00          	mov    $0x28,%ax
   1003e:	0f 00 d8             	ltr    %ax
   10041:	8b 25 30 f4 01 00    	mov    0x1f430,%esp
   10047:	0f a9                	pop    %gs
   10049:	0f a1                	pop    %fs
   1004b:	07                   	pop    %es
   1004c:	1f                   	pop    %ds
   1004d:	61                   	popa   
   1004e:	83 c4 04             	add    $0x4,%esp
   10051:	cf                   	iret   
   10052:	eb fe                	jmp    0x10052
   10054:	b9 08 00 00 00       	mov    $0x8,%ecx
   10059:	bf 00 00 00 00       	mov    $0x0,%edi
   1005e:	b8 07 10 00 00       	mov    $0x1007,%eax
   10063:	89 07                	mov    %eax,(%edi)
   10065:	05 00 10 00 00       	add    $0x1000,%eax
   1006a:	83 c7 04             	add    $0x4,%edi
   1006d:	49                   	dec    %ecx
   1006e:	75 f3                	jne    0x10063
   10070:	b9 00 20 00 00       	mov    $0x2000,%ecx
   10075:	bf 00 10 00 00       	mov    $0x1000,%edi
   1007a:	b8 07 00 00 00       	mov    $0x7,%eax
   1007f:	26 89 07             	mov    %eax,%es:(%edi)
   10082:	05 00 10 00 00       	add    $0x1000,%eax
   10087:	83 c7 04             	add    $0x4,%edi
   1008a:	49                   	dec    %ecx
   1008b:	75 f2                	jne    0x1007f
   1008d:	0f 20 d8             	mov    %cr3,%eax
   10090:	25 ff 0f 00 00       	and    $0xfff,%eax
   10095:	83 c8 00             	or     $0x0,%eax
   10098:	0f 22 d8             	mov    %eax,%cr3
   1009b:	0f 20 c0             	mov    %cr0,%eax
   1009e:	0d 00 00 00 80       	or     $0x80000000,%eax
   100a3:	0f 22 c0             	mov    %eax,%cr0
   100a6:	c3                   	ret    
	...
   100af:	00 60 b0             	add    %ah,0xffffffb0(%eax)
   100b2:	20 e6                	and    %ah,%dh
   100b4:	20 e6                	and    %ah,%dh
   100b6:	a0 61 cf 6a ff       	mov    0xff6acf61,%al
   100bb:	60                   	pusha  
   100bc:	1e                   	push   %ds
   100bd:	06                   	push   %es
   100be:	0f a0                	push   %fs
   100c0:	0f a8                	push   %gs
   100c2:	0f 20 de             	mov    %cr3,%esi
   100c5:	83 fe 00             	cmp    $0x0,%esi
   100c8:	74 08                	je     0x100d2
   100ca:	be 00 00 00 00       	mov    $0x0,%esi
   100cf:	0f 22 de             	mov    %esi,%cr3
   100d2:	ff 05 c8 05 01 00    	incl   0x105c8
   100d8:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   100df:	75 07                	jne    0x100e8
   100e1:	89 e5                	mov    %esp,%ebp
   100e3:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   100e8:	ff 75 3c             	pushl  0x3c(%ebp)
   100eb:	ff 75 38             	pushl  0x38(%ebp)
   100ee:	ff 75 34             	pushl  0x34(%ebp)
   100f1:	ff 75 30             	pushl  0x30(%ebp)
   100f4:	6a 00                	push   $0x0
   100f6:	eb 00                	jmp    0x100f8
   100f8:	e8 ac 76 00 00       	call   0x177a9
   100fd:	83 c4 14             	add    $0x14,%esp
   10100:	fa                   	cli    
   10101:	ff 0d c8 05 01 00    	decl   0x105c8
   10107:	75 1d                	jne    0x10126
   10109:	8b 1d 30 f4 01 00    	mov    0x1f430,%ebx
   1010f:	89 dc                	mov    %ebx,%esp
   10111:	83 c3 48             	add    $0x48,%ebx
   10114:	89 1d 24 ab 02 00    	mov    %ebx,0x2ab24
   1011a:	8b 5c 24 48          	mov    0x48(%esp),%ebx
   1011e:	83 fb 00             	cmp    $0x0,%ebx
   10121:	74 03                	je     0x10126
   10123:	0f 22 db             	mov    %ebx,%cr3
   10126:	0f a9                	pop    %gs
   10128:	0f a1                	pop    %fs
   1012a:	07                   	pop    %es
   1012b:	1f                   	pop    %ds
   1012c:	61                   	popa   
   1012d:	83 c4 04             	add    $0x4,%esp
   10130:	cf                   	iret   
   10131:	6a ff                	push   $0xffffffff
   10133:	60                   	pusha  
   10134:	1e                   	push   %ds
   10135:	06                   	push   %es
   10136:	0f a0                	push   %fs
   10138:	0f a8                	push   %gs
   1013a:	0f 20 de             	mov    %cr3,%esi
   1013d:	83 fe 00             	cmp    $0x0,%esi
   10140:	74 08                	je     0x1014a
   10142:	be 00 00 00 00       	mov    $0x0,%esi
   10147:	0f 22 de             	mov    %esi,%cr3
   1014a:	ff 05 c8 05 01 00    	incl   0x105c8
   10150:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10157:	75 07                	jne    0x10160
   10159:	89 e5                	mov    %esp,%ebp
   1015b:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   10160:	ff 75 3c             	pushl  0x3c(%ebp)
   10163:	ff 75 38             	pushl  0x38(%ebp)
   10166:	ff 75 34             	pushl  0x34(%ebp)
   10169:	ff 75 30             	pushl  0x30(%ebp)
   1016c:	6a 01                	push   $0x1
   1016e:	eb 88                	jmp    0x100f8
   10170:	6a ff                	push   $0xffffffff
   10172:	60                   	pusha  
   10173:	1e                   	push   %ds
   10174:	06                   	push   %es
   10175:	0f a0                	push   %fs
   10177:	0f a8                	push   %gs
   10179:	0f 20 de             	mov    %cr3,%esi
   1017c:	83 fe 00             	cmp    $0x0,%esi
   1017f:	74 08                	je     0x10189
   10181:	be 00 00 00 00       	mov    $0x0,%esi
   10186:	0f 22 de             	mov    %esi,%cr3
   10189:	ff 05 c8 05 01 00    	incl   0x105c8
   1018f:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10196:	75 07                	jne    0x1019f
   10198:	89 e5                	mov    %esp,%ebp
   1019a:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   1019f:	ff 75 3c             	pushl  0x3c(%ebp)
   101a2:	ff 75 38             	pushl  0x38(%ebp)
   101a5:	ff 75 34             	pushl  0x34(%ebp)
   101a8:	ff 75 30             	pushl  0x30(%ebp)
   101ab:	6a 02                	push   $0x2
   101ad:	e9 46 ff ff ff       	jmp    0x100f8
   101b2:	6a ff                	push   $0xffffffff
   101b4:	60                   	pusha  
   101b5:	1e                   	push   %ds
   101b6:	06                   	push   %es
   101b7:	0f a0                	push   %fs
   101b9:	0f a8                	push   %gs
   101bb:	0f 20 de             	mov    %cr3,%esi
   101be:	83 fe 00             	cmp    $0x0,%esi
   101c1:	74 08                	je     0x101cb
   101c3:	be 00 00 00 00       	mov    $0x0,%esi
   101c8:	0f 22 de             	mov    %esi,%cr3
   101cb:	ff 05 c8 05 01 00    	incl   0x105c8
   101d1:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   101d8:	75 07                	jne    0x101e1
   101da:	89 e5                	mov    %esp,%ebp
   101dc:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   101e1:	ff 75 3c             	pushl  0x3c(%ebp)
   101e4:	ff 75 38             	pushl  0x38(%ebp)
   101e7:	ff 75 34             	pushl  0x34(%ebp)
   101ea:	ff 75 30             	pushl  0x30(%ebp)
   101ed:	6a 03                	push   $0x3
   101ef:	e9 04 ff ff ff       	jmp    0x100f8
   101f4:	6a ff                	push   $0xffffffff
   101f6:	60                   	pusha  
   101f7:	1e                   	push   %ds
   101f8:	06                   	push   %es
   101f9:	0f a0                	push   %fs
   101fb:	0f a8                	push   %gs
   101fd:	0f 20 de             	mov    %cr3,%esi
   10200:	83 fe 00             	cmp    $0x0,%esi
   10203:	74 08                	je     0x1020d
   10205:	be 00 00 00 00       	mov    $0x0,%esi
   1020a:	0f 22 de             	mov    %esi,%cr3
   1020d:	ff 05 c8 05 01 00    	incl   0x105c8
   10213:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   1021a:	75 07                	jne    0x10223
   1021c:	89 e5                	mov    %esp,%ebp
   1021e:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   10223:	ff 75 3c             	pushl  0x3c(%ebp)
   10226:	ff 75 38             	pushl  0x38(%ebp)
   10229:	ff 75 34             	pushl  0x34(%ebp)
   1022c:	ff 75 30             	pushl  0x30(%ebp)
   1022f:	6a 04                	push   $0x4
   10231:	e9 c2 fe ff ff       	jmp    0x100f8
   10236:	6a ff                	push   $0xffffffff
   10238:	60                   	pusha  
   10239:	1e                   	push   %ds
   1023a:	06                   	push   %es
   1023b:	0f a0                	push   %fs
   1023d:	0f a8                	push   %gs
   1023f:	0f 20 de             	mov    %cr3,%esi
   10242:	83 fe 00             	cmp    $0x0,%esi
   10245:	74 08                	je     0x1024f
   10247:	be 00 00 00 00       	mov    $0x0,%esi
   1024c:	0f 22 de             	mov    %esi,%cr3
   1024f:	ff 05 c8 05 01 00    	incl   0x105c8
   10255:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   1025c:	75 07                	jne    0x10265
   1025e:	89 e5                	mov    %esp,%ebp
   10260:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   10265:	ff 75 3c             	pushl  0x3c(%ebp)
   10268:	ff 75 38             	pushl  0x38(%ebp)
   1026b:	ff 75 34             	pushl  0x34(%ebp)
   1026e:	ff 75 30             	pushl  0x30(%ebp)
   10271:	6a 05                	push   $0x5
   10273:	e9 80 fe ff ff       	jmp    0x100f8
   10278:	6a ff                	push   $0xffffffff
   1027a:	60                   	pusha  
   1027b:	1e                   	push   %ds
   1027c:	06                   	push   %es
   1027d:	0f a0                	push   %fs
   1027f:	0f a8                	push   %gs
   10281:	0f 20 de             	mov    %cr3,%esi
   10284:	83 fe 00             	cmp    $0x0,%esi
   10287:	74 08                	je     0x10291
   10289:	be 00 00 00 00       	mov    $0x0,%esi
   1028e:	0f 22 de             	mov    %esi,%cr3
   10291:	ff 05 c8 05 01 00    	incl   0x105c8
   10297:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   1029e:	75 07                	jne    0x102a7
   102a0:	89 e5                	mov    %esp,%ebp
   102a2:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   102a7:	ff 75 3c             	pushl  0x3c(%ebp)
   102aa:	ff 75 38             	pushl  0x38(%ebp)
   102ad:	ff 75 34             	pushl  0x34(%ebp)
   102b0:	ff 75 30             	pushl  0x30(%ebp)
   102b3:	6a 06                	push   $0x6
   102b5:	e9 3e fe ff ff       	jmp    0x100f8
   102ba:	6a ff                	push   $0xffffffff
   102bc:	60                   	pusha  
   102bd:	1e                   	push   %ds
   102be:	06                   	push   %es
   102bf:	0f a0                	push   %fs
   102c1:	0f a8                	push   %gs
   102c3:	0f 20 de             	mov    %cr3,%esi
   102c6:	83 fe 00             	cmp    $0x0,%esi
   102c9:	74 08                	je     0x102d3
   102cb:	be 00 00 00 00       	mov    $0x0,%esi
   102d0:	0f 22 de             	mov    %esi,%cr3
   102d3:	ff 05 c8 05 01 00    	incl   0x105c8
   102d9:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   102e0:	75 07                	jne    0x102e9
   102e2:	89 e5                	mov    %esp,%ebp
   102e4:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   102e9:	ff 75 3c             	pushl  0x3c(%ebp)
   102ec:	ff 75 38             	pushl  0x38(%ebp)
   102ef:	ff 75 34             	pushl  0x34(%ebp)
   102f2:	ff 75 30             	pushl  0x30(%ebp)
   102f5:	6a 07                	push   $0x7
   102f7:	e9 fc fd ff ff       	jmp    0x100f8
   102fc:	60                   	pusha  
   102fd:	1e                   	push   %ds
   102fe:	06                   	push   %es
   102ff:	0f a0                	push   %fs
   10301:	0f a8                	push   %gs
   10303:	0f 20 de             	mov    %cr3,%esi
   10306:	83 fe 00             	cmp    $0x0,%esi
   10309:	74 08                	je     0x10313
   1030b:	be 00 00 00 00       	mov    $0x0,%esi
   10310:	0f 22 de             	mov    %esi,%cr3
   10313:	ff 05 c8 05 01 00    	incl   0x105c8
   10319:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10320:	75 07                	jne    0x10329
   10322:	89 e5                	mov    %esp,%ebp
   10324:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   10329:	ff 75 3c             	pushl  0x3c(%ebp)
   1032c:	ff 75 38             	pushl  0x38(%ebp)
   1032f:	ff 75 34             	pushl  0x34(%ebp)
   10332:	ff 75 30             	pushl  0x30(%ebp)
   10335:	6a 08                	push   $0x8
   10337:	e9 bc fd ff ff       	jmp    0x100f8
   1033c:	6a ff                	push   $0xffffffff
   1033e:	60                   	pusha  
   1033f:	1e                   	push   %ds
   10340:	06                   	push   %es
   10341:	0f a0                	push   %fs
   10343:	0f a8                	push   %gs
   10345:	0f 20 de             	mov    %cr3,%esi
   10348:	83 fe 00             	cmp    $0x0,%esi
   1034b:	74 08                	je     0x10355
   1034d:	be 00 00 00 00       	mov    $0x0,%esi
   10352:	0f 22 de             	mov    %esi,%cr3
   10355:	ff 05 c8 05 01 00    	incl   0x105c8
   1035b:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10362:	75 07                	jne    0x1036b
   10364:	89 e5                	mov    %esp,%ebp
   10366:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   1036b:	ff 75 3c             	pushl  0x3c(%ebp)
   1036e:	ff 75 38             	pushl  0x38(%ebp)
   10371:	ff 75 34             	pushl  0x34(%ebp)
   10374:	ff 75 30             	pushl  0x30(%ebp)
   10377:	6a 09                	push   $0x9
   10379:	e9 7a fd ff ff       	jmp    0x100f8
   1037e:	60                   	pusha  
   1037f:	1e                   	push   %ds
   10380:	06                   	push   %es
   10381:	0f a0                	push   %fs
   10383:	0f a8                	push   %gs
   10385:	0f 20 de             	mov    %cr3,%esi
   10388:	83 fe 00             	cmp    $0x0,%esi
   1038b:	74 08                	je     0x10395
   1038d:	be 00 00 00 00       	mov    $0x0,%esi
   10392:	0f 22 de             	mov    %esi,%cr3
   10395:	ff 05 c8 05 01 00    	incl   0x105c8
   1039b:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   103a2:	75 07                	jne    0x103ab
   103a4:	89 e5                	mov    %esp,%ebp
   103a6:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   103ab:	ff 75 3c             	pushl  0x3c(%ebp)
   103ae:	ff 75 38             	pushl  0x38(%ebp)
   103b1:	ff 75 34             	pushl  0x34(%ebp)
   103b4:	ff 75 30             	pushl  0x30(%ebp)
   103b7:	6a 0a                	push   $0xa
   103b9:	e9 3a fd ff ff       	jmp    0x100f8
   103be:	60                   	pusha  
   103bf:	1e                   	push   %ds
   103c0:	06                   	push   %es
   103c1:	0f a0                	push   %fs
   103c3:	0f a8                	push   %gs
   103c5:	0f 20 de             	mov    %cr3,%esi
   103c8:	83 fe 00             	cmp    $0x0,%esi
   103cb:	74 08                	je     0x103d5
   103cd:	be 00 00 00 00       	mov    $0x0,%esi
   103d2:	0f 22 de             	mov    %esi,%cr3
   103d5:	ff 05 c8 05 01 00    	incl   0x105c8
   103db:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   103e2:	75 07                	jne    0x103eb
   103e4:	89 e5                	mov    %esp,%ebp
   103e6:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   103eb:	ff 75 3c             	pushl  0x3c(%ebp)
   103ee:	ff 75 38             	pushl  0x38(%ebp)
   103f1:	ff 75 34             	pushl  0x34(%ebp)
   103f4:	ff 75 30             	pushl  0x30(%ebp)
   103f7:	6a 0b                	push   $0xb
   103f9:	e9 fa fc ff ff       	jmp    0x100f8
   103fe:	60                   	pusha  
   103ff:	1e                   	push   %ds
   10400:	06                   	push   %es
   10401:	0f a0                	push   %fs
   10403:	0f a8                	push   %gs
   10405:	0f 20 de             	mov    %cr3,%esi
   10408:	83 fe 00             	cmp    $0x0,%esi
   1040b:	74 08                	je     0x10415
   1040d:	be 00 00 00 00       	mov    $0x0,%esi
   10412:	0f 22 de             	mov    %esi,%cr3
   10415:	ff 05 c8 05 01 00    	incl   0x105c8
   1041b:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10422:	75 07                	jne    0x1042b
   10424:	89 e5                	mov    %esp,%ebp
   10426:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   1042b:	ff 75 3c             	pushl  0x3c(%ebp)
   1042e:	ff 75 38             	pushl  0x38(%ebp)
   10431:	ff 75 34             	pushl  0x34(%ebp)
   10434:	ff 75 30             	pushl  0x30(%ebp)
   10437:	6a 0c                	push   $0xc
   10439:	e9 ba fc ff ff       	jmp    0x100f8
   1043e:	60                   	pusha  
   1043f:	1e                   	push   %ds
   10440:	06                   	push   %es
   10441:	0f a0                	push   %fs
   10443:	0f a8                	push   %gs
   10445:	0f 20 de             	mov    %cr3,%esi
   10448:	83 fe 00             	cmp    $0x0,%esi
   1044b:	74 08                	je     0x10455
   1044d:	be 00 00 00 00       	mov    $0x0,%esi
   10452:	0f 22 de             	mov    %esi,%cr3
   10455:	ff 05 c8 05 01 00    	incl   0x105c8
   1045b:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10462:	75 07                	jne    0x1046b
   10464:	89 e5                	mov    %esp,%ebp
   10466:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   1046b:	ff 75 3c             	pushl  0x3c(%ebp)
   1046e:	ff 75 38             	pushl  0x38(%ebp)
   10471:	ff 75 34             	pushl  0x34(%ebp)
   10474:	ff 75 30             	pushl  0x30(%ebp)
   10477:	6a 0d                	push   $0xd
   10479:	e9 7a fc ff ff       	jmp    0x100f8
   1047e:	60                   	pusha  
   1047f:	1e                   	push   %ds
   10480:	06                   	push   %es
   10481:	0f a0                	push   %fs
   10483:	0f a8                	push   %gs
   10485:	0f 20 de             	mov    %cr3,%esi
   10488:	83 fe 00             	cmp    $0x0,%esi
   1048b:	74 08                	je     0x10495
   1048d:	be 00 00 00 00       	mov    $0x0,%esi
   10492:	0f 22 de             	mov    %esi,%cr3
   10495:	ff 05 c8 05 01 00    	incl   0x105c8
   1049b:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   104a2:	75 07                	jne    0x104ab
   104a4:	89 e5                	mov    %esp,%ebp
   104a6:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   104ab:	ff 75 3c             	pushl  0x3c(%ebp)
   104ae:	ff 75 38             	pushl  0x38(%ebp)
   104b1:	ff 75 34             	pushl  0x34(%ebp)
   104b4:	ff 75 30             	pushl  0x30(%ebp)
   104b7:	6a 0e                	push   $0xe
   104b9:	e9 3a fc ff ff       	jmp    0x100f8
   104be:	6a ff                	push   $0xffffffff
   104c0:	60                   	pusha  
   104c1:	1e                   	push   %ds
   104c2:	06                   	push   %es
   104c3:	0f a0                	push   %fs
   104c5:	0f a8                	push   %gs
   104c7:	0f 20 de             	mov    %cr3,%esi
   104ca:	83 fe 00             	cmp    $0x0,%esi
   104cd:	74 08                	je     0x104d7
   104cf:	be 00 00 00 00       	mov    $0x0,%esi
   104d4:	0f 22 de             	mov    %esi,%cr3
   104d7:	ff 05 c8 05 01 00    	incl   0x105c8
   104dd:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   104e4:	75 07                	jne    0x104ed
   104e6:	89 e5                	mov    %esp,%ebp
   104e8:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   104ed:	ff 75 3c             	pushl  0x3c(%ebp)
   104f0:	ff 75 38             	pushl  0x38(%ebp)
   104f3:	ff 75 34             	pushl  0x34(%ebp)
   104f6:	ff 75 30             	pushl  0x30(%ebp)
   104f9:	6a 10                	push   $0x10
   104fb:	e9 f8 fb ff ff       	jmp    0x100f8
   10500:	60                   	pusha  
   10501:	1e                   	push   %ds
   10502:	06                   	push   %es
   10503:	0f a0                	push   %fs
   10505:	0f a8                	push   %gs
   10507:	0f 20 de             	mov    %cr3,%esi
   1050a:	83 fe 00             	cmp    $0x0,%esi
   1050d:	74 08                	je     0x10517
   1050f:	be 00 00 00 00       	mov    $0x0,%esi
   10514:	0f 22 de             	mov    %esi,%cr3
   10517:	ff 05 c8 05 01 00    	incl   0x105c8
   1051d:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10524:	75 07                	jne    0x1052d
   10526:	89 e5                	mov    %esp,%ebp
   10528:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   1052d:	ff 75 3c             	pushl  0x3c(%ebp)
   10530:	ff 75 38             	pushl  0x38(%ebp)
   10533:	ff 75 34             	pushl  0x34(%ebp)
   10536:	ff 75 30             	pushl  0x30(%ebp)
   10539:	6a 11                	push   $0x11
   1053b:	e9 b8 fb ff ff       	jmp    0x100f8
   10540:	6a ff                	push   $0xffffffff
   10542:	60                   	pusha  
   10543:	1e                   	push   %ds
   10544:	06                   	push   %es
   10545:	0f a0                	push   %fs
   10547:	0f a8                	push   %gs
   10549:	0f 20 de             	mov    %cr3,%esi
   1054c:	83 fe 00             	cmp    $0x0,%esi
   1054f:	74 08                	je     0x10559
   10551:	be 00 00 00 00       	mov    $0x0,%esi
   10556:	0f 22 de             	mov    %esi,%cr3
   10559:	ff 05 c8 05 01 00    	incl   0x105c8
   1055f:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10566:	75 07                	jne    0x1056f
   10568:	89 e5                	mov    %esp,%ebp
   1056a:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   1056f:	ff 75 3c             	pushl  0x3c(%ebp)
   10572:	ff 75 38             	pushl  0x38(%ebp)
   10575:	ff 75 34             	pushl  0x34(%ebp)
   10578:	ff 75 30             	pushl  0x30(%ebp)
   1057b:	6a 12                	push   $0x12
   1057d:	e9 76 fb ff ff       	jmp    0x100f8
   10582:	6a ff                	push   $0xffffffff
   10584:	60                   	pusha  
   10585:	1e                   	push   %ds
   10586:	06                   	push   %es
   10587:	0f a0                	push   %fs
   10589:	0f a8                	push   %gs
   1058b:	0f 20 de             	mov    %cr3,%esi
   1058e:	83 fe 00             	cmp    $0x0,%esi
   10591:	74 08                	je     0x1059b
   10593:	be 00 00 00 00       	mov    $0x0,%esi
   10598:	0f 22 de             	mov    %esi,%cr3
   1059b:	ff 05 c8 05 01 00    	incl   0x105c8
   105a1:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   105a8:	75 07                	jne    0x105b1
   105aa:	89 e5                	mov    %esp,%ebp
   105ac:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   105b1:	ff 75 3c             	pushl  0x3c(%ebp)
   105b4:	ff 75 38             	pushl  0x38(%ebp)
   105b7:	ff 75 34             	pushl  0x34(%ebp)
   105ba:	ff 75 30             	pushl  0x30(%ebp)
   105bd:	6a 13                	push   $0x13
   105bf:	e9 34 fb ff ff       	jmp    0x100f8
   105c4:	0f 20 d0             	mov    %cr2,%eax
   105c7:	c3                   	ret    
   105c8:	00 00                	add    %al,(%eax)
   105ca:	00 00                	add    %al,(%eax)
   105cc:	b0 20                	mov    $0x20,%al
   105ce:	e6 20                	out    %al,$0x20
   105d0:	e6 a0                	out    %al,$0xa0
   105d2:	fb                   	sti    
   105d3:	e8 ec 44 00 00       	call   0x14ac4
   105d8:	83 c4 04             	add    $0x4,%esp
   105db:	fa                   	cli    
   105dc:	ff 0d c8 05 01 00    	decl   0x105c8
   105e2:	75 1d                	jne    0x10601
   105e4:	8b 1d 30 f4 01 00    	mov    0x1f430,%ebx
   105ea:	89 dc                	mov    %ebx,%esp
   105ec:	83 c3 48             	add    $0x48,%ebx
   105ef:	89 1d 24 ab 02 00    	mov    %ebx,0x2ab24
   105f5:	8b 5c 24 48          	mov    0x48(%esp),%ebx
   105f9:	83 fb 00             	cmp    $0x0,%ebx
   105fc:	74 03                	je     0x10601
   105fe:	0f 22 db             	mov    %ebx,%cr3
   10601:	0f a9                	pop    %gs
   10603:	0f a1                	pop    %fs
   10605:	07                   	pop    %es
   10606:	1f                   	pop    %ds
   10607:	61                   	popa   
   10608:	83 c4 04             	add    $0x4,%esp
   1060b:	cf                   	iret   
   1060c:	6a ff                	push   $0xffffffff
   1060e:	60                   	pusha  
   1060f:	1e                   	push   %ds
   10610:	06                   	push   %es
   10611:	0f a0                	push   %fs
   10613:	0f a8                	push   %gs
   10615:	0f 20 de             	mov    %cr3,%esi
   10618:	83 fe 00             	cmp    $0x0,%esi
   1061b:	74 08                	je     0x10625
   1061d:	be 00 00 00 00       	mov    $0x0,%esi
   10622:	0f 22 de             	mov    %esi,%cr3
   10625:	ff 05 c8 05 01 00    	incl   0x105c8
   1062b:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10632:	75 05                	jne    0x10639
   10634:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   10639:	6a 00                	push   $0x0
   1063b:	eb 8f                	jmp    0x105cc
   1063d:	6a ff                	push   $0xffffffff
   1063f:	60                   	pusha  
   10640:	1e                   	push   %ds
   10641:	06                   	push   %es
   10642:	0f a0                	push   %fs
   10644:	0f a8                	push   %gs
   10646:	0f 20 de             	mov    %cr3,%esi
   10649:	83 fe 00             	cmp    $0x0,%esi
   1064c:	74 08                	je     0x10656
   1064e:	be 00 00 00 00       	mov    $0x0,%esi
   10653:	0f 22 de             	mov    %esi,%cr3
   10656:	ff 05 c8 05 01 00    	incl   0x105c8
   1065c:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10663:	75 05                	jne    0x1066a
   10665:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   1066a:	6a 01                	push   $0x1
   1066c:	e9 5b ff ff ff       	jmp    0x105cc
   10671:	6a ff                	push   $0xffffffff
   10673:	60                   	pusha  
   10674:	1e                   	push   %ds
   10675:	06                   	push   %es
   10676:	0f a0                	push   %fs
   10678:	0f a8                	push   %gs
   1067a:	0f 20 de             	mov    %cr3,%esi
   1067d:	83 fe 00             	cmp    $0x0,%esi
   10680:	74 08                	je     0x1068a
   10682:	be 00 00 00 00       	mov    $0x0,%esi
   10687:	0f 22 de             	mov    %esi,%cr3
   1068a:	ff 05 c8 05 01 00    	incl   0x105c8
   10690:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10697:	75 05                	jne    0x1069e
   10699:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   1069e:	6a 02                	push   $0x2
   106a0:	e9 27 ff ff ff       	jmp    0x105cc
   106a5:	6a ff                	push   $0xffffffff
   106a7:	60                   	pusha  
   106a8:	1e                   	push   %ds
   106a9:	06                   	push   %es
   106aa:	0f a0                	push   %fs
   106ac:	0f a8                	push   %gs
   106ae:	0f 20 de             	mov    %cr3,%esi
   106b1:	83 fe 00             	cmp    $0x0,%esi
   106b4:	74 08                	je     0x106be
   106b6:	be 00 00 00 00       	mov    $0x0,%esi
   106bb:	0f 22 de             	mov    %esi,%cr3
   106be:	ff 05 c8 05 01 00    	incl   0x105c8
   106c4:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   106cb:	75 05                	jne    0x106d2
   106cd:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   106d2:	6a 03                	push   $0x3
   106d4:	e9 f3 fe ff ff       	jmp    0x105cc
   106d9:	6a ff                	push   $0xffffffff
   106db:	60                   	pusha  
   106dc:	1e                   	push   %ds
   106dd:	06                   	push   %es
   106de:	0f a0                	push   %fs
   106e0:	0f a8                	push   %gs
   106e2:	0f 20 de             	mov    %cr3,%esi
   106e5:	83 fe 00             	cmp    $0x0,%esi
   106e8:	74 08                	je     0x106f2
   106ea:	be 00 00 00 00       	mov    $0x0,%esi
   106ef:	0f 22 de             	mov    %esi,%cr3
   106f2:	ff 05 c8 05 01 00    	incl   0x105c8
   106f8:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   106ff:	75 05                	jne    0x10706
   10701:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   10706:	6a 04                	push   $0x4
   10708:	e9 bf fe ff ff       	jmp    0x105cc
   1070d:	6a ff                	push   $0xffffffff
   1070f:	60                   	pusha  
   10710:	1e                   	push   %ds
   10711:	06                   	push   %es
   10712:	0f a0                	push   %fs
   10714:	0f a8                	push   %gs
   10716:	0f 20 de             	mov    %cr3,%esi
   10719:	83 fe 00             	cmp    $0x0,%esi
   1071c:	74 08                	je     0x10726
   1071e:	be 00 00 00 00       	mov    $0x0,%esi
   10723:	0f 22 de             	mov    %esi,%cr3
   10726:	ff 05 c8 05 01 00    	incl   0x105c8
   1072c:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10733:	75 05                	jne    0x1073a
   10735:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   1073a:	6a 05                	push   $0x5
   1073c:	e9 8b fe ff ff       	jmp    0x105cc
   10741:	6a ff                	push   $0xffffffff
   10743:	60                   	pusha  
   10744:	1e                   	push   %ds
   10745:	06                   	push   %es
   10746:	0f a0                	push   %fs
   10748:	0f a8                	push   %gs
   1074a:	0f 20 de             	mov    %cr3,%esi
   1074d:	83 fe 00             	cmp    $0x0,%esi
   10750:	74 08                	je     0x1075a
   10752:	be 00 00 00 00       	mov    $0x0,%esi
   10757:	0f 22 de             	mov    %esi,%cr3
   1075a:	ff 05 c8 05 01 00    	incl   0x105c8
   10760:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10767:	75 05                	jne    0x1076e
   10769:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   1076e:	6a 06                	push   $0x6
   10770:	e9 57 fe ff ff       	jmp    0x105cc
   10775:	6a ff                	push   $0xffffffff
   10777:	60                   	pusha  
   10778:	1e                   	push   %ds
   10779:	06                   	push   %es
   1077a:	0f a0                	push   %fs
   1077c:	0f a8                	push   %gs
   1077e:	0f 20 de             	mov    %cr3,%esi
   10781:	83 fe 00             	cmp    $0x0,%esi
   10784:	74 08                	je     0x1078e
   10786:	be 00 00 00 00       	mov    $0x0,%esi
   1078b:	0f 22 de             	mov    %esi,%cr3
   1078e:	ff 05 c8 05 01 00    	incl   0x105c8
   10794:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   1079b:	75 05                	jne    0x107a2
   1079d:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   107a2:	6a 07                	push   $0x7
   107a4:	e9 23 fe ff ff       	jmp    0x105cc
   107a9:	6a ff                	push   $0xffffffff
   107ab:	60                   	pusha  
   107ac:	1e                   	push   %ds
   107ad:	06                   	push   %es
   107ae:	0f a0                	push   %fs
   107b0:	0f a8                	push   %gs
   107b2:	0f 20 de             	mov    %cr3,%esi
   107b5:	83 fe 00             	cmp    $0x0,%esi
   107b8:	74 08                	je     0x107c2
   107ba:	be 00 00 00 00       	mov    $0x0,%esi
   107bf:	0f 22 de             	mov    %esi,%cr3
   107c2:	ff 05 c8 05 01 00    	incl   0x105c8
   107c8:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   107cf:	75 05                	jne    0x107d6
   107d1:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   107d6:	6a 08                	push   $0x8
   107d8:	e9 ef fd ff ff       	jmp    0x105cc
   107dd:	6a ff                	push   $0xffffffff
   107df:	60                   	pusha  
   107e0:	1e                   	push   %ds
   107e1:	06                   	push   %es
   107e2:	0f a0                	push   %fs
   107e4:	0f a8                	push   %gs
   107e6:	0f 20 de             	mov    %cr3,%esi
   107e9:	83 fe 00             	cmp    $0x0,%esi
   107ec:	74 08                	je     0x107f6
   107ee:	be 00 00 00 00       	mov    $0x0,%esi
   107f3:	0f 22 de             	mov    %esi,%cr3
   107f6:	ff 05 c8 05 01 00    	incl   0x105c8
   107fc:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10803:	75 05                	jne    0x1080a
   10805:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   1080a:	6a 09                	push   $0x9
   1080c:	e9 bb fd ff ff       	jmp    0x105cc
   10811:	6a ff                	push   $0xffffffff
   10813:	60                   	pusha  
   10814:	1e                   	push   %ds
   10815:	06                   	push   %es
   10816:	0f a0                	push   %fs
   10818:	0f a8                	push   %gs
   1081a:	0f 20 de             	mov    %cr3,%esi
   1081d:	83 fe 00             	cmp    $0x0,%esi
   10820:	74 08                	je     0x1082a
   10822:	be 00 00 00 00       	mov    $0x0,%esi
   10827:	0f 22 de             	mov    %esi,%cr3
   1082a:	ff 05 c8 05 01 00    	incl   0x105c8
   10830:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10837:	75 05                	jne    0x1083e
   10839:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   1083e:	6a 0a                	push   $0xa
   10840:	e9 87 fd ff ff       	jmp    0x105cc
   10845:	6a ff                	push   $0xffffffff
   10847:	60                   	pusha  
   10848:	1e                   	push   %ds
   10849:	06                   	push   %es
   1084a:	0f a0                	push   %fs
   1084c:	0f a8                	push   %gs
   1084e:	0f 20 de             	mov    %cr3,%esi
   10851:	83 fe 00             	cmp    $0x0,%esi
   10854:	74 08                	je     0x1085e
   10856:	be 00 00 00 00       	mov    $0x0,%esi
   1085b:	0f 22 de             	mov    %esi,%cr3
   1085e:	ff 05 c8 05 01 00    	incl   0x105c8
   10864:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   1086b:	75 05                	jne    0x10872
   1086d:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   10872:	6a 0b                	push   $0xb
   10874:	e9 53 fd ff ff       	jmp    0x105cc
   10879:	6a ff                	push   $0xffffffff
   1087b:	60                   	pusha  
   1087c:	1e                   	push   %ds
   1087d:	06                   	push   %es
   1087e:	0f a0                	push   %fs
   10880:	0f a8                	push   %gs
   10882:	0f 20 de             	mov    %cr3,%esi
   10885:	83 fe 00             	cmp    $0x0,%esi
   10888:	74 08                	je     0x10892
   1088a:	be 00 00 00 00       	mov    $0x0,%esi
   1088f:	0f 22 de             	mov    %esi,%cr3
   10892:	ff 05 c8 05 01 00    	incl   0x105c8
   10898:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   1089f:	75 05                	jne    0x108a6
   108a1:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   108a6:	6a 0c                	push   $0xc
   108a8:	e9 1f fd ff ff       	jmp    0x105cc
   108ad:	6a ff                	push   $0xffffffff
   108af:	60                   	pusha  
   108b0:	1e                   	push   %ds
   108b1:	06                   	push   %es
   108b2:	0f a0                	push   %fs
   108b4:	0f a8                	push   %gs
   108b6:	0f 20 de             	mov    %cr3,%esi
   108b9:	83 fe 00             	cmp    $0x0,%esi
   108bc:	74 08                	je     0x108c6
   108be:	be 00 00 00 00       	mov    $0x0,%esi
   108c3:	0f 22 de             	mov    %esi,%cr3
   108c6:	ff 05 c8 05 01 00    	incl   0x105c8
   108cc:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   108d3:	75 05                	jne    0x108da
   108d5:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   108da:	6a 0d                	push   $0xd
   108dc:	e9 eb fc ff ff       	jmp    0x105cc
   108e1:	6a ff                	push   $0xffffffff
   108e3:	60                   	pusha  
   108e4:	1e                   	push   %ds
   108e5:	06                   	push   %es
   108e6:	0f a0                	push   %fs
   108e8:	0f a8                	push   %gs
   108ea:	0f 20 de             	mov    %cr3,%esi
   108ed:	83 fe 00             	cmp    $0x0,%esi
   108f0:	74 08                	je     0x108fa
   108f2:	be 00 00 00 00       	mov    $0x0,%esi
   108f7:	0f 22 de             	mov    %esi,%cr3
   108fa:	ff 05 c8 05 01 00    	incl   0x105c8
   10900:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   10907:	75 05                	jne    0x1090e
   10909:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   1090e:	6a 0e                	push   $0xe
   10910:	e9 b7 fc ff ff       	jmp    0x105cc
   10915:	6a ff                	push   $0xffffffff
   10917:	60                   	pusha  
   10918:	1e                   	push   %ds
   10919:	06                   	push   %es
   1091a:	0f a0                	push   %fs
   1091c:	0f a8                	push   %gs
   1091e:	0f 20 de             	mov    %cr3,%esi
   10921:	83 fe 00             	cmp    $0x0,%esi
   10924:	74 08                	je     0x1092e
   10926:	be 00 00 00 00       	mov    $0x0,%esi
   1092b:	0f 22 de             	mov    %esi,%cr3
   1092e:	ff 05 c8 05 01 00    	incl   0x105c8
   10934:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   1093b:	75 05                	jne    0x10942
   1093d:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   10942:	6a 0f                	push   $0xf
   10944:	e9 83 fc ff ff       	jmp    0x105cc
   10949:	e8 92 74 00 00       	call   0x17de0
   1094e:	83 c4 24             	add    $0x24,%esp
   10951:	fa                   	cli    
   10952:	ff 0d c8 05 01 00    	decl   0x105c8
   10958:	75 1d                	jne    0x10977
   1095a:	8b 1d 30 f4 01 00    	mov    0x1f430,%ebx
   10960:	89 dc                	mov    %ebx,%esp
   10962:	83 c3 48             	add    $0x48,%ebx
   10965:	89 1d 24 ab 02 00    	mov    %ebx,0x2ab24
   1096b:	8b 5c 24 48          	mov    0x48(%esp),%ebx
   1096f:	83 fb 00             	cmp    $0x0,%ebx
   10972:	74 03                	je     0x10977
   10974:	0f 22 db             	mov    %ebx,%cr3
   10977:	89 44 24 2c          	mov    %eax,0x2c(%esp)
   1097b:	0f a9                	pop    %gs
   1097d:	0f a1                	pop    %fs
   1097f:	07                   	pop    %es
   10980:	1f                   	pop    %ds
   10981:	61                   	popa   
   10982:	83 c4 04             	add    $0x4,%esp
   10985:	cf                   	iret   
   10986:	6a ff                	push   $0xffffffff
   10988:	60                   	pusha  
   10989:	1e                   	push   %ds
   1098a:	06                   	push   %es
   1098b:	0f a0                	push   %fs
   1098d:	0f a8                	push   %gs
   1098f:	0f 20 de             	mov    %cr3,%esi
   10992:	83 fe 00             	cmp    $0x0,%esi
   10995:	74 08                	je     0x1099f
   10997:	be 00 00 00 00       	mov    $0x0,%esi
   1099c:	0f 22 de             	mov    %esi,%cr3
   1099f:	ff 05 c8 05 01 00    	incl   0x105c8
   109a5:	83 3d c8 05 01 00 01 	cmpl   $0x1,0x105c8
   109ac:	75 05                	jne    0x109b3
   109ae:	bc 00 f4 01 00       	mov    $0x1f400,%esp
   109b3:	8b 35 30 f4 01 00    	mov    0x1f430,%esi
   109b9:	fb                   	sti    
   109ba:	60                   	pusha  
   109bb:	68 80 00 00 00       	push   $0x80
   109c0:	eb 87                	jmp    0x10949
   109c2:	b0 11                	mov    $0x11,%al
   109c4:	e6 20                	out    %al,$0x20
   109c6:	e6 a0                	out    %al,$0xa0
   109c8:	b0 20                	mov    $0x20,%al
   109ca:	e6 21                	out    %al,$0x21
   109cc:	b0 28                	mov    $0x28,%al
   109ce:	e6 a1                	out    %al,$0xa1
   109d0:	b0 04                	mov    $0x4,%al
   109d2:	e6 21                	out    %al,$0x21
   109d4:	b0 02                	mov    $0x2,%al
   109d6:	e6 a1                	out    %al,$0xa1
   109d8:	b0 01                	mov    $0x1,%al
   109da:	e6 21                	out    %al,$0x21
   109dc:	e6 a1                	out    %al,$0xa1
   109de:	b0 f8                	mov    $0xf8,%al
   109e0:	e6 21                	out    %al,$0x21
   109e2:	b0 bf                	mov    $0xbf,%al
   109e4:	e6 a1                	out    %al,$0xa1
   109e6:	c3                   	ret    
   109e7:	00 55 89             	add    %dl,0xffffff89(%ebp)
   109ea:	e5 83                	in     $0x83,%eax
   109ec:	ec                   	in     (%dx),%al
   109ed:	28 c7                	sub    %al,%bh
   109ef:	45                   	inc    %ebp
   109f0:	fc                   	cld    
   109f1:	00 00                	add    %al,(%eax)
   109f3:	10 00                	adc    %al,(%eax)
   109f5:	c7 45 f8 c0 0a 02 00 	movl   $0x20ac0,0xfffffff8(%ebp)
   109fc:	eb 2b                	jmp    0x10a29
   109fe:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   10a01:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   10a04:	89 10                	mov    %edx,(%eax)
   10a06:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   10a09:	83 ea 20             	sub    $0x20,%edx
   10a0c:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   10a0f:	89 50 18             	mov    %edx,0x18(%eax)
   10a12:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   10a15:	83 c2 20             	add    $0x20,%edx
   10a18:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   10a1b:	89 50 1c             	mov    %edx,0x1c(%eax)
   10a1e:	81 45 fc 00 10 00 00 	addl   $0x1000,0xfffffffc(%ebp)
   10a25:	83 45 f8 20          	addl   $0x20,0xfffffff8(%ebp)
   10a29:	b8 c0 aa 02 00       	mov    $0x2aac0,%eax
   10a2e:	39 45 f8             	cmp    %eax,0xfffffff8(%ebp)
   10a31:	72 cb                	jb     0x109fe
   10a33:	c7 05 d8 0a 02 00 00 	movl   $0x0,0x20ad8
   10a3a:	00 00 00 
   10a3d:	b8 a0 aa 02 00       	mov    $0x2aaa0,%eax
   10a42:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
   10a49:	b8 c0 aa 02 00       	mov    $0x2aac0,%eax
   10a4e:	39 45 f8             	cmp    %eax,0xfffffff8(%ebp)
   10a51:	74 24                	je     0x10a77
   10a53:	c7 44 24 0c 1c 00 00 	movl   $0x1c,0xc(%esp)
   10a5a:	00 
   10a5b:	c7 44 24 08 ec ad 01 	movl   $0x1adec,0x8(%esp)
   10a62:	00 
   10a63:	c7 44 24 04 ec ad 01 	movl   $0x1adec,0x4(%esp)
   10a6a:	00 
   10a6b:	c7 04 24 f7 ad 01 00 	movl   $0x1adf7,(%esp)
   10a72:	e8 b1 91 00 00       	call   0x19c28
   10a77:	81 7d fc 00 00 60 00 	cmpl   $0x600000,0xfffffffc(%ebp)
   10a7e:	74 24                	je     0x10aa4
   10a80:	c7 44 24 0c 1d 00 00 	movl   $0x1d,0xc(%esp)
   10a87:	00 
   10a88:	c7 44 24 08 ec ad 01 	movl   $0x1adec,0x8(%esp)
   10a8f:	00 
   10a90:	c7 44 24 04 ec ad 01 	movl   $0x1adec,0x4(%esp)
   10a97:	00 
   10a98:	c7 04 24 12 ae 01 00 	movl   $0x1ae12,(%esp)
   10a9f:	e8 84 91 00 00       	call   0x19c28
   10aa4:	c7 05 34 f4 01 00 c0 	movl   $0x20ac0,0x1f434
   10aab:	0a 02 00 
   10aae:	b8 a0 aa 02 00       	mov    $0x2aaa0,%eax
   10ab3:	a3 c0 49 04 00       	mov    %eax,0x449c0
   10ab8:	c7 05 c0 aa 02 00 00 	movl   $0x0,0x2aac0
   10abf:	00 00 00 
   10ac2:	c7 05 8c ab 02 00 00 	movl   $0x0,0x2ab8c
   10ac9:	00 00 00 
   10acc:	c9                   	leave  
   10acd:	c3                   	ret    
   10ace:	55                   	push   %ebp
   10acf:	89 e5                	mov    %esp,%ebp
   10ad1:	83 ec 14             	sub    $0x14,%esp
   10ad4:	8b 45 08             	mov    0x8(%ebp),%eax
   10ad7:	8b 40 20             	mov    0x20(%eax),%eax
   10ada:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   10add:	8b 45 08             	mov    0x8(%ebp),%eax
   10ae0:	8b 40 28             	mov    0x28(%eax),%eax
   10ae3:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   10ae6:	a1 c0 aa 02 00       	mov    0x2aac0,%eax
   10aeb:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   10aee:	81 65 0c 00 f0 ff ff 	andl   $0xfffff000,0xc(%ebp)
   10af5:	a1 c0 aa 02 00       	mov    0x2aac0,%eax
   10afa:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   10afd:	eb 32                	jmp    0x10b31
   10aff:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10b02:	8b 40 04             	mov    0x4(%eax),%eax
   10b05:	3b 45 f4             	cmp    0xfffffff4(%ebp),%eax
   10b08:	75 1e                	jne    0x10b28
   10b0a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10b0d:	8b 40 08             	mov    0x8(%eax),%eax
   10b10:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
   10b13:	75 13                	jne    0x10b28
   10b15:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10b18:	8b 40 0c             	mov    0xc(%eax),%eax
   10b1b:	3b 45 0c             	cmp    0xc(%ebp),%eax
   10b1e:	75 08                	jne    0x10b28
   10b20:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10b23:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   10b26:	eb 16                	jmp    0x10b3e
   10b28:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10b2b:	8b 40 1c             	mov    0x1c(%eax),%eax
   10b2e:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   10b31:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
   10b35:	75 c8                	jne    0x10aff
   10b37:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
   10b3e:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   10b41:	c9                   	leave  
   10b42:	c3                   	ret    
   10b43:	55                   	push   %ebp
   10b44:	89 e5                	mov    %esp,%ebp
   10b46:	83 ec 28             	sub    $0x28,%esp
   10b49:	a1 34 f4 01 00       	mov    0x1f434,%eax
   10b4e:	85 c0                	test   %eax,%eax
   10b50:	75 0c                	jne    0x10b5e
   10b52:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
   10b59:	e9 ed 00 00 00       	jmp    0x10c4b
   10b5e:	8b 45 08             	mov    0x8(%ebp),%eax
   10b61:	8b 40 20             	mov    0x20(%eax),%eax
   10b64:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   10b67:	8b 45 08             	mov    0x8(%ebp),%eax
   10b6a:	8b 40 28             	mov    0x28(%eax),%eax
   10b6d:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   10b70:	a1 34 f4 01 00       	mov    0x1f434,%eax
   10b75:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   10b78:	a1 34 f4 01 00       	mov    0x1f434,%eax
   10b7d:	8b 40 1c             	mov    0x1c(%eax),%eax
   10b80:	a3 34 f4 01 00       	mov    %eax,0x1f434
   10b85:	a1 34 f4 01 00       	mov    0x1f434,%eax
   10b8a:	85 c0                	test   %eax,%eax
   10b8c:	75 0c                	jne    0x10b9a
   10b8e:	c7 05 c0 49 04 00 00 	movl   $0x0,0x449c0
   10b95:	00 00 00 
   10b98:	eb 0c                	jmp    0x10ba6
   10b9a:	a1 34 f4 01 00       	mov    0x1f434,%eax
   10b9f:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
   10ba6:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   10ba9:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   10bac:	89 42 04             	mov    %eax,0x4(%edx)
   10baf:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   10bb2:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   10bb5:	89 42 08             	mov    %eax,0x8(%edx)
   10bb8:	8b 55 0c             	mov    0xc(%ebp),%edx
   10bbb:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
   10bc1:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10bc4:	89 50 0c             	mov    %edx,0xc(%eax)
   10bc7:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10bca:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
   10bd1:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10bd4:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
   10bdb:	8b 15 8c ab 02 00    	mov    0x2ab8c,%edx
   10be1:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10be4:	89 50 18             	mov    %edx,0x18(%eax)
   10be7:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10bea:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
   10bf1:	a1 c0 aa 02 00       	mov    0x2aac0,%eax
   10bf6:	85 c0                	test   %eax,%eax
   10bf8:	75 37                	jne    0x10c31
   10bfa:	a1 8c ab 02 00       	mov    0x2ab8c,%eax
   10bff:	85 c0                	test   %eax,%eax
   10c01:	74 24                	je     0x10c27
   10c03:	c7 44 24 0c 60 00 00 	movl   $0x60,0xc(%esp)
   10c0a:	00 
   10c0b:	c7 44 24 08 ec ad 01 	movl   $0x1adec,0x8(%esp)
   10c12:	00 
   10c13:	c7 44 24 04 ec ad 01 	movl   $0x1adec,0x4(%esp)
   10c1a:	00 
   10c1b:	c7 04 24 2a ae 01 00 	movl   $0x1ae2a,(%esp)
   10c22:	e8 01 90 00 00       	call   0x19c28
   10c27:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10c2a:	a3 c0 aa 02 00       	mov    %eax,0x2aac0
   10c2f:	eb 0c                	jmp    0x10c3d
   10c31:	8b 15 8c ab 02 00    	mov    0x2ab8c,%edx
   10c37:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10c3a:	89 42 1c             	mov    %eax,0x1c(%edx)
   10c3d:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10c40:	a3 8c ab 02 00       	mov    %eax,0x2ab8c
   10c45:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10c48:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   10c4b:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   10c4e:	c9                   	leave  
   10c4f:	c3                   	ret    
   10c50:	55                   	push   %ebp
   10c51:	89 e5                	mov    %esp,%ebp
   10c53:	83 ec 28             	sub    $0x28,%esp
   10c56:	a1 c0 aa 02 00       	mov    0x2aac0,%eax
   10c5b:	39 45 08             	cmp    %eax,0x8(%ebp)
   10c5e:	75 36                	jne    0x10c96
   10c60:	a1 c0 aa 02 00       	mov    0x2aac0,%eax
   10c65:	8b 40 1c             	mov    0x1c(%eax),%eax
   10c68:	a3 c0 aa 02 00       	mov    %eax,0x2aac0
   10c6d:	a1 c0 aa 02 00       	mov    0x2aac0,%eax
   10c72:	85 c0                	test   %eax,%eax
   10c74:	75 0f                	jne    0x10c85
   10c76:	c7 05 8c ab 02 00 00 	movl   $0x0,0x2ab8c
   10c7d:	00 00 00 
   10c80:	e9 d9 00 00 00       	jmp    0x10d5e
   10c85:	a1 c0 aa 02 00       	mov    0x2aac0,%eax
   10c8a:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
   10c91:	e9 c8 00 00 00       	jmp    0x10d5e
   10c96:	a1 8c ab 02 00       	mov    0x2ab8c,%eax
   10c9b:	39 45 08             	cmp    %eax,0x8(%ebp)
   10c9e:	75 36                	jne    0x10cd6
   10ca0:	a1 8c ab 02 00       	mov    0x2ab8c,%eax
   10ca5:	8b 40 18             	mov    0x18(%eax),%eax
   10ca8:	a3 8c ab 02 00       	mov    %eax,0x2ab8c
   10cad:	a1 8c ab 02 00       	mov    0x2ab8c,%eax
   10cb2:	85 c0                	test   %eax,%eax
   10cb4:	75 0f                	jne    0x10cc5
   10cb6:	c7 05 c0 aa 02 00 00 	movl   $0x0,0x2aac0
   10cbd:	00 00 00 
   10cc0:	e9 99 00 00 00       	jmp    0x10d5e
   10cc5:	a1 8c ab 02 00       	mov    0x2ab8c,%eax
   10cca:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
   10cd1:	e9 88 00 00 00       	jmp    0x10d5e
   10cd6:	a1 c0 aa 02 00       	mov    0x2aac0,%eax
   10cdb:	8b 40 1c             	mov    0x1c(%eax),%eax
   10cde:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   10ce1:	eb 11                	jmp    0x10cf4
   10ce3:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10ce6:	3b 45 08             	cmp    0x8(%ebp),%eax
   10ce9:	74 13                	je     0x10cfe
   10ceb:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10cee:	8b 40 1c             	mov    0x1c(%eax),%eax
   10cf1:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   10cf4:	a1 8c ab 02 00       	mov    0x2ab8c,%eax
   10cf9:	39 45 fc             	cmp    %eax,0xfffffffc(%ebp)
   10cfc:	75 e5                	jne    0x10ce3
   10cfe:	a1 8c ab 02 00       	mov    0x2ab8c,%eax
   10d03:	39 45 fc             	cmp    %eax,0xfffffffc(%ebp)
   10d06:	75 0c                	jne    0x10d14
   10d08:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,0xffffffec(%ebp)
   10d0f:	e9 bb 00 00 00       	jmp    0x10dcf
   10d14:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10d17:	3b 45 08             	cmp    0x8(%ebp),%eax
   10d1a:	74 24                	je     0x10d40
   10d1c:	c7 44 24 0c 95 00 00 	movl   $0x95,0xc(%esp)
   10d23:	00 
   10d24:	c7 44 24 08 ec ad 01 	movl   $0x1adec,0x8(%esp)
   10d2b:	00 
   10d2c:	c7 44 24 04 ec ad 01 	movl   $0x1adec,0x4(%esp)
   10d33:	00 
   10d34:	c7 04 24 3e ae 01 00 	movl   $0x1ae3e,(%esp)
   10d3b:	e8 e8 8e 00 00       	call   0x19c28
   10d40:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10d43:	8b 50 18             	mov    0x18(%eax),%edx
   10d46:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10d49:	8b 40 1c             	mov    0x1c(%eax),%eax
   10d4c:	89 42 1c             	mov    %eax,0x1c(%edx)
   10d4f:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10d52:	8b 50 1c             	mov    0x1c(%eax),%edx
   10d55:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10d58:	8b 40 18             	mov    0x18(%eax),%eax
   10d5b:	89 42 18             	mov    %eax,0x18(%edx)
   10d5e:	8b 15 c0 49 04 00    	mov    0x449c0,%edx
   10d64:	8b 45 08             	mov    0x8(%ebp),%eax
   10d67:	89 50 18             	mov    %edx,0x18(%eax)
   10d6a:	8b 45 08             	mov    0x8(%ebp),%eax
   10d6d:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
   10d74:	a1 34 f4 01 00       	mov    0x1f434,%eax
   10d79:	85 c0                	test   %eax,%eax
   10d7b:	75 37                	jne    0x10db4
   10d7d:	a1 c0 49 04 00       	mov    0x449c0,%eax
   10d82:	85 c0                	test   %eax,%eax
   10d84:	74 24                	je     0x10daa
   10d86:	c7 44 24 0c 9f 00 00 	movl   $0x9f,0xc(%esp)
   10d8d:	00 
   10d8e:	c7 44 24 08 ec ad 01 	movl   $0x1adec,0x8(%esp)
   10d95:	00 
   10d96:	c7 44 24 04 ec ad 01 	movl   $0x1adec,0x4(%esp)
   10d9d:	00 
   10d9e:	c7 04 24 4d ae 01 00 	movl   $0x1ae4d,(%esp)
   10da5:	e8 7e 8e 00 00       	call   0x19c28
   10daa:	8b 45 08             	mov    0x8(%ebp),%eax
   10dad:	a3 34 f4 01 00       	mov    %eax,0x1f434
   10db2:	eb 0c                	jmp    0x10dc0
   10db4:	8b 15 c0 49 04 00    	mov    0x449c0,%edx
   10dba:	8b 45 08             	mov    0x8(%ebp),%eax
   10dbd:	89 42 1c             	mov    %eax,0x1c(%edx)
   10dc0:	8b 45 08             	mov    0x8(%ebp),%eax
   10dc3:	a3 c0 49 04 00       	mov    %eax,0x449c0
   10dc8:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
   10dcf:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   10dd2:	c9                   	leave  
   10dd3:	c3                   	ret    
   10dd4:	55                   	push   %ebp
   10dd5:	89 e5                	mov    %esp,%ebp
   10dd7:	83 ec 38             	sub    $0x38,%esp
   10dda:	8b 45 08             	mov    0x8(%ebp),%eax
   10ddd:	8b 40 20             	mov    0x20(%eax),%eax
   10de0:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   10de3:	8b 45 08             	mov    0x8(%ebp),%eax
   10de6:	8b 40 28             	mov    0x28(%eax),%eax
   10de9:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   10dec:	a1 c0 aa 02 00       	mov    0x2aac0,%eax
   10df1:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   10df4:	e9 88 00 00 00       	jmp    0x10e81
   10df9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10dfc:	8b 40 04             	mov    0x4(%eax),%eax
   10dff:	3b 45 f4             	cmp    0xfffffff4(%ebp),%eax
   10e02:	75 74                	jne    0x10e78
   10e04:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10e07:	8b 40 08             	mov    0x8(%eax),%eax
   10e0a:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
   10e0d:	75 69                	jne    0x10e78
   10e0f:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10e12:	8b 40 14             	mov    0x14(%eax),%eax
   10e15:	83 f8 01             	cmp    $0x1,%eax
   10e18:	75 15                	jne    0x10e2f
   10e1a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10e1d:	89 04 24             	mov    %eax,(%esp)
   10e20:	e8 6d 00 00 00       	call   0x10e92
   10e25:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10e28:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
   10e2f:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
   10e33:	75 43                	jne    0x10e78
   10e35:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   10e38:	8b 02                	mov    (%edx),%eax
   10e3a:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
   10e3d:	8b 42 04             	mov    0x4(%edx),%eax
   10e40:	89 45 d8             	mov    %eax,0xffffffd8(%ebp)
   10e43:	8b 42 08             	mov    0x8(%edx),%eax
   10e46:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
   10e49:	8b 42 0c             	mov    0xc(%edx),%eax
   10e4c:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   10e4f:	8b 42 10             	mov    0x10(%edx),%eax
   10e52:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   10e55:	8b 42 14             	mov    0x14(%edx),%eax
   10e58:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   10e5b:	8b 42 18             	mov    0x18(%edx),%eax
   10e5e:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   10e61:	8b 42 1c             	mov    0x1c(%edx),%eax
   10e64:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   10e67:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10e6a:	89 04 24             	mov    %eax,(%esp)
   10e6d:	e8 de fd ff ff       	call   0x10c50
   10e72:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
   10e75:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   10e78:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   10e7b:	8b 40 1c             	mov    0x1c(%eax),%eax
   10e7e:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   10e81:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
   10e85:	0f 85 6e ff ff ff    	jne    0x10df9
   10e8b:	b8 00 00 00 00       	mov    $0x0,%eax
   10e90:	c9                   	leave  
   10e91:	c3                   	ret    
   10e92:	55                   	push   %ebp
   10e93:	89 e5                	mov    %esp,%ebp
   10e95:	57                   	push   %edi
   10e96:	56                   	push   %esi
   10e97:	83 ec 50             	sub    $0x50,%esp
   10e9a:	8b 45 08             	mov    0x8(%ebp),%eax
   10e9d:	8b 40 04             	mov    0x4(%eax),%eax
   10ea0:	89 45 d0             	mov    %eax,0xffffffd0(%ebp)
   10ea3:	8b 45 08             	mov    0x8(%ebp),%eax
   10ea6:	8b 40 08             	mov    0x8(%eax),%eax
   10ea9:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
   10eac:	c7 45 d8 40 f4 01 00 	movl   $0x1f440,0xffffffd8(%ebp)
   10eb3:	eb 26                	jmp    0x10edb
   10eb5:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   10eb8:	8b 40 24             	mov    0x24(%eax),%eax
   10ebb:	85 c0                	test   %eax,%eax
   10ebd:	74 18                	je     0x10ed7
   10ebf:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   10ec2:	8b 40 20             	mov    0x20(%eax),%eax
   10ec5:	3b 45 d0             	cmp    0xffffffd0(%ebp),%eax
   10ec8:	75 0d                	jne    0x10ed7
   10eca:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   10ecd:	8b 40 28             	mov    0x28(%eax),%eax
   10ed0:	3b 45 d4             	cmp    0xffffffd4(%ebp),%eax
   10ed3:	75 02                	jne    0x10ed7
   10ed5:	eb 0e                	jmp    0x10ee5
   10ed7:	83 45 d8 2c          	addl   $0x2c,0xffffffd8(%ebp)
   10edb:	b8 40 ff 01 00       	mov    $0x1ff40,%eax
   10ee0:	39 45 d8             	cmp    %eax,0xffffffd8(%ebp)
   10ee3:	72 d0                	jb     0x10eb5
   10ee5:	b8 40 ff 01 00       	mov    $0x1ff40,%eax
   10eea:	39 45 d8             	cmp    %eax,0xffffffd8(%ebp)
   10eed:	72 24                	jb     0x10f13
   10eef:	c7 44 24 0c ea 00 00 	movl   $0xea,0xc(%esp)
   10ef6:	00 
   10ef7:	c7 44 24 08 ec ad 01 	movl   $0x1adec,0x8(%esp)
   10efe:	00 
   10eff:	c7 44 24 04 ec ad 01 	movl   $0x1adec,0x4(%esp)
   10f06:	00 
   10f07:	c7 04 24 60 ae 01 00 	movl   $0x1ae60,(%esp)
   10f0e:	e8 15 8d 00 00       	call   0x19c28
   10f13:	8b 45 08             	mov    0x8(%ebp),%eax
   10f16:	8b 00                	mov    (%eax),%eax
   10f18:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
   10f1b:	8b 45 08             	mov    0x8(%ebp),%eax
   10f1e:	8b 40 0c             	mov    0xc(%eax),%eax
   10f21:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   10f24:	8b 45 08             	mov    0x8(%ebp),%eax
   10f27:	8b 40 10             	mov    0x10(%eax),%eax
   10f2a:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   10f2d:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   10f30:	8b 40 08             	mov    0x8(%eax),%eax
   10f33:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   10f36:	83 7d e0 00          	cmpl   $0x0,0xffffffe0(%ebp)
   10f3a:	78 09                	js     0x10f45
   10f3c:	81 7d e0 ff 8f 01 00 	cmpl   $0x18fff,0xffffffe0(%ebp)
   10f43:	7e 18                	jle    0x10f5d
   10f45:	c7 04 24 86 ae 01 00 	movl   $0x1ae86,(%esp)
   10f4c:	e8 fb 9d 00 00       	call   0x1ad4c
   10f51:	c7 45 c4 ff ff ff ff 	movl   $0xffffffff,0xffffffc4(%ebp)
   10f58:	e9 c9 01 00 00       	jmp    0x11126
   10f5d:	8b 55 e0             	mov    0xffffffe0(%ebp),%edx
   10f60:	89 d0                	mov    %edx,%eax
   10f62:	c1 f8 1f             	sar    $0x1f,%eax
   10f65:	c1 e8 17             	shr    $0x17,%eax
   10f68:	01 d0                	add    %edx,%eax
   10f6a:	c1 f8 09             	sar    $0x9,%eax
   10f6d:	89 c2                	mov    %eax,%edx
   10f6f:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   10f72:	8d 04 02             	lea    (%edx,%eax,1),%eax
   10f75:	83 c0 06             	add    $0x6,%eax
   10f78:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   10f7b:	8b 55 e0             	mov    0xffffffe0(%ebp),%edx
   10f7e:	89 d0                	mov    %edx,%eax
   10f80:	c1 f8 1f             	sar    $0x1f,%eax
   10f83:	89 c1                	mov    %eax,%ecx
   10f85:	c1 e9 17             	shr    $0x17,%ecx
   10f88:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
   10f8b:	25 ff 01 00 00       	and    $0x1ff,%eax
   10f90:	29 c8                	sub    %ecx,%eax
   10f92:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   10f95:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
   10f9c:	c7 45 f0 00 00 00 00 	movl   $0x0,0xfffffff0(%ebp)
   10fa3:	e9 6d 01 00 00       	jmp    0x11115
   10fa8:	8b 4d e8             	mov    0xffffffe8(%ebp),%ecx
   10fab:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   10fae:	8b 50 08             	mov    0x8(%eax),%edx
   10fb1:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   10fb4:	8b 40 0c             	mov    0xc(%eax),%eax
   10fb7:	8d 04 02             	lea    (%edx,%eax,1),%eax
   10fba:	83 c0 06             	add    $0x6,%eax
   10fbd:	39 c1                	cmp    %eax,%ecx
   10fbf:	72 35                	jb     0x10ff6
   10fc1:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   10fc4:	8b 50 0c             	mov    0xc(%eax),%edx
   10fc7:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   10fca:	8b 40 08             	mov    0x8(%eax),%eax
   10fcd:	83 c0 06             	add    $0x6,%eax
   10fd0:	89 54 24 0c          	mov    %edx,0xc(%esp)
   10fd4:	89 44 24 08          	mov    %eax,0x8(%esp)
   10fd8:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   10fdb:	89 44 24 04          	mov    %eax,0x4(%esp)
   10fdf:	c7 04 24 a0 ae 01 00 	movl   $0x1aea0,(%esp)
   10fe6:	e8 61 9d 00 00       	call   0x1ad4c
   10feb:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   10fee:	89 45 c4             	mov    %eax,0xffffffc4(%ebp)
   10ff1:	e9 30 01 00 00       	jmp    0x11126
   10ff6:	b8 00 02 00 00       	mov    $0x200,%eax
   10ffb:	2b 45 e0             	sub    0xffffffe0(%ebp),%eax
   10ffe:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   11001:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   11004:	3b 45 e4             	cmp    0xffffffe4(%ebp),%eax
   11007:	0f 8c 80 00 00 00    	jl     0x1108d
   1100d:	81 7d e4 00 02 00 00 	cmpl   $0x200,0xffffffe4(%ebp)
   11014:	74 26                	je     0x1103c
   11016:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   11019:	c1 e0 09             	shl    $0x9,%eax
   1101c:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   11023:	00 
   11024:	89 44 24 08          	mov    %eax,0x8(%esp)
   11028:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   1102f:	00 
   11030:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11037:	e8 49 29 00 00       	call   0x13985
   1103c:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   1103f:	8d b8 a0 ab 02 00    	lea    0x2aba0(%eax),%edi
   11045:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   11048:	89 c6                	mov    %eax,%esi
   1104a:	03 75 dc             	add    0xffffffdc(%ebp),%esi
   1104d:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
   11050:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   11052:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   11055:	c1 e0 09             	shl    $0x9,%eax
   11058:	83 45 e8 01          	addl   $0x1,0xffffffe8(%ebp)
   1105c:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   11063:	00 
   11064:	89 44 24 08          	mov    %eax,0x8(%esp)
   11068:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   1106f:	00 
   11070:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11077:	e8 8e 29 00 00       	call   0x13a0a
   1107c:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1107f:	01 45 f0             	add    %eax,0xfffffff0(%ebp)
   11082:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11085:	89 45 c4             	mov    %eax,0xffffffc4(%ebp)
   11088:	e9 99 00 00 00       	jmp    0x11126
   1108d:	81 7d f4 00 02 00 00 	cmpl   $0x200,0xfffffff4(%ebp)
   11094:	74 26                	je     0x110bc
   11096:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   11099:	c1 e0 09             	shl    $0x9,%eax
   1109c:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   110a3:	00 
   110a4:	89 44 24 08          	mov    %eax,0x8(%esp)
   110a8:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   110af:	00 
   110b0:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   110b7:	e8 c9 28 00 00       	call   0x13985
   110bc:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   110bf:	8d b8 a0 ab 02 00    	lea    0x2aba0(%eax),%edi
   110c5:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   110c8:	89 c6                	mov    %eax,%esi
   110ca:	03 75 dc             	add    0xffffffdc(%ebp),%esi
   110cd:	8b 4d f4             	mov    0xfffffff4(%ebp),%ecx
   110d0:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   110d2:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   110d5:	c1 e0 09             	shl    $0x9,%eax
   110d8:	83 45 e8 01          	addl   $0x1,0xffffffe8(%ebp)
   110dc:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   110e3:	00 
   110e4:	89 44 24 08          	mov    %eax,0x8(%esp)
   110e8:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   110ef:	00 
   110f0:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   110f7:	e8 0e 29 00 00       	call   0x13a0a
   110fc:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
   11103:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   11106:	01 45 ec             	add    %eax,0xffffffec(%ebp)
   11109:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   1110c:	29 45 e4             	sub    %eax,0xffffffe4(%ebp)
   1110f:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   11112:	01 45 f0             	add    %eax,0xfffffff0(%ebp)
   11115:	83 7d e4 00          	cmpl   $0x0,0xffffffe4(%ebp)
   11119:	0f 8f 89 fe ff ff    	jg     0x10fa8
   1111f:	c7 45 c4 00 00 00 00 	movl   $0x0,0xffffffc4(%ebp)
   11126:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
   11129:	83 c4 50             	add    $0x50,%esp
   1112c:	5e                   	pop    %esi
   1112d:	5f                   	pop    %edi
   1112e:	5d                   	pop    %ebp
   1112f:	c3                   	ret    
   11130:	55                   	push   %ebp
   11131:	89 e5                	mov    %esp,%ebp
   11133:	57                   	push   %edi
   11134:	56                   	push   %esi
   11135:	83 ec 50             	sub    $0x50,%esp
   11138:	8b 45 08             	mov    0x8(%ebp),%eax
   1113b:	8b 40 04             	mov    0x4(%eax),%eax
   1113e:	89 45 d0             	mov    %eax,0xffffffd0(%ebp)
   11141:	8b 45 08             	mov    0x8(%ebp),%eax
   11144:	8b 40 08             	mov    0x8(%eax),%eax
   11147:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
   1114a:	c7 45 d8 40 f4 01 00 	movl   $0x1f440,0xffffffd8(%ebp)
   11151:	eb 26                	jmp    0x11179
   11153:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   11156:	8b 40 24             	mov    0x24(%eax),%eax
   11159:	85 c0                	test   %eax,%eax
   1115b:	74 18                	je     0x11175
   1115d:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   11160:	8b 40 20             	mov    0x20(%eax),%eax
   11163:	3b 45 d0             	cmp    0xffffffd0(%ebp),%eax
   11166:	75 0d                	jne    0x11175
   11168:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   1116b:	8b 40 28             	mov    0x28(%eax),%eax
   1116e:	3b 45 d4             	cmp    0xffffffd4(%ebp),%eax
   11171:	75 02                	jne    0x11175
   11173:	eb 0e                	jmp    0x11183
   11175:	83 45 d8 2c          	addl   $0x2c,0xffffffd8(%ebp)
   11179:	b8 40 ff 01 00       	mov    $0x1ff40,%eax
   1117e:	39 45 d8             	cmp    %eax,0xffffffd8(%ebp)
   11181:	72 d0                	jb     0x11153
   11183:	b8 40 ff 01 00       	mov    $0x1ff40,%eax
   11188:	39 45 d8             	cmp    %eax,0xffffffd8(%ebp)
   1118b:	72 24                	jb     0x111b1
   1118d:	c7 44 24 0c 36 01 00 	movl   $0x136,0xc(%esp)
   11194:	00 
   11195:	c7 44 24 08 ec ad 01 	movl   $0x1adec,0x8(%esp)
   1119c:	00 
   1119d:	c7 44 24 04 ec ad 01 	movl   $0x1adec,0x4(%esp)
   111a4:	00 
   111a5:	c7 04 24 60 ae 01 00 	movl   $0x1ae60,(%esp)
   111ac:	e8 77 8a 00 00       	call   0x19c28
   111b1:	8b 45 08             	mov    0x8(%ebp),%eax
   111b4:	8b 00                	mov    (%eax),%eax
   111b6:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
   111b9:	8b 45 08             	mov    0x8(%ebp),%eax
   111bc:	8b 40 0c             	mov    0xc(%eax),%eax
   111bf:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   111c2:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   111c5:	8b 50 04             	mov    0x4(%eax),%edx
   111c8:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   111cb:	89 d1                	mov    %edx,%ecx
   111cd:	29 c1                	sub    %eax,%ecx
   111cf:	89 c8                	mov    %ecx,%eax
   111d1:	89 45 c0             	mov    %eax,0xffffffc0(%ebp)
   111d4:	81 7d c0 00 10 00 00 	cmpl   $0x1000,0xffffffc0(%ebp)
   111db:	76 07                	jbe    0x111e4
   111dd:	c7 45 c0 00 10 00 00 	movl   $0x1000,0xffffffc0(%ebp)
   111e4:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
   111e7:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   111ea:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   111ed:	8b 40 08             	mov    0x8(%eax),%eax
   111f0:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   111f3:	83 7d e0 00          	cmpl   $0x0,0xffffffe0(%ebp)
   111f7:	78 09                	js     0x11202
   111f9:	81 7d e0 ff 8f 01 00 	cmpl   $0x18fff,0xffffffe0(%ebp)
   11200:	7e 24                	jle    0x11226
   11202:	c7 44 24 0c 3d 01 00 	movl   $0x13d,0xc(%esp)
   11209:	00 
   1120a:	c7 44 24 08 ec ad 01 	movl   $0x1adec,0x8(%esp)
   11211:	00 
   11212:	c7 44 24 04 ec ad 01 	movl   $0x1adec,0x4(%esp)
   11219:	00 
   1121a:	c7 04 24 d8 ae 01 00 	movl   $0x1aed8,(%esp)
   11221:	e8 02 8a 00 00       	call   0x19c28
   11226:	8b 55 e0             	mov    0xffffffe0(%ebp),%edx
   11229:	89 d0                	mov    %edx,%eax
   1122b:	c1 f8 1f             	sar    $0x1f,%eax
   1122e:	c1 e8 17             	shr    $0x17,%eax
   11231:	01 d0                	add    %edx,%eax
   11233:	c1 f8 09             	sar    $0x9,%eax
   11236:	89 c2                	mov    %eax,%edx
   11238:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   1123b:	8d 04 02             	lea    (%edx,%eax,1),%eax
   1123e:	83 c0 06             	add    $0x6,%eax
   11241:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   11244:	8b 55 e0             	mov    0xffffffe0(%ebp),%edx
   11247:	89 d0                	mov    %edx,%eax
   11249:	c1 f8 1f             	sar    $0x1f,%eax
   1124c:	89 c1                	mov    %eax,%ecx
   1124e:	c1 e9 17             	shr    $0x17,%ecx
   11251:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
   11254:	25 ff 01 00 00       	and    $0x1ff,%eax
   11259:	29 c8                	sub    %ecx,%eax
   1125b:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   1125e:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
   11265:	c7 45 f0 00 00 00 00 	movl   $0x0,0xfffffff0(%ebp)
   1126c:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
   11273:	e9 e4 00 00 00       	jmp    0x1135c
   11278:	8b 4d e8             	mov    0xffffffe8(%ebp),%ecx
   1127b:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   1127e:	8b 50 08             	mov    0x8(%eax),%edx
   11281:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   11284:	8b 40 0c             	mov    0xc(%eax),%eax
   11287:	8d 04 02             	lea    (%edx,%eax,1),%eax
   1128a:	83 c0 06             	add    $0x6,%eax
   1128d:	39 c1                	cmp    %eax,%ecx
   1128f:	72 32                	jb     0x112c3
   11291:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   11294:	8b 50 0c             	mov    0xc(%eax),%edx
   11297:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   1129a:	8b 40 08             	mov    0x8(%eax),%eax
   1129d:	89 54 24 0c          	mov    %edx,0xc(%esp)
   112a1:	89 44 24 08          	mov    %eax,0x8(%esp)
   112a5:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   112a8:	89 44 24 04          	mov    %eax,0x4(%esp)
   112ac:	c7 04 24 00 af 01 00 	movl   $0x1af00,(%esp)
   112b3:	e8 94 9a 00 00       	call   0x1ad4c
   112b8:	8b 4d f4             	mov    0xfffffff4(%ebp),%ecx
   112bb:	89 4d c4             	mov    %ecx,0xffffffc4(%ebp)
   112be:	e9 b4 00 00 00       	jmp    0x11377
   112c3:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   112c6:	c1 e0 09             	shl    $0x9,%eax
   112c9:	83 45 e8 01          	addl   $0x1,0xffffffe8(%ebp)
   112cd:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   112d4:	00 
   112d5:	89 44 24 08          	mov    %eax,0x8(%esp)
   112d9:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   112e0:	00 
   112e1:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   112e8:	e8 98 26 00 00       	call   0x13985
   112ed:	b8 00 02 00 00       	mov    $0x200,%eax
   112f2:	2b 45 e0             	sub    0xffffffe0(%ebp),%eax
   112f5:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   112f8:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   112fb:	3b 45 e4             	cmp    0xffffffe4(%ebp),%eax
   112fe:	7c 2d                	jl     0x1132d
   11300:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   11303:	89 c7                	mov    %eax,%edi
   11305:	03 7d dc             	add    0xffffffdc(%ebp),%edi
   11308:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   1130b:	8d b0 a0 ab 02 00    	lea    0x2aba0(%eax),%esi
   11311:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
   11314:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   11316:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   11319:	01 45 f4             	add    %eax,0xfffffff4(%ebp)
   1131c:	8b 55 08             	mov    0x8(%ebp),%edx
   1131f:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   11322:	89 42 10             	mov    %eax,0x10(%edx)
   11325:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   11328:	89 45 c4             	mov    %eax,0xffffffc4(%ebp)
   1132b:	eb 4a                	jmp    0x11377
   1132d:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   11330:	89 c7                	mov    %eax,%edi
   11332:	03 7d dc             	add    0xffffffdc(%ebp),%edi
   11335:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   11338:	8d b0 a0 ab 02 00    	lea    0x2aba0(%eax),%esi
   1133e:	8b 4d f0             	mov    0xfffffff0(%ebp),%ecx
   11341:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   11343:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
   1134a:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1134d:	01 45 ec             	add    %eax,0xffffffec(%ebp)
   11350:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11353:	29 45 e4             	sub    %eax,0xffffffe4(%ebp)
   11356:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11359:	01 45 f4             	add    %eax,0xfffffff4(%ebp)
   1135c:	83 7d e4 00          	cmpl   $0x0,0xffffffe4(%ebp)
   11360:	0f 8f 12 ff ff ff    	jg     0x11278
   11366:	8b 45 08             	mov    0x8(%ebp),%eax
   11369:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
   11370:	c7 45 c4 00 00 00 00 	movl   $0x0,0xffffffc4(%ebp)
   11377:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
   1137a:	83 c4 50             	add    $0x50,%esp
   1137d:	5e                   	pop    %esi
   1137e:	5f                   	pop    %edi
   1137f:	5d                   	pop    %ebp
   11380:	c3                   	ret    
   11381:	00 00                	add    %al,(%eax)
   11383:	00 55 89             	add    %dl,0xffffff89(%ebp)
   11386:	e5 56                	in     $0x56,%eax
   11388:	53                   	push   %ebx
   11389:	83 ec 50             	sub    $0x50,%esp
   1138c:	e8 c0 07 00 00       	call   0x11b51
   11391:	eb 00                	jmp    0x11393
   11393:	8d 45 c8             	lea    0xffffffc8(%ebp),%eax
   11396:	89 44 24 08          	mov    %eax,0x8(%esp)
   1139a:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
   113a1:	ff 
   113a2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
   113a9:	e8 42 88 00 00       	call   0x19bf0
   113ae:	85 c0                	test   %eax,%eax
   113b0:	74 24                	je     0x113d6
   113b2:	c7 44 24 0c 1f 00 00 	movl   $0x1f,0xc(%esp)
   113b9:	00 
   113ba:	c7 44 24 08 38 af 01 	movl   $0x1af38,0x8(%esp)
   113c1:	00 
   113c2:	c7 44 24 04 38 af 01 	movl   $0x1af38,0x4(%esp)
   113c9:	00 
   113ca:	c7 04 24 3d af 01 00 	movl   $0x1af3d,(%esp)
   113d1:	e8 52 88 00 00       	call   0x19c28
   113d6:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   113d9:	83 f8 fd             	cmp    $0xfffffffd,%eax
   113dc:	74 24                	je     0x11402
   113de:	c7 44 24 0c 20 00 00 	movl   $0x20,0xc(%esp)
   113e5:	00 
   113e6:	c7 44 24 08 38 af 01 	movl   $0x1af38,0x8(%esp)
   113ed:	00 
   113ee:	c7 44 24 04 38 af 01 	movl   $0x1af38,0x4(%esp)
   113f5:	00 
   113f6:	c7 04 24 51 af 01 00 	movl   $0x1af51,(%esp)
   113fd:	e8 26 88 00 00       	call   0x19c28
   11402:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   11405:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   11408:	8d 45 c8             	lea    0xffffffc8(%ebp),%eax
   1140b:	83 c0 0c             	add    $0xc,%eax
   1140e:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   11411:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11414:	8b 00                	mov    (%eax),%eax
   11416:	89 45 c4             	mov    %eax,0xffffffc4(%ebp)
   11419:	83 7d c4 08          	cmpl   $0x8,0xffffffc4(%ebp)
   1141d:	0f 87 13 02 00 00    	ja     0x11636
   11423:	8b 55 c4             	mov    0xffffffc4(%ebp),%edx
   11426:	8b 04 95 88 af 01 00 	mov    0x1af88(,%edx,4),%eax
   1142d:	ff e0                	jmp    *%eax
   1142f:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   11432:	89 c2                	mov    %eax,%edx
   11434:	89 d0                	mov    %edx,%eax
   11436:	c1 e0 03             	shl    $0x3,%eax
   11439:	01 d0                	add    %edx,%eax
   1143b:	c1 e0 05             	shl    $0x5,%eax
   1143e:	8d 90 e0 79 04 00    	lea    0x479e0(%eax),%edx
   11444:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11447:	8b 48 08             	mov    0x8(%eax),%ecx
   1144a:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1144d:	8b 40 04             	mov    0x4(%eax),%eax
   11450:	89 54 24 08          	mov    %edx,0x8(%esp)
   11454:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   11458:	89 04 24             	mov    %eax,(%esp)
   1145b:	e8 72 0e 00 00       	call   0x122d2
   11460:	89 c2                	mov    %eax,%edx
   11462:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11465:	89 50 0c             	mov    %edx,0xc(%eax)
   11468:	e9 c9 01 00 00       	jmp    0x11636
   1146d:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   11470:	89 c2                	mov    %eax,%edx
   11472:	89 d0                	mov    %edx,%eax
   11474:	c1 e0 03             	shl    $0x3,%eax
   11477:	01 d0                	add    %edx,%eax
   11479:	c1 e0 05             	shl    $0x5,%eax
   1147c:	8d 90 e0 79 04 00    	lea    0x479e0(%eax),%edx
   11482:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11485:	8b 48 10             	mov    0x10(%eax),%ecx
   11488:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1148b:	8b 58 18             	mov    0x18(%eax),%ebx
   1148e:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11491:	8b 70 14             	mov    0x14(%eax),%esi
   11494:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11497:	8b 40 0c             	mov    0xc(%eax),%eax
   1149a:	89 54 24 10          	mov    %edx,0x10(%esp)
   1149e:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
   114a2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   114a6:	89 74 24 04          	mov    %esi,0x4(%esp)
   114aa:	89 04 24             	mov    %eax,(%esp)
   114ad:	e8 ed 11 00 00       	call   0x1269f
   114b2:	89 c2                	mov    %eax,%edx
   114b4:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   114b7:	89 50 10             	mov    %edx,0x10(%eax)
   114ba:	e9 77 01 00 00       	jmp    0x11636
   114bf:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   114c2:	89 c2                	mov    %eax,%edx
   114c4:	89 d0                	mov    %edx,%eax
   114c6:	c1 e0 03             	shl    $0x3,%eax
   114c9:	01 d0                	add    %edx,%eax
   114cb:	c1 e0 05             	shl    $0x5,%eax
   114ce:	8d 90 e0 79 04 00    	lea    0x479e0(%eax),%edx
   114d4:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   114d7:	8b 48 10             	mov    0x10(%eax),%ecx
   114da:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   114dd:	8b 58 18             	mov    0x18(%eax),%ebx
   114e0:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   114e3:	8b 70 14             	mov    0x14(%eax),%esi
   114e6:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   114e9:	8b 40 0c             	mov    0xc(%eax),%eax
   114ec:	89 54 24 10          	mov    %edx,0x10(%esp)
   114f0:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
   114f4:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   114f8:	89 74 24 04          	mov    %esi,0x4(%esp)
   114fc:	89 04 24             	mov    %eax,(%esp)
   114ff:	e8 31 14 00 00       	call   0x12935
   11504:	89 c2                	mov    %eax,%edx
   11506:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11509:	89 50 10             	mov    %edx,0x10(%eax)
   1150c:	e9 25 01 00 00       	jmp    0x11636
   11511:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   11514:	89 c2                	mov    %eax,%edx
   11516:	89 d0                	mov    %edx,%eax
   11518:	c1 e0 03             	shl    $0x3,%eax
   1151b:	01 d0                	add    %edx,%eax
   1151d:	c1 e0 05             	shl    $0x5,%eax
   11520:	8d 90 e0 79 04 00    	lea    0x479e0(%eax),%edx
   11526:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11529:	8b 40 0c             	mov    0xc(%eax),%eax
   1152c:	89 54 24 04          	mov    %edx,0x4(%esp)
   11530:	89 04 24             	mov    %eax,(%esp)
   11533:	e8 a3 16 00 00       	call   0x12bdb
   11538:	89 c2                	mov    %eax,%edx
   1153a:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1153d:	89 10                	mov    %edx,(%eax)
   1153f:	e9 f2 00 00 00       	jmp    0x11636
   11544:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11547:	8b 58 08             	mov    0x8(%eax),%ebx
   1154a:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1154d:	8b 48 04             	mov    0x4(%eax),%ecx
   11550:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   11553:	89 c2                	mov    %eax,%edx
   11555:	89 d0                	mov    %edx,%eax
   11557:	c1 e0 03             	shl    $0x3,%eax
   1155a:	01 d0                	add    %edx,%eax
   1155c:	c1 e0 05             	shl    $0x5,%eax
   1155f:	05 e0 79 04 00       	add    $0x479e0,%eax
   11564:	8b 40 48             	mov    0x48(%eax),%eax
   11567:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   1156b:	89 04 24             	mov    %eax,(%esp)
   1156e:	e8 63 97 00 00       	call   0x1acd6
   11573:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   11577:	89 04 24             	mov    %eax,(%esp)
   1157a:	e8 bd 17 00 00       	call   0x12d3c
   1157f:	89 c2                	mov    %eax,%edx
   11581:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11584:	89 10                	mov    %edx,(%eax)
   11586:	e9 ab 00 00 00       	jmp    0x11636
   1158b:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1158e:	8b 40 08             	mov    0x8(%eax),%eax
   11591:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   11594:	83 7d f4 00          	cmpl   $0x0,0xfffffff4(%ebp)
   11598:	78 0d                	js     0x115a7
   1159a:	81 7d f4 0a 01 00 00 	cmpl   $0x10a,0xfffffff4(%ebp)
   115a1:	0f 8e 8f 00 00 00    	jle    0x11636
   115a7:	c7 44 24 0c 36 00 00 	movl   $0x36,0xc(%esp)
   115ae:	00 
   115af:	c7 44 24 08 38 af 01 	movl   $0x1af38,0x8(%esp)
   115b6:	00 
   115b7:	c7 44 24 04 38 af 01 	movl   $0x1af38,0x4(%esp)
   115be:	00 
   115bf:	c7 04 24 6a af 01 00 	movl   $0x1af6a,(%esp)
   115c6:	e8 5d 86 00 00       	call   0x19c28
   115cb:	eb 69                	jmp    0x11636
   115cd:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   115d0:	8b 40 08             	mov    0x8(%eax),%eax
   115d3:	89 04 24             	mov    %eax,(%esp)
   115d6:	e8 10 1c 00 00       	call   0x131eb
   115db:	89 c2                	mov    %eax,%edx
   115dd:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   115e0:	89 10                	mov    %edx,(%eax)
   115e2:	eb 52                	jmp    0x11636
   115e4:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   115e7:	8b 40 08             	mov    0x8(%eax),%eax
   115ea:	89 04 24             	mov    %eax,(%esp)
   115ed:	e8 3a 1d 00 00       	call   0x1332c
   115f2:	eb 42                	jmp    0x11636
   115f4:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   115f7:	89 c2                	mov    %eax,%edx
   115f9:	89 d0                	mov    %edx,%eax
   115fb:	c1 e0 03             	shl    $0x3,%eax
   115fe:	01 d0                	add    %edx,%eax
   11600:	c1 e0 05             	shl    $0x5,%eax
   11603:	8d 88 e0 79 04 00    	lea    0x479e0(%eax),%ecx
   11609:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1160c:	8b 58 08             	mov    0x8(%eax),%ebx
   1160f:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11612:	8b 50 18             	mov    0x18(%eax),%edx
   11615:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11618:	8b 40 0c             	mov    0xc(%eax),%eax
   1161b:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
   1161f:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   11623:	89 54 24 04          	mov    %edx,0x4(%esp)
   11627:	89 04 24             	mov    %eax,(%esp)
   1162a:	e8 32 1b 00 00       	call   0x13161
   1162f:	89 c2                	mov    %eax,%edx
   11631:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11634:	89 10                	mov    %edx,(%eax)
   11636:	a1 10 f4 01 00       	mov    0x1f410,%eax
   1163b:	83 f8 01             	cmp    $0x1,%eax
   1163e:	75 0f                	jne    0x1164f
   11640:	c7 05 10 f4 01 00 00 	movl   $0x0,0x1f410
   11647:	00 00 00 
   1164a:	e9 44 fd ff ff       	jmp    0x11393
   1164f:	8d 45 c8             	lea    0xffffffc8(%ebp),%eax
   11652:	89 44 24 08          	mov    %eax,0x8(%esp)
   11656:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   11659:	89 44 24 04          	mov    %eax,0x4(%esp)
   1165d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   11664:	e8 87 85 00 00       	call   0x19bf0
   11669:	e9 25 fd ff ff       	jmp    0x11393
   1166e:	55                   	push   %ebp
   1166f:	89 e5                	mov    %esp,%ebp
   11671:	57                   	push   %edi
   11672:	56                   	push   %esi
   11673:	53                   	push   %ebx
   11674:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
   1167a:	c7 45 84 01 01 10 10 	movl   $0x10100101,0xffffff84(%ebp)
   11681:	c7 45 88 02 00 00 00 	movl   $0x2,0xffffff88(%ebp)
   11688:	c7 45 8c 17 00 00 00 	movl   $0x17,0xffffff8c(%ebp)
   1168f:	c7 45 90 01 00 00 00 	movl   $0x1,0xffffff90(%ebp)
   11696:	c7 45 94 03 00 00 00 	movl   $0x3,0xffffff94(%ebp)
   1169d:	c7 45 98 a0 0f 00 00 	movl   $0xfa0,0xffffff98(%ebp)
   116a4:	c7 45 9c 01 00 00 00 	movl   $0x1,0xffffff9c(%ebp)
   116ab:	c7 45 a0 04 00 00 00 	movl   $0x4,0xffffffa0(%ebp)
   116b2:	c7 45 a4 20 00 00 00 	movl   $0x20,0xffffffa4(%ebp)
   116b9:	c7 45 a8 10 00 00 00 	movl   $0x10,0xffffffa8(%ebp)
   116c0:	c7 45 ac 02 00 00 00 	movl   $0x2,0xffffffac(%ebp)
   116c7:	c7 45 b0 06 00 00 00 	movl   $0x6,0xffffffb0(%ebp)
   116ce:	c7 45 b4 10 00 00 00 	movl   $0x10,0xffffffb4(%ebp)
   116d5:	c7 45 b8 00 00 00 00 	movl   $0x0,0xffffffb8(%ebp)
   116dc:	c7 45 bc 04 00 00 00 	movl   $0x4,0xffffffbc(%ebp)
   116e3:	c7 45 c0 20 00 00 00 	movl   $0x20,0xffffffc0(%ebp)
   116ea:	c7 45 c4 01 00 00 00 	movl   $0x1,0xffffffc4(%ebp)
   116f1:	c7 45 c8 01 00 00 00 	movl   $0x1,0xffffffc8(%ebp)
   116f8:	c7 45 cc 04 00 00 00 	movl   $0x4,0xffffffcc(%ebp)
   116ff:	c7 45 d0 08 00 00 00 	movl   $0x8,0xffffffd0(%ebp)
   11706:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
   1170d:	00 
   1170e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   11715:	00 
   11716:	c7 04 24 ac af 01 00 	movl   $0x1afac,(%esp)
   1171d:	e8 2a 96 00 00       	call   0x1ad4c
   11722:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
   11729:	00 
   1172a:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
   11731:	00 
   11732:	c7 04 24 cc af 01 00 	movl   $0x1afcc,(%esp)
   11739:	e8 0e 96 00 00       	call   0x1ad4c
   1173e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
   11745:	00 
   11746:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
   1174d:	00 
   1174e:	c7 04 24 ec af 01 00 	movl   $0x1afec,(%esp)
   11755:	e8 f2 95 00 00       	call   0x1ad4c
   1175a:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
   11761:	00 
   11762:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
   11769:	00 
   1176a:	c7 04 24 0c b0 01 00 	movl   $0x1b00c,(%esp)
   11771:	e8 d6 95 00 00       	call   0x1ad4c
   11776:	c7 44 24 08 a0 0f 00 	movl   $0xfa0,0x8(%esp)
   1177d:	00 
   1177e:	c7 44 24 04 06 00 00 	movl   $0x6,0x4(%esp)
   11785:	00 
   11786:	c7 04 24 2c b0 01 00 	movl   $0x1b02c,(%esp)
   1178d:	e8 ba 95 00 00       	call   0x1ad4c
   11792:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
   11799:	00 
   1179a:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
   117a1:	00 
   117a2:	c7 04 24 a0 ab 02 00 	movl   $0x2aba0,(%esp)
   117a9:	e8 5e 92 00 00       	call   0x1aa0c
   117ae:	8d 75 84             	lea    0xffffff84(%ebp),%esi
   117b1:	bf a0 ab 02 00       	mov    $0x2aba0,%edi
   117b6:	b9 48 00 00 00       	mov    $0x48,%ecx
   117bb:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   117bd:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   117c4:	00 
   117c5:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
   117cc:	00 
   117cd:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   117d4:	00 
   117d5:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   117dc:	e8 29 22 00 00       	call   0x13a0a
   117e1:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
   117e8:	eb 58                	jmp    0x11842
   117ea:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
   117f1:	00 
   117f2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   117f9:	00 
   117fa:	c7 04 24 a0 ab 02 00 	movl   $0x2aba0,(%esp)
   11801:	e8 06 92 00 00       	call   0x1aa0c
   11806:	83 7d d8 00          	cmpl   $0x0,0xffffffd8(%ebp)
   1180a:	75 07                	jne    0x11813
   1180c:	c6 05 a0 ab 02 00 1f 	movb   $0x1f,0x2aba0
   11813:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   11816:	c1 e0 09             	shl    $0x9,%eax
   11819:	05 00 04 00 00       	add    $0x400,%eax
   1181e:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   11825:	00 
   11826:	89 44 24 08          	mov    %eax,0x8(%esp)
   1182a:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   11831:	00 
   11832:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11839:	e8 cc 21 00 00       	call   0x13a0a
   1183e:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
   11842:	83 7d d8 00          	cmpl   $0x0,0xffffffd8(%ebp)
   11846:	7e a2                	jle    0x117ea
   11848:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
   1184f:	00 
   11850:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   11857:	00 
   11858:	c7 04 24 a0 ab 02 00 	movl   $0x2aba0,(%esp)
   1185f:	e8 a8 91 00 00       	call   0x1aa0c
   11864:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
   1186b:	c7 45 dc 00 00 00 00 	movl   $0x0,0xffffffdc(%ebp)
   11872:	eb 23                	jmp    0x11897
   11874:	8b 5d d8             	mov    0xffffffd8(%ebp),%ebx
   11877:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   1187a:	0f b6 90 a0 ab 02 00 	movzbl 0x2aba0(%eax),%edx
   11881:	8b 4d dc             	mov    0xffffffdc(%ebp),%ecx
   11884:	b8 01 00 00 00       	mov    $0x1,%eax
   11889:	d3 e0                	shl    %cl,%eax
   1188b:	09 d0                	or     %edx,%eax
   1188d:	88 83 a0 ab 02 00    	mov    %al,0x2aba0(%ebx)
   11893:	83 45 dc 01          	addl   $0x1,0xffffffdc(%ebp)
   11897:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   1189a:	83 f8 01             	cmp    $0x1,%eax
   1189d:	76 d5                	jbe    0x11874
   1189f:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   118a6:	00 
   118a7:	c7 44 24 08 00 06 00 	movl   $0x600,0x8(%esp)
   118ae:	00 
   118af:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   118b6:	00 
   118b7:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   118be:	e8 47 21 00 00       	call   0x13a0a
   118c3:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
   118ca:	c7 45 e4 02 00 00 00 	movl   $0x2,0xffffffe4(%ebp)
   118d1:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
   118d8:	e9 af 00 00 00       	jmp    0x1198c
   118dd:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
   118e4:	00 
   118e5:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   118ec:	00 
   118ed:	c7 04 24 a0 ab 02 00 	movl   $0x2aba0,(%esp)
   118f4:	e8 13 91 00 00       	call   0x1aa0c
   118f9:	c7 45 f0 a0 ab 02 00 	movl   $0x2aba0,0xfffffff0(%ebp)
   11900:	c7 45 dc 00 00 00 00 	movl   $0x0,0xffffffdc(%ebp)
   11907:	eb 4e                	jmp    0x11957
   11909:	83 7d e0 00          	cmpl   $0x0,0xffffffe0(%ebp)
   1190d:	7e 0f                	jle    0x1191e
   1190f:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11912:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
   11918:	83 6d e0 01          	subl   $0x1,0xffffffe0(%ebp)
   1191c:	eb 31                	jmp    0x1194f
   1191e:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11921:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   11927:	83 7d e4 00          	cmpl   $0x0,0xffffffe4(%ebp)
   1192b:	7e 22                	jle    0x1194f
   1192d:	eb 1a                	jmp    0x11949
   1192f:	83 6d e4 01          	subl   $0x1,0xffffffe4(%ebp)
   11933:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11936:	8b 10                	mov    (%eax),%edx
   11938:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
   1193b:	b8 01 00 00 00       	mov    $0x1,%eax
   11940:	d3 e0                	shl    %cl,%eax
   11942:	09 c2                	or     %eax,%edx
   11944:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11947:	89 10                	mov    %edx,(%eax)
   11949:	83 7d e4 00          	cmpl   $0x0,0xffffffe4(%ebp)
   1194d:	7f e0                	jg     0x1192f
   1194f:	83 45 dc 01          	addl   $0x1,0xffffffdc(%ebp)
   11953:	83 45 f0 04          	addl   $0x4,0xfffffff0(%ebp)
   11957:	83 7d dc 7f          	cmpl   $0x7f,0xffffffdc(%ebp)
   1195b:	7e ac                	jle    0x11909
   1195d:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   11960:	c1 e0 09             	shl    $0x9,%eax
   11963:	05 00 06 00 00       	add    $0x600,%eax
   11968:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   1196f:	00 
   11970:	89 44 24 08          	mov    %eax,0x8(%esp)
   11974:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   1197b:	00 
   1197c:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11983:	e8 82 20 00 00       	call   0x13a0a
   11988:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
   1198c:	83 7d d8 00          	cmpl   $0x0,0xffffffd8(%ebp)
   11990:	0f 8e 47 ff ff ff    	jle    0x118dd
   11996:	c7 45 e8 a0 ab 02 00 	movl   $0x2aba0,0xffffffe8(%ebp)
   1199d:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
   119a4:	00 
   119a5:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   119ac:	00 
   119ad:	c7 04 24 a0 ab 02 00 	movl   $0x2aba0,(%esp)
   119b4:	e8 53 90 00 00       	call   0x1aa0c
   119b9:	83 45 e8 20          	addl   $0x20,0xffffffe8(%ebp)
   119bd:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   119c0:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
   119c6:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   119c9:	c7 40 04 00 02 00 00 	movl   $0x200,0x4(%eax)
   119d0:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   119d3:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
   119da:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   119dd:	c7 40 0c 01 00 00 00 	movl   $0x1,0xc(%eax)
   119e4:	83 45 e8 20          	addl   $0x20,0xffffffe8(%ebp)
   119e8:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
   119ef:	eb 34                	jmp    0x11a25
   119f1:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   119f4:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
   119fa:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   119fd:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   11a04:	0f b6 45 d8          	movzbl 0xffffffd8(%ebp),%eax
   11a08:	80 cc 04             	or     $0x4,%ah
   11a0b:	89 c2                	mov    %eax,%edx
   11a0d:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   11a10:	89 50 08             	mov    %edx,0x8(%eax)
   11a13:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   11a16:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
   11a1d:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
   11a21:	83 45 e8 20          	addl   $0x20,0xffffffe8(%ebp)
   11a25:	83 7d d8 02          	cmpl   $0x2,0xffffffd8(%ebp)
   11a29:	7e c6                	jle    0x119f1
   11a2b:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   11a32:	00 
   11a33:	c7 44 24 08 00 08 00 	movl   $0x800,0x8(%esp)
   11a3a:	00 
   11a3b:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   11a42:	00 
   11a43:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11a4a:	e8 bb 1f 00 00       	call   0x13a0a
   11a4f:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
   11a56:	eb 58                	jmp    0x11ab0
   11a58:	c7 45 ec a0 ab 02 00 	movl   $0x2aba0,0xffffffec(%ebp)
   11a5f:	c7 45 dc 00 00 00 00 	movl   $0x0,0xffffffdc(%ebp)
   11a66:	eb 11                	jmp    0x11a79
   11a68:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   11a6b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   11a71:	83 45 dc 01          	addl   $0x1,0xffffffdc(%ebp)
   11a75:	83 45 ec 10          	addl   $0x10,0xffffffec(%ebp)
   11a79:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   11a7c:	83 f8 1f             	cmp    $0x1f,%eax
   11a7f:	76 e7                	jbe    0x11a68
   11a81:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   11a84:	c1 e0 09             	shl    $0x9,%eax
   11a87:	05 00 0e 00 00       	add    $0xe00,%eax
   11a8c:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   11a93:	00 
   11a94:	89 44 24 08          	mov    %eax,0x8(%esp)
   11a98:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   11a9f:	00 
   11aa0:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11aa7:	e8 5e 1f 00 00       	call   0x13a0a
   11aac:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
   11ab0:	83 7d d8 00          	cmpl   $0x0,0xffffffd8(%ebp)
   11ab4:	74 a2                	je     0x11a58
   11ab6:	c7 45 ec a0 ab 02 00 	movl   $0x2aba0,0xffffffec(%ebp)
   11abd:	83 45 ec 10          	addl   $0x10,0xffffffec(%ebp)
   11ac1:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   11ac4:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
   11aca:	8b 7d ec             	mov    0xffffffec(%ebp),%edi
   11acd:	83 c7 04             	add    $0x4,%edi
   11ad0:	be 4c b0 01 00       	mov    $0x1b04c,%esi
   11ad5:	b9 02 00 00 00       	mov    $0x2,%ecx
   11ada:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   11adc:	83 45 ec 10          	addl   $0x10,0xffffffec(%ebp)
   11ae0:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
   11ae7:	eb 33                	jmp    0x11b1c
   11ae9:	8b 55 d8             	mov    0xffffffd8(%ebp),%edx
   11aec:	83 c2 02             	add    $0x2,%edx
   11aef:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   11af2:	89 10                	mov    %edx,(%eax)
   11af4:	8b 7d ec             	mov    0xffffffec(%ebp),%edi
   11af7:	83 c7 04             	add    $0x4,%edi
   11afa:	be 4e b0 01 00       	mov    $0x1b04e,%esi
   11aff:	b9 05 00 00 00       	mov    $0x5,%ecx
   11b04:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   11b06:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   11b09:	83 c0 30             	add    $0x30,%eax
   11b0c:	89 c2                	mov    %eax,%edx
   11b0e:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   11b11:	88 50 07             	mov    %dl,0x7(%eax)
   11b14:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
   11b18:	83 45 ec 10          	addl   $0x10,0xffffffec(%ebp)
   11b1c:	83 7d d8 02          	cmpl   $0x2,0xffffffd8(%ebp)
   11b20:	7e c7                	jle    0x11ae9
   11b22:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   11b29:	00 
   11b2a:	c7 44 24 08 00 0e 00 	movl   $0xe00,0x8(%esp)
   11b31:	00 
   11b32:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   11b39:	00 
   11b3a:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11b41:	e8 c4 1e 00 00       	call   0x13a0a
   11b46:	81 c4 8c 00 00 00    	add    $0x8c,%esp
   11b4c:	5b                   	pop    %ebx
   11b4d:	5e                   	pop    %esi
   11b4e:	5f                   	pop    %edi
   11b4f:	5d                   	pop    %ebp
   11b50:	c3                   	ret    
   11b51:	55                   	push   %ebp
   11b52:	89 e5                	mov    %esp,%ebp
   11b54:	83 ec 28             	sub    $0x28,%esp
   11b57:	c7 05 10 f4 01 00 00 	movl   $0x0,0x1f410
   11b5e:	00 00 00 
   11b61:	c7 45 f0 e0 49 04 00 	movl   $0x449e0,0xfffffff0(%ebp)
   11b68:	eb 0e                	jmp    0x11b78
   11b6a:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   11b6d:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   11b74:	83 45 f0 0c          	addl   $0xc,0xfffffff0(%ebp)
   11b78:	b8 e0 79 04 00       	mov    $0x479e0,%eax
   11b7d:	39 45 f0             	cmp    %eax,0xfffffff0(%ebp)
   11b80:	72 e8                	jb     0x11b6a
   11b82:	c7 45 f4 40 f4 01 00 	movl   $0x1f440,0xfffffff4(%ebp)
   11b89:	eb 0e                	jmp    0x11b99
   11b8b:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   11b8e:	c7 40 24 00 00 00 00 	movl   $0x0,0x24(%eax)
   11b95:	83 45 f4 2c          	addl   $0x2c,0xfffffff4(%ebp)
   11b99:	b8 40 ff 01 00       	mov    $0x1ff40,%eax
   11b9e:	39 45 f4             	cmp    %eax,0xfffffff4(%ebp)
   11ba1:	72 e8                	jb     0x11b8b
   11ba3:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11baa:	e8 de 1c 00 00       	call   0x1388d
   11baf:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   11bb6:	00 
   11bb7:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
   11bbe:	00 
   11bbf:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   11bc6:	00 
   11bc7:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11bce:	e8 b2 1d 00 00       	call   0x13985
   11bd3:	c7 45 f8 a0 ab 02 00 	movl   $0x2aba0,0xfffffff8(%ebp)
   11bda:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   11bdd:	8b 00                	mov    (%eax),%eax
   11bdf:	3d 01 01 10 10       	cmp    $0x10100101,%eax
   11be4:	74 05                	je     0x11beb
   11be6:	e8 83 fa ff ff       	call   0x1166e
   11beb:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   11bf2:	00 
   11bf3:	c7 44 24 08 00 08 00 	movl   $0x800,0x8(%esp)
   11bfa:	00 
   11bfb:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   11c02:	00 
   11c03:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11c0a:	e8 76 1d 00 00       	call   0x13985
   11c0f:	c7 45 fc a0 ab 02 00 	movl   $0x2aba0,0xfffffffc(%ebp)
   11c16:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   11c19:	83 c0 20             	add    $0x20,%eax
   11c1c:	89 c2                	mov    %eax,%edx
   11c1e:	8b 02                	mov    (%edx),%eax
   11c20:	a3 40 f4 01 00       	mov    %eax,0x1f440
   11c25:	8b 42 04             	mov    0x4(%edx),%eax
   11c28:	a3 44 f4 01 00       	mov    %eax,0x1f444
   11c2d:	8b 42 08             	mov    0x8(%edx),%eax
   11c30:	a3 48 f4 01 00       	mov    %eax,0x1f448
   11c35:	8b 42 0c             	mov    0xc(%edx),%eax
   11c38:	a3 4c f4 01 00       	mov    %eax,0x1f44c
   11c3d:	8b 42 10             	mov    0x10(%edx),%eax
   11c40:	a3 50 f4 01 00       	mov    %eax,0x1f450
   11c45:	8b 42 14             	mov    0x14(%edx),%eax
   11c48:	a3 54 f4 01 00       	mov    %eax,0x1f454
   11c4d:	8b 42 18             	mov    0x18(%edx),%eax
   11c50:	a3 58 f4 01 00       	mov    %eax,0x1f458
   11c55:	8b 42 1c             	mov    0x1c(%edx),%eax
   11c58:	a3 5c f4 01 00       	mov    %eax,0x1f45c
   11c5d:	8b 42 20             	mov    0x20(%edx),%eax
   11c60:	a3 60 f4 01 00       	mov    %eax,0x1f460
   11c65:	8b 42 24             	mov    0x24(%edx),%eax
   11c68:	a3 64 f4 01 00       	mov    %eax,0x1f464
   11c6d:	8b 42 28             	mov    0x28(%edx),%eax
   11c70:	a3 68 f4 01 00       	mov    %eax,0x1f468
   11c75:	c7 05 60 f4 01 00 1a 	movl   $0x31a,0x1f460
   11c7c:	03 00 00 
   11c7f:	c7 05 64 f4 01 00 01 	movl   $0x1,0x1f464
   11c86:	00 00 00 
   11c89:	c7 05 68 f4 01 00 01 	movl   $0x1,0x1f468
   11c90:	00 00 00 
   11c93:	c7 05 0c f4 01 00 40 	movl   $0x1f440,0x1f40c
   11c9a:	f4 01 00 
   11c9d:	c9                   	leave  
   11c9e:	c3                   	ret    
   11c9f:	55                   	push   %ebp
   11ca0:	89 e5                	mov    %esp,%ebp
   11ca2:	57                   	push   %edi
   11ca3:	56                   	push   %esi
   11ca4:	53                   	push   %ebx
   11ca5:	83 ec 5c             	sub    $0x5c,%esp
   11ca8:	c7 45 c8 00 00 00 00 	movl   $0x0,0xffffffc8(%ebp)
   11caf:	c7 45 cc 00 00 00 00 	movl   $0x0,0xffffffcc(%ebp)
   11cb6:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
   11cbd:	e9 01 01 00 00       	jmp    0x11dc3
   11cc2:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   11cc5:	c1 e0 09             	shl    $0x9,%eax
   11cc8:	05 00 04 00 00       	add    $0x400,%eax
   11ccd:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   11cd4:	00 
   11cd5:	89 44 24 08          	mov    %eax,0x8(%esp)
   11cd9:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   11ce0:	00 
   11ce1:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11ce8:	e8 98 1c 00 00       	call   0x13985
   11ced:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
   11cf4:	e9 b3 00 00 00       	jmp    0x11dac
   11cf9:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   11cfc:	0f b6 80 a0 ab 02 00 	movzbl 0x2aba0(%eax),%eax
   11d03:	3c ff                	cmp    $0xff,%al
   11d05:	0f 84 9d 00 00 00    	je     0x11da8
   11d0b:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
   11d12:	e9 81 00 00 00       	jmp    0x11d98
   11d17:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   11d1a:	0f b6 80 a0 ab 02 00 	movzbl 0x2aba0(%eax),%eax
   11d21:	0f be c0             	movsbl %al,%eax
   11d24:	8b 4d d8             	mov    0xffffffd8(%ebp),%ecx
   11d27:	d3 f8                	sar    %cl,%eax
   11d29:	83 e0 01             	and    $0x1,%eax
   11d2c:	85 c0                	test   %eax,%eax
   11d2e:	75 64                	jne    0x11d94
   11d30:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   11d33:	c1 e0 09             	shl    $0x9,%eax
   11d36:	03 45 d4             	add    0xffffffd4(%ebp),%eax
   11d39:	c1 e0 03             	shl    $0x3,%eax
   11d3c:	03 45 d8             	add    0xffffffd8(%ebp),%eax
   11d3f:	89 45 c8             	mov    %eax,0xffffffc8(%ebp)
   11d42:	83 7d c8 00          	cmpl   $0x0,0xffffffc8(%ebp)
   11d46:	74 4c                	je     0x11d94
   11d48:	8b 5d d4             	mov    0xffffffd4(%ebp),%ebx
   11d4b:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   11d4e:	0f b6 90 a0 ab 02 00 	movzbl 0x2aba0(%eax),%edx
   11d55:	8b 4d d8             	mov    0xffffffd8(%ebp),%ecx
   11d58:	b8 01 00 00 00       	mov    $0x1,%eax
   11d5d:	d3 e0                	shl    %cl,%eax
   11d5f:	09 d0                	or     %edx,%eax
   11d61:	88 83 a0 ab 02 00    	mov    %al,0x2aba0(%ebx)
   11d67:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   11d6a:	c1 e0 09             	shl    $0x9,%eax
   11d6d:	05 00 04 00 00       	add    $0x400,%eax
   11d72:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   11d79:	00 
   11d7a:	89 44 24 08          	mov    %eax,0x8(%esp)
   11d7e:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   11d85:	00 
   11d86:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11d8d:	e8 78 1c 00 00       	call   0x13a0a
   11d92:	eb 0e                	jmp    0x11da2
   11d94:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
   11d98:	83 7d d8 07          	cmpl   $0x7,0xffffffd8(%ebp)
   11d9c:	0f 8e 75 ff ff ff    	jle    0x11d17
   11da2:	83 7d c8 00          	cmpl   $0x0,0xffffffc8(%ebp)
   11da6:	75 11                	jne    0x11db9
   11da8:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
   11dac:	81 7d d4 ff 01 00 00 	cmpl   $0x1ff,0xffffffd4(%ebp)
   11db3:	0f 8e 40 ff ff ff    	jle    0x11cf9
   11db9:	83 7d c8 00          	cmpl   $0x0,0xffffffc8(%ebp)
   11dbd:	75 0e                	jne    0x11dcd
   11dbf:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
   11dc3:	83 7d d0 00          	cmpl   $0x0,0xffffffd0(%ebp)
   11dc7:	0f 8e f5 fe ff ff    	jle    0x11cc2
   11dcd:	83 7d c8 00          	cmpl   $0x0,0xffffffc8(%ebp)
   11dd1:	75 18                	jne    0x11deb
   11dd3:	c7 04 24 53 b0 01 00 	movl   $0x1b053,(%esp)
   11dda:	e8 6d 8f 00 00       	call   0x1ad4c
   11ddf:	c7 45 b0 00 00 00 00 	movl   $0x0,0xffffffb0(%ebp)
   11de6:	e9 dc 04 00 00       	jmp    0x122c7
   11deb:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
   11df2:	e9 d5 02 00 00       	jmp    0x120cc
   11df7:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   11dfa:	c1 e0 09             	shl    $0x9,%eax
   11dfd:	05 00 06 00 00       	add    $0x600,%eax
   11e02:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   11e09:	00 
   11e0a:	89 44 24 08          	mov    %eax,0x8(%esp)
   11e0e:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   11e15:	00 
   11e16:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11e1d:	e8 63 1b 00 00       	call   0x13985
   11e22:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
   11e29:	e9 8d 02 00 00       	jmp    0x120bb
   11e2e:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   11e31:	0f b6 80 a0 ab 02 00 	movzbl 0x2aba0(%eax),%eax
   11e38:	3c ff                	cmp    $0xff,%al
   11e3a:	0f 84 77 02 00 00    	je     0x120b7
   11e40:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
   11e47:	e9 61 02 00 00       	jmp    0x120ad
   11e4c:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   11e4f:	0f b6 80 a0 ab 02 00 	movzbl 0x2aba0(%eax),%eax
   11e56:	0f be c0             	movsbl %al,%eax
   11e59:	8b 4d d8             	mov    0xffffffd8(%ebp),%ecx
   11e5c:	d3 f8                	sar    %cl,%eax
   11e5e:	83 e0 01             	and    $0x1,%eax
   11e61:	85 c0                	test   %eax,%eax
   11e63:	0f 85 40 02 00 00    	jne    0x120a9
   11e69:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   11e6c:	c1 e0 09             	shl    $0x9,%eax
   11e6f:	03 45 d4             	add    0xffffffd4(%ebp),%eax
   11e72:	c1 e0 03             	shl    $0x3,%eax
   11e75:	03 45 d8             	add    0xffffffd8(%ebp),%eax
   11e78:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
   11e7b:	c7 45 f0 c8 00 00 00 	movl   $0xc8,0xfffffff0(%ebp)
   11e82:	e9 18 02 00 00       	jmp    0x1209f
   11e87:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   11e8a:	c1 e0 09             	shl    $0x9,%eax
   11e8d:	05 00 06 00 00       	add    $0x600,%eax
   11e92:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   11e99:	00 
   11e9a:	89 44 24 08          	mov    %eax,0x8(%esp)
   11e9e:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   11ea5:	00 
   11ea6:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11ead:	e8 d3 1a 00 00       	call   0x13985
   11eb2:	e9 9f 01 00 00       	jmp    0x12056
   11eb7:	b8 08 00 00 00       	mov    $0x8,%eax
   11ebc:	2b 45 d8             	sub    0xffffffd8(%ebp),%eax
   11ebf:	3b 45 f0             	cmp    0xfffffff0(%ebp),%eax
   11ec2:	0f 8c b0 00 00 00    	jl     0x11f78
   11ec8:	eb 6f                	jmp    0x11f39
   11eca:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   11ecd:	0f b6 90 a0 ab 02 00 	movzbl 0x2aba0(%eax),%edx
   11ed4:	8b 4d d8             	mov    0xffffffd8(%ebp),%ecx
   11ed7:	b8 01 00 00 00       	mov    $0x1,%eax
   11edc:	d3 e0                	shl    %cl,%eax
   11ede:	21 d0                	and    %edx,%eax
   11ee0:	84 c0                	test   %al,%al
   11ee2:	74 32                	je     0x11f16
   11ee4:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   11ee7:	89 44 24 0c          	mov    %eax,0xc(%esp)
   11eeb:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   11eee:	89 44 24 08          	mov    %eax,0x8(%esp)
   11ef2:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   11ef5:	89 44 24 04          	mov    %eax,0x4(%esp)
   11ef9:	c7 04 24 61 b0 01 00 	movl   $0x1b061,(%esp)
   11f00:	e8 47 8e 00 00       	call   0x1ad4c
   11f05:	c7 04 24 71 b0 01 00 	movl   $0x1b071,(%esp)
   11f0c:	e8 3b 8e 00 00       	call   0x1ad4c
   11f11:	e9 93 01 00 00       	jmp    0x120a9
   11f16:	8b 5d d4             	mov    0xffffffd4(%ebp),%ebx
   11f19:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   11f1c:	0f b6 90 a0 ab 02 00 	movzbl 0x2aba0(%eax),%edx
   11f23:	8b 4d d8             	mov    0xffffffd8(%ebp),%ecx
   11f26:	b8 01 00 00 00       	mov    $0x1,%eax
   11f2b:	d3 e0                	shl    %cl,%eax
   11f2d:	09 d0                	or     %edx,%eax
   11f2f:	88 83 a0 ab 02 00    	mov    %al,0x2aba0(%ebx)
   11f35:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
   11f39:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
   11f3d:	0f 9f c0             	setg   %al
   11f40:	83 6d f0 01          	subl   $0x1,0xfffffff0(%ebp)
   11f44:	84 c0                	test   %al,%al
   11f46:	75 82                	jne    0x11eca
   11f48:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   11f4b:	c1 e0 09             	shl    $0x9,%eax
   11f4e:	05 00 06 00 00       	add    $0x600,%eax
   11f53:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   11f5a:	00 
   11f5b:	89 44 24 08          	mov    %eax,0x8(%esp)
   11f5f:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   11f66:	00 
   11f67:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   11f6e:	e8 97 1a 00 00       	call   0x13a0a
   11f73:	e9 5e 01 00 00       	jmp    0x120d6
   11f78:	83 7d d8 00          	cmpl   $0x0,0xffffffd8(%ebp)
   11f7c:	0f 85 c3 00 00 00    	jne    0x12045
   11f82:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   11f85:	0f b6 80 a0 ab 02 00 	movzbl 0x2aba0(%eax),%eax
   11f8c:	84 c0                	test   %al,%al
   11f8e:	74 32                	je     0x11fc2
   11f90:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   11f93:	89 44 24 0c          	mov    %eax,0xc(%esp)
   11f97:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   11f9a:	89 44 24 08          	mov    %eax,0x8(%esp)
   11f9e:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   11fa1:	89 44 24 04          	mov    %eax,0x4(%esp)
   11fa5:	c7 04 24 61 b0 01 00 	movl   $0x1b061,(%esp)
   11fac:	e8 9b 8d 00 00       	call   0x1ad4c
   11fb1:	c7 04 24 7e b0 01 00 	movl   $0x1b07e,(%esp)
   11fb8:	e8 8f 8d 00 00       	call   0x1ad4c
   11fbd:	e9 e7 00 00 00       	jmp    0x120a9
   11fc2:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   11fc5:	c6 80 a0 ab 02 00 ff 	movb   $0xff,0x2aba0(%eax)
   11fcc:	83 6d f0 08          	subl   $0x8,0xfffffff0(%ebp)
   11fd0:	eb 79                	jmp    0x1204b
   11fd2:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   11fd5:	0f b6 90 a0 ab 02 00 	movzbl 0x2aba0(%eax),%edx
   11fdc:	8b 4d d8             	mov    0xffffffd8(%ebp),%ecx
   11fdf:	b8 01 00 00 00       	mov    $0x1,%eax
   11fe4:	d3 e0                	shl    %cl,%eax
   11fe6:	21 d0                	and    %edx,%eax
   11fe8:	84 c0                	test   %al,%al
   11fea:	74 32                	je     0x1201e
   11fec:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   11fef:	89 44 24 0c          	mov    %eax,0xc(%esp)
   11ff3:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   11ff6:	89 44 24 08          	mov    %eax,0x8(%esp)
   11ffa:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   11ffd:	89 44 24 04          	mov    %eax,0x4(%esp)
   12001:	c7 04 24 61 b0 01 00 	movl   $0x1b061,(%esp)
   12008:	e8 3f 8d 00 00       	call   0x1ad4c
   1200d:	c7 04 24 8b b0 01 00 	movl   $0x1b08b,(%esp)
   12014:	e8 33 8d 00 00       	call   0x1ad4c
   12019:	e9 8b 00 00 00       	jmp    0x120a9
   1201e:	8b 5d d4             	mov    0xffffffd4(%ebp),%ebx
   12021:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   12024:	0f b6 90 a0 ab 02 00 	movzbl 0x2aba0(%eax),%edx
   1202b:	8b 4d d8             	mov    0xffffffd8(%ebp),%ecx
   1202e:	b8 01 00 00 00       	mov    $0x1,%eax
   12033:	d3 e0                	shl    %cl,%eax
   12035:	09 d0                	or     %edx,%eax
   12037:	88 83 a0 ab 02 00    	mov    %al,0x2aba0(%ebx)
   1203d:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
   12041:	83 6d f0 01          	subl   $0x1,0xfffffff0(%ebp)
   12045:	83 7d d8 07          	cmpl   $0x7,0xffffffd8(%ebp)
   12049:	7e 87                	jle    0x11fd2
   1204b:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
   1204f:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
   12056:	81 7d d4 ff 01 00 00 	cmpl   $0x1ff,0xffffffd4(%ebp)
   1205d:	7f 0a                	jg     0x12069
   1205f:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
   12063:	0f 8f 4e fe ff ff    	jg     0x11eb7
   12069:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   1206c:	c1 e0 09             	shl    $0x9,%eax
   1206f:	05 00 06 00 00       	add    $0x600,%eax
   12074:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   1207b:	00 
   1207c:	89 44 24 08          	mov    %eax,0x8(%esp)
   12080:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   12087:	00 
   12088:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   1208f:	e8 76 19 00 00       	call   0x13a0a
   12094:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
   12098:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
   1209f:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
   120a3:	0f 8f de fd ff ff    	jg     0x11e87
   120a9:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
   120ad:	83 7d d8 07          	cmpl   $0x7,0xffffffd8(%ebp)
   120b1:	0f 8e 95 fd ff ff    	jle    0x11e4c
   120b7:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
   120bb:	81 7d d4 ff 01 00 00 	cmpl   $0x1ff,0xffffffd4(%ebp)
   120c2:	0f 8e 66 fd ff ff    	jle    0x11e2e
   120c8:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
   120cc:	83 7d d0 00          	cmpl   $0x0,0xffffffd0(%ebp)
   120d0:	0f 8e 21 fd ff ff    	jle    0x11df7
   120d6:	83 7d cc 00          	cmpl   $0x0,0xffffffcc(%ebp)
   120da:	75 18                	jne    0x120f4
   120dc:	c7 04 24 98 b0 01 00 	movl   $0x1b098,(%esp)
   120e3:	e8 64 8c 00 00       	call   0x1ad4c
   120e8:	c7 45 b0 00 00 00 00 	movl   $0x0,0xffffffb0(%ebp)
   120ef:	e9 d3 01 00 00       	jmp    0x122c7
   120f4:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   120f7:	c1 e0 05             	shl    $0x5,%eax
   120fa:	05 00 08 00 00       	add    $0x800,%eax
   120ff:	25 00 fe ff ff       	and    $0xfffffe00,%eax
   12104:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
   12107:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   1210a:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   12111:	00 
   12112:	89 44 24 08          	mov    %eax,0x8(%esp)
   12116:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   1211d:	00 
   1211e:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   12125:	e8 5b 18 00 00       	call   0x13985
   1212a:	c7 45 e0 a0 ab 02 00 	movl   $0x2aba0,0xffffffe0(%ebp)
   12131:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   12134:	83 e0 0f             	and    $0xf,%eax
   12137:	c1 e0 05             	shl    $0x5,%eax
   1213a:	01 45 e0             	add    %eax,0xffffffe0(%ebp)
   1213d:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   12140:	c7 00 04 00 00 00    	movl   $0x4,(%eax)
   12146:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   12149:	c7 40 04 00 90 01 00 	movl   $0x19000,0x4(%eax)
   12150:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
   12153:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   12156:	89 50 08             	mov    %edx,0x8(%eax)
   12159:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   1215c:	c7 40 0c c8 00 00 00 	movl   $0xc8,0xc(%eax)
   12163:	c7 44 24 0c c8 00 00 	movl   $0xc8,0xc(%esp)
   1216a:	00 
   1216b:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   1216e:	89 44 24 08          	mov    %eax,0x8(%esp)
   12172:	8b 45 08             	mov    0x8(%ebp),%eax
   12175:	89 44 24 04          	mov    %eax,0x4(%esp)
   12179:	c7 04 24 a8 b0 01 00 	movl   $0x1b0a8,(%esp)
   12180:	e8 c7 8b 00 00       	call   0x1ad4c
   12185:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   12188:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   1218f:	00 
   12190:	89 44 24 08          	mov    %eax,0x8(%esp)
   12194:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   1219b:	00 
   1219c:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   121a3:	e8 62 18 00 00       	call   0x13a0a
   121a8:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
   121af:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
   121b6:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
   121bd:	e9 e8 00 00 00       	jmp    0x122aa
   121c2:	8b 15 0c f4 01 00    	mov    0x1f40c,%edx
   121c8:	c7 44 24 0c 00 02 00 	movl   $0x200,0xc(%esp)
   121cf:	00 
   121d0:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   121d3:	89 44 24 08          	mov    %eax,0x8(%esp)
   121d7:	89 54 24 04          	mov    %edx,0x4(%esp)
   121db:	c7 04 24 a0 ab 02 00 	movl   $0x2aba0,(%esp)
   121e2:	e8 b7 08 00 00       	call   0x12a9e
   121e7:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
   121ee:	c7 45 e4 a0 ab 02 00 	movl   $0x2aba0,0xffffffe4(%ebp)
   121f5:	e9 90 00 00 00       	jmp    0x1228a
   121fa:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   121fd:	8b 00                	mov    (%eax),%eax
   121ff:	85 c0                	test   %eax,%eax
   12201:	75 7f                	jne    0x12282
   12203:	83 7d d0 00          	cmpl   $0x0,0xffffffd0(%ebp)
   12207:	75 06                	jne    0x1220f
   12209:	83 7d d4 00          	cmpl   $0x0,0xffffffd4(%ebp)
   1220d:	74 73                	je     0x12282
   1220f:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   12212:	01 45 ec             	add    %eax,0xffffffec(%ebp)
   12215:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   12218:	89 45 b8             	mov    %eax,0xffffffb8(%ebp)
   1221b:	8d 45 b8             	lea    0xffffffb8(%ebp),%eax
   1221e:	8d 78 04             	lea    0x4(%eax),%edi
   12221:	8b 75 08             	mov    0x8(%ebp),%esi
   12224:	b9 0c 00 00 00       	mov    $0xc,%ecx
   12229:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   1222b:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   1222e:	c1 e0 04             	shl    $0x4,%eax
   12231:	8b 15 0c f4 01 00    	mov    0x1f40c,%edx
   12237:	c7 44 24 0c 10 00 00 	movl   $0x10,0xc(%esp)
   1223e:	00 
   1223f:	89 44 24 08          	mov    %eax,0x8(%esp)
   12243:	89 54 24 04          	mov    %edx,0x4(%esp)
   12247:	8d 45 b8             	lea    0xffffffb8(%ebp),%eax
   1224a:	89 04 24             	mov    %eax,(%esp)
   1224d:	e8 92 05 00 00       	call   0x127e4
   12252:	a1 0c f4 01 00       	mov    0x1f40c,%eax
   12257:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   1225e:	00 
   1225f:	89 04 24             	mov    %eax,(%esp)
   12262:	e8 6d eb ff ff       	call   0x10dd4
   12267:	8b 45 08             	mov    0x8(%ebp),%eax
   1226a:	89 44 24 04          	mov    %eax,0x4(%esp)
   1226e:	c7 04 24 d0 b0 01 00 	movl   $0x1b0d0,(%esp)
   12275:	e8 d2 8a 00 00       	call   0x1ad4c
   1227a:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   1227d:	89 45 b0             	mov    %eax,0xffffffb0(%ebp)
   12280:	eb 45                	jmp    0x122c7
   12282:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
   12286:	83 45 e4 10          	addl   $0x10,0xffffffe4(%ebp)
   1228a:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   1228d:	83 f8 1f             	cmp    $0x1f,%eax
   12290:	0f 86 64 ff ff ff    	jbe    0x121fa
   12296:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   12299:	83 c0 20             	add    $0x20,%eax
   1229c:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   1229f:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
   122a3:	81 45 e8 00 02 00 00 	addl   $0x200,0xffffffe8(%ebp)
   122aa:	83 7d d0 00          	cmpl   $0x0,0xffffffd0(%ebp)
   122ae:	0f 84 0e ff ff ff    	je     0x121c2
   122b4:	c7 04 24 e9 b0 01 00 	movl   $0x1b0e9,(%esp)
   122bb:	e8 8c 8a 00 00       	call   0x1ad4c
   122c0:	c7 45 b0 00 00 00 00 	movl   $0x0,0xffffffb0(%ebp)
   122c7:	8b 45 b0             	mov    0xffffffb0(%ebp),%eax
   122ca:	83 c4 5c             	add    $0x5c,%esp
   122cd:	5b                   	pop    %ebx
   122ce:	5e                   	pop    %esi
   122cf:	5f                   	pop    %edi
   122d0:	5d                   	pop    %ebp
   122d1:	c3                   	ret    
   122d2:	55                   	push   %ebp
   122d3:	89 e5                	mov    %esp,%ebp
   122d5:	83 ec 78             	sub    $0x78,%esp
   122d8:	8b 45 10             	mov    0x10(%ebp),%eax
   122db:	8b 50 48             	mov    0x48(%eax),%edx
   122de:	8b 45 08             	mov    0x8(%ebp),%eax
   122e1:	89 44 24 04          	mov    %eax,0x4(%esp)
   122e5:	89 14 24             	mov    %edx,(%esp)
   122e8:	e8 e9 89 00 00       	call   0x1acd6
   122ed:	89 45 08             	mov    %eax,0x8(%ebp)
   122f0:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
   122f7:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
   122fe:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
   12305:	eb 79                	jmp    0x12380
   12307:	8b 15 0c f4 01 00    	mov    0x1f40c,%edx
   1230d:	c7 44 24 0c 00 02 00 	movl   $0x200,0xc(%esp)
   12314:	00 
   12315:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   12318:	89 44 24 08          	mov    %eax,0x8(%esp)
   1231c:	89 54 24 04          	mov    %edx,0x4(%esp)
   12320:	c7 04 24 a0 ab 02 00 	movl   $0x2aba0,(%esp)
   12327:	e8 72 07 00 00       	call   0x12a9e
   1232c:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
   12333:	c7 45 e0 a0 ab 02 00 	movl   $0x2aba0,0xffffffe0(%ebp)
   1233a:	eb 2b                	jmp    0x12367
   1233c:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   1233f:	83 c0 04             	add    $0x4,%eax
   12342:	8b 55 08             	mov    0x8(%ebp),%edx
   12345:	89 54 24 04          	mov    %edx,0x4(%esp)
   12349:	89 04 24             	mov    %eax,(%esp)
   1234c:	e8 7a 86 00 00       	call   0x1a9cb
   12351:	85 c0                	test   %eax,%eax
   12353:	75 0a                	jne    0x1235f
   12355:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   12358:	8b 00                	mov    (%eax),%eax
   1235a:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
   1235d:	eb 10                	jmp    0x1236f
   1235f:	83 45 e8 01          	addl   $0x1,0xffffffe8(%ebp)
   12363:	83 45 e0 10          	addl   $0x10,0xffffffe0(%ebp)
   12367:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   1236a:	83 f8 1f             	cmp    $0x1f,%eax
   1236d:	76 cd                	jbe    0x1233c
   1236f:	83 7d d4 00          	cmpl   $0x0,0xffffffd4(%ebp)
   12373:	75 11                	jne    0x12386
   12375:	83 45 e4 01          	addl   $0x1,0xffffffe4(%ebp)
   12379:	81 45 ec 00 02 00 00 	addl   $0x200,0xffffffec(%ebp)
   12380:	83 7d e4 00          	cmpl   $0x0,0xffffffe4(%ebp)
   12384:	74 81                	je     0x12307
   12386:	83 7d d4 00          	cmpl   $0x0,0xffffffd4(%ebp)
   1238a:	75 58                	jne    0x123e4
   1238c:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
   12390:	75 33                	jne    0x123c5
   12392:	8b 45 08             	mov    0x8(%ebp),%eax
   12395:	89 04 24             	mov    %eax,(%esp)
   12398:	e8 02 f9 ff ff       	call   0x11c9f
   1239d:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
   123a0:	83 7d d4 00          	cmpl   $0x0,0xffffffd4(%ebp)
   123a4:	75 3e                	jne    0x123e4
   123a6:	8b 45 08             	mov    0x8(%ebp),%eax
   123a9:	89 44 24 04          	mov    %eax,0x4(%esp)
   123ad:	c7 04 24 fa b0 01 00 	movl   $0x1b0fa,(%esp)
   123b4:	e8 93 89 00 00       	call   0x1ad4c
   123b9:	c7 45 9c ff ff ff ff 	movl   $0xffffffff,0xffffff9c(%ebp)
   123c0:	e9 d5 02 00 00       	jmp    0x1269a
   123c5:	8b 45 08             	mov    0x8(%ebp),%eax
   123c8:	89 44 24 04          	mov    %eax,0x4(%esp)
   123cc:	c7 04 24 11 b1 01 00 	movl   $0x1b111,(%esp)
   123d3:	e8 74 89 00 00       	call   0x1ad4c
   123d8:	c7 45 9c ff ff ff ff 	movl   $0xffffffff,0xffffff9c(%ebp)
   123df:	e9 b6 02 00 00       	jmp    0x1269a
   123e4:	c7 45 f0 1a 03 00 00 	movl   $0x31a,0xfffffff0(%ebp)
   123eb:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
   123f2:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
   123f9:	c7 45 dc 40 f4 01 00 	movl   $0x1f440,0xffffffdc(%ebp)
   12400:	eb 52                	jmp    0x12454
   12402:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   12405:	8b 40 24             	mov    0x24(%eax),%eax
   12408:	85 c0                	test   %eax,%eax
   1240a:	75 2c                	jne    0x12438
   1240c:	83 7d f4 00          	cmpl   $0x0,0xfffffff4(%ebp)
   12410:	75 06                	jne    0x12418
   12412:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   12415:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   12418:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
   1241c:	75 1a                	jne    0x12438
   1241e:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   12421:	8b 40 20             	mov    0x20(%eax),%eax
   12424:	85 c0                	test   %eax,%eax
   12426:	75 10                	jne    0x12438
   12428:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   1242b:	8b 40 28             	mov    0x28(%eax),%eax
   1242e:	85 c0                	test   %eax,%eax
   12430:	75 06                	jne    0x12438
   12432:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   12435:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   12438:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   1243b:	8b 40 20             	mov    0x20(%eax),%eax
   1243e:	3b 45 f0             	cmp    0xfffffff0(%ebp),%eax
   12441:	75 0d                	jne    0x12450
   12443:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   12446:	8b 40 28             	mov    0x28(%eax),%eax
   12449:	3b 45 d4             	cmp    0xffffffd4(%ebp),%eax
   1244c:	75 02                	jne    0x12450
   1244e:	eb 0e                	jmp    0x1245e
   12450:	83 45 dc 2c          	addl   $0x2c,0xffffffdc(%ebp)
   12454:	b8 40 ff 01 00       	mov    $0x1ff40,%eax
   12459:	39 45 dc             	cmp    %eax,0xffffffdc(%ebp)
   1245c:	72 a4                	jb     0x12402
   1245e:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
   12465:	b8 40 ff 01 00       	mov    $0x1ff40,%eax
   1246a:	39 45 dc             	cmp    %eax,0xffffffdc(%ebp)
   1246d:	72 40                	jb     0x124af
   1246f:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
   12473:	74 08                	je     0x1247d
   12475:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   12478:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
   1247b:	eb 2b                	jmp    0x124a8
   1247d:	83 7d f4 00          	cmpl   $0x0,0xfffffff4(%ebp)
   12481:	75 1f                	jne    0x124a2
   12483:	8b 45 08             	mov    0x8(%ebp),%eax
   12486:	89 44 24 04          	mov    %eax,0x4(%esp)
   1248a:	c7 04 24 1f b1 01 00 	movl   $0x1b11f,(%esp)
   12491:	e8 b6 88 00 00       	call   0x1ad4c
   12496:	c7 45 9c ff ff ff ff 	movl   $0xffffffff,0xffffff9c(%ebp)
   1249d:	e9 f8 01 00 00       	jmp    0x1269a
   124a2:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   124a5:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
   124a8:	c7 45 fc 01 00 00 00 	movl   $0x1,0xfffffffc(%ebp)
   124af:	c7 45 d8 e0 49 04 00 	movl   $0x449e0,0xffffffd8(%ebp)
   124b6:	eb 0e                	jmp    0x124c6
   124b8:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   124bb:	8b 40 08             	mov    0x8(%eax),%eax
   124be:	85 c0                	test   %eax,%eax
   124c0:	74 0e                	je     0x124d0
   124c2:	83 45 d8 0c          	addl   $0xc,0xffffffd8(%ebp)
   124c6:	b8 e0 79 04 00       	mov    $0x479e0,%eax
   124cb:	39 45 d8             	cmp    %eax,0xffffffd8(%ebp)
   124ce:	72 e8                	jb     0x124b8
   124d0:	b8 e0 79 04 00       	mov    $0x479e0,%eax
   124d5:	39 45 d8             	cmp    %eax,0xffffffd8(%ebp)
   124d8:	72 1f                	jb     0x124f9
   124da:	8b 45 08             	mov    0x8(%ebp),%eax
   124dd:	89 44 24 04          	mov    %eax,0x4(%esp)
   124e1:	c7 04 24 39 b1 01 00 	movl   $0x1b139,(%esp)
   124e8:	e8 5f 88 00 00       	call   0x1ad4c
   124ed:	c7 45 9c ff ff ff ff 	movl   $0xffffffff,0xffffff9c(%ebp)
   124f4:	e9 a1 01 00 00       	jmp    0x1269a
   124f9:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
   12500:	eb 12                	jmp    0x12514
   12502:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   12505:	8b 55 10             	mov    0x10(%ebp),%edx
   12508:	8b 44 82 70          	mov    0x70(%edx,%eax,4),%eax
   1250c:	85 c0                	test   %eax,%eax
   1250e:	74 0a                	je     0x1251a
   12510:	83 45 e4 01          	addl   $0x1,0xffffffe4(%ebp)
   12514:	83 7d e4 1f          	cmpl   $0x1f,0xffffffe4(%ebp)
   12518:	7e e8                	jle    0x12502
   1251a:	83 7d e4 1f          	cmpl   $0x1f,0xffffffe4(%ebp)
   1251e:	7e 1f                	jle    0x1253f
   12520:	8b 45 08             	mov    0x8(%ebp),%eax
   12523:	89 44 24 04          	mov    %eax,0x4(%esp)
   12527:	c7 04 24 52 b1 01 00 	movl   $0x1b152,(%esp)
   1252e:	e8 19 88 00 00       	call   0x1ad4c
   12533:	c7 45 9c ff ff ff ff 	movl   $0xffffffff,0xffffff9c(%ebp)
   1253a:	e9 5b 01 00 00       	jmp    0x1269a
   1253f:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
   12542:	8b 55 10             	mov    0x10(%ebp),%edx
   12545:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   12548:	89 44 8a 70          	mov    %eax,0x70(%edx,%ecx,4)
   1254c:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   1254f:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
   12555:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   12558:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   1255f:	8b 55 d8             	mov    0xffffffd8(%ebp),%edx
   12562:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   12565:	89 42 08             	mov    %eax,0x8(%edx)
   12568:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   1256b:	8b 40 24             	mov    0x24(%eax),%eax
   1256e:	8d 50 01             	lea    0x1(%eax),%edx
   12571:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   12574:	89 50 24             	mov    %edx,0x24(%eax)
   12577:	83 7d fc 01          	cmpl   $0x1,0xfffffffc(%ebp)
   1257b:	0f 85 82 00 00 00    	jne    0x12603
   12581:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   12584:	c1 e8 04             	shr    $0x4,%eax
   12587:	c1 e0 09             	shl    $0x9,%eax
   1258a:	05 00 08 00 00       	add    $0x800,%eax
   1258f:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   12596:	00 
   12597:	89 44 24 08          	mov    %eax,0x8(%esp)
   1259b:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   125a2:	00 
   125a3:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   125aa:	e8 d6 13 00 00       	call   0x13985
   125af:	c7 45 d0 a0 ab 02 00 	movl   $0x2aba0,0xffffffd0(%ebp)
   125b6:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   125b9:	83 e0 0f             	and    $0xf,%eax
   125bc:	c1 e0 05             	shl    $0x5,%eax
   125bf:	01 45 d0             	add    %eax,0xffffffd0(%ebp)
   125c2:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   125c5:	8b 10                	mov    (%eax),%edx
   125c7:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   125ca:	89 10                	mov    %edx,(%eax)
   125cc:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   125cf:	8b 50 04             	mov    0x4(%eax),%edx
   125d2:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   125d5:	89 50 04             	mov    %edx,0x4(%eax)
   125d8:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   125db:	8b 50 08             	mov    0x8(%eax),%edx
   125de:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   125e1:	89 50 08             	mov    %edx,0x8(%eax)
   125e4:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   125e7:	8b 50 0c             	mov    0xc(%eax),%edx
   125ea:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   125ed:	89 50 0c             	mov    %edx,0xc(%eax)
   125f0:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   125f3:	c7 40 20 1a 03 00 00 	movl   $0x31a,0x20(%eax)
   125fa:	8b 55 dc             	mov    0xffffffdc(%ebp),%edx
   125fd:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   12600:	89 42 28             	mov    %eax,0x28(%edx)
   12603:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   12606:	8b 00                	mov    (%eax),%eax
   12608:	83 f8 02             	cmp    $0x2,%eax
   1260b:	0f 85 83 00 00 00    	jne    0x12694
   12611:	c7 45 b0 fe ff ff ff 	movl   $0xfffffffe,0xffffffb0(%ebp)
   12618:	c7 45 b4 00 00 00 00 	movl   $0x0,0xffffffb4(%ebp)
   1261f:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   12622:	8b 40 08             	mov    0x8(%eax),%eax
   12625:	25 ff 00 00 00       	and    $0xff,%eax
   1262a:	89 45 b8             	mov    %eax,0xffffffb8(%ebp)
   1262d:	e8 a8 80 00 00       	call   0x1a6da
   12632:	a1 6c e6 06 00       	mov    0x6e66c,%eax
   12637:	85 c0                	test   %eax,%eax
   12639:	75 54                	jne    0x1268f
   1263b:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   1263e:	8b 40 08             	mov    0x8(%eax),%eax
   12641:	c1 e8 08             	shr    $0x8,%eax
   12644:	25 ff 00 00 00       	and    $0xff,%eax
   12649:	8b 14 85 28 c6 01 00 	mov    0x1c628(,%eax,4),%edx
   12650:	8d 45 a8             	lea    0xffffffa8(%ebp),%eax
   12653:	89 44 24 08          	mov    %eax,0x8(%esp)
   12657:	89 54 24 04          	mov    %edx,0x4(%esp)
   1265b:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   12662:	e8 89 75 00 00       	call   0x19bf0
   12667:	85 c0                	test   %eax,%eax
   12669:	74 24                	je     0x1268f
   1266b:	c7 44 24 0c 17 02 00 	movl   $0x217,0xc(%esp)
   12672:	00 
   12673:	c7 44 24 08 38 af 01 	movl   $0x1af38,0x8(%esp)
   1267a:	00 
   1267b:	c7 44 24 04 38 af 01 	movl   $0x1af38,0x4(%esp)
   12682:	00 
   12683:	c7 04 24 68 b1 01 00 	movl   $0x1b168,(%esp)
   1268a:	e8 99 75 00 00       	call   0x19c28
   1268f:	e8 3c 80 00 00       	call   0x1a6d0
   12694:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   12697:	89 45 9c             	mov    %eax,0xffffff9c(%ebp)
   1269a:	8b 45 9c             	mov    0xffffff9c(%ebp),%eax
   1269d:	c9                   	leave  
   1269e:	c3                   	ret    
   1269f:	55                   	push   %ebp
   126a0:	89 e5                	mov    %esp,%ebp
   126a2:	83 ec 58             	sub    $0x58,%esp
   126a5:	8b 45 18             	mov    0x18(%ebp),%eax
   126a8:	8b 50 48             	mov    0x48(%eax),%edx
   126ab:	8b 45 0c             	mov    0xc(%ebp),%eax
   126ae:	89 44 24 04          	mov    %eax,0x4(%esp)
   126b2:	89 14 24             	mov    %edx,(%esp)
   126b5:	e8 1c 86 00 00       	call   0x1acd6
   126ba:	89 45 0c             	mov    %eax,0xc(%ebp)
   126bd:	8b 55 08             	mov    0x8(%ebp),%edx
   126c0:	8b 45 18             	mov    0x18(%ebp),%eax
   126c3:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   126c7:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   126ca:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   126cd:	8b 40 08             	mov    0x8(%eax),%eax
   126d0:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   126d3:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   126d6:	8b 00                	mov    (%eax),%eax
   126d8:	83 f8 02             	cmp    $0x2,%eax
   126db:	0f 85 8c 00 00 00    	jne    0x1276d
   126e1:	c7 45 d4 fe ff ff ff 	movl   $0xfffffffe,0xffffffd4(%ebp)
   126e8:	c7 45 d8 03 00 00 00 	movl   $0x3,0xffffffd8(%ebp)
   126ef:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   126f2:	8b 40 08             	mov    0x8(%eax),%eax
   126f5:	25 ff 00 00 00       	and    $0xff,%eax
   126fa:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
   126fd:	8b 45 0c             	mov    0xc(%ebp),%eax
   12700:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   12703:	8b 45 14             	mov    0x14(%ebp),%eax
   12706:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   12709:	e8 cc 7f 00 00       	call   0x1a6da
   1270e:	a1 6c e6 06 00       	mov    0x6e66c,%eax
   12713:	85 c0                	test   %eax,%eax
   12715:	75 48                	jne    0x1275f
   12717:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1271a:	8b 40 08             	mov    0x8(%eax),%eax
   1271d:	c1 e8 08             	shr    $0x8,%eax
   12720:	25 ff 00 00 00       	and    $0xff,%eax
   12725:	8b 14 85 28 c6 01 00 	mov    0x1c628(,%eax,4),%edx
   1272c:	8d 45 cc             	lea    0xffffffcc(%ebp),%eax
   1272f:	89 44 24 08          	mov    %eax,0x8(%esp)
   12733:	89 54 24 04          	mov    %edx,0x4(%esp)
   12737:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   1273e:	e8 ad 74 00 00       	call   0x19bf0
   12743:	83 f8 ff             	cmp    $0xffffffff,%eax
   12746:	75 07                	jne    0x1274f
   12748:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,0xffffffec(%ebp)
   1274f:	e8 7c 7f 00 00       	call   0x1a6d0
   12754:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   12757:	89 45 bc             	mov    %eax,0xffffffbc(%ebp)
   1275a:	e9 80 00 00 00       	jmp    0x127df
   1275f:	e8 6c 7f 00 00       	call   0x1a6d0
   12764:	c7 45 bc ff ff ff ff 	movl   $0xffffffff,0xffffffbc(%ebp)
   1276b:	eb 72                	jmp    0x127df
   1276d:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   12770:	8b 40 04             	mov    0x4(%eax),%eax
   12773:	89 c2                	mov    %eax,%edx
   12775:	03 55 10             	add    0x10(%ebp),%edx
   12778:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   1277b:	8b 48 08             	mov    0x8(%eax),%ecx
   1277e:	8b 45 14             	mov    0x14(%ebp),%eax
   12781:	89 44 24 0c          	mov    %eax,0xc(%esp)
   12785:	89 54 24 08          	mov    %edx,0x8(%esp)
   12789:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   1278d:	8b 45 0c             	mov    0xc(%ebp),%eax
   12790:	89 04 24             	mov    %eax,(%esp)
   12793:	e8 4c 00 00 00       	call   0x127e4
   12798:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   1279b:	83 7d fc ff          	cmpl   $0xffffffff,0xfffffffc(%ebp)
   1279f:	75 24                	jne    0x127c5
   127a1:	c7 44 24 0c 4a 02 00 	movl   $0x24a,0xc(%esp)
   127a8:	00 
   127a9:	c7 44 24 08 38 af 01 	movl   $0x1af38,0x8(%esp)
   127b0:	00 
   127b1:	c7 44 24 04 38 af 01 	movl   $0x1af38,0x4(%esp)
   127b8:	00 
   127b9:	c7 04 24 a6 b1 01 00 	movl   $0x1b1a6,(%esp)
   127c0:	e8 63 74 00 00       	call   0x19c28
   127c5:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   127c8:	8b 50 04             	mov    0x4(%eax),%edx
   127cb:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   127ce:	03 45 10             	add    0x10(%ebp),%eax
   127d1:	01 c2                	add    %eax,%edx
   127d3:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   127d6:	89 50 04             	mov    %edx,0x4(%eax)
   127d9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   127dc:	89 45 bc             	mov    %eax,0xffffffbc(%ebp)
   127df:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   127e2:	c9                   	leave  
   127e3:	c3                   	ret    
   127e4:	55                   	push   %ebp
   127e5:	89 e5                	mov    %esp,%ebp
   127e7:	57                   	push   %edi
   127e8:	56                   	push   %esi
   127e9:	83 ec 30             	sub    $0x30,%esp
   127ec:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
   127f0:	78 09                	js     0x127fb
   127f2:	81 7d 10 ff 8f 01 00 	cmpl   $0x18fff,0x10(%ebp)
   127f9:	7e 1f                	jle    0x1281a
   127fb:	8b 45 10             	mov    0x10(%ebp),%eax
   127fe:	89 44 24 04          	mov    %eax,0x4(%esp)
   12802:	c7 04 24 b0 b1 01 00 	movl   $0x1b1b0,(%esp)
   12809:	e8 3e 85 00 00       	call   0x1ad4c
   1280e:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,0xffffffd4(%ebp)
   12815:	e9 11 01 00 00       	jmp    0x1292b
   1281a:	8b 55 10             	mov    0x10(%ebp),%edx
   1281d:	89 d0                	mov    %edx,%eax
   1281f:	c1 f8 1f             	sar    $0x1f,%eax
   12822:	89 c1                	mov    %eax,%ecx
   12824:	c1 e9 14             	shr    $0x14,%ecx
   12827:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
   1282a:	25 ff 0f 00 00       	and    $0xfff,%eax
   1282f:	29 c8                	sub    %ecx,%eax
   12831:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   12834:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
   1283b:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
   12842:	e9 d3 00 00 00       	jmp    0x1291a
   12847:	8b 45 10             	mov    0x10(%ebp),%eax
   1284a:	89 44 24 04          	mov    %eax,0x4(%esp)
   1284e:	8b 45 0c             	mov    0xc(%ebp),%eax
   12851:	89 04 24             	mov    %eax,(%esp)
   12854:	e8 75 e2 ff ff       	call   0x10ace
   12859:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   1285c:	83 7d ec 00          	cmpl   $0x0,0xffffffec(%ebp)
   12860:	75 32                	jne    0x12894
   12862:	8b 45 10             	mov    0x10(%ebp),%eax
   12865:	89 44 24 04          	mov    %eax,0x4(%esp)
   12869:	8b 45 0c             	mov    0xc(%ebp),%eax
   1286c:	89 04 24             	mov    %eax,(%esp)
   1286f:	e8 cf e2 ff ff       	call   0x10b43
   12874:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   12877:	83 7d ec 00          	cmpl   $0x0,0xffffffec(%ebp)
   1287b:	75 0c                	jne    0x12889
   1287d:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,0xffffffd4(%ebp)
   12884:	e9 a2 00 00 00       	jmp    0x1292b
   12889:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   1288c:	89 04 24             	mov    %eax,(%esp)
   1288f:	e8 9c e8 ff ff       	call   0x11130
   12894:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   12897:	8b 00                	mov    (%eax),%eax
   12899:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   1289c:	b8 00 10 00 00       	mov    $0x1000,%eax
   128a1:	2b 45 e0             	sub    0xffffffe0(%ebp),%eax
   128a4:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   128a7:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   128aa:	3b 45 14             	cmp    0x14(%ebp),%eax
   128ad:	7c 2d                	jl     0x128dc
   128af:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   128b2:	89 c7                	mov    %eax,%edi
   128b4:	03 7d f0             	add    0xfffffff0(%ebp),%edi
   128b7:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   128ba:	89 c6                	mov    %eax,%esi
   128bc:	03 75 08             	add    0x8(%ebp),%esi
   128bf:	8b 4d 14             	mov    0x14(%ebp),%ecx
   128c2:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   128c4:	8b 45 14             	mov    0x14(%ebp),%eax
   128c7:	01 45 e8             	add    %eax,0xffffffe8(%ebp)
   128ca:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   128cd:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
   128d4:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   128d7:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
   128da:	eb 4f                	jmp    0x1292b
   128dc:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   128df:	89 c7                	mov    %eax,%edi
   128e1:	03 7d f0             	add    0xfffffff0(%ebp),%edi
   128e4:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   128e7:	89 c6                	mov    %eax,%esi
   128e9:	03 75 08             	add    0x8(%ebp),%esi
   128ec:	8b 4d f4             	mov    0xfffffff4(%ebp),%ecx
   128ef:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   128f1:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
   128f8:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   128fb:	01 45 e4             	add    %eax,0xffffffe4(%ebp)
   128fe:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   12901:	29 45 14             	sub    %eax,0x14(%ebp)
   12904:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   12907:	01 45 e8             	add    %eax,0xffffffe8(%ebp)
   1290a:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   1290d:	01 45 10             	add    %eax,0x10(%ebp)
   12910:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   12913:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
   1291a:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
   1291e:	0f 8f 23 ff ff ff    	jg     0x12847
   12924:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
   1292b:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   1292e:	83 c4 30             	add    $0x30,%esp
   12931:	5e                   	pop    %esi
   12932:	5f                   	pop    %edi
   12933:	5d                   	pop    %ebp
   12934:	c3                   	ret    
   12935:	55                   	push   %ebp
   12936:	89 e5                	mov    %esp,%ebp
   12938:	83 ec 58             	sub    $0x58,%esp
   1293b:	8b 45 18             	mov    0x18(%ebp),%eax
   1293e:	8b 50 48             	mov    0x48(%eax),%edx
   12941:	8b 45 0c             	mov    0xc(%ebp),%eax
   12944:	89 44 24 04          	mov    %eax,0x4(%esp)
   12948:	89 14 24             	mov    %edx,(%esp)
   1294b:	e8 86 83 00 00       	call   0x1acd6
   12950:	89 45 0c             	mov    %eax,0xc(%ebp)
   12953:	8b 55 08             	mov    0x8(%ebp),%edx
   12956:	8b 45 18             	mov    0x18(%ebp),%eax
   12959:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   1295d:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   12960:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   12963:	8b 40 08             	mov    0x8(%eax),%eax
   12966:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   12969:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1296c:	8b 00                	mov    (%eax),%eax
   1296e:	83 f8 02             	cmp    $0x2,%eax
   12971:	0f 85 b0 00 00 00    	jne    0x12a27
   12977:	c7 45 d4 fe ff ff ff 	movl   $0xfffffffe,0xffffffd4(%ebp)
   1297e:	c7 45 d8 02 00 00 00 	movl   $0x2,0xffffffd8(%ebp)
   12985:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   12988:	8b 40 08             	mov    0x8(%eax),%eax
   1298b:	25 ff 00 00 00       	and    $0xff,%eax
   12990:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
   12993:	c7 45 e0 03 00 00 00 	movl   $0x3,0xffffffe0(%ebp)
   1299a:	8b 55 18             	mov    0x18(%ebp),%edx
   1299d:	b8 e0 79 04 00       	mov    $0x479e0,%eax
   129a2:	89 d1                	mov    %edx,%ecx
   129a4:	29 c1                	sub    %eax,%ecx
   129a6:	89 c8                	mov    %ecx,%eax
   129a8:	c1 f8 05             	sar    $0x5,%eax
   129ab:	69 c0 39 8e e3 38    	imul   $0x38e38e39,%eax,%eax
   129b1:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   129b4:	8b 45 0c             	mov    0xc(%ebp),%eax
   129b7:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   129ba:	8b 45 14             	mov    0x14(%ebp),%eax
   129bd:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   129c0:	e8 15 7d 00 00       	call   0x1a6da
   129c5:	a1 6c e6 06 00       	mov    0x6e66c,%eax
   129ca:	85 c0                	test   %eax,%eax
   129cc:	75 4b                	jne    0x12a19
   129ce:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   129d1:	8b 40 08             	mov    0x8(%eax),%eax
   129d4:	c1 e8 08             	shr    $0x8,%eax
   129d7:	25 ff 00 00 00       	and    $0xff,%eax
   129dc:	8b 14 85 28 c6 01 00 	mov    0x1c628(,%eax,4),%edx
   129e3:	8d 45 cc             	lea    0xffffffcc(%ebp),%eax
   129e6:	89 44 24 08          	mov    %eax,0x8(%esp)
   129ea:	89 54 24 04          	mov    %edx,0x4(%esp)
   129ee:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   129f5:	e8 f6 71 00 00       	call   0x19bf0
   129fa:	85 c0                	test   %eax,%eax
   129fc:	75 1b                	jne    0x12a19
   129fe:	c7 05 10 f4 01 00 01 	movl   $0x1,0x1f410
   12a05:	00 00 00 
   12a08:	e8 c3 7c 00 00       	call   0x1a6d0
   12a0d:	c7 45 bc 00 00 00 00 	movl   $0x0,0xffffffbc(%ebp)
   12a14:	e9 80 00 00 00       	jmp    0x12a99
   12a19:	e8 b2 7c 00 00       	call   0x1a6d0
   12a1e:	c7 45 bc ff ff ff ff 	movl   $0xffffffff,0xffffffbc(%ebp)
   12a25:	eb 72                	jmp    0x12a99
   12a27:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   12a2a:	8b 40 04             	mov    0x4(%eax),%eax
   12a2d:	89 c2                	mov    %eax,%edx
   12a2f:	03 55 10             	add    0x10(%ebp),%edx
   12a32:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   12a35:	8b 48 08             	mov    0x8(%eax),%ecx
   12a38:	8b 45 14             	mov    0x14(%ebp),%eax
   12a3b:	89 44 24 0c          	mov    %eax,0xc(%esp)
   12a3f:	89 54 24 08          	mov    %edx,0x8(%esp)
   12a43:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   12a47:	8b 45 0c             	mov    0xc(%ebp),%eax
   12a4a:	89 04 24             	mov    %eax,(%esp)
   12a4d:	e8 4c 00 00 00       	call   0x12a9e
   12a52:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   12a55:	83 7d fc ff          	cmpl   $0xffffffff,0xfffffffc(%ebp)
   12a59:	75 24                	jne    0x12a7f
   12a5b:	c7 44 24 0c ac 02 00 	movl   $0x2ac,0xc(%esp)
   12a62:	00 
   12a63:	c7 44 24 08 38 af 01 	movl   $0x1af38,0x8(%esp)
   12a6a:	00 
   12a6b:	c7 44 24 04 38 af 01 	movl   $0x1af38,0x4(%esp)
   12a72:	00 
   12a73:	c7 04 24 a6 b1 01 00 	movl   $0x1b1a6,(%esp)
   12a7a:	e8 a9 71 00 00       	call   0x19c28
   12a7f:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   12a82:	8b 50 04             	mov    0x4(%eax),%edx
   12a85:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   12a88:	03 45 10             	add    0x10(%ebp),%eax
   12a8b:	01 c2                	add    %eax,%edx
   12a8d:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   12a90:	89 50 04             	mov    %edx,0x4(%eax)
   12a93:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   12a96:	89 45 bc             	mov    %eax,0xffffffbc(%ebp)
   12a99:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   12a9c:	c9                   	leave  
   12a9d:	c3                   	ret    
   12a9e:	55                   	push   %ebp
   12a9f:	89 e5                	mov    %esp,%ebp
   12aa1:	57                   	push   %edi
   12aa2:	56                   	push   %esi
   12aa3:	83 ec 30             	sub    $0x30,%esp
   12aa6:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
   12aaa:	78 09                	js     0x12ab5
   12aac:	81 7d 10 ff 8f 01 00 	cmpl   $0x18fff,0x10(%ebp)
   12ab3:	7e 1f                	jle    0x12ad4
   12ab5:	8b 45 10             	mov    0x10(%ebp),%eax
   12ab8:	89 44 24 04          	mov    %eax,0x4(%esp)
   12abc:	c7 04 24 d4 b1 01 00 	movl   $0x1b1d4,(%esp)
   12ac3:	e8 84 82 00 00       	call   0x1ad4c
   12ac8:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,0xffffffd4(%ebp)
   12acf:	e9 fd 00 00 00       	jmp    0x12bd1
   12ad4:	8b 55 10             	mov    0x10(%ebp),%edx
   12ad7:	89 d0                	mov    %edx,%eax
   12ad9:	c1 f8 1f             	sar    $0x1f,%eax
   12adc:	89 c1                	mov    %eax,%ecx
   12ade:	c1 e9 14             	shr    $0x14,%ecx
   12ae1:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
   12ae4:	25 ff 0f 00 00       	and    $0xfff,%eax
   12ae9:	29 c8                	sub    %ecx,%eax
   12aeb:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   12aee:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
   12af5:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
   12afc:	e9 bf 00 00 00       	jmp    0x12bc0
   12b01:	8b 45 10             	mov    0x10(%ebp),%eax
   12b04:	89 44 24 04          	mov    %eax,0x4(%esp)
   12b08:	8b 45 0c             	mov    0xc(%ebp),%eax
   12b0b:	89 04 24             	mov    %eax,(%esp)
   12b0e:	e8 bb df ff ff       	call   0x10ace
   12b13:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   12b16:	83 7d ec 00          	cmpl   $0x0,0xffffffec(%ebp)
   12b1a:	75 32                	jne    0x12b4e
   12b1c:	8b 45 10             	mov    0x10(%ebp),%eax
   12b1f:	89 44 24 04          	mov    %eax,0x4(%esp)
   12b23:	8b 45 0c             	mov    0xc(%ebp),%eax
   12b26:	89 04 24             	mov    %eax,(%esp)
   12b29:	e8 15 e0 ff ff       	call   0x10b43
   12b2e:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   12b31:	83 7d ec 00          	cmpl   $0x0,0xffffffec(%ebp)
   12b35:	75 0c                	jne    0x12b43
   12b37:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,0xffffffd4(%ebp)
   12b3e:	e9 8e 00 00 00       	jmp    0x12bd1
   12b43:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   12b46:	89 04 24             	mov    %eax,(%esp)
   12b49:	e8 e2 e5 ff ff       	call   0x11130
   12b4e:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   12b51:	8b 00                	mov    (%eax),%eax
   12b53:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   12b56:	b8 00 10 00 00       	mov    $0x1000,%eax
   12b5b:	2b 45 e0             	sub    0xffffffe0(%ebp),%eax
   12b5e:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   12b61:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   12b64:	3b 45 14             	cmp    0x14(%ebp),%eax
   12b67:	7c 23                	jl     0x12b8c
   12b69:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   12b6c:	89 c7                	mov    %eax,%edi
   12b6e:	03 7d 08             	add    0x8(%ebp),%edi
   12b71:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   12b74:	89 c6                	mov    %eax,%esi
   12b76:	03 75 f0             	add    0xfffffff0(%ebp),%esi
   12b79:	8b 4d 14             	mov    0x14(%ebp),%ecx
   12b7c:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   12b7e:	8b 45 14             	mov    0x14(%ebp),%eax
   12b81:	01 45 e8             	add    %eax,0xffffffe8(%ebp)
   12b84:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   12b87:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
   12b8a:	eb 45                	jmp    0x12bd1
   12b8c:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   12b8f:	89 c7                	mov    %eax,%edi
   12b91:	03 7d 08             	add    0x8(%ebp),%edi
   12b94:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   12b97:	89 c6                	mov    %eax,%esi
   12b99:	03 75 f0             	add    0xfffffff0(%ebp),%esi
   12b9c:	8b 4d f4             	mov    0xfffffff4(%ebp),%ecx
   12b9f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   12ba1:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
   12ba8:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   12bab:	01 45 e4             	add    %eax,0xffffffe4(%ebp)
   12bae:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   12bb1:	29 45 14             	sub    %eax,0x14(%ebp)
   12bb4:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   12bb7:	01 45 e8             	add    %eax,0xffffffe8(%ebp)
   12bba:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   12bbd:	01 45 10             	add    %eax,0x10(%ebp)
   12bc0:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
   12bc4:	0f 8f 37 ff ff ff    	jg     0x12b01
   12bca:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
   12bd1:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   12bd4:	83 c4 30             	add    $0x30,%esp
   12bd7:	5e                   	pop    %esi
   12bd8:	5f                   	pop    %edi
   12bd9:	5d                   	pop    %ebp
   12bda:	c3                   	ret    
   12bdb:	55                   	push   %ebp
   12bdc:	89 e5                	mov    %esp,%ebp
   12bde:	83 ec 48             	sub    $0x48,%esp
   12be1:	8b 55 08             	mov    0x8(%ebp),%edx
   12be4:	8b 45 0c             	mov    0xc(%ebp),%eax
   12be7:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   12beb:	8b 40 08             	mov    0x8(%eax),%eax
   12bee:	8b 40 24             	mov    0x24(%eax),%eax
   12bf1:	85 c0                	test   %eax,%eax
   12bf3:	7f 1f                	jg     0x12c14
   12bf5:	8b 45 08             	mov    0x8(%ebp),%eax
   12bf8:	89 44 24 04          	mov    %eax,0x4(%esp)
   12bfc:	c7 04 24 f8 b1 01 00 	movl   $0x1b1f8,(%esp)
   12c03:	e8 44 81 00 00       	call   0x1ad4c
   12c08:	c7 45 cc ff ff ff ff 	movl   $0xffffffff,0xffffffcc(%ebp)
   12c0f:	e9 23 01 00 00       	jmp    0x12d37
   12c14:	8b 55 08             	mov    0x8(%ebp),%edx
   12c17:	8b 45 0c             	mov    0xc(%ebp),%eax
   12c1a:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   12c1e:	8b 40 08             	mov    0x8(%eax),%eax
   12c21:	8b 40 24             	mov    0x24(%eax),%eax
   12c24:	83 f8 01             	cmp    $0x1,%eax
   12c27:	0f 85 ce 00 00 00    	jne    0x12cfb
   12c2d:	8b 55 08             	mov    0x8(%ebp),%edx
   12c30:	8b 45 0c             	mov    0xc(%ebp),%eax
   12c33:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   12c37:	8b 40 08             	mov    0x8(%eax),%eax
   12c3a:	8b 00                	mov    (%eax),%eax
   12c3c:	83 f8 02             	cmp    $0x2,%eax
   12c3f:	0f 85 99 00 00 00    	jne    0x12cde
   12c45:	c7 45 e0 fe ff ff ff 	movl   $0xfffffffe,0xffffffe0(%ebp)
   12c4c:	c7 45 e4 01 00 00 00 	movl   $0x1,0xffffffe4(%ebp)
   12c53:	8b 55 08             	mov    0x8(%ebp),%edx
   12c56:	8b 45 0c             	mov    0xc(%ebp),%eax
   12c59:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   12c5d:	8b 40 08             	mov    0x8(%eax),%eax
   12c60:	8b 40 08             	mov    0x8(%eax),%eax
   12c63:	25 ff 00 00 00       	and    $0xff,%eax
   12c68:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   12c6b:	e8 6a 7a 00 00       	call   0x1a6da
   12c70:	a1 6c e6 06 00       	mov    0x6e66c,%eax
   12c75:	85 c0                	test   %eax,%eax
   12c77:	75 5e                	jne    0x12cd7
   12c79:	8b 55 08             	mov    0x8(%ebp),%edx
   12c7c:	8b 45 0c             	mov    0xc(%ebp),%eax
   12c7f:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   12c83:	8b 40 08             	mov    0x8(%eax),%eax
   12c86:	8b 40 08             	mov    0x8(%eax),%eax
   12c89:	c1 e8 08             	shr    $0x8,%eax
   12c8c:	25 ff 00 00 00       	and    $0xff,%eax
   12c91:	8b 14 85 28 c6 01 00 	mov    0x1c628(,%eax,4),%edx
   12c98:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   12c9b:	89 44 24 08          	mov    %eax,0x8(%esp)
   12c9f:	89 54 24 04          	mov    %edx,0x4(%esp)
   12ca3:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   12caa:	e8 41 6f 00 00       	call   0x19bf0
   12caf:	85 c0                	test   %eax,%eax
   12cb1:	74 24                	je     0x12cd7
   12cb3:	c7 44 24 0c f5 02 00 	movl   $0x2f5,0xc(%esp)
   12cba:	00 
   12cbb:	c7 44 24 08 38 af 01 	movl   $0x1af38,0x8(%esp)
   12cc2:	00 
   12cc3:	c7 44 24 04 38 af 01 	movl   $0x1af38,0x4(%esp)
   12cca:	00 
   12ccb:	c7 04 24 24 b2 01 00 	movl   $0x1b224,(%esp)
   12cd2:	e8 51 6f 00 00       	call   0x19c28
   12cd7:	e8 f4 79 00 00       	call   0x1a6d0
   12cdc:	eb 1d                	jmp    0x12cfb
   12cde:	8b 55 08             	mov    0x8(%ebp),%edx
   12ce1:	8b 45 0c             	mov    0xc(%ebp),%eax
   12ce4:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   12ce8:	8b 40 08             	mov    0x8(%eax),%eax
   12ceb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   12cf2:	00 
   12cf3:	89 04 24             	mov    %eax,(%esp)
   12cf6:	e8 d9 e0 ff ff       	call   0x10dd4
   12cfb:	8b 55 08             	mov    0x8(%ebp),%edx
   12cfe:	8b 45 0c             	mov    0xc(%ebp),%eax
   12d01:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   12d05:	8b 50 08             	mov    0x8(%eax),%edx
   12d08:	8b 42 24             	mov    0x24(%edx),%eax
   12d0b:	83 e8 01             	sub    $0x1,%eax
   12d0e:	89 42 24             	mov    %eax,0x24(%edx)
   12d11:	8b 55 08             	mov    0x8(%ebp),%edx
   12d14:	8b 45 0c             	mov    0xc(%ebp),%eax
   12d17:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   12d1b:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   12d22:	8b 55 08             	mov    0x8(%ebp),%edx
   12d25:	8b 45 0c             	mov    0xc(%ebp),%eax
   12d28:	c7 44 90 70 00 00 00 	movl   $0x0,0x70(%eax,%edx,4)
   12d2f:	00 
   12d30:	c7 45 cc 00 00 00 00 	movl   $0x0,0xffffffcc(%ebp)
   12d37:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   12d3a:	c9                   	leave  
   12d3b:	c3                   	ret    
   12d3c:	55                   	push   %ebp
   12d3d:	89 e5                	mov    %esp,%ebp
   12d3f:	56                   	push   %esi
   12d40:	53                   	push   %ebx
   12d41:	83 ec 60             	sub    $0x60,%esp
   12d44:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
   12d4b:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
   12d52:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
   12d59:	c7 45 cc 00 00 00 00 	movl   $0x0,0xffffffcc(%ebp)
   12d60:	e9 88 00 00 00       	jmp    0x12ded
   12d65:	8b 15 0c f4 01 00    	mov    0x1f40c,%edx
   12d6b:	c7 44 24 0c 00 02 00 	movl   $0x200,0xc(%esp)
   12d72:	00 
   12d73:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   12d76:	89 44 24 08          	mov    %eax,0x8(%esp)
   12d7a:	89 54 24 04          	mov    %edx,0x4(%esp)
   12d7e:	c7 04 24 a0 ab 02 00 	movl   $0x2aba0,(%esp)
   12d85:	e8 14 fd ff ff       	call   0x12a9e
   12d8a:	c7 45 dc 00 00 00 00 	movl   $0x0,0xffffffdc(%ebp)
   12d91:	c7 45 d4 a0 ab 02 00 	movl   $0x2aba0,0xffffffd4(%ebp)
   12d98:	eb 31                	jmp    0x12dcb
   12d9a:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   12d9d:	83 c0 04             	add    $0x4,%eax
   12da0:	8b 55 08             	mov    0x8(%ebp),%edx
   12da3:	89 54 24 04          	mov    %edx,0x4(%esp)
   12da7:	89 04 24             	mov    %eax,(%esp)
   12daa:	e8 1c 7c 00 00       	call   0x1a9cb
   12daf:	85 c0                	test   %eax,%eax
   12db1:	75 10                	jne    0x12dc3
   12db3:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   12db6:	8b 00                	mov    (%eax),%eax
   12db8:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
   12dbb:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   12dbe:	01 45 e8             	add    %eax,0xffffffe8(%ebp)
   12dc1:	eb 10                	jmp    0x12dd3
   12dc3:	83 45 dc 01          	addl   $0x1,0xffffffdc(%ebp)
   12dc7:	83 45 d4 10          	addl   $0x10,0xffffffd4(%ebp)
   12dcb:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   12dce:	83 f8 1f             	cmp    $0x1f,%eax
   12dd1:	76 c7                	jbe    0x12d9a
   12dd3:	83 7d cc 00          	cmpl   $0x0,0xffffffcc(%ebp)
   12dd7:	75 1e                	jne    0x12df7
   12dd9:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   12ddc:	83 c0 20             	add    $0x20,%eax
   12ddf:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   12de2:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
   12de6:	81 45 e4 00 02 00 00 	addl   $0x200,0xffffffe4(%ebp)
   12ded:	83 7d d8 00          	cmpl   $0x0,0xffffffd8(%ebp)
   12df1:	0f 84 6e ff ff ff    	je     0x12d65
   12df7:	83 7d cc 00          	cmpl   $0x0,0xffffffcc(%ebp)
   12dfb:	75 1f                	jne    0x12e1c
   12dfd:	8b 45 08             	mov    0x8(%ebp),%eax
   12e00:	89 44 24 04          	mov    %eax,0x4(%esp)
   12e04:	c7 04 24 74 b2 01 00 	movl   $0x1b274,(%esp)
   12e0b:	e8 3c 7f 00 00       	call   0x1ad4c
   12e10:	c7 45 b4 ff ff ff ff 	movl   $0xffffffff,0xffffffb4(%ebp)
   12e17:	e9 3b 03 00 00       	jmp    0x13157
   12e1c:	83 7d cc 04          	cmpl   $0x4,0xffffffcc(%ebp)
   12e20:	7f 1f                	jg     0x12e41
   12e22:	8b 45 08             	mov    0x8(%ebp),%eax
   12e25:	89 44 24 04          	mov    %eax,0x4(%esp)
   12e29:	c7 04 24 9b b2 01 00 	movl   $0x1b29b,(%esp)
   12e30:	e8 17 7f 00 00       	call   0x1ad4c
   12e35:	c7 45 b4 ff ff ff ff 	movl   $0xffffffff,0xffffffb4(%ebp)
   12e3c:	e9 16 03 00 00       	jmp    0x13157
   12e41:	c7 45 d0 40 f4 01 00 	movl   $0x1f440,0xffffffd0(%ebp)
   12e48:	eb 38                	jmp    0x12e82
   12e4a:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   12e4d:	8b 40 28             	mov    0x28(%eax),%eax
   12e50:	3b 45 cc             	cmp    0xffffffcc(%ebp),%eax
   12e53:	75 29                	jne    0x12e7e
   12e55:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   12e58:	8b 40 24             	mov    0x24(%eax),%eax
   12e5b:	85 c0                	test   %eax,%eax
   12e5d:	74 1f                	je     0x12e7e
   12e5f:	8b 45 08             	mov    0x8(%ebp),%eax
   12e62:	89 44 24 04          	mov    %eax,0x4(%esp)
   12e66:	c7 04 24 b9 b2 01 00 	movl   $0x1b2b9,(%esp)
   12e6d:	e8 da 7e 00 00       	call   0x1ad4c
   12e72:	c7 45 b4 ff ff ff ff 	movl   $0xffffffff,0xffffffb4(%ebp)
   12e79:	e9 d9 02 00 00       	jmp    0x13157
   12e7e:	83 45 d0 2c          	addl   $0x2c,0xffffffd0(%ebp)
   12e82:	b8 40 ff 01 00       	mov    $0x1ff40,%eax
   12e87:	39 45 d0             	cmp    %eax,0xffffffd0(%ebp)
   12e8a:	72 be                	jb     0x12e4a
   12e8c:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
   12e8f:	89 d0                	mov    %edx,%eax
   12e91:	c1 f8 1f             	sar    $0x1f,%eax
   12e94:	c1 e8 14             	shr    $0x14,%eax
   12e97:	01 d0                	add    %edx,%eax
   12e99:	c1 f8 0c             	sar    $0xc,%eax
   12e9c:	83 c0 02             	add    $0x2,%eax
   12e9f:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   12ea2:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   12ea5:	c1 e0 09             	shl    $0x9,%eax
   12ea8:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   12eaf:	00 
   12eb0:	89 44 24 08          	mov    %eax,0x8(%esp)
   12eb4:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   12ebb:	00 
   12ebc:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   12ec3:	e8 bd 0a 00 00       	call   0x13985
   12ec8:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
   12ecb:	89 d0                	mov    %edx,%eax
   12ecd:	c1 f8 1f             	sar    $0x1f,%eax
   12ed0:	c1 e8 1d             	shr    $0x1d,%eax
   12ed3:	01 d0                	add    %edx,%eax
   12ed5:	c1 f8 03             	sar    $0x3,%eax
   12ed8:	89 c2                	mov    %eax,%edx
   12eda:	89 d0                	mov    %edx,%eax
   12edc:	c1 f8 1f             	sar    $0x1f,%eax
   12edf:	89 c1                	mov    %eax,%ecx
   12ee1:	c1 e9 17             	shr    $0x17,%ecx
   12ee4:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
   12ee7:	25 ff 01 00 00       	and    $0x1ff,%eax
   12eec:	29 c8                	sub    %ecx,%eax
   12eee:	89 c3                	mov    %eax,%ebx
   12ef0:	0f b6 b0 a0 ab 02 00 	movzbl 0x2aba0(%eax),%esi
   12ef7:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
   12efa:	89 d0                	mov    %edx,%eax
   12efc:	c1 f8 1f             	sar    $0x1f,%eax
   12eff:	89 c1                	mov    %eax,%ecx
   12f01:	c1 e9 1d             	shr    $0x1d,%ecx
   12f04:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
   12f07:	83 e0 07             	and    $0x7,%eax
   12f0a:	29 c8                	sub    %ecx,%eax
   12f0c:	89 c1                	mov    %eax,%ecx
   12f0e:	b8 01 00 00 00       	mov    $0x1,%eax
   12f13:	d3 e0                	shl    %cl,%eax
   12f15:	f7 d0                	not    %eax
   12f17:	21 f0                	and    %esi,%eax
   12f19:	88 83 a0 ab 02 00    	mov    %al,0x2aba0(%ebx)
   12f1f:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   12f22:	c1 e0 09             	shl    $0x9,%eax
   12f25:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   12f2c:	00 
   12f2d:	89 44 24 08          	mov    %eax,0x8(%esp)
   12f31:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   12f38:	00 
   12f39:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   12f40:	e8 c5 0a 00 00       	call   0x13a0a
   12f45:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   12f48:	c1 e8 04             	shr    $0x4,%eax
   12f4b:	83 c0 04             	add    $0x4,%eax
   12f4e:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   12f51:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   12f54:	c1 e0 09             	shl    $0x9,%eax
   12f57:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   12f5e:	00 
   12f5f:	89 44 24 08          	mov    %eax,0x8(%esp)
   12f63:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   12f6a:	00 
   12f6b:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   12f72:	e8 0e 0a 00 00       	call   0x13985
   12f77:	c7 45 c8 a0 ab 02 00 	movl   $0x2aba0,0xffffffc8(%ebp)
   12f7e:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   12f81:	83 e0 0f             	and    $0xf,%eax
   12f84:	c1 e0 05             	shl    $0x5,%eax
   12f87:	01 45 c8             	add    %eax,0xffffffc8(%ebp)
   12f8a:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   12f8d:	8b 40 08             	mov    0x8(%eax),%eax
   12f90:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   12f93:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   12f96:	8b 40 0c             	mov    0xc(%eax),%eax
   12f99:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   12f9c:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
   12f9f:	89 d0                	mov    %edx,%eax
   12fa1:	c1 f8 1f             	sar    $0x1f,%eax
   12fa4:	c1 e8 14             	shr    $0x14,%eax
   12fa7:	01 d0                	add    %edx,%eax
   12fa9:	c1 f8 0c             	sar    $0xc,%eax
   12fac:	89 45 d8             	mov    %eax,0xffffffd8(%ebp)
   12faf:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
   12fb2:	89 d0                	mov    %edx,%eax
   12fb4:	c1 f8 1f             	sar    $0x1f,%eax
   12fb7:	c1 e8 1d             	shr    $0x1d,%eax
   12fba:	01 d0                	add    %edx,%eax
   12fbc:	c1 f8 03             	sar    $0x3,%eax
   12fbf:	89 c2                	mov    %eax,%edx
   12fc1:	89 d0                	mov    %edx,%eax
   12fc3:	c1 f8 1f             	sar    $0x1f,%eax
   12fc6:	89 c1                	mov    %eax,%ecx
   12fc8:	c1 e9 17             	shr    $0x17,%ecx
   12fcb:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
   12fce:	25 ff 01 00 00       	and    $0x1ff,%eax
   12fd3:	29 c8                	sub    %ecx,%eax
   12fd5:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
   12fd8:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
   12fdb:	89 d0                	mov    %edx,%eax
   12fdd:	c1 f8 1f             	sar    $0x1f,%eax
   12fe0:	89 c1                	mov    %eax,%ecx
   12fe2:	c1 e9 1d             	shr    $0x1d,%ecx
   12fe5:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
   12fe8:	83 e0 07             	and    $0x7,%eax
   12feb:	29 c8                	sub    %ecx,%eax
   12fed:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   12ff0:	e9 0e 01 00 00       	jmp    0x13103
   12ff5:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   12ff8:	c1 e0 09             	shl    $0x9,%eax
   12ffb:	05 00 06 00 00       	add    $0x600,%eax
   13000:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   13007:	00 
   13008:	89 44 24 08          	mov    %eax,0x8(%esp)
   1300c:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   13013:	00 
   13014:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   1301b:	e8 65 09 00 00       	call   0x13985
   13020:	e9 95 00 00 00       	jmp    0x130ba
   13025:	b8 08 00 00 00       	mov    $0x8,%eax
   1302a:	2b 45 e0             	sub    0xffffffe0(%ebp),%eax
   1302d:	3b 45 f4             	cmp    0xfffffff4(%ebp),%eax
   13030:	7c 38                	jl     0x1306a
   13032:	eb 25                	jmp    0x13059
   13034:	8b 55 dc             	mov    0xffffffdc(%ebp),%edx
   13037:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   1303a:	0f b6 98 a0 ab 02 00 	movzbl 0x2aba0(%eax),%ebx
   13041:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
   13044:	b8 01 00 00 00       	mov    $0x1,%eax
   13049:	d3 e0                	shl    %cl,%eax
   1304b:	f7 d0                	not    %eax
   1304d:	21 d8                	and    %ebx,%eax
   1304f:	88 82 a0 ab 02 00    	mov    %al,0x2aba0(%edx)
   13055:	83 45 e0 01          	addl   $0x1,0xffffffe0(%ebp)
   13059:	83 7d f4 00          	cmpl   $0x0,0xfffffff4(%ebp)
   1305d:	0f 9f c0             	setg   %al
   13060:	83 6d f4 01          	subl   $0x1,0xfffffff4(%ebp)
   13064:	84 c0                	test   %al,%al
   13066:	75 cc                	jne    0x13034
   13068:	eb 63                	jmp    0x130cd
   1306a:	83 7d e0 00          	cmpl   $0x0,0xffffffe0(%ebp)
   1306e:	75 39                	jne    0x130a9
   13070:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   13073:	c6 80 a0 ab 02 00 00 	movb   $0x0,0x2aba0(%eax)
   1307a:	83 6d f4 08          	subl   $0x8,0xfffffff4(%ebp)
   1307e:	eb 2f                	jmp    0x130af
   13080:	8b 55 dc             	mov    0xffffffdc(%ebp),%edx
   13083:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   13086:	0f b6 98 a0 ab 02 00 	movzbl 0x2aba0(%eax),%ebx
   1308d:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
   13090:	b8 01 00 00 00       	mov    $0x1,%eax
   13095:	d3 e0                	shl    %cl,%eax
   13097:	f7 d0                	not    %eax
   13099:	21 d8                	and    %ebx,%eax
   1309b:	88 82 a0 ab 02 00    	mov    %al,0x2aba0(%edx)
   130a1:	83 45 e0 01          	addl   $0x1,0xffffffe0(%ebp)
   130a5:	83 6d f4 01          	subl   $0x1,0xfffffff4(%ebp)
   130a9:	83 7d e0 07          	cmpl   $0x7,0xffffffe0(%ebp)
   130ad:	7e d1                	jle    0x13080
   130af:	83 45 dc 01          	addl   $0x1,0xffffffdc(%ebp)
   130b3:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
   130ba:	81 7d dc ff 01 00 00 	cmpl   $0x1ff,0xffffffdc(%ebp)
   130c1:	7f 0a                	jg     0x130cd
   130c3:	83 7d f4 00          	cmpl   $0x0,0xfffffff4(%ebp)
   130c7:	0f 8f 58 ff ff ff    	jg     0x13025
   130cd:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   130d0:	c1 e0 09             	shl    $0x9,%eax
   130d3:	05 00 06 00 00       	add    $0x600,%eax
   130d8:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
   130df:	00 
   130e0:	89 44 24 08          	mov    %eax,0x8(%esp)
   130e4:	c7 44 24 04 a0 ab 02 	movl   $0x2aba0,0x4(%esp)
   130eb:	00 
   130ec:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
   130f3:	e8 12 09 00 00       	call   0x13a0a
   130f8:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
   130fc:	c7 45 dc 00 00 00 00 	movl   $0x0,0xffffffdc(%ebp)
   13103:	83 7d f4 00          	cmpl   $0x0,0xfffffff4(%ebp)
   13107:	0f 8f e8 fe ff ff    	jg     0x12ff5
   1310d:	c7 45 b8 00 00 00 00 	movl   $0x0,0xffffffb8(%ebp)
   13114:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   13117:	c1 e0 04             	shl    $0x4,%eax
   1311a:	8b 15 0c f4 01 00    	mov    0x1f40c,%edx
   13120:	c7 44 24 0c 10 00 00 	movl   $0x10,0xc(%esp)
   13127:	00 
   13128:	89 44 24 08          	mov    %eax,0x8(%esp)
   1312c:	89 54 24 04          	mov    %edx,0x4(%esp)
   13130:	8d 45 b8             	lea    0xffffffb8(%ebp),%eax
   13133:	89 04 24             	mov    %eax,(%esp)
   13136:	e8 a9 f6 ff ff       	call   0x127e4
   1313b:	a1 0c f4 01 00       	mov    0x1f40c,%eax
   13140:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   13147:	00 
   13148:	89 04 24             	mov    %eax,(%esp)
   1314b:	e8 84 dc ff ff       	call   0x10dd4
   13150:	c7 45 b4 00 00 00 00 	movl   $0x0,0xffffffb4(%ebp)
   13157:	8b 45 b4             	mov    0xffffffb4(%ebp),%eax
   1315a:	83 c4 60             	add    $0x60,%esp
   1315d:	5b                   	pop    %ebx
   1315e:	5e                   	pop    %esi
   1315f:	5d                   	pop    %ebp
   13160:	c3                   	ret    
   13161:	55                   	push   %ebp
   13162:	89 e5                	mov    %esp,%ebp
   13164:	83 ec 18             	sub    $0x18,%esp
   13167:	8b 45 08             	mov    0x8(%ebp),%eax
   1316a:	8b 55 14             	mov    0x14(%ebp),%edx
   1316d:	8b 44 82 70          	mov    0x70(%edx,%eax,4),%eax
   13171:	85 c0                	test   %eax,%eax
   13173:	75 24                	jne    0x13199
   13175:	c7 44 24 0c 83 03 00 	movl   $0x383,0xc(%esp)
   1317c:	00 
   1317d:	c7 44 24 08 38 af 01 	movl   $0x1af38,0x8(%esp)
   13184:	00 
   13185:	c7 44 24 04 38 af 01 	movl   $0x1af38,0x4(%esp)
   1318c:	00 
   1318d:	c7 04 24 d7 b2 01 00 	movl   $0x1b2d7,(%esp)
   13194:	e8 8f 6a 00 00       	call   0x19c28
   13199:	8b 55 08             	mov    0x8(%ebp),%edx
   1319c:	8b 45 14             	mov    0x14(%ebp),%eax
   1319f:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   131a3:	8b 40 08             	mov    0x8(%eax),%eax
   131a6:	8b 50 04             	mov    0x4(%eax),%edx
   131a9:	8b 45 0c             	mov    0xc(%ebp),%eax
   131ac:	39 c2                	cmp    %eax,%edx
   131ae:	77 24                	ja     0x131d4
   131b0:	c7 44 24 0c 84 03 00 	movl   $0x384,0xc(%esp)
   131b7:	00 
   131b8:	c7 44 24 08 38 af 01 	movl   $0x1af38,0x8(%esp)
   131bf:	00 
   131c0:	c7 44 24 04 38 af 01 	movl   $0x1af38,0x4(%esp)
   131c7:	00 
   131c8:	c7 04 24 ec b2 01 00 	movl   $0x1b2ec,(%esp)
   131cf:	e8 54 6a 00 00       	call   0x19c28
   131d4:	8b 55 08             	mov    0x8(%ebp),%edx
   131d7:	8b 45 14             	mov    0x14(%ebp),%eax
   131da:	8b 54 90 70          	mov    0x70(%eax,%edx,4),%edx
   131de:	8b 45 0c             	mov    0xc(%ebp),%eax
   131e1:	89 42 04             	mov    %eax,0x4(%edx)
   131e4:	b8 00 00 00 00       	mov    $0x0,%eax
   131e9:	c9                   	leave  
   131ea:	c3                   	ret    
   131eb:	55                   	push   %ebp
   131ec:	89 e5                	mov    %esp,%ebp
   131ee:	53                   	push   %ebx
   131ef:	83 ec 14             	sub    $0x14,%esp
   131f2:	8b 55 08             	mov    0x8(%ebp),%edx
   131f5:	89 d0                	mov    %edx,%eax
   131f7:	c1 e0 03             	shl    $0x3,%eax
   131fa:	01 d0                	add    %edx,%eax
   131fc:	c1 e0 05             	shl    $0x5,%eax
   131ff:	05 e0 79 04 00       	add    $0x479e0,%eax
   13204:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   13207:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
   1320e:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
   13215:	e9 f8 00 00 00       	jmp    0x13312
   1321a:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   1321d:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
   13220:	8b 44 82 70          	mov    0x70(%edx,%eax,4),%eax
   13224:	85 c0                	test   %eax,%eax
   13226:	0f 84 e2 00 00 00    	je     0x1330e
   1322c:	eb 1a                	jmp    0x13248
   1322e:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   13231:	89 d0                	mov    %edx,%eax
   13233:	01 c0                	add    %eax,%eax
   13235:	01 d0                	add    %edx,%eax
   13237:	c1 e0 02             	shl    $0x2,%eax
   1323a:	8b 80 e8 49 04 00    	mov    0x449e8(%eax),%eax
   13240:	85 c0                	test   %eax,%eax
   13242:	74 0d                	je     0x13251
   13244:	83 45 f8 01          	addl   $0x1,0xfffffff8(%ebp)
   13248:	81 7d f8 ff 03 00 00 	cmpl   $0x3ff,0xfffffff8(%ebp)
   1324f:	7e dd                	jle    0x1322e
   13251:	81 7d f8 ff 03 00 00 	cmpl   $0x3ff,0xfffffff8(%ebp)
   13258:	7e 4a                	jle    0x132a4
   1325a:	eb 35                	jmp    0x13291
   1325c:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   1325f:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
   13262:	8b 44 82 70          	mov    0x70(%edx,%eax,4),%eax
   13266:	85 c0                	test   %eax,%eax
   13268:	74 27                	je     0x13291
   1326a:	8b 55 f4             	mov    0xfffffff4(%ebp),%edx
   1326d:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   13270:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   13274:	8b 50 08             	mov    0x8(%eax),%edx
   13277:	8b 42 24             	mov    0x24(%edx),%eax
   1327a:	83 e8 01             	sub    $0x1,%eax
   1327d:	89 42 24             	mov    %eax,0x24(%edx)
   13280:	8b 55 f4             	mov    0xfffffff4(%ebp),%edx
   13283:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   13286:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   1328a:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   13291:	83 6d f4 01          	subl   $0x1,0xfffffff4(%ebp)
   13295:	83 7d f4 00          	cmpl   $0x0,0xfffffff4(%ebp)
   13299:	79 c1                	jns    0x1325c
   1329b:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,0xffffffe8(%ebp)
   132a2:	eb 7f                	jmp    0x13323
   132a4:	8b 5d f8             	mov    0xfffffff8(%ebp),%ebx
   132a7:	8b 55 f4             	mov    0xfffffff4(%ebp),%edx
   132aa:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   132ad:	8b 4c 90 70          	mov    0x70(%eax,%edx,4),%ecx
   132b1:	89 d8                	mov    %ebx,%eax
   132b3:	01 c0                	add    %eax,%eax
   132b5:	01 d8                	add    %ebx,%eax
   132b7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   132be:	8b 01                	mov    (%ecx),%eax
   132c0:	89 82 e0 49 04 00    	mov    %eax,0x449e0(%edx)
   132c6:	8b 41 04             	mov    0x4(%ecx),%eax
   132c9:	89 82 e4 49 04 00    	mov    %eax,0x449e4(%edx)
   132cf:	8b 41 08             	mov    0x8(%ecx),%eax
   132d2:	89 82 e8 49 04 00    	mov    %eax,0x449e8(%edx)
   132d8:	8b 4d f4             	mov    0xfffffff4(%ebp),%ecx
   132db:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   132de:	89 d0                	mov    %edx,%eax
   132e0:	01 c0                	add    %eax,%eax
   132e2:	01 d0                	add    %edx,%eax
   132e4:	c1 e0 02             	shl    $0x2,%eax
   132e7:	8d 90 e0 49 04 00    	lea    0x449e0(%eax),%edx
   132ed:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   132f0:	89 54 88 70          	mov    %edx,0x70(%eax,%ecx,4)
   132f4:	8b 55 f4             	mov    0xfffffff4(%ebp),%edx
   132f7:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   132fa:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   132fe:	8b 50 08             	mov    0x8(%eax),%edx
   13301:	8b 42 24             	mov    0x24(%edx),%eax
   13304:	83 c0 01             	add    $0x1,%eax
   13307:	89 42 24             	mov    %eax,0x24(%edx)
   1330a:	83 45 f8 01          	addl   $0x1,0xfffffff8(%ebp)
   1330e:	83 45 f4 01          	addl   $0x1,0xfffffff4(%ebp)
   13312:	83 7d f4 1f          	cmpl   $0x1f,0xfffffff4(%ebp)
   13316:	0f 8e fe fe ff ff    	jle    0x1321a
   1331c:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
   13323:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   13326:	83 c4 14             	add    $0x14,%esp
   13329:	5b                   	pop    %ebx
   1332a:	5d                   	pop    %ebp
   1332b:	c3                   	ret    
   1332c:	55                   	push   %ebp
   1332d:	89 e5                	mov    %esp,%ebp
   1332f:	83 ec 48             	sub    $0x48,%esp
   13332:	8b 55 08             	mov    0x8(%ebp),%edx
   13335:	89 d0                	mov    %edx,%eax
   13337:	c1 e0 03             	shl    $0x3,%eax
   1333a:	01 d0                	add    %edx,%eax
   1333c:	c1 e0 05             	shl    $0x5,%eax
   1333f:	05 e0 79 04 00       	add    $0x479e0,%eax
   13344:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   13347:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
   1334e:	e9 2f 01 00 00       	jmp    0x13482
   13353:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   13356:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   13359:	8b 44 82 70          	mov    0x70(%edx,%eax,4),%eax
   1335d:	85 c0                	test   %eax,%eax
   1335f:	0f 84 19 01 00 00    	je     0x1347e
   13365:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   13368:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1336b:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   1336f:	8b 40 08             	mov    0x8(%eax),%eax
   13372:	8b 40 24             	mov    0x24(%eax),%eax
   13375:	85 c0                	test   %eax,%eax
   13377:	7f 24                	jg     0x1339d
   13379:	c7 44 24 0c bd 03 00 	movl   $0x3bd,0xc(%esp)
   13380:	00 
   13381:	c7 44 24 08 38 af 01 	movl   $0x1af38,0x8(%esp)
   13388:	00 
   13389:	c7 44 24 04 38 af 01 	movl   $0x1af38,0x4(%esp)
   13390:	00 
   13391:	c7 04 24 18 b3 01 00 	movl   $0x1b318,(%esp)
   13398:	e8 8b 68 00 00       	call   0x19c28
   1339d:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   133a0:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   133a3:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   133a7:	8b 40 08             	mov    0x8(%eax),%eax
   133aa:	8b 50 24             	mov    0x24(%eax),%edx
   133ad:	83 ea 01             	sub    $0x1,%edx
   133b0:	89 50 24             	mov    %edx,0x24(%eax)
   133b3:	8b 40 24             	mov    0x24(%eax),%eax
   133b6:	85 c0                	test   %eax,%eax
   133b8:	0f 85 af 00 00 00    	jne    0x1346d
   133be:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   133c1:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   133c4:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   133c8:	8b 40 08             	mov    0x8(%eax),%eax
   133cb:	8b 00                	mov    (%eax),%eax
   133cd:	83 f8 02             	cmp    $0x2,%eax
   133d0:	0f 85 97 00 00 00    	jne    0x1346d
   133d6:	c7 45 d8 fe ff ff ff 	movl   $0xfffffffe,0xffffffd8(%ebp)
   133dd:	c7 45 dc 01 00 00 00 	movl   $0x1,0xffffffdc(%ebp)
   133e4:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   133e7:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   133ea:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   133ee:	8b 40 08             	mov    0x8(%eax),%eax
   133f1:	8b 40 08             	mov    0x8(%eax),%eax
   133f4:	25 ff 00 00 00       	and    $0xff,%eax
   133f9:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   133fc:	e8 d9 72 00 00       	call   0x1a6da
   13401:	a1 6c e6 06 00       	mov    0x6e66c,%eax
   13406:	85 c0                	test   %eax,%eax
   13408:	75 5e                	jne    0x13468
   1340a:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   1340d:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   13410:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   13414:	8b 40 08             	mov    0x8(%eax),%eax
   13417:	8b 40 08             	mov    0x8(%eax),%eax
   1341a:	c1 e8 08             	shr    $0x8,%eax
   1341d:	25 ff 00 00 00       	and    $0xff,%eax
   13422:	8b 14 85 28 c6 01 00 	mov    0x1c628(,%eax,4),%edx
   13429:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
   1342c:	89 44 24 08          	mov    %eax,0x8(%esp)
   13430:	89 54 24 04          	mov    %edx,0x4(%esp)
   13434:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   1343b:	e8 b0 67 00 00       	call   0x19bf0
   13440:	85 c0                	test   %eax,%eax
   13442:	74 24                	je     0x13468
   13444:	c7 44 24 0c c9 03 00 	movl   $0x3c9,0xc(%esp)
   1344b:	00 
   1344c:	c7 44 24 08 38 af 01 	movl   $0x1af38,0x8(%esp)
   13453:	00 
   13454:	c7 44 24 04 38 af 01 	movl   $0x1af38,0x4(%esp)
   1345b:	00 
   1345c:	c7 04 24 24 b2 01 00 	movl   $0x1b224,(%esp)
   13463:	e8 c0 67 00 00       	call   0x19c28
   13468:	e8 63 72 00 00       	call   0x1a6d0
   1346d:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   13470:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   13473:	8b 44 82 70          	mov    0x70(%edx,%eax,4),%eax
   13477:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   1347e:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
   13482:	83 7d fc 1f          	cmpl   $0x1f,0xfffffffc(%ebp)
   13486:	0f 8e c7 fe ff ff    	jle    0x13353
   1348c:	c9                   	leave  
   1348d:	c3                   	ret    
   1348e:	00 00                	add    %al,(%eax)
   13490:	55                   	push   %ebp
   13491:	89 e5                	mov    %esp,%ebp
   13493:	53                   	push   %ebx
   13494:	83 ec 54             	sub    $0x54,%esp
   13497:	eb 00                	jmp    0x13499
   13499:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
   1349c:	89 44 24 08          	mov    %eax,0x8(%esp)
   134a0:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
   134a7:	ff 
   134a8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
   134af:	e8 3c 67 00 00       	call   0x19bf0
   134b4:	85 c0                	test   %eax,%eax
   134b6:	74 24                	je     0x134dc
   134b8:	c7 44 24 0c 0d 00 00 	movl   $0xd,0xc(%esp)
   134bf:	00 
   134c0:	c7 44 24 08 40 b3 01 	movl   $0x1b340,0x8(%esp)
   134c7:	00 
   134c8:	c7 44 24 04 40 b3 01 	movl   $0x1b340,0x4(%esp)
   134cf:	00 
   134d0:	c7 04 24 45 b3 01 00 	movl   $0x1b345,(%esp)
   134d7:	e8 4c 67 00 00       	call   0x19c28
   134dc:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   134df:	83 f8 ff             	cmp    $0xffffffff,%eax
   134e2:	74 24                	je     0x13508
   134e4:	c7 44 24 0c 0e 00 00 	movl   $0xe,0xc(%esp)
   134eb:	00 
   134ec:	c7 44 24 08 40 b3 01 	movl   $0x1b340,0x8(%esp)
   134f3:	00 
   134f4:	c7 44 24 04 40 b3 01 	movl   $0x1b340,0x4(%esp)
   134fb:	00 
   134fc:	c7 04 24 62 b3 01 00 	movl   $0x1b362,(%esp)
   13503:	e8 20 67 00 00       	call   0x19c28
   13508:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
   1350b:	83 c0 0c             	add    $0xc,%eax
   1350e:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   13511:	8b 55 d0             	mov    0xffffffd0(%ebp),%edx
   13514:	89 d0                	mov    %edx,%eax
   13516:	c1 e0 03             	shl    $0x3,%eax
   13519:	01 d0                	add    %edx,%eax
   1351b:	c1 e0 05             	shl    $0x5,%eax
   1351e:	8b 80 34 7a 04 00    	mov    0x47a34(%eax),%eax
   13524:	83 f8 02             	cmp    $0x2,%eax
   13527:	75 e8                	jne    0x13511
   13529:	8b 55 d0             	mov    0xffffffd0(%ebp),%edx
   1352c:	89 d0                	mov    %edx,%eax
   1352e:	c1 e0 03             	shl    $0x3,%eax
   13531:	01 d0                	add    %edx,%eax
   13533:	c1 e0 05             	shl    $0x5,%eax
   13536:	8b 80 34 7a 04 00    	mov    0x47a34(%eax),%eax
   1353c:	83 f8 02             	cmp    $0x2,%eax
   1353f:	74 24                	je     0x13565
   13541:	c7 44 24 0c 12 00 00 	movl   $0x12,0xc(%esp)
   13548:	00 
   13549:	c7 44 24 08 40 b3 01 	movl   $0x1b340,0x8(%esp)
   13550:	00 
   13551:	c7 44 24 04 40 b3 01 	movl   $0x1b340,0x4(%esp)
   13558:	00 
   13559:	c7 04 24 7c b3 01 00 	movl   $0x1b37c,(%esp)
   13560:	e8 c3 66 00 00       	call   0x19c28
   13565:	8b 55 d0             	mov    0xffffffd0(%ebp),%edx
   13568:	89 d0                	mov    %edx,%eax
   1356a:	c1 e0 03             	shl    $0x3,%eax
   1356d:	01 d0                	add    %edx,%eax
   1356f:	c1 e0 05             	shl    $0x5,%eax
   13572:	8b 80 44 7a 04 00    	mov    0x47a44(%eax),%eax
   13578:	83 f8 02             	cmp    $0x2,%eax
   1357b:	74 24                	je     0x135a1
   1357d:	c7 44 24 0c 13 00 00 	movl   $0x13,0xc(%esp)
   13584:	00 
   13585:	c7 44 24 08 40 b3 01 	movl   $0x1b340,0x8(%esp)
   1358c:	00 
   1358d:	c7 44 24 04 40 b3 01 	movl   $0x1b340,0x4(%esp)
   13594:	00 
   13595:	c7 04 24 a8 b3 01 00 	movl   $0x1b3a8,(%esp)
   1359c:	e8 87 66 00 00       	call   0x19c28
   135a1:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   135a4:	8b 00                	mov    (%eax),%eax
   135a6:	89 45 c8             	mov    %eax,0xffffffc8(%ebp)
   135a9:	83 7d c8 04          	cmpl   $0x4,0xffffffc8(%ebp)
   135ad:	0f 87 cd 00 00 00    	ja     0x13680
   135b3:	8b 55 c8             	mov    0xffffffc8(%ebp),%edx
   135b6:	8b 04 95 fc b3 01 00 	mov    0x1b3fc(,%edx,4),%eax
   135bd:	ff e0                	jmp    *%eax
   135bf:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   135c2:	0f b7 40 04          	movzwl 0x4(%eax),%eax
   135c6:	0f b7 c0             	movzwl %ax,%eax
   135c9:	89 04 24             	mov    %eax,(%esp)
   135cc:	e8 28 0e 00 00       	call   0x143f9
   135d1:	e9 aa 00 00 00       	jmp    0x13680
   135d6:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   135d9:	0f b7 40 04          	movzwl 0x4(%eax),%eax
   135dd:	0f b7 c0             	movzwl %ax,%eax
   135e0:	89 04 24             	mov    %eax,(%esp)
   135e3:	e8 15 0f 00 00       	call   0x144fd
   135e8:	e9 93 00 00 00       	jmp    0x13680
   135ed:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   135f0:	8b 48 0c             	mov    0xc(%eax),%ecx
   135f3:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   135f6:	0f b7 40 06          	movzwl 0x6(%eax),%eax
   135fa:	0f b7 d8             	movzwl %ax,%ebx
   135fd:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   13600:	0f b7 40 04          	movzwl 0x4(%eax),%eax
   13604:	0f b7 d0             	movzwl %ax,%edx
   13607:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1360a:	8b 40 08             	mov    0x8(%eax),%eax
   1360d:	89 4c 24 10          	mov    %ecx,0x10(%esp)
   13611:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
   13615:	89 54 24 08          	mov    %edx,0x8(%esp)
   13619:	89 44 24 04          	mov    %eax,0x4(%esp)
   1361d:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   13624:	e8 65 0f 00 00       	call   0x1458e
   13629:	89 c2                	mov    %eax,%edx
   1362b:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1362e:	66 89 50 06          	mov    %dx,0x6(%eax)
   13632:	eb 4c                	jmp    0x13680
   13634:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   13637:	8b 48 0c             	mov    0xc(%eax),%ecx
   1363a:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1363d:	0f b7 40 06          	movzwl 0x6(%eax),%eax
   13641:	0f b7 d8             	movzwl %ax,%ebx
   13644:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   13647:	0f b7 40 04          	movzwl 0x4(%eax),%eax
   1364b:	0f b7 d0             	movzwl %ax,%edx
   1364e:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   13651:	8b 40 08             	mov    0x8(%eax),%eax
   13654:	89 4c 24 10          	mov    %ecx,0x10(%esp)
   13658:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
   1365c:	89 54 24 08          	mov    %edx,0x8(%esp)
   13660:	89 44 24 04          	mov    %eax,0x4(%esp)
   13664:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
   1366b:	e8 1e 0f 00 00       	call   0x1458e
   13670:	89 c2                	mov    %eax,%edx
   13672:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   13675:	66 89 50 06          	mov    %dx,0x6(%eax)
   13679:	eb 05                	jmp    0x13680
   1367b:	e8 39 12 00 00       	call   0x148b9
   13680:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   13683:	8d 55 d0             	lea    0xffffffd0(%ebp),%edx
   13686:	89 54 24 08          	mov    %edx,0x8(%esp)
   1368a:	89 44 24 04          	mov    %eax,0x4(%esp)
   1368e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   13695:	e8 56 65 00 00       	call   0x19bf0
   1369a:	85 c0                	test   %eax,%eax
   1369c:	0f 84 f7 fd ff ff    	je     0x13499
   136a2:	c7 44 24 0c 29 00 00 	movl   $0x29,0xc(%esp)
   136a9:	00 
   136aa:	c7 44 24 08 40 b3 01 	movl   $0x1b340,0x8(%esp)
   136b1:	00 
   136b2:	c7 44 24 04 40 b3 01 	movl   $0x1b340,0x4(%esp)
   136b9:	00 
   136ba:	c7 04 24 d8 b3 01 00 	movl   $0x1b3d8,(%esp)
   136c1:	e8 62 65 00 00       	call   0x19c28
   136c6:	e9 ce fd ff ff       	jmp    0x13499
   136cb:	55                   	push   %ebp
   136cc:	89 e5                	mov    %esp,%ebp
   136ce:	83 ec 10             	sub    $0x10,%esp
   136d1:	b8 75 04 00 00       	mov    $0x475,%eax
   136d6:	0f b6 00             	movzbl (%eax),%eax
   136d9:	a2 2c f4 01 00       	mov    %al,0x1f42c
   136de:	c7 45 f8 c0 ff 01 00 	movl   $0x1ffc0,0xfffffff8(%ebp)
   136e5:	e9 72 01 00 00       	jmp    0x1385c
   136ea:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   136ed:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   136f3:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   136f6:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   136fd:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   13700:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   13707:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1370a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
   13711:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
   13718:	e9 8b 00 00 00       	jmp    0x137a8
   1371d:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   13720:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
   13723:	89 d0                	mov    %edx,%eax
   13725:	c1 e0 02             	shl    $0x2,%eax
   13728:	01 d0                	add    %edx,%eax
   1372a:	c1 e0 02             	shl    $0x2,%eax
   1372d:	01 c8                	add    %ecx,%eax
   1372f:	83 c0 10             	add    $0x10,%eax
   13732:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
   13738:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   1373b:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
   1373e:	89 d0                	mov    %edx,%eax
   13740:	c1 e0 02             	shl    $0x2,%eax
   13743:	01 d0                	add    %edx,%eax
   13745:	c1 e0 02             	shl    $0x2,%eax
   13748:	01 c8                	add    %ecx,%eax
   1374a:	83 c0 14             	add    $0x14,%eax
   1374d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   13753:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   13756:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
   13759:	89 d0                	mov    %edx,%eax
   1375b:	c1 e0 02             	shl    $0x2,%eax
   1375e:	01 d0                	add    %edx,%eax
   13760:	c1 e0 02             	shl    $0x2,%eax
   13763:	01 c8                	add    %ecx,%eax
   13765:	83 c0 18             	add    $0x18,%eax
   13768:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   1376e:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   13771:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
   13774:	89 d0                	mov    %edx,%eax
   13776:	c1 e0 02             	shl    $0x2,%eax
   13779:	01 d0                	add    %edx,%eax
   1377b:	c1 e0 02             	shl    $0x2,%eax
   1377e:	01 c8                	add    %ecx,%eax
   13780:	83 c0 1c             	add    $0x1c,%eax
   13783:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   13789:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   1378c:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
   1378f:	89 d0                	mov    %edx,%eax
   13791:	c1 e0 02             	shl    $0x2,%eax
   13794:	01 d0                	add    %edx,%eax
   13796:	c1 e0 02             	shl    $0x2,%eax
   13799:	01 c8                	add    %ecx,%eax
   1379b:	83 c0 20             	add    $0x20,%eax
   1379e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   137a4:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
   137a8:	83 7d fc 04          	cmpl   $0x4,0xfffffffc(%ebp)
   137ac:	0f 8e 6b ff ff ff    	jle    0x1371d
   137b2:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
   137b9:	e9 8d 00 00 00       	jmp    0x1384b
   137be:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   137c1:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
   137c4:	89 d0                	mov    %edx,%eax
   137c6:	c1 e0 02             	shl    $0x2,%eax
   137c9:	01 d0                	add    %edx,%eax
   137cb:	c1 e0 02             	shl    $0x2,%eax
   137ce:	01 c8                	add    %ecx,%eax
   137d0:	83 c0 74             	add    $0x74,%eax
   137d3:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
   137d9:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   137dc:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
   137df:	89 d0                	mov    %edx,%eax
   137e1:	c1 e0 02             	shl    $0x2,%eax
   137e4:	01 d0                	add    %edx,%eax
   137e6:	c1 e0 02             	shl    $0x2,%eax
   137e9:	01 c8                	add    %ecx,%eax
   137eb:	83 c0 78             	add    $0x78,%eax
   137ee:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   137f4:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   137f7:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
   137fa:	89 d0                	mov    %edx,%eax
   137fc:	c1 e0 02             	shl    $0x2,%eax
   137ff:	01 d0                	add    %edx,%eax
   13801:	c1 e0 02             	shl    $0x2,%eax
   13804:	01 c8                	add    %ecx,%eax
   13806:	83 c0 7c             	add    $0x7c,%eax
   13809:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   1380f:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   13812:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
   13815:	89 d0                	mov    %edx,%eax
   13817:	c1 e0 02             	shl    $0x2,%eax
   1381a:	01 d0                	add    %edx,%eax
   1381c:	c1 e0 02             	shl    $0x2,%eax
   1381f:	01 c8                	add    %ecx,%eax
   13821:	83 e8 80             	sub    $0xffffff80,%eax
   13824:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   1382a:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   1382d:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
   13830:	89 d0                	mov    %edx,%eax
   13832:	c1 e0 02             	shl    $0x2,%eax
   13835:	01 d0                	add    %edx,%eax
   13837:	c1 e0 02             	shl    $0x2,%eax
   1383a:	01 c8                	add    %ecx,%eax
   1383c:	05 84 00 00 00       	add    $0x84,%eax
   13841:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   13847:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
   1384b:	83 7d fc 3f          	cmpl   $0x3f,0xfffffffc(%ebp)
   1384f:	0f 8e 69 ff ff ff    	jle    0x137be
   13855:	81 45 f8 74 05 00 00 	addl   $0x574,0xfffffff8(%ebp)
   1385c:	b8 a8 0a 02 00       	mov    $0x20aa8,%eax
   13861:	39 45 f8             	cmp    %eax,0xfffffff8(%ebp)
   13864:	0f 82 80 fe ff ff    	jb     0x136ea
   1386a:	c9                   	leave  
   1386b:	c3                   	ret    
   1386c:	55                   	push   %ebp
   1386d:	89 e5                	mov    %esp,%ebp
   1386f:	83 ec 08             	sub    $0x8,%esp
   13872:	c7 04 24 f7 01 00 00 	movl   $0x1f7,(%esp)
   13879:	e8 07 6e 00 00       	call   0x1a685
   1387e:	b8 20 7c 04 00       	mov    $0x47c20,%eax
   13883:	89 04 24             	mov    %eax,(%esp)
   13886:	e8 71 1e 00 00       	call   0x156fc
   1388b:	c9                   	leave  
   1388c:	c3                   	ret    
   1388d:	55                   	push   %ebp
   1388e:	89 e5                	mov    %esp,%ebp
   13890:	83 ec 48             	sub    $0x48,%esp
   13893:	8b 45 08             	mov    0x8(%ebp),%eax
   13896:	66 89 45 cc          	mov    %ax,0xffffffcc(%ebp)
   1389a:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,0xffffffe0(%ebp)
   138a1:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
   138a8:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
   138ac:	66 89 45 e8          	mov    %ax,0xffffffe8(%ebp)
   138b0:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
   138b4:	89 44 24 04          	mov    %eax,0x4(%esp)
   138b8:	c7 04 24 10 b4 01 00 	movl   $0x1b410,(%esp)
   138bf:	e8 88 74 00 00       	call   0x1ad4c
   138c4:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   138c7:	89 44 24 08          	mov    %eax,0x8(%esp)
   138cb:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
   138d2:	00 
   138d3:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   138da:	e8 11 63 00 00       	call   0x19bf0
   138df:	85 c0                	test   %eax,%eax
   138e1:	74 24                	je     0x13907
   138e3:	c7 44 24 0c 60 00 00 	movl   $0x60,0xc(%esp)
   138ea:	00 
   138eb:	c7 44 24 08 40 b3 01 	movl   $0x1b340,0x8(%esp)
   138f2:	00 
   138f3:	c7 44 24 04 40 b3 01 	movl   $0x1b340,0x4(%esp)
   138fa:	00 
   138fb:	c7 04 24 24 b4 01 00 	movl   $0x1b424,(%esp)
   13902:	e8 21 63 00 00       	call   0x19c28
   13907:	c9                   	leave  
   13908:	c3                   	ret    
   13909:	55                   	push   %ebp
   1390a:	89 e5                	mov    %esp,%ebp
   1390c:	83 ec 48             	sub    $0x48,%esp
   1390f:	8b 45 08             	mov    0x8(%ebp),%eax
   13912:	66 89 45 cc          	mov    %ax,0xffffffcc(%ebp)
   13916:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,0xffffffe0(%ebp)
   1391d:	c7 45 e4 01 00 00 00 	movl   $0x1,0xffffffe4(%ebp)
   13924:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
   13928:	66 89 45 e8          	mov    %ax,0xffffffe8(%ebp)
   1392c:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
   13930:	89 44 24 04          	mov    %eax,0x4(%esp)
   13934:	c7 04 24 49 b4 01 00 	movl   $0x1b449,(%esp)
   1393b:	e8 0c 74 00 00       	call   0x1ad4c
   13940:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   13943:	89 44 24 08          	mov    %eax,0x8(%esp)
   13947:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
   1394e:	00 
   1394f:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   13956:	e8 95 62 00 00       	call   0x19bf0
   1395b:	85 c0                	test   %eax,%eax
   1395d:	74 24                	je     0x13983
   1395f:	c7 44 24 0c 6f 00 00 	movl   $0x6f,0xc(%esp)
   13966:	00 
   13967:	c7 44 24 08 40 b3 01 	movl   $0x1b340,0x8(%esp)
   1396e:	00 
   1396f:	c7 44 24 04 40 b3 01 	movl   $0x1b340,0x4(%esp)
   13976:	00 
   13977:	c7 04 24 24 b4 01 00 	movl   $0x1b424,(%esp)
   1397e:	e8 a5 62 00 00       	call   0x19c28
   13983:	c9                   	leave  
   13984:	c3                   	ret    
   13985:	55                   	push   %ebp
   13986:	89 e5                	mov    %esp,%ebp
   13988:	83 ec 48             	sub    $0x48,%esp
   1398b:	8b 45 08             	mov    0x8(%ebp),%eax
   1398e:	66 89 45 cc          	mov    %ax,0xffffffcc(%ebp)
   13992:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,0xffffffe0(%ebp)
   13999:	c7 45 e4 02 00 00 00 	movl   $0x2,0xffffffe4(%ebp)
   139a0:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
   139a4:	66 89 45 e8          	mov    %ax,0xffffffe8(%ebp)
   139a8:	8b 45 0c             	mov    0xc(%ebp),%eax
   139ab:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   139ae:	8b 45 10             	mov    0x10(%ebp),%eax
   139b1:	c1 e8 09             	shr    $0x9,%eax
   139b4:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   139b7:	8b 45 14             	mov    0x14(%ebp),%eax
   139ba:	66 89 45 ea          	mov    %ax,0xffffffea(%ebp)
   139be:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   139c1:	89 44 24 08          	mov    %eax,0x8(%esp)
   139c5:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
   139cc:	00 
   139cd:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   139d4:	e8 17 62 00 00       	call   0x19bf0
   139d9:	85 c0                	test   %eax,%eax
   139db:	74 24                	je     0x13a01
   139dd:	c7 44 24 0c 84 00 00 	movl   $0x84,0xc(%esp)
   139e4:	00 
   139e5:	c7 44 24 08 40 b3 01 	movl   $0x1b340,0x8(%esp)
   139ec:	00 
   139ed:	c7 44 24 04 40 b3 01 	movl   $0x1b340,0x4(%esp)
   139f4:	00 
   139f5:	c7 04 24 24 b4 01 00 	movl   $0x1b424,(%esp)
   139fc:	e8 27 62 00 00       	call   0x19c28
   13a01:	0f b7 45 ea          	movzwl 0xffffffea(%ebp),%eax
   13a05:	0f b7 c0             	movzwl %ax,%eax
   13a08:	c9                   	leave  
   13a09:	c3                   	ret    
   13a0a:	55                   	push   %ebp
   13a0b:	89 e5                	mov    %esp,%ebp
   13a0d:	83 ec 48             	sub    $0x48,%esp
   13a10:	8b 45 08             	mov    0x8(%ebp),%eax
   13a13:	66 89 45 cc          	mov    %ax,0xffffffcc(%ebp)
   13a17:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,0xffffffe0(%ebp)
   13a1e:	c7 45 e4 03 00 00 00 	movl   $0x3,0xffffffe4(%ebp)
   13a25:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
   13a29:	66 89 45 e8          	mov    %ax,0xffffffe8(%ebp)
   13a2d:	8b 45 0c             	mov    0xc(%ebp),%eax
   13a30:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   13a33:	8b 45 10             	mov    0x10(%ebp),%eax
   13a36:	c1 e8 09             	shr    $0x9,%eax
   13a39:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   13a3c:	8b 45 14             	mov    0x14(%ebp),%eax
   13a3f:	66 89 45 ea          	mov    %ax,0xffffffea(%ebp)
   13a43:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   13a46:	89 44 24 08          	mov    %eax,0x8(%esp)
   13a4a:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
   13a51:	00 
   13a52:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   13a59:	e8 92 61 00 00       	call   0x19bf0
   13a5e:	85 c0                	test   %eax,%eax
   13a60:	74 24                	je     0x13a86
   13a62:	c7 44 24 0c 9b 00 00 	movl   $0x9b,0xc(%esp)
   13a69:	00 
   13a6a:	c7 44 24 08 40 b3 01 	movl   $0x1b340,0x8(%esp)
   13a71:	00 
   13a72:	c7 44 24 04 40 b3 01 	movl   $0x1b340,0x4(%esp)
   13a79:	00 
   13a7a:	c7 04 24 24 b4 01 00 	movl   $0x1b424,(%esp)
   13a81:	e8 a2 61 00 00       	call   0x19c28
   13a86:	0f b7 45 ea          	movzwl 0xffffffea(%ebp),%eax
   13a8a:	0f b7 c0             	movzwl %ax,%eax
   13a8d:	c9                   	leave  
   13a8e:	c3                   	ret    
   13a8f:	55                   	push   %ebp
   13a90:	89 e5                	mov    %esp,%ebp
   13a92:	83 ec 48             	sub    $0x48,%esp
   13a95:	8b 45 08             	mov    0x8(%ebp),%eax
   13a98:	66 89 45 cc          	mov    %ax,0xffffffcc(%ebp)
   13a9c:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,0xffffffe0(%ebp)
   13aa3:	c7 45 e4 04 00 00 00 	movl   $0x4,0xffffffe4(%ebp)
   13aaa:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
   13aae:	66 89 45 e8          	mov    %ax,0xffffffe8(%ebp)
   13ab2:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
   13ab6:	89 44 24 04          	mov    %eax,0x4(%esp)
   13aba:	c7 04 24 5b b4 01 00 	movl   $0x1b45b,(%esp)
   13ac1:	e8 86 72 00 00       	call   0x1ad4c
   13ac6:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   13ac9:	89 44 24 08          	mov    %eax,0x8(%esp)
   13acd:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
   13ad4:	00 
   13ad5:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   13adc:	e8 0f 61 00 00       	call   0x19bf0
   13ae1:	85 c0                	test   %eax,%eax
   13ae3:	74 24                	je     0x13b09
   13ae5:	c7 44 24 0c ab 00 00 	movl   $0xab,0xc(%esp)
   13aec:	00 
   13aed:	c7 44 24 08 40 b3 01 	movl   $0x1b340,0x8(%esp)
   13af4:	00 
   13af5:	c7 44 24 04 40 b3 01 	movl   $0x1b340,0x4(%esp)
   13afc:	00 
   13afd:	c7 04 24 24 b4 01 00 	movl   $0x1b424,(%esp)
   13b04:	e8 1f 61 00 00       	call   0x19c28
   13b09:	c9                   	leave  
   13b0a:	c3                   	ret    
   13b0b:	55                   	push   %ebp
   13b0c:	89 e5                	mov    %esp,%ebp
   13b0e:	83 ec 18             	sub    $0x18,%esp
   13b11:	e8 a2 68 00 00       	call   0x1a3b8
   13b16:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   13b19:	eb 20                	jmp    0x13b3b
   13b1b:	c7 04 24 f7 01 00 00 	movl   $0x1f7,(%esp)
   13b22:	e8 5e 6b 00 00       	call   0x1a685
   13b27:	0f b6 c0             	movzbl %al,%eax
   13b2a:	23 45 08             	and    0x8(%ebp),%eax
   13b2d:	3b 45 0c             	cmp    0xc(%ebp),%eax
   13b30:	75 09                	jne    0x13b3b
   13b32:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
   13b39:	eb 1a                	jmp    0x13b55
   13b3b:	e8 78 68 00 00       	call   0x1a3b8
   13b40:	89 c2                	mov    %eax,%edx
   13b42:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   13b45:	29 c2                	sub    %eax,%edx
   13b47:	8b 45 10             	mov    0x10(%ebp),%eax
   13b4a:	39 c2                	cmp    %eax,%edx
   13b4c:	72 cd                	jb     0x13b1b
   13b4e:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,0xffffffec(%ebp)
   13b55:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   13b58:	c9                   	leave  
   13b59:	c3                   	ret    
   13b5a:	55                   	push   %ebp
   13b5b:	89 e5                	mov    %esp,%ebp
   13b5d:	83 ec 18             	sub    $0x18,%esp
   13b60:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
   13b67:	00 
   13b68:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   13b6f:	00 
   13b70:	c7 04 24 80 00 00 00 	movl   $0x80,(%esp)
   13b77:	e8 8f ff ff ff       	call   0x13b0b
   13b7c:	83 f8 ff             	cmp    $0xffffffff,%eax
   13b7f:	75 0e                	jne    0x13b8f
   13b81:	c7 04 24 70 b4 01 00 	movl   $0x1b470,(%esp)
   13b88:	e8 bf 71 00 00       	call   0x1ad4c
   13b8d:	eb fe                	jmp    0x13b8d
   13b8f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   13b96:	00 
   13b97:	c7 04 24 f6 03 00 00 	movl   $0x3f6,(%esp)
   13b9e:	e8 d3 6a 00 00       	call   0x1a676
   13ba3:	8b 45 08             	mov    0x8(%ebp),%eax
   13ba6:	0f b6 00             	movzbl (%eax),%eax
   13ba9:	0f b6 c0             	movzbl %al,%eax
   13bac:	89 44 24 04          	mov    %eax,0x4(%esp)
   13bb0:	c7 04 24 f1 01 00 00 	movl   $0x1f1,(%esp)
   13bb7:	e8 ba 6a 00 00       	call   0x1a676
   13bbc:	8b 45 08             	mov    0x8(%ebp),%eax
   13bbf:	0f b6 40 01          	movzbl 0x1(%eax),%eax
   13bc3:	0f b6 c0             	movzbl %al,%eax
   13bc6:	89 44 24 04          	mov    %eax,0x4(%esp)
   13bca:	c7 04 24 f2 01 00 00 	movl   $0x1f2,(%esp)
   13bd1:	e8 a0 6a 00 00       	call   0x1a676
   13bd6:	8b 45 08             	mov    0x8(%ebp),%eax
   13bd9:	0f b6 40 02          	movzbl 0x2(%eax),%eax
   13bdd:	0f b6 c0             	movzbl %al,%eax
   13be0:	89 44 24 04          	mov    %eax,0x4(%esp)
   13be4:	c7 04 24 f3 01 00 00 	movl   $0x1f3,(%esp)
   13beb:	e8 86 6a 00 00       	call   0x1a676
   13bf0:	8b 45 08             	mov    0x8(%ebp),%eax
   13bf3:	0f b6 40 03          	movzbl 0x3(%eax),%eax
   13bf7:	0f b6 c0             	movzbl %al,%eax
   13bfa:	89 44 24 04          	mov    %eax,0x4(%esp)
   13bfe:	c7 04 24 f4 01 00 00 	movl   $0x1f4,(%esp)
   13c05:	e8 6c 6a 00 00       	call   0x1a676
   13c0a:	8b 45 08             	mov    0x8(%ebp),%eax
   13c0d:	0f b6 40 04          	movzbl 0x4(%eax),%eax
   13c11:	0f b6 c0             	movzbl %al,%eax
   13c14:	89 44 24 04          	mov    %eax,0x4(%esp)
   13c18:	c7 04 24 f5 01 00 00 	movl   $0x1f5,(%esp)
   13c1f:	e8 52 6a 00 00       	call   0x1a676
   13c24:	8b 45 08             	mov    0x8(%ebp),%eax
   13c27:	0f b6 40 05          	movzbl 0x5(%eax),%eax
   13c2b:	0f b6 c0             	movzbl %al,%eax
   13c2e:	89 44 24 04          	mov    %eax,0x4(%esp)
   13c32:	c7 04 24 f6 01 00 00 	movl   $0x1f6,(%esp)
   13c39:	e8 38 6a 00 00       	call   0x1a676
   13c3e:	8b 45 08             	mov    0x8(%ebp),%eax
   13c41:	0f b6 40 06          	movzbl 0x6(%eax),%eax
   13c45:	0f b6 c0             	movzbl %al,%eax
   13c48:	89 44 24 04          	mov    %eax,0x4(%esp)
   13c4c:	c7 04 24 f7 01 00 00 	movl   $0x1f7,(%esp)
   13c53:	e8 1e 6a 00 00       	call   0x1a676
   13c58:	c9                   	leave  
   13c59:	c3                   	ret    
   13c5a:	55                   	push   %ebp
   13c5b:	89 e5                	mov    %esp,%ebp
   13c5d:	83 ec 08             	sub    $0x8,%esp
   13c60:	8b 45 08             	mov    0x8(%ebp),%eax
   13c63:	66 89 45 fc          	mov    %ax,0xfffffffc(%ebp)
   13c67:	eb 18                	jmp    0x13c81
   13c69:	0f b7 45 fc          	movzwl 0xfffffffc(%ebp),%eax
   13c6d:	89 04 24             	mov    %eax,(%esp)
   13c70:	e8 2d 6a 00 00       	call   0x1a6a2
   13c75:	89 c2                	mov    %eax,%edx
   13c77:	8b 45 0c             	mov    0xc(%ebp),%eax
   13c7a:	66 89 10             	mov    %dx,(%eax)
   13c7d:	83 45 0c 02          	addl   $0x2,0xc(%ebp)
   13c81:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
   13c85:	0f 9f c0             	setg   %al
   13c88:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
   13c8c:	84 c0                	test   %al,%al
   13c8e:	75 d9                	jne    0x13c69
   13c90:	b8 00 00 00 00       	mov    $0x0,%eax
   13c95:	c9                   	leave  
   13c96:	c3                   	ret    
   13c97:	55                   	push   %ebp
   13c98:	89 e5                	mov    %esp,%ebp
   13c9a:	83 ec 18             	sub    $0x18,%esp
   13c9d:	8b 45 08             	mov    0x8(%ebp),%eax
   13ca0:	66 89 45 fc          	mov    %ax,0xfffffffc(%ebp)
   13ca4:	eb 1d                	jmp    0x13cc3
   13ca6:	8b 45 0c             	mov    0xc(%ebp),%eax
   13ca9:	0f b7 00             	movzwl (%eax),%eax
   13cac:	0f b7 d0             	movzwl %ax,%edx
   13caf:	83 45 0c 02          	addl   $0x2,0xc(%ebp)
   13cb3:	0f b7 45 fc          	movzwl 0xfffffffc(%ebp),%eax
   13cb7:	89 54 24 04          	mov    %edx,0x4(%esp)
   13cbb:	89 04 24             	mov    %eax,(%esp)
   13cbe:	e8 cf 69 00 00       	call   0x1a692
   13cc3:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
   13cc7:	0f 9f c0             	setg   %al
   13cca:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
   13cce:	84 c0                	test   %al,%al
   13cd0:	75 d4                	jne    0x13ca6
   13cd2:	b8 00 00 00 00       	mov    $0x0,%eax
   13cd7:	c9                   	leave  
   13cd8:	c3                   	ret    
   13cd9:	55                   	push   %ebp
   13cda:	89 e5                	mov    %esp,%ebp
   13cdc:	81 ec 88 00 00 00    	sub    $0x88,%esp
   13ce2:	c7 45 90 0a 00 00 00 	movl   $0xa,0xffffff90(%ebp)
   13ce9:	c7 45 94 14 00 00 00 	movl   $0x14,0xffffff94(%ebp)
   13cf0:	c7 45 98 91 b4 01 00 	movl   $0x1b491,0xffffff98(%ebp)
   13cf7:	c7 45 9c 1b 00 00 00 	movl   $0x1b,0xffffff9c(%ebp)
   13cfe:	c7 45 a0 28 00 00 00 	movl   $0x28,0xffffffa0(%ebp)
   13d05:	c7 45 a4 97 b4 01 00 	movl   $0x1b497,0xffffffa4(%ebp)
   13d0c:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
   13d13:	e9 ab 00 00 00       	jmp    0x13dc3
   13d18:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
   13d1b:	89 d0                	mov    %edx,%eax
   13d1d:	01 c0                	add    %eax,%eax
   13d1f:	01 d0                	add    %edx,%eax
   13d21:	c1 e0 02             	shl    $0x2,%eax
   13d24:	01 e8                	add    %ebp,%eax
   13d26:	83 e8 70             	sub    $0x70,%eax
   13d29:	8b 00                	mov    (%eax),%eax
   13d2b:	01 c0                	add    %eax,%eax
   13d2d:	03 45 08             	add    0x8(%ebp),%eax
   13d30:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   13d33:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
   13d3a:	eb 2e                	jmp    0x13d6a
   13d3c:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   13d3f:	01 c0                	add    %eax,%eax
   13d41:	8d 50 01             	lea    0x1(%eax),%edx
   13d44:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   13d47:	0f b6 00             	movzbl (%eax),%eax
   13d4a:	88 44 15 a8          	mov    %al,0xffffffa8(%ebp,%edx,1)
   13d4e:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
   13d52:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   13d55:	8d 14 00             	lea    (%eax,%eax,1),%edx
   13d58:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   13d5b:	0f b6 00             	movzbl (%eax),%eax
   13d5e:	88 44 15 a8          	mov    %al,0xffffffa8(%ebp,%edx,1)
   13d62:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
   13d66:	83 45 e8 01          	addl   $0x1,0xffffffe8(%ebp)
   13d6a:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
   13d6d:	89 d0                	mov    %edx,%eax
   13d6f:	01 c0                	add    %eax,%eax
   13d71:	01 d0                	add    %edx,%eax
   13d73:	c1 e0 02             	shl    $0x2,%eax
   13d76:	01 e8                	add    %ebp,%eax
   13d78:	83 e8 6c             	sub    $0x6c,%eax
   13d7b:	8b 10                	mov    (%eax),%edx
   13d7d:	89 d0                	mov    %edx,%eax
   13d7f:	c1 e8 1f             	shr    $0x1f,%eax
   13d82:	01 d0                	add    %edx,%eax
   13d84:	d1 f8                	sar    %eax
   13d86:	3b 45 e8             	cmp    0xffffffe8(%ebp),%eax
   13d89:	7f b1                	jg     0x13d3c
   13d8b:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   13d8e:	01 c0                	add    %eax,%eax
   13d90:	c6 44 05 a8 00       	movb   $0x0,0xffffffa8(%ebp,%eax,1)
   13d95:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
   13d98:	89 d0                	mov    %edx,%eax
   13d9a:	01 c0                	add    %eax,%eax
   13d9c:	01 d0                	add    %edx,%eax
   13d9e:	c1 e0 02             	shl    $0x2,%eax
   13da1:	01 e8                	add    %ebp,%eax
   13da3:	83 e8 68             	sub    $0x68,%eax
   13da6:	8b 10                	mov    (%eax),%edx
   13da8:	8d 45 a8             	lea    0xffffffa8(%ebp),%eax
   13dab:	89 44 24 08          	mov    %eax,0x8(%esp)
   13daf:	89 54 24 04          	mov    %edx,0x4(%esp)
   13db3:	c7 04 24 a0 b4 01 00 	movl   $0x1b4a0,(%esp)
   13dba:	e8 8d 6f 00 00       	call   0x1ad4c
   13dbf:	83 45 ec 01          	addl   $0x1,0xffffffec(%ebp)
   13dc3:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   13dc6:	83 f8 01             	cmp    $0x1,%eax
   13dc9:	0f 86 49 ff ff ff    	jbe    0x13d18
   13dcf:	8b 45 08             	mov    0x8(%ebp),%eax
   13dd2:	83 c0 62             	add    $0x62,%eax
   13dd5:	0f b7 00             	movzwl (%eax),%eax
   13dd8:	0f b7 c0             	movzwl %ax,%eax
   13ddb:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   13dde:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   13de1:	25 00 02 00 00       	and    $0x200,%eax
   13de6:	85 c0                	test   %eax,%eax
   13de8:	74 09                	je     0x13df3
   13dea:	c7 45 88 a8 b4 01 00 	movl   $0x1b4a8,0xffffff88(%ebp)
   13df1:	eb 07                	jmp    0x13dfa
   13df3:	c7 45 88 ac b4 01 00 	movl   $0x1b4ac,0xffffff88(%ebp)
   13dfa:	8b 45 88             	mov    0xffffff88(%ebp),%eax
   13dfd:	89 44 24 04          	mov    %eax,0x4(%esp)
   13e01:	c7 04 24 af b4 01 00 	movl   $0x1b4af,(%esp)
   13e08:	e8 3f 6f 00 00       	call   0x1ad4c
   13e0d:	8b 45 08             	mov    0x8(%ebp),%eax
   13e10:	05 a6 00 00 00       	add    $0xa6,%eax
   13e15:	0f b7 00             	movzwl (%eax),%eax
   13e18:	0f b7 c0             	movzwl %ax,%eax
   13e1b:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   13e1e:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   13e21:	25 00 04 00 00       	and    $0x400,%eax
   13e26:	85 c0                	test   %eax,%eax
   13e28:	74 09                	je     0x13e33
   13e2a:	c7 45 8c a8 b4 01 00 	movl   $0x1b4a8,0xffffff8c(%ebp)
   13e31:	eb 07                	jmp    0x13e3a
   13e33:	c7 45 8c ac b4 01 00 	movl   $0x1b4ac,0xffffff8c(%ebp)
   13e3a:	8b 4d 8c             	mov    0xffffff8c(%ebp),%ecx
   13e3d:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   13e41:	c7 04 24 c2 b4 01 00 	movl   $0x1b4c2,(%esp)
   13e48:	e8 ff 6e 00 00       	call   0x1ad4c
   13e4d:	8b 45 08             	mov    0x8(%ebp),%eax
   13e50:	83 c0 7a             	add    $0x7a,%eax
   13e53:	0f b7 00             	movzwl (%eax),%eax
   13e56:	0f b7 c0             	movzwl %ax,%eax
   13e59:	89 c2                	mov    %eax,%edx
   13e5b:	c1 e2 10             	shl    $0x10,%edx
   13e5e:	8b 45 08             	mov    0x8(%ebp),%eax
   13e61:	83 c0 78             	add    $0x78,%eax
   13e64:	0f b7 00             	movzwl (%eax),%eax
   13e67:	0f b7 c0             	movzwl %ax,%eax
   13e6a:	8d 04 02             	lea    (%edx,%eax,1),%eax
   13e6d:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   13e70:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   13e73:	89 c1                	mov    %eax,%ecx
   13e75:	c1 e1 09             	shl    $0x9,%ecx
   13e78:	c7 45 84 83 de 1b 43 	movl   $0x431bde83,0xffffff84(%ebp)
   13e7f:	8b 45 84             	mov    0xffffff84(%ebp),%eax
   13e82:	f7 e9                	imul   %ecx
   13e84:	c1 fa 12             	sar    $0x12,%edx
   13e87:	89 c8                	mov    %ecx,%eax
   13e89:	c1 f8 1f             	sar    $0x1f,%eax
   13e8c:	89 d1                	mov    %edx,%ecx
   13e8e:	29 c1                	sub    %eax,%ecx
   13e90:	89 c8                	mov    %ecx,%eax
   13e92:	89 44 24 04          	mov    %eax,0x4(%esp)
   13e96:	c7 04 24 d7 b4 01 00 	movl   $0x1b4d7,(%esp)
   13e9d:	e8 aa 6e 00 00       	call   0x1ad4c
   13ea2:	c9                   	leave  
   13ea3:	c3                   	ret    
   13ea4:	55                   	push   %ebp
   13ea5:	89 e5                	mov    %esp,%ebp
   13ea7:	53                   	push   %ebx
   13ea8:	83 ec 44             	sub    $0x44,%esp
   13eab:	8b 45 08             	mov    0x8(%ebp),%eax
   13eae:	88 45 c8             	mov    %al,0xffffffc8(%ebp)
   13eb1:	0f b6 45 c8          	movzbl 0xffffffc8(%ebp),%eax
   13eb5:	69 c0 74 05 00 00    	imul   $0x574,%eax,%eax
   13ebb:	05 c0 ff 01 00       	add    $0x1ffc0,%eax
   13ec0:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   13ec3:	c6 45 da 01          	movb   $0x1,0xffffffda(%ebp)
   13ec7:	c6 45 db 00          	movb   $0x0,0xffffffdb(%ebp)
   13ecb:	c6 45 dc 00          	movb   $0x0,0xffffffdc(%ebp)
   13ecf:	c6 45 dd 00          	movb   $0x0,0xffffffdd(%ebp)
   13ed3:	0f b6 45 c8          	movzbl 0xffffffc8(%ebp),%eax
   13ed7:	c1 e0 04             	shl    $0x4,%eax
   13eda:	89 c2                	mov    %eax,%edx
   13edc:	b8 e0 ff ff ff       	mov    $0xffffffe0,%eax
   13ee1:	09 d0                	or     %edx,%eax
   13ee3:	88 45 de             	mov    %al,0xffffffde(%ebp)
   13ee6:	c6 45 df 20          	movb   $0x20,0xffffffdf(%ebp)
   13eea:	8d 45 d9             	lea    0xffffffd9(%ebp),%eax
   13eed:	89 04 24             	mov    %eax,(%esp)
   13ef0:	e8 65 fc ff ff       	call   0x13b5a
   13ef5:	e8 13 0e 00 00       	call   0x14d0d
   13efa:	b8 c0 47 04 00       	mov    $0x447c0,%eax
   13eff:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
   13f06:	00 
   13f07:	89 44 24 04          	mov    %eax,0x4(%esp)
   13f0b:	c7 04 24 f0 01 00 00 	movl   $0x1f0,(%esp)
   13f12:	e8 43 fd ff ff       	call   0x13c5a
   13f17:	b8 c0 47 04 00       	mov    $0x447c0,%eax
   13f1c:	05 be 01 00 00       	add    $0x1be,%eax
   13f21:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   13f24:	c7 45 e8 01 00 00 00 	movl   $0x1,0xffffffe8(%ebp)
   13f2b:	e9 f5 00 00 00       	jmp    0x14025
   13f30:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   13f33:	8b 40 0c             	mov    0xc(%eax),%eax
   13f36:	85 c0                	test   %eax,%eax
   13f38:	0f 84 df 00 00 00    	je     0x1401d
   13f3e:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
   13f41:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   13f44:	8b 58 08             	mov    0x8(%eax),%ebx
   13f47:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
   13f4a:	89 d0                	mov    %edx,%eax
   13f4c:	c1 e0 02             	shl    $0x2,%eax
   13f4f:	01 d0                	add    %edx,%eax
   13f51:	c1 e0 02             	shl    $0x2,%eax
   13f54:	01 c8                	add    %ecx,%eax
   13f56:	83 c0 14             	add    $0x14,%eax
   13f59:	89 18                	mov    %ebx,(%eax)
   13f5b:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
   13f5e:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   13f61:	8b 58 0c             	mov    0xc(%eax),%ebx
   13f64:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
   13f67:	89 d0                	mov    %edx,%eax
   13f69:	c1 e0 02             	shl    $0x2,%eax
   13f6c:	01 d0                	add    %edx,%eax
   13f6e:	c1 e0 02             	shl    $0x2,%eax
   13f71:	01 c8                	add    %ecx,%eax
   13f73:	83 c0 18             	add    $0x18,%eax
   13f76:	89 18                	mov    %ebx,(%eax)
   13f78:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
   13f7b:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   13f7e:	8b 40 08             	mov    0x8(%eax),%eax
   13f81:	89 c3                	mov    %eax,%ebx
   13f83:	c1 e3 09             	shl    $0x9,%ebx
   13f86:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
   13f89:	89 d0                	mov    %edx,%eax
   13f8b:	c1 e0 02             	shl    $0x2,%eax
   13f8e:	01 d0                	add    %edx,%eax
   13f90:	c1 e0 02             	shl    $0x2,%eax
   13f93:	01 c8                	add    %ecx,%eax
   13f95:	83 c0 1c             	add    $0x1c,%eax
   13f98:	89 18                	mov    %ebx,(%eax)
   13f9a:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
   13f9d:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   13fa0:	8b 40 0c             	mov    0xc(%eax),%eax
   13fa3:	89 c3                	mov    %eax,%ebx
   13fa5:	c1 e3 09             	shl    $0x9,%ebx
   13fa8:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
   13fab:	89 d0                	mov    %edx,%eax
   13fad:	c1 e0 02             	shl    $0x2,%eax
   13fb0:	01 d0                	add    %edx,%eax
   13fb2:	c1 e0 02             	shl    $0x2,%eax
   13fb5:	01 c8                	add    %ecx,%eax
   13fb7:	83 c0 20             	add    $0x20,%eax
   13fba:	89 18                	mov    %ebx,(%eax)
   13fbc:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   13fbf:	0f b6 40 04          	movzbl 0x4(%eax),%eax
   13fc3:	3c 05                	cmp    $0x5,%al
   13fc5:	74 2c                	je     0x13ff3
   13fc7:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   13fca:	8b 40 04             	mov    0x4(%eax),%eax
   13fcd:	8d 50 01             	lea    0x1(%eax),%edx
   13fd0:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   13fd3:	89 50 04             	mov    %edx,0x4(%eax)
   13fd6:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
   13fd9:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
   13fdc:	89 d0                	mov    %edx,%eax
   13fde:	c1 e0 02             	shl    $0x2,%eax
   13fe1:	01 d0                	add    %edx,%eax
   13fe3:	c1 e0 02             	shl    $0x2,%eax
   13fe6:	01 c8                	add    %ecx,%eax
   13fe8:	83 c0 10             	add    $0x10,%eax
   13feb:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   13ff1:	eb 2a                	jmp    0x1401d
   13ff3:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   13ff6:	8b 40 08             	mov    0x8(%eax),%eax
   13ff9:	8d 50 01             	lea    0x1(%eax),%edx
   13ffc:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   13fff:	89 50 08             	mov    %edx,0x8(%eax)
   14002:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
   14005:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
   14008:	89 d0                	mov    %edx,%eax
   1400a:	c1 e0 02             	shl    $0x2,%eax
   1400d:	01 d0                	add    %edx,%eax
   1400f:	c1 e0 02             	shl    $0x2,%eax
   14012:	01 c8                	add    %ecx,%eax
   14014:	83 c0 10             	add    $0x10,%eax
   14017:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
   1401d:	83 45 e8 01          	addl   $0x1,0xffffffe8(%ebp)
   14021:	83 45 e4 10          	addl   $0x10,0xffffffe4(%ebp)
   14025:	83 7d e8 04          	cmpl   $0x4,0xffffffe8(%ebp)
   14029:	0f 8e 01 ff ff ff    	jle    0x13f30
   1402f:	c7 45 e8 01 00 00 00 	movl   $0x1,0xffffffe8(%ebp)
   14036:	e9 c4 01 00 00       	jmp    0x141ff
   1403b:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
   1403e:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
   14041:	89 d0                	mov    %edx,%eax
   14043:	c1 e0 02             	shl    $0x2,%eax
   14046:	01 d0                	add    %edx,%eax
   14048:	c1 e0 02             	shl    $0x2,%eax
   1404b:	01 c8                	add    %ecx,%eax
   1404d:	83 c0 10             	add    $0x10,%eax
   14050:	8b 00                	mov    (%eax),%eax
   14052:	83 f8 01             	cmp    $0x1,%eax
   14055:	0f 85 a0 01 00 00    	jne    0x141fb
   1405b:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
   1405e:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
   14061:	89 d0                	mov    %edx,%eax
   14063:	c1 e0 02             	shl    $0x2,%eax
   14066:	01 d0                	add    %edx,%eax
   14068:	c1 e0 02             	shl    $0x2,%eax
   1406b:	01 c8                	add    %ecx,%eax
   1406d:	83 c0 14             	add    $0x14,%eax
   14070:	8b 00                	mov    (%eax),%eax
   14072:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   14075:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   14078:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   1407b:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
   14082:	c6 45 da 01          	movb   $0x1,0xffffffda(%ebp)
   14086:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   14089:	89 c2                	mov    %eax,%edx
   1408b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14090:	21 d0                	and    %edx,%eax
   14092:	88 45 db             	mov    %al,0xffffffdb(%ebp)
   14095:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   14098:	c1 f8 08             	sar    $0x8,%eax
   1409b:	89 c2                	mov    %eax,%edx
   1409d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140a2:	21 d0                	and    %edx,%eax
   140a4:	88 45 dc             	mov    %al,0xffffffdc(%ebp)
   140a7:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   140aa:	c1 f8 10             	sar    $0x10,%eax
   140ad:	89 c2                	mov    %eax,%edx
   140af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140b4:	21 d0                	and    %edx,%eax
   140b6:	88 45 dd             	mov    %al,0xffffffdd(%ebp)
   140b9:	0f b6 45 c8          	movzbl 0xffffffc8(%ebp),%eax
   140bd:	c1 e0 04             	shl    $0x4,%eax
   140c0:	89 c2                	mov    %eax,%edx
   140c2:	83 ca 40             	or     $0x40,%edx
   140c5:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   140c8:	c1 f8 18             	sar    $0x18,%eax
   140cb:	83 e0 0f             	and    $0xf,%eax
   140ce:	09 c2                	or     %eax,%edx
   140d0:	b8 a0 ff ff ff       	mov    $0xffffffa0,%eax
   140d5:	09 d0                	or     %edx,%eax
   140d7:	88 45 de             	mov    %al,0xffffffde(%ebp)
   140da:	c6 45 df 20          	movb   $0x20,0xffffffdf(%ebp)
   140de:	8d 45 d9             	lea    0xffffffd9(%ebp),%eax
   140e1:	89 04 24             	mov    %eax,(%esp)
   140e4:	e8 71 fa ff ff       	call   0x13b5a
   140e9:	e8 1f 0c 00 00       	call   0x14d0d
   140ee:	b8 c0 47 04 00       	mov    $0x447c0,%eax
   140f3:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
   140fa:	00 
   140fb:	89 44 24 04          	mov    %eax,0x4(%esp)
   140ff:	c7 04 24 f0 01 00 00 	movl   $0x1f0,(%esp)
   14106:	e8 4f fb ff ff       	call   0x13c5a
   1410b:	b8 c0 47 04 00       	mov    $0x447c0,%eax
   14110:	05 be 01 00 00       	add    $0x1be,%eax
   14115:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   14118:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1411b:	8b 40 0c             	mov    0xc(%eax),%eax
   1411e:	85 c0                	test   %eax,%eax
   14120:	0f 84 d5 00 00 00    	je     0x141fb
   14126:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   14129:	c1 e0 04             	shl    $0x4,%eax
   1412c:	83 e8 10             	sub    $0x10,%eax
   1412f:	03 45 f4             	add    0xfffffff4(%ebp),%eax
   14132:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   14135:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   14138:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
   1413b:	89 d0                	mov    %edx,%eax
   1413d:	c1 e0 02             	shl    $0x2,%eax
   14140:	01 d0                	add    %edx,%eax
   14142:	c1 e0 02             	shl    $0x2,%eax
   14145:	01 c8                	add    %ecx,%eax
   14147:	83 c0 74             	add    $0x74,%eax
   1414a:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
   14150:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   14153:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   14156:	8b 40 08             	mov    0x8(%eax),%eax
   14159:	89 c3                	mov    %eax,%ebx
   1415b:	03 5d f0             	add    0xfffffff0(%ebp),%ebx
   1415e:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
   14161:	89 d0                	mov    %edx,%eax
   14163:	c1 e0 02             	shl    $0x2,%eax
   14166:	01 d0                	add    %edx,%eax
   14168:	c1 e0 02             	shl    $0x2,%eax
   1416b:	01 c8                	add    %ecx,%eax
   1416d:	83 c0 78             	add    $0x78,%eax
   14170:	89 18                	mov    %ebx,(%eax)
   14172:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   14175:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   14178:	8b 58 0c             	mov    0xc(%eax),%ebx
   1417b:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
   1417e:	89 d0                	mov    %edx,%eax
   14180:	c1 e0 02             	shl    $0x2,%eax
   14183:	01 d0                	add    %edx,%eax
   14185:	c1 e0 02             	shl    $0x2,%eax
   14188:	01 c8                	add    %ecx,%eax
   1418a:	83 c0 7c             	add    $0x7c,%eax
   1418d:	89 18                	mov    %ebx,(%eax)
   1418f:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
   14192:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   14195:	8b 40 08             	mov    0x8(%eax),%eax
   14198:	03 45 f0             	add    0xfffffff0(%ebp),%eax
   1419b:	89 c3                	mov    %eax,%ebx
   1419d:	c1 e3 09             	shl    $0x9,%ebx
   141a0:	8b 55 e0             	mov    0xffffffe0(%ebp),%edx
   141a3:	89 c8                	mov    %ecx,%eax
   141a5:	c1 e0 02             	shl    $0x2,%eax
   141a8:	01 c8                	add    %ecx,%eax
   141aa:	c1 e0 02             	shl    $0x2,%eax
   141ad:	01 d0                	add    %edx,%eax
   141af:	83 e8 80             	sub    $0xffffff80,%eax
   141b2:	89 18                	mov    %ebx,(%eax)
   141b4:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   141b7:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   141ba:	8b 40 0c             	mov    0xc(%eax),%eax
   141bd:	89 c3                	mov    %eax,%ebx
   141bf:	c1 e3 09             	shl    $0x9,%ebx
   141c2:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
   141c5:	89 d0                	mov    %edx,%eax
   141c7:	c1 e0 02             	shl    $0x2,%eax
   141ca:	01 d0                	add    %edx,%eax
   141cc:	c1 e0 02             	shl    $0x2,%eax
   141cf:	01 c8                	add    %ecx,%eax
   141d1:	05 84 00 00 00       	add    $0x84,%eax
   141d6:	89 18                	mov    %ebx,(%eax)
   141d8:	83 45 f4 01          	addl   $0x1,0xfffffff4(%ebp)
   141dc:	83 45 e4 10          	addl   $0x10,0xffffffe4(%ebp)
   141e0:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   141e3:	8b 40 0c             	mov    0xc(%eax),%eax
   141e6:	85 c0                	test   %eax,%eax
   141e8:	74 11                	je     0x141fb
   141ea:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   141ed:	8b 40 08             	mov    0x8(%eax),%eax
   141f0:	03 45 ec             	add    0xffffffec(%ebp),%eax
   141f3:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   141f6:	e9 87 fe ff ff       	jmp    0x14082
   141fb:	83 45 e8 01          	addl   $0x1,0xffffffe8(%ebp)
   141ff:	83 7d e8 04          	cmpl   $0x4,0xffffffe8(%ebp)
   14203:	0f 8e 32 fe ff ff    	jle    0x1403b
   14209:	83 c4 44             	add    $0x44,%esp
   1420c:	5b                   	pop    %ebx
   1420d:	5d                   	pop    %ebp
   1420e:	c3                   	ret    
   1420f:	55                   	push   %ebp
   14210:	89 e5                	mov    %esp,%ebp
   14212:	83 ec 58             	sub    $0x58,%esp
   14215:	8b 45 08             	mov    0x8(%ebp),%eax
   14218:	66 89 45 cc          	mov    %ax,0xffffffcc(%ebp)
   1421c:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
   14220:	69 c0 74 05 00 00    	imul   $0x574,%eax,%eax
   14226:	05 c0 ff 01 00       	add    $0x1ffc0,%eax
   1422b:	89 45 d0             	mov    %eax,0xffffffd0(%ebp)
   1422e:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
   14235:	e9 e3 00 00 00       	jmp    0x1431d
   1423a:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   1423d:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
   14240:	89 d0                	mov    %edx,%eax
   14242:	c1 e0 02             	shl    $0x2,%eax
   14245:	01 d0                	add    %edx,%eax
   14247:	c1 e0 02             	shl    $0x2,%eax
   1424a:	01 c8                	add    %ecx,%eax
   1424c:	83 c0 10             	add    $0x10,%eax
   1424f:	8b 00                	mov    (%eax),%eax
   14251:	83 f8 ff             	cmp    $0xffffffff,%eax
   14254:	0f 84 bf 00 00 00    	je     0x14319
   1425a:	0f b7 55 cc          	movzwl 0xffffffcc(%ebp),%edx
   1425e:	89 d0                	mov    %edx,%eax
   14260:	c1 e0 02             	shl    $0x2,%eax
   14263:	01 d0                	add    %edx,%eax
   14265:	03 45 d4             	add    0xffffffd4(%ebp),%eax
   14268:	89 45 d8             	mov    %eax,0xffffffd8(%ebp)
   1426b:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   1426e:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
   14271:	89 d0                	mov    %edx,%eax
   14273:	c1 e0 02             	shl    $0x2,%eax
   14276:	01 d0                	add    %edx,%eax
   14278:	c1 e0 02             	shl    $0x2,%eax
   1427b:	01 c8                	add    %ecx,%eax
   1427d:	83 c0 10             	add    $0x10,%eax
   14280:	8b 00                	mov    (%eax),%eax
   14282:	85 c0                	test   %eax,%eax
   14284:	75 09                	jne    0x1428f
   14286:	c7 45 c8 e6 b4 01 00 	movl   $0x1b4e6,0xffffffc8(%ebp)
   1428d:	eb 07                	jmp    0x14296
   1428f:	c7 45 c8 f5 b4 01 00 	movl   $0x1b4f5,0xffffffc8(%ebp)
   14296:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   14299:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
   1429c:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   1429f:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
   142a2:	89 d0                	mov    %edx,%eax
   142a4:	c1 e0 02             	shl    $0x2,%eax
   142a7:	01 d0                	add    %edx,%eax
   142a9:	c1 e0 02             	shl    $0x2,%eax
   142ac:	01 c8                	add    %ecx,%eax
   142ae:	83 c0 14             	add    $0x14,%eax
   142b1:	8b 00                	mov    (%eax),%eax
   142b3:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   142b6:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   142b9:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
   142bc:	89 d0                	mov    %edx,%eax
   142be:	c1 e0 02             	shl    $0x2,%eax
   142c1:	01 d0                	add    %edx,%eax
   142c3:	c1 e0 02             	shl    $0x2,%eax
   142c6:	01 c8                	add    %ecx,%eax
   142c8:	83 c0 1c             	add    $0x1c,%eax
   142cb:	8b 00                	mov    (%eax),%eax
   142cd:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   142d0:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   142d3:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
   142d6:	89 d0                	mov    %edx,%eax
   142d8:	c1 e0 02             	shl    $0x2,%eax
   142db:	01 d0                	add    %edx,%eax
   142dd:	c1 e0 02             	shl    $0x2,%eax
   142e0:	01 c8                	add    %ecx,%eax
   142e2:	83 c0 20             	add    $0x20,%eax
   142e5:	8b 00                	mov    (%eax),%eax
   142e7:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   142ea:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   142ed:	89 44 24 14          	mov    %eax,0x14(%esp)
   142f1:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   142f4:	89 44 24 10          	mov    %eax,0x10(%esp)
   142f8:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   142fb:	89 44 24 0c          	mov    %eax,0xc(%esp)
   142ff:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   14302:	89 44 24 08          	mov    %eax,0x8(%esp)
   14306:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   14309:	89 44 24 04          	mov    %eax,0x4(%esp)
   1430d:	c7 04 24 04 b5 01 00 	movl   $0x1b504,(%esp)
   14314:	e8 33 6a 00 00       	call   0x1ad4c
   14319:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
   1431d:	83 7d d4 04          	cmpl   $0x4,0xffffffd4(%ebp)
   14321:	0f 8e 13 ff ff ff    	jle    0x1423a
   14327:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
   1432e:	e9 ba 00 00 00       	jmp    0x143ed
   14333:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   14336:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
   14339:	89 d0                	mov    %edx,%eax
   1433b:	c1 e0 02             	shl    $0x2,%eax
   1433e:	01 d0                	add    %edx,%eax
   14340:	c1 e0 02             	shl    $0x2,%eax
   14343:	01 c8                	add    %ecx,%eax
   14345:	83 c0 74             	add    $0x74,%eax
   14348:	8b 00                	mov    (%eax),%eax
   1434a:	83 f8 ff             	cmp    $0xffffffff,%eax
   1434d:	0f 84 96 00 00 00    	je     0x143e9
   14353:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
   14357:	c1 e0 06             	shl    $0x6,%eax
   1435a:	03 45 d4             	add    0xffffffd4(%ebp),%eax
   1435d:	83 c0 0a             	add    $0xa,%eax
   14360:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   14363:	c7 45 f0 27 b5 01 00 	movl   $0x1b527,0xfffffff0(%ebp)
   1436a:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   1436d:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
   14370:	89 d0                	mov    %edx,%eax
   14372:	c1 e0 02             	shl    $0x2,%eax
   14375:	01 d0                	add    %edx,%eax
   14377:	c1 e0 02             	shl    $0x2,%eax
   1437a:	01 c8                	add    %ecx,%eax
   1437c:	83 c0 78             	add    $0x78,%eax
   1437f:	8b 00                	mov    (%eax),%eax
   14381:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   14384:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   14387:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
   1438a:	89 d0                	mov    %edx,%eax
   1438c:	c1 e0 02             	shl    $0x2,%eax
   1438f:	01 d0                	add    %edx,%eax
   14391:	c1 e0 02             	shl    $0x2,%eax
   14394:	01 c8                	add    %ecx,%eax
   14396:	83 e8 80             	sub    $0xffffff80,%eax
   14399:	8b 00                	mov    (%eax),%eax
   1439b:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   1439e:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   143a1:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
   143a4:	89 d0                	mov    %edx,%eax
   143a6:	c1 e0 02             	shl    $0x2,%eax
   143a9:	01 d0                	add    %edx,%eax
   143ab:	c1 e0 02             	shl    $0x2,%eax
   143ae:	01 c8                	add    %ecx,%eax
   143b0:	05 84 00 00 00       	add    $0x84,%eax
   143b5:	8b 00                	mov    (%eax),%eax
   143b7:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   143ba:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   143bd:	89 44 24 14          	mov    %eax,0x14(%esp)
   143c1:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   143c4:	89 44 24 10          	mov    %eax,0x10(%esp)
   143c8:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   143cb:	89 44 24 0c          	mov    %eax,0xc(%esp)
   143cf:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   143d2:	89 44 24 08          	mov    %eax,0x8(%esp)
   143d6:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   143d9:	89 44 24 04          	mov    %eax,0x4(%esp)
   143dd:	c7 04 24 04 b5 01 00 	movl   $0x1b504,(%esp)
   143e4:	e8 63 69 00 00       	call   0x1ad4c
   143e9:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
   143ed:	83 7d d4 3f          	cmpl   $0x3f,0xffffffd4(%ebp)
   143f1:	0f 8e 3c ff ff ff    	jle    0x14333
   143f7:	c9                   	leave  
   143f8:	c3                   	ret    
   143f9:	55                   	push   %ebp
   143fa:	89 e5                	mov    %esp,%ebp
   143fc:	83 ec 28             	sub    $0x28,%esp
   143ff:	8b 45 08             	mov    0x8(%ebp),%eax
   14402:	66 89 45 ec          	mov    %ax,0xffffffec(%ebp)
   14406:	0f b7 45 ec          	movzwl 0xffffffec(%ebp),%eax
   1440a:	25 ff 00 00 00       	and    $0xff,%eax
   1440f:	83 f8 09             	cmp    $0x9,%eax
   14412:	7f 23                	jg     0x14437
   14414:	0f b7 45 ec          	movzwl 0xffffffec(%ebp),%eax
   14418:	0f b6 c8             	movzbl %al,%ecx
   1441b:	c7 45 e4 67 66 66 66 	movl   $0x66666667,0xffffffe4(%ebp)
   14422:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   14425:	f7 e9                	imul   %ecx
   14427:	d1 fa                	sar    %edx
   14429:	89 c8                	mov    %ecx,%eax
   1442b:	c1 f8 1f             	sar    $0x1f,%eax
   1442e:	89 d1                	mov    %edx,%ecx
   14430:	29 c1                	sub    %eax,%ecx
   14432:	89 4d e8             	mov    %ecx,0xffffffe8(%ebp)
   14435:	eb 1c                	jmp    0x14453
   14437:	0f b7 45 ec          	movzwl 0xffffffec(%ebp),%eax
   1443b:	25 ff 00 00 00       	and    $0xff,%eax
   14440:	8d 50 f6             	lea    0xfffffff6(%eax),%edx
   14443:	89 d0                	mov    %edx,%eax
   14445:	c1 f8 1f             	sar    $0x1f,%eax
   14448:	c1 e8 1a             	shr    $0x1a,%eax
   1444b:	01 d0                	add    %edx,%eax
   1444d:	c1 f8 06             	sar    $0x6,%eax
   14450:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   14453:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   14456:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   14459:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1445c:	69 c0 74 05 00 00    	imul   $0x574,%eax,%eax
   14462:	05 c0 ff 01 00       	add    $0x1ffc0,%eax
   14467:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   1446a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1446d:	8b 00                	mov    (%eax),%eax
   1446f:	8d 50 01             	lea    0x1(%eax),%edx
   14472:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14475:	89 10                	mov    %edx,(%eax)
   14477:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1447a:	8b 00                	mov    (%eax),%eax
   1447c:	83 f8 01             	cmp    $0x1,%eax
   1447f:	74 0e                	je     0x1448f
   14481:	c7 04 24 38 b5 01 00 	movl   $0x1b538,(%esp)
   14488:	e8 bf 68 00 00       	call   0x1ad4c
   1448d:	eb 6c                	jmp    0x144fb
   1448f:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   14492:	c1 e0 04             	shl    $0x4,%eax
   14495:	89 c2                	mov    %eax,%edx
   14497:	b8 e0 ff ff ff       	mov    $0xffffffe0,%eax
   1449c:	09 d0                	or     %edx,%eax
   1449e:	88 45 f6             	mov    %al,0xfffffff6(%ebp)
   144a1:	c6 45 f7 ec          	movb   $0xec,0xfffffff7(%ebp)
   144a5:	8d 45 f1             	lea    0xfffffff1(%ebp),%eax
   144a8:	89 04 24             	mov    %eax,(%esp)
   144ab:	e8 aa f6 ff ff       	call   0x13b5a
   144b0:	e8 58 08 00 00       	call   0x14d0d
   144b5:	b8 c0 47 04 00       	mov    $0x447c0,%eax
   144ba:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
   144c1:	00 
   144c2:	89 44 24 04          	mov    %eax,0x4(%esp)
   144c6:	c7 04 24 f0 01 00 00 	movl   $0x1f0,(%esp)
   144cd:	e8 88 f7 ff ff       	call   0x13c5a
   144d2:	b8 c0 47 04 00       	mov    $0x447c0,%eax
   144d7:	89 04 24             	mov    %eax,(%esp)
   144da:	e8 fa f7 ff ff       	call   0x13cd9
   144df:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   144e2:	0f b6 c0             	movzbl %al,%eax
   144e5:	89 04 24             	mov    %eax,(%esp)
   144e8:	e8 b7 f9 ff ff       	call   0x13ea4
   144ed:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   144f0:	0f b7 c0             	movzwl %ax,%eax
   144f3:	89 04 24             	mov    %eax,(%esp)
   144f6:	e8 14 fd ff ff       	call   0x1420f
   144fb:	c9                   	leave  
   144fc:	c3                   	ret    
   144fd:	55                   	push   %ebp
   144fe:	89 e5                	mov    %esp,%ebp
   14500:	83 ec 28             	sub    $0x28,%esp
   14503:	8b 45 08             	mov    0x8(%ebp),%eax
   14506:	66 89 45 ec          	mov    %ax,0xffffffec(%ebp)
   1450a:	0f b7 45 ec          	movzwl 0xffffffec(%ebp),%eax
   1450e:	25 ff 00 00 00       	and    $0xff,%eax
   14513:	83 f8 09             	cmp    $0x9,%eax
   14516:	7f 23                	jg     0x1453b
   14518:	0f b7 45 ec          	movzwl 0xffffffec(%ebp),%eax
   1451c:	0f b6 c8             	movzbl %al,%ecx
   1451f:	c7 45 e4 67 66 66 66 	movl   $0x66666667,0xffffffe4(%ebp)
   14526:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   14529:	f7 e9                	imul   %ecx
   1452b:	d1 fa                	sar    %edx
   1452d:	89 c8                	mov    %ecx,%eax
   1452f:	c1 f8 1f             	sar    $0x1f,%eax
   14532:	89 d1                	mov    %edx,%ecx
   14534:	29 c1                	sub    %eax,%ecx
   14536:	89 4d e8             	mov    %ecx,0xffffffe8(%ebp)
   14539:	eb 1c                	jmp    0x14557
   1453b:	0f b7 45 ec          	movzwl 0xffffffec(%ebp),%eax
   1453f:	25 ff 00 00 00       	and    $0xff,%eax
   14544:	8d 50 f6             	lea    0xfffffff6(%eax),%edx
   14547:	89 d0                	mov    %edx,%eax
   14549:	c1 f8 1f             	sar    $0x1f,%eax
   1454c:	c1 e8 1a             	shr    $0x1a,%eax
   1454f:	01 d0                	add    %edx,%eax
   14551:	c1 f8 06             	sar    $0x6,%eax
   14554:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   14557:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   1455a:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   1455d:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   14560:	69 c0 74 05 00 00    	imul   $0x574,%eax,%eax
   14566:	05 c0 ff 01 00       	add    $0x1ffc0,%eax
   1456b:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   1456e:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14571:	8b 00                	mov    (%eax),%eax
   14573:	85 c0                	test   %eax,%eax
   14575:	7f 0c                	jg     0x14583
   14577:	c7 04 24 64 b5 01 00 	movl   $0x1b564,(%esp)
   1457e:	e8 c9 67 00 00       	call   0x1ad4c
   14583:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14586:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   1458c:	c9                   	leave  
   1458d:	c3                   	ret    
   1458e:	55                   	push   %ebp
   1458f:	89 e5                	mov    %esp,%ebp
   14591:	53                   	push   %ebx
   14592:	83 ec 54             	sub    $0x54,%esp
   14595:	8b 45 10             	mov    0x10(%ebp),%eax
   14598:	8b 55 14             	mov    0x14(%ebp),%edx
   1459b:	66 89 45 c8          	mov    %ax,0xffffffc8(%ebp)
   1459f:	66 89 55 c4          	mov    %dx,0xffffffc4(%ebp)
   145a3:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
   145a7:	75 06                	jne    0x145af
   145a9:	c6 45 df 20          	movb   $0x20,0xffffffdf(%ebp)
   145ad:	eb 1a                	jmp    0x145c9
   145af:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
   145b3:	75 06                	jne    0x145bb
   145b5:	c6 45 df 30          	movb   $0x30,0xffffffdf(%ebp)
   145b9:	eb 0e                	jmp    0x145c9
   145bb:	c7 04 24 8f b5 01 00 	movl   $0x1b58f,(%esp)
   145c2:	e8 85 67 00 00       	call   0x1ad4c
   145c7:	eb fe                	jmp    0x145c7
   145c9:	0f b7 45 c8          	movzwl 0xffffffc8(%ebp),%eax
   145cd:	25 ff 00 00 00       	and    $0xff,%eax
   145d2:	83 f8 09             	cmp    $0x9,%eax
   145d5:	7f 23                	jg     0x145fa
   145d7:	0f b7 45 c8          	movzwl 0xffffffc8(%ebp),%eax
   145db:	0f b6 c8             	movzbl %al,%ecx
   145de:	c7 45 b8 67 66 66 66 	movl   $0x66666667,0xffffffb8(%ebp)
   145e5:	8b 45 b8             	mov    0xffffffb8(%ebp),%eax
   145e8:	f7 e9                	imul   %ecx
   145ea:	d1 fa                	sar    %edx
   145ec:	89 c8                	mov    %ecx,%eax
   145ee:	c1 f8 1f             	sar    $0x1f,%eax
   145f1:	89 d1                	mov    %edx,%ecx
   145f3:	29 c1                	sub    %eax,%ecx
   145f5:	89 4d bc             	mov    %ecx,0xffffffbc(%ebp)
   145f8:	eb 1c                	jmp    0x14616
   145fa:	0f b7 45 c8          	movzwl 0xffffffc8(%ebp),%eax
   145fe:	25 ff 00 00 00       	and    $0xff,%eax
   14603:	8d 50 f6             	lea    0xfffffff6(%eax),%edx
   14606:	89 d0                	mov    %edx,%eax
   14608:	c1 f8 1f             	sar    $0x1f,%eax
   1460b:	c1 e8 1a             	shr    $0x1a,%eax
   1460e:	01 d0                	add    %edx,%eax
   14610:	c1 f8 06             	sar    $0x6,%eax
   14613:	89 45 bc             	mov    %eax,0xffffffbc(%ebp)
   14616:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   14619:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   1461c:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   1461f:	69 c0 74 05 00 00    	imul   $0x574,%eax,%eax
   14625:	05 c0 ff 01 00       	add    $0x1ffc0,%eax
   1462a:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   1462d:	0f b7 45 c8          	movzwl 0xffffffc8(%ebp),%eax
   14631:	89 c2                	mov    %eax,%edx
   14633:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14638:	21 d0                	and    %edx,%eax
   1463a:	88 45 eb             	mov    %al,0xffffffeb(%ebp)
   1463d:	80 7d eb 09          	cmpb   $0x9,0xffffffeb(%ebp)
   14641:	0f 87 d1 00 00 00    	ja     0x14718
   14647:	0f b6 55 eb          	movzbl 0xffffffeb(%ebp),%edx
   1464b:	b8 cd ff ff ff       	mov    $0xffffffcd,%eax
   14650:	f6 e2                	mul    %dl
   14652:	66 c1 e8 08          	shr    $0x8,%ax
   14656:	89 c1                	mov    %eax,%ecx
   14658:	c0 e9 02             	shr    $0x2,%cl
   1465b:	88 4d c0             	mov    %cl,0xffffffc0(%ebp)
   1465e:	0f b6 45 c0          	movzbl 0xffffffc0(%ebp),%eax
   14662:	c1 e0 02             	shl    $0x2,%eax
   14665:	02 45 c0             	add    0xffffffc0(%ebp),%al
   14668:	89 d1                	mov    %edx,%ecx
   1466a:	28 c1                	sub    %al,%cl
   1466c:	88 4d c0             	mov    %cl,0xffffffc0(%ebp)
   1466f:	0f b6 55 c0          	movzbl 0xffffffc0(%ebp),%edx
   14673:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
   14676:	89 d0                	mov    %edx,%eax
   14678:	c1 e0 02             	shl    $0x2,%eax
   1467b:	01 d0                	add    %edx,%eax
   1467d:	c1 e0 02             	shl    $0x2,%eax
   14680:	01 c8                	add    %ecx,%eax
   14682:	83 c0 14             	add    $0x14,%eax
   14685:	8b 00                	mov    (%eax),%eax
   14687:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   1468a:	0f b6 55 eb          	movzbl 0xffffffeb(%ebp),%edx
   1468e:	b8 cd ff ff ff       	mov    $0xffffffcd,%eax
   14693:	f6 e2                	mul    %dl
   14695:	66 c1 e8 08          	shr    $0x8,%ax
   14699:	89 c1                	mov    %eax,%ecx
   1469b:	c0 e9 02             	shr    $0x2,%cl
   1469e:	88 4d c1             	mov    %cl,0xffffffc1(%ebp)
   146a1:	0f b6 45 c1          	movzbl 0xffffffc1(%ebp),%eax
   146a5:	c1 e0 02             	shl    $0x2,%eax
   146a8:	02 45 c1             	add    0xffffffc1(%ebp),%al
   146ab:	89 d1                	mov    %edx,%ecx
   146ad:	28 c1                	sub    %al,%cl
   146af:	88 4d c1             	mov    %cl,0xffffffc1(%ebp)
   146b2:	0f b6 55 c1          	movzbl 0xffffffc1(%ebp),%edx
   146b6:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
   146b9:	89 d0                	mov    %edx,%eax
   146bb:	c1 e0 02             	shl    $0x2,%eax
   146be:	01 d0                	add    %edx,%eax
   146c0:	c1 e0 02             	shl    $0x2,%eax
   146c3:	01 c8                	add    %ecx,%eax
   146c5:	83 c0 14             	add    $0x14,%eax
   146c8:	8b 18                	mov    (%eax),%ebx
   146ca:	0f b6 55 eb          	movzbl 0xffffffeb(%ebp),%edx
   146ce:	b8 cd ff ff ff       	mov    $0xffffffcd,%eax
   146d3:	f6 e2                	mul    %dl
   146d5:	66 c1 e8 08          	shr    $0x8,%ax
   146d9:	89 c1                	mov    %eax,%ecx
   146db:	c0 e9 02             	shr    $0x2,%cl
   146de:	88 4d c2             	mov    %cl,0xffffffc2(%ebp)
   146e1:	0f b6 45 c2          	movzbl 0xffffffc2(%ebp),%eax
   146e5:	c1 e0 02             	shl    $0x2,%eax
   146e8:	02 45 c2             	add    0xffffffc2(%ebp),%al
   146eb:	89 d1                	mov    %edx,%ecx
   146ed:	28 c1                	sub    %al,%cl
   146ef:	88 4d c2             	mov    %cl,0xffffffc2(%ebp)
   146f2:	0f b6 55 c2          	movzbl 0xffffffc2(%ebp),%edx
   146f6:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
   146f9:	89 d0                	mov    %edx,%eax
   146fb:	c1 e0 02             	shl    $0x2,%eax
   146fe:	01 d0                	add    %edx,%eax
   14700:	c1 e0 02             	shl    $0x2,%eax
   14703:	01 c8                	add    %ecx,%eax
   14705:	83 c0 18             	add    $0x18,%eax
   14708:	8b 00                	mov    (%eax),%eax
   1470a:	8d 04 03             	lea    (%ebx,%eax,1),%eax
   1470d:	83 e8 01             	sub    $0x1,%eax
   14710:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   14713:	e9 aa 00 00 00       	jmp    0x147c2
   14718:	0f b6 45 eb          	movzbl 0xffffffeb(%ebp),%eax
   1471c:	8d 50 f6             	lea    0xfffffff6(%eax),%edx
   1471f:	89 d0                	mov    %edx,%eax
   14721:	c1 f8 1f             	sar    $0x1f,%eax
   14724:	89 c1                	mov    %eax,%ecx
   14726:	c1 e9 1a             	shr    $0x1a,%ecx
   14729:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
   1472c:	83 e0 3f             	and    $0x3f,%eax
   1472f:	29 c8                	sub    %ecx,%eax
   14731:	89 c2                	mov    %eax,%edx
   14733:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
   14736:	89 d0                	mov    %edx,%eax
   14738:	c1 e0 02             	shl    $0x2,%eax
   1473b:	01 d0                	add    %edx,%eax
   1473d:	c1 e0 02             	shl    $0x2,%eax
   14740:	01 c8                	add    %ecx,%eax
   14742:	83 c0 78             	add    $0x78,%eax
   14745:	8b 00                	mov    (%eax),%eax
   14747:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   1474a:	0f b6 45 eb          	movzbl 0xffffffeb(%ebp),%eax
   1474e:	8d 50 f6             	lea    0xfffffff6(%eax),%edx
   14751:	89 d0                	mov    %edx,%eax
   14753:	c1 f8 1f             	sar    $0x1f,%eax
   14756:	89 c1                	mov    %eax,%ecx
   14758:	c1 e9 1a             	shr    $0x1a,%ecx
   1475b:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
   1475e:	83 e0 3f             	and    $0x3f,%eax
   14761:	29 c8                	sub    %ecx,%eax
   14763:	89 c2                	mov    %eax,%edx
   14765:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
   14768:	89 d0                	mov    %edx,%eax
   1476a:	c1 e0 02             	shl    $0x2,%eax
   1476d:	01 d0                	add    %edx,%eax
   1476f:	c1 e0 02             	shl    $0x2,%eax
   14772:	01 c8                	add    %ecx,%eax
   14774:	83 c0 78             	add    $0x78,%eax
   14777:	8b 18                	mov    (%eax),%ebx
   14779:	0f b6 55 eb          	movzbl 0xffffffeb(%ebp),%edx
   1477d:	b8 cd ff ff ff       	mov    $0xffffffcd,%eax
   14782:	f6 e2                	mul    %dl
   14784:	66 c1 e8 08          	shr    $0x8,%ax
   14788:	89 c1                	mov    %eax,%ecx
   1478a:	c0 e9 02             	shr    $0x2,%cl
   1478d:	88 4d c3             	mov    %cl,0xffffffc3(%ebp)
   14790:	0f b6 45 c3          	movzbl 0xffffffc3(%ebp),%eax
   14794:	c1 e0 02             	shl    $0x2,%eax
   14797:	02 45 c3             	add    0xffffffc3(%ebp),%al
   1479a:	89 d1                	mov    %edx,%ecx
   1479c:	28 c1                	sub    %al,%cl
   1479e:	88 4d c3             	mov    %cl,0xffffffc3(%ebp)
   147a1:	0f b6 55 c3          	movzbl 0xffffffc3(%ebp),%edx
   147a5:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
   147a8:	89 d0                	mov    %edx,%eax
   147aa:	c1 e0 02             	shl    $0x2,%eax
   147ad:	01 d0                	add    %edx,%eax
   147af:	c1 e0 02             	shl    $0x2,%eax
   147b2:	01 c8                	add    %ecx,%eax
   147b4:	83 c0 18             	add    $0x18,%eax
   147b7:	8b 00                	mov    (%eax),%eax
   147b9:	8d 04 03             	lea    (%ebx,%eax,1),%eax
   147bc:	83 e8 01             	sub    $0x1,%eax
   147bf:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   147c2:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   147c5:	03 45 18             	add    0x18(%ebp),%eax
   147c8:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   147cb:	66 c7 45 fa 00 00    	movw   $0x0,0xfffffffa(%ebp)
   147d1:	e9 c9 00 00 00       	jmp    0x1489f
   147d6:	c6 45 da 01          	movb   $0x1,0xffffffda(%ebp)
   147da:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   147dd:	89 c2                	mov    %eax,%edx
   147df:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   147e4:	21 d0                	and    %edx,%eax
   147e6:	88 45 db             	mov    %al,0xffffffdb(%ebp)
   147e9:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   147ec:	c1 f8 08             	sar    $0x8,%eax
   147ef:	89 c2                	mov    %eax,%edx
   147f1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   147f6:	21 d0                	and    %edx,%eax
   147f8:	88 45 dc             	mov    %al,0xffffffdc(%ebp)
   147fb:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   147fe:	c1 f8 10             	sar    $0x10,%eax
   14801:	89 c2                	mov    %eax,%edx
   14803:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14808:	21 d0                	and    %edx,%eax
   1480a:	88 45 dd             	mov    %al,0xffffffdd(%ebp)
   1480d:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   14810:	c1 e0 04             	shl    $0x4,%eax
   14813:	89 c2                	mov    %eax,%edx
   14815:	83 ca 40             	or     $0x40,%edx
   14818:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   1481b:	c1 f8 18             	sar    $0x18,%eax
   1481e:	83 e0 0f             	and    $0xf,%eax
   14821:	09 c2                	or     %eax,%edx
   14823:	b8 a0 ff ff ff       	mov    $0xffffffa0,%eax
   14828:	09 d0                	or     %edx,%eax
   1482a:	88 45 de             	mov    %al,0xffffffde(%ebp)
   1482d:	8d 45 d9             	lea    0xffffffd9(%ebp),%eax
   14830:	89 04 24             	mov    %eax,(%esp)
   14833:	e8 22 f3 ff ff       	call   0x13b5a
   14838:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
   1483c:	75 29                	jne    0x14867
   1483e:	e8 ca 04 00 00       	call   0x14d0d
   14843:	8b 45 0c             	mov    0xc(%ebp),%eax
   14846:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
   1484d:	00 
   1484e:	89 44 24 04          	mov    %eax,0x4(%esp)
   14852:	c7 04 24 f0 01 00 00 	movl   $0x1f0,(%esp)
   14859:	e8 fc f3 ff ff       	call   0x13c5a
   1485e:	81 45 0c 00 02 00 00 	addl   $0x200,0xc(%ebp)
   14865:	eb 27                	jmp    0x1488e
   14867:	8b 45 0c             	mov    0xc(%ebp),%eax
   1486a:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
   14871:	00 
   14872:	89 44 24 04          	mov    %eax,0x4(%esp)
   14876:	c7 04 24 f0 01 00 00 	movl   $0x1f0,(%esp)
   1487d:	e8 15 f4 ff ff       	call   0x13c97
   14882:	e8 86 04 00 00       	call   0x14d0d
   14887:	81 45 0c 00 02 00 00 	addl   $0x200,0xc(%ebp)
   1488e:	66 83 45 fa 01       	addw   $0x1,0xfffffffa(%ebp)
   14893:	83 45 f4 01          	addl   $0x1,0xfffffff4(%ebp)
   14897:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   1489a:	3b 45 f0             	cmp    0xfffffff0(%ebp),%eax
   1489d:	7f 10                	jg     0x148af
   1489f:	66 83 6d c4 01       	subw   $0x1,0xffffffc4(%ebp)
   148a4:	66 83 7d c4 ff       	cmpw   $0xffffffff,0xffffffc4(%ebp)
   148a9:	0f 85 27 ff ff ff    	jne    0x147d6
   148af:	0f b7 45 fa          	movzwl 0xfffffffa(%ebp),%eax
   148b3:	83 c4 54             	add    $0x54,%esp
   148b6:	5b                   	pop    %ebx
   148b7:	5d                   	pop    %ebp
   148b8:	c3                   	ret    
   148b9:	55                   	push   %ebp
   148ba:	89 e5                	mov    %esp,%ebp
   148bc:	5d                   	pop    %ebp
   148bd:	c3                   	ret    
   148be:	00 00                	add    %al,(%eax)
   148c0:	55                   	push   %ebp
   148c1:	89 e5                	mov    %esp,%ebp
   148c3:	83 ec 28             	sub    $0x28,%esp
   148c6:	a1 a4 b5 02 00       	mov    0x2b5a4,%eax
   148cb:	83 c0 01             	add    $0x1,%eax
   148ce:	a3 a4 b5 02 00       	mov    %eax,0x2b5a4
   148d3:	c7 45 fc e0 79 04 00 	movl   $0x479e0,0xfffffffc(%ebp)
   148da:	e8 fb 5d 00 00       	call   0x1a6da
   148df:	eb 3e                	jmp    0x1491f
   148e1:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   148e4:	8b 40 54             	mov    0x54(%eax),%eax
   148e7:	83 f8 04             	cmp    $0x4,%eax
   148ea:	75 2c                	jne    0x14918
   148ec:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   148ef:	8b 80 f8 00 00 00    	mov    0xf8(%eax),%eax
   148f5:	8d 50 ff             	lea    0xffffffff(%eax),%edx
   148f8:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   148fb:	89 90 f8 00 00 00    	mov    %edx,0xf8(%eax)
   14901:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14904:	8b 80 f8 00 00 00    	mov    0xf8(%eax),%eax
   1490a:	85 c0                	test   %eax,%eax
   1490c:	7f 0a                	jg     0x14918
   1490e:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14911:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
   14918:	81 45 fc 20 01 00 00 	addl   $0x120,0xfffffffc(%ebp)
   1491f:	b8 40 a6 05 00       	mov    $0x5a640,%eax
   14924:	39 45 fc             	cmp    %eax,0xfffffffc(%ebp)
   14927:	72 b8                	jb     0x148e1
   14929:	e8 a2 5d 00 00       	call   0x1a6d0
   1492e:	e8 a7 5d 00 00       	call   0x1a6da
   14933:	a1 30 f4 01 00       	mov    0x1f430,%eax
   14938:	8b 90 f4 00 00 00    	mov    0xf4(%eax),%edx
   1493e:	83 ea 01             	sub    $0x1,%edx
   14941:	89 90 f4 00 00 00    	mov    %edx,0xf4(%eax)
   14947:	8b 80 f4 00 00 00    	mov    0xf4(%eax),%eax
   1494d:	85 c0                	test   %eax,%eax
   1494f:	7f 05                	jg     0x14956
   14951:	e8 3e 3e 00 00       	call   0x18794
   14956:	a1 30 f4 01 00       	mov    0x1f430,%eax
   1495b:	8b 80 f4 00 00 00    	mov    0xf4(%eax),%eax
   14961:	85 c0                	test   %eax,%eax
   14963:	7f 24                	jg     0x14989
   14965:	c7 44 24 0c 22 00 00 	movl   $0x22,0xc(%esp)
   1496c:	00 
   1496d:	c7 44 24 08 a8 b5 01 	movl   $0x1b5a8,0x8(%esp)
   14974:	00 
   14975:	c7 44 24 04 a8 b5 01 	movl   $0x1b5a8,0x4(%esp)
   1497c:	00 
   1497d:	c7 04 24 b0 b5 01 00 	movl   $0x1b5b0,(%esp)
   14984:	e8 9f 52 00 00       	call   0x19c28
   14989:	a1 a8 b5 02 00       	mov    0x2b5a8,%eax
   1498e:	83 f8 01             	cmp    $0x1,%eax
   14991:	75 0c                	jne    0x1499f
   14993:	c7 04 24 e0 79 04 00 	movl   $0x479e0,(%esp)
   1499a:	e8 5d 0d 00 00       	call   0x156fc
   1499f:	e8 2c 5d 00 00       	call   0x1a6d0
   149a4:	c9                   	leave  
   149a5:	c3                   	ret    
   149a6:	55                   	push   %ebp
   149a7:	89 e5                	mov    %esp,%ebp
   149a9:	83 ec 08             	sub    $0x8,%esp
   149ac:	e8 8b 0e 00 00       	call   0x1583c
   149b1:	c9                   	leave  
   149b2:	c3                   	ret    
   149b3:	55                   	push   %ebp
   149b4:	89 e5                	mov    %esp,%ebp
   149b6:	83 ec 08             	sub    $0x8,%esp
   149b9:	c7 04 24 c7 b5 01 00 	movl   $0x1b5c7,(%esp)
   149c0:	e8 87 63 00 00       	call   0x1ad4c
   149c5:	c9                   	leave  
   149c6:	c3                   	ret    
   149c7:	55                   	push   %ebp
   149c8:	89 e5                	mov    %esp,%ebp
   149ca:	83 ec 08             	sub    $0x8,%esp
   149cd:	c7 04 24 cf b5 01 00 	movl   $0x1b5cf,(%esp)
   149d4:	e8 73 63 00 00       	call   0x1ad4c
   149d9:	c9                   	leave  
   149da:	c3                   	ret    
   149db:	55                   	push   %ebp
   149dc:	89 e5                	mov    %esp,%ebp
   149de:	83 ec 08             	sub    $0x8,%esp
   149e1:	c7 04 24 d7 b5 01 00 	movl   $0x1b5d7,(%esp)
   149e8:	e8 5f 63 00 00       	call   0x1ad4c
   149ed:	c9                   	leave  
   149ee:	c3                   	ret    
   149ef:	55                   	push   %ebp
   149f0:	89 e5                	mov    %esp,%ebp
   149f2:	83 ec 08             	sub    $0x8,%esp
   149f5:	c7 04 24 df b5 01 00 	movl   $0x1b5df,(%esp)
   149fc:	e8 4b 63 00 00       	call   0x1ad4c
   14a01:	c9                   	leave  
   14a02:	c3                   	ret    
   14a03:	55                   	push   %ebp
   14a04:	89 e5                	mov    %esp,%ebp
   14a06:	83 ec 08             	sub    $0x8,%esp
   14a09:	c7 04 24 e7 b5 01 00 	movl   $0x1b5e7,(%esp)
   14a10:	e8 37 63 00 00       	call   0x1ad4c
   14a15:	c9                   	leave  
   14a16:	c3                   	ret    
   14a17:	55                   	push   %ebp
   14a18:	89 e5                	mov    %esp,%ebp
   14a1a:	83 ec 08             	sub    $0x8,%esp
   14a1d:	c7 04 24 ef b5 01 00 	movl   $0x1b5ef,(%esp)
   14a24:	e8 23 63 00 00       	call   0x1ad4c
   14a29:	c9                   	leave  
   14a2a:	c3                   	ret    
   14a2b:	55                   	push   %ebp
   14a2c:	89 e5                	mov    %esp,%ebp
   14a2e:	83 ec 08             	sub    $0x8,%esp
   14a31:	c7 04 24 f7 b5 01 00 	movl   $0x1b5f7,(%esp)
   14a38:	e8 0f 63 00 00       	call   0x1ad4c
   14a3d:	c9                   	leave  
   14a3e:	c3                   	ret    
   14a3f:	55                   	push   %ebp
   14a40:	89 e5                	mov    %esp,%ebp
   14a42:	83 ec 08             	sub    $0x8,%esp
   14a45:	c7 04 24 ff b5 01 00 	movl   $0x1b5ff,(%esp)
   14a4c:	e8 fb 62 00 00       	call   0x1ad4c
   14a51:	c9                   	leave  
   14a52:	c3                   	ret    
   14a53:	55                   	push   %ebp
   14a54:	89 e5                	mov    %esp,%ebp
   14a56:	83 ec 08             	sub    $0x8,%esp
   14a59:	c7 04 24 07 b6 01 00 	movl   $0x1b607,(%esp)
   14a60:	e8 e7 62 00 00       	call   0x1ad4c
   14a65:	c9                   	leave  
   14a66:	c3                   	ret    
   14a67:	55                   	push   %ebp
   14a68:	89 e5                	mov    %esp,%ebp
   14a6a:	83 ec 08             	sub    $0x8,%esp
   14a6d:	c7 04 24 0f b6 01 00 	movl   $0x1b60f,(%esp)
   14a74:	e8 d3 62 00 00       	call   0x1ad4c
   14a79:	c9                   	leave  
   14a7a:	c3                   	ret    
   14a7b:	55                   	push   %ebp
   14a7c:	89 e5                	mov    %esp,%ebp
   14a7e:	83 ec 08             	sub    $0x8,%esp
   14a81:	c7 04 24 17 b6 01 00 	movl   $0x1b617,(%esp)
   14a88:	e8 bf 62 00 00       	call   0x1ad4c
   14a8d:	c9                   	leave  
   14a8e:	c3                   	ret    
   14a8f:	55                   	push   %ebp
   14a90:	89 e5                	mov    %esp,%ebp
   14a92:	83 ec 08             	sub    $0x8,%esp
   14a95:	c7 04 24 1f b6 01 00 	movl   $0x1b61f,(%esp)
   14a9c:	e8 ab 62 00 00       	call   0x1ad4c
   14aa1:	c9                   	leave  
   14aa2:	c3                   	ret    
   14aa3:	55                   	push   %ebp
   14aa4:	89 e5                	mov    %esp,%ebp
   14aa6:	83 ec 08             	sub    $0x8,%esp
   14aa9:	e8 be ed ff ff       	call   0x1386c
   14aae:	c9                   	leave  
   14aaf:	c3                   	ret    
   14ab0:	55                   	push   %ebp
   14ab1:	89 e5                	mov    %esp,%ebp
   14ab3:	83 ec 08             	sub    $0x8,%esp
   14ab6:	c7 04 24 27 b6 01 00 	movl   $0x1b627,(%esp)
   14abd:	e8 8a 62 00 00       	call   0x1ad4c
   14ac2:	c9                   	leave  
   14ac3:	c3                   	ret    
   14ac4:	55                   	push   %ebp
   14ac5:	89 e5                	mov    %esp,%ebp
   14ac7:	83 ec 08             	sub    $0x8,%esp
   14aca:	8b 45 08             	mov    0x8(%ebp),%eax
   14acd:	8b 04 85 40 c6 01 00 	mov    0x1c640(,%eax,4),%eax
   14ad4:	ff d0                	call   *%eax
   14ad6:	c9                   	leave  
   14ad7:	c3                   	ret    
   14ad8:	55                   	push   %ebp
   14ad9:	89 e5                	mov    %esp,%ebp
   14adb:	83 ec 28             	sub    $0x28,%esp
   14ade:	8b 55 08             	mov    0x8(%ebp),%edx
   14ae1:	89 d0                	mov    %edx,%eax
   14ae3:	c1 e0 03             	shl    $0x3,%eax
   14ae6:	01 d0                	add    %edx,%eax
   14ae8:	c1 e0 05             	shl    $0x5,%eax
   14aeb:	05 e0 79 04 00       	add    $0x479e0,%eax
   14af0:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   14af3:	8b 55 0c             	mov    0xc(%ebp),%edx
   14af6:	89 d0                	mov    %edx,%eax
   14af8:	c1 e0 03             	shl    $0x3,%eax
   14afb:	01 d0                	add    %edx,%eax
   14afd:	c1 e0 05             	shl    $0x5,%eax
   14b00:	05 e0 79 04 00       	add    $0x479e0,%eax
   14b05:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   14b08:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   14b0b:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   14b0e:	e8 c7 5b 00 00       	call   0x1a6da
   14b13:	e8 ca 5b 00 00       	call   0x1a6e2
   14b18:	25 00 02 00 00       	and    $0x200,%eax
   14b1d:	85 c0                	test   %eax,%eax
   14b1f:	75 0d                	jne    0x14b2e
   14b21:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   14b26:	85 c0                	test   %eax,%eax
   14b28:	0f 85 f0 00 00 00    	jne    0x14c1e
   14b2e:	c7 44 24 0c 17 00 00 	movl   $0x17,0xc(%esp)
   14b35:	00 
   14b36:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   14b3d:	00 
   14b3e:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   14b45:	00 
   14b46:	c7 04 24 36 b6 01 00 	movl   $0x1b636,(%esp)
   14b4d:	e8 d6 50 00 00       	call   0x19c28
   14b52:	e9 c7 00 00 00       	jmp    0x14c1e
   14b57:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14b5a:	8b 40 64             	mov    0x64(%eax),%eax
   14b5d:	83 f8 ff             	cmp    $0xffffffff,%eax
   14b60:	0f 84 c7 00 00 00    	je     0x14c2d
   14b66:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14b69:	8b 40 64             	mov    0x64(%eax),%eax
   14b6c:	83 f8 fe             	cmp    $0xfffffffe,%eax
   14b6f:	0f 84 b8 00 00 00    	je     0x14c2d
   14b75:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14b78:	8b 40 64             	mov    0x64(%eax),%eax
   14b7b:	89 c2                	mov    %eax,%edx
   14b7d:	89 d0                	mov    %edx,%eax
   14b7f:	c1 e0 03             	shl    $0x3,%eax
   14b82:	01 d0                	add    %edx,%eax
   14b84:	c1 e0 05             	shl    $0x5,%eax
   14b87:	05 e0 79 04 00       	add    $0x479e0,%eax
   14b8c:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   14b8f:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14b92:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
   14b95:	0f 85 83 00 00 00    	jne    0x14c1e
   14b9b:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   14b9e:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   14ba1:	c7 04 24 3d b6 01 00 	movl   $0x1b63d,(%esp)
   14ba8:	e8 9f 61 00 00       	call   0x1ad4c
   14bad:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14bb0:	8b 40 4c             	mov    0x4c(%eax),%eax
   14bb3:	89 44 24 04          	mov    %eax,0x4(%esp)
   14bb7:	c7 04 24 48 b6 01 00 	movl   $0x1b648,(%esp)
   14bbe:	e8 89 61 00 00       	call   0x1ad4c
   14bc3:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14bc6:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
   14bc9:	75 37                	jne    0x14c02
   14bcb:	c7 04 24 4d b6 01 00 	movl   $0x1b64d,(%esp)
   14bd2:	e8 75 61 00 00       	call   0x1ad4c
   14bd7:	e8 f4 5a 00 00       	call   0x1a6d0
   14bdc:	8b 45 0c             	mov    0xc(%ebp),%eax
   14bdf:	89 44 24 08          	mov    %eax,0x8(%esp)
   14be3:	8b 45 08             	mov    0x8(%ebp),%eax
   14be6:	89 44 24 04          	mov    %eax,0x4(%esp)
   14bea:	c7 04 24 4f b6 01 00 	movl   $0x1b64f,(%esp)
   14bf1:	e8 56 61 00 00       	call   0x1ad4c
   14bf6:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
   14bfd:	e9 06 01 00 00       	jmp    0x14d08
   14c02:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14c05:	8b 40 64             	mov    0x64(%eax),%eax
   14c08:	89 c2                	mov    %eax,%edx
   14c0a:	89 d0                	mov    %edx,%eax
   14c0c:	c1 e0 03             	shl    $0x3,%eax
   14c0f:	01 d0                	add    %edx,%eax
   14c11:	c1 e0 05             	shl    $0x5,%eax
   14c14:	05 e0 79 04 00       	add    $0x479e0,%eax
   14c19:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   14c1c:	eb 8f                	jmp    0x14bad
   14c1e:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14c21:	8b 40 54             	mov    0x54(%eax),%eax
   14c24:	83 f8 02             	cmp    $0x2,%eax
   14c27:	0f 84 2a ff ff ff    	je     0x14b57
   14c2d:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   14c30:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   14c33:	e9 a6 00 00 00       	jmp    0x14cde
   14c38:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14c3b:	8b 40 60             	mov    0x60(%eax),%eax
   14c3e:	89 c2                	mov    %eax,%edx
   14c40:	89 d0                	mov    %edx,%eax
   14c42:	c1 e0 03             	shl    $0x3,%eax
   14c45:	01 d0                	add    %edx,%eax
   14c47:	c1 e0 05             	shl    $0x5,%eax
   14c4a:	05 e0 79 04 00       	add    $0x479e0,%eax
   14c4f:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   14c52:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14c55:	3b 45 f4             	cmp    0xfffffff4(%ebp),%eax
   14c58:	0f 85 80 00 00 00    	jne    0x14cde
   14c5e:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   14c61:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   14c64:	c7 04 24 3d b6 01 00 	movl   $0x1b63d,(%esp)
   14c6b:	e8 dc 60 00 00       	call   0x1ad4c
   14c70:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14c73:	8b 40 4c             	mov    0x4c(%eax),%eax
   14c76:	89 44 24 04          	mov    %eax,0x4(%esp)
   14c7a:	c7 04 24 5f b6 01 00 	movl   $0x1b65f,(%esp)
   14c81:	e8 c6 60 00 00       	call   0x1ad4c
   14c86:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14c89:	3b 45 f4             	cmp    0xfffffff4(%ebp),%eax
   14c8c:	75 34                	jne    0x14cc2
   14c8e:	c7 04 24 4d b6 01 00 	movl   $0x1b64d,(%esp)
   14c95:	e8 b2 60 00 00       	call   0x1ad4c
   14c9a:	e8 31 5a 00 00       	call   0x1a6d0
   14c9f:	8b 45 0c             	mov    0xc(%ebp),%eax
   14ca2:	89 44 24 08          	mov    %eax,0x8(%esp)
   14ca6:	8b 45 08             	mov    0x8(%ebp),%eax
   14ca9:	89 44 24 04          	mov    %eax,0x4(%esp)
   14cad:	c7 04 24 4f b6 01 00 	movl   $0x1b64f,(%esp)
   14cb4:	e8 93 60 00 00       	call   0x1ad4c
   14cb9:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
   14cc0:	eb 46                	jmp    0x14d08
   14cc2:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14cc5:	8b 40 60             	mov    0x60(%eax),%eax
   14cc8:	89 c2                	mov    %eax,%edx
   14cca:	89 d0                	mov    %edx,%eax
   14ccc:	c1 e0 03             	shl    $0x3,%eax
   14ccf:	01 d0                	add    %edx,%eax
   14cd1:	c1 e0 05             	shl    $0x5,%eax
   14cd4:	05 e0 79 04 00       	add    $0x479e0,%eax
   14cd9:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   14cdc:	eb 92                	jmp    0x14c70
   14cde:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14ce1:	8b 40 54             	mov    0x54(%eax),%eax
   14ce4:	83 f8 01             	cmp    $0x1,%eax
   14ce7:	0f 84 4b ff ff ff    	je     0x14c38
   14ced:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   14cf0:	8b 40 54             	mov    0x54(%eax),%eax
   14cf3:	83 f8 03             	cmp    $0x3,%eax
   14cf6:	0f 84 3c ff ff ff    	je     0x14c38
   14cfc:	e8 cf 59 00 00       	call   0x1a6d0
   14d01:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,0xffffffec(%ebp)
   14d08:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   14d0b:	c9                   	leave  
   14d0c:	c3                   	ret    
   14d0d:	55                   	push   %ebp
   14d0e:	89 e5                	mov    %esp,%ebp
   14d10:	83 ec 48             	sub    $0x48,%esp
   14d13:	e8 ca 59 00 00       	call   0x1a6e2
   14d18:	25 00 02 00 00       	and    $0x200,%eax
   14d1d:	85 c0                	test   %eax,%eax
   14d1f:	74 09                	je     0x14d2a
   14d21:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   14d26:	85 c0                	test   %eax,%eax
   14d28:	74 24                	je     0x14d4e
   14d2a:	c7 44 24 0c 56 00 00 	movl   $0x56,0xc(%esp)
   14d31:	00 
   14d32:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   14d39:	00 
   14d3a:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   14d41:	00 
   14d42:	c7 04 24 64 b6 01 00 	movl   $0x1b664,(%esp)
   14d49:	e8 da 4e 00 00       	call   0x19c28
   14d4e:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   14d51:	89 44 24 08          	mov    %eax,0x8(%esp)
   14d55:	c7 44 24 04 fe ff ff 	movl   $0xfffffffe,0x4(%esp)
   14d5c:	ff 
   14d5d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
   14d64:	e8 87 4e 00 00       	call   0x19bf0
   14d69:	c9                   	leave  
   14d6a:	c3                   	ret    
   14d6b:	55                   	push   %ebp
   14d6c:	89 e5                	mov    %esp,%ebp
   14d6e:	57                   	push   %edi
   14d6f:	56                   	push   %esi
   14d70:	83 ec 30             	sub    $0x30,%esp
   14d73:	8b 45 14             	mov    0x14(%ebp),%eax
   14d76:	88 45 e4             	mov    %al,0xffffffe4(%ebp)
   14d79:	83 7d 08 fe          	cmpl   $0xfffffffe,0x8(%ebp)
   14d7d:	75 0c                	jne    0x14d8b
   14d7f:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
   14d86:	e9 06 03 00 00       	jmp    0x15091
   14d8b:	8b 55 08             	mov    0x8(%ebp),%edx
   14d8e:	89 d0                	mov    %edx,%eax
   14d90:	c1 e0 03             	shl    $0x3,%eax
   14d93:	01 d0                	add    %edx,%eax
   14d95:	c1 e0 05             	shl    $0x5,%eax
   14d98:	05 e0 79 04 00       	add    $0x479e0,%eax
   14d9d:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   14da0:	8b 55 0c             	mov    0xc(%ebp),%edx
   14da3:	89 d0                	mov    %edx,%eax
   14da5:	c1 e0 03             	shl    $0x3,%eax
   14da8:	01 d0                	add    %edx,%eax
   14daa:	c1 e0 05             	shl    $0x5,%eax
   14dad:	05 e0 79 04 00       	add    $0x479e0,%eax
   14db2:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   14db5:	e8 20 59 00 00       	call   0x1a6da
   14dba:	e8 23 59 00 00       	call   0x1a6e2
   14dbf:	25 00 02 00 00       	and    $0x200,%eax
   14dc4:	85 c0                	test   %eax,%eax
   14dc6:	75 09                	jne    0x14dd1
   14dc8:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   14dcd:	85 c0                	test   %eax,%eax
   14dcf:	75 24                	jne    0x14df5
   14dd1:	c7 44 24 0c 67 00 00 	movl   $0x67,0xc(%esp)
   14dd8:	00 
   14dd9:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   14de0:	00 
   14de1:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   14de8:	00 
   14de9:	c7 04 24 36 b6 01 00 	movl   $0x1b636,(%esp)
   14df0:	e8 33 4e 00 00       	call   0x19c28
   14df5:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   14df8:	8b 40 54             	mov    0x54(%eax),%eax
   14dfb:	83 f8 02             	cmp    $0x2,%eax
   14dfe:	0f 85 02 01 00 00    	jne    0x14f06
   14e04:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   14e07:	8b 40 64             	mov    0x64(%eax),%eax
   14e0a:	3b 45 0c             	cmp    0xc(%ebp),%eax
   14e0d:	74 0f                	je     0x14e1e
   14e0f:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   14e12:	8b 40 64             	mov    0x64(%eax),%eax
   14e15:	83 f8 ff             	cmp    $0xffffffff,%eax
   14e18:	0f 85 e8 00 00 00    	jne    0x14f06
   14e1e:	e8 bf 58 00 00       	call   0x1a6e2
   14e23:	25 00 02 00 00       	and    $0x200,%eax
   14e28:	85 c0                	test   %eax,%eax
   14e2a:	75 09                	jne    0x14e35
   14e2c:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   14e31:	85 c0                	test   %eax,%eax
   14e33:	75 24                	jne    0x14e59
   14e35:	c7 44 24 0c 6b 00 00 	movl   $0x6b,0xc(%esp)
   14e3c:	00 
   14e3d:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   14e44:	00 
   14e45:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   14e4c:	00 
   14e4d:	c7 04 24 36 b6 01 00 	movl   $0x1b636,(%esp)
   14e54:	e8 cf 4d 00 00       	call   0x19c28
   14e59:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   14e5c:	8b 50 5c             	mov    0x5c(%eax),%edx
   14e5f:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   14e62:	8b 40 48             	mov    0x48(%eax),%eax
   14e65:	89 54 24 04          	mov    %edx,0x4(%esp)
   14e69:	89 04 24             	mov    %eax,(%esp)
   14e6c:	e8 65 5e 00 00       	call   0x1acd6
   14e71:	89 c7                	mov    %eax,%edi
   14e73:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   14e76:	8b 50 48             	mov    0x48(%eax),%edx
   14e79:	8b 45 10             	mov    0x10(%ebp),%eax
   14e7c:	89 44 24 04          	mov    %eax,0x4(%esp)
   14e80:	89 14 24             	mov    %edx,(%esp)
   14e83:	e8 4e 5e 00 00       	call   0x1acd6
   14e88:	89 c6                	mov    %eax,%esi
   14e8a:	b9 28 00 00 00       	mov    $0x28,%ecx
   14e8f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   14e91:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   14e94:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
   14e9b:	80 7d e4 02          	cmpb   $0x2,0xffffffe4(%ebp)
   14e9f:	0f 85 e0 01 00 00    	jne    0x15085
   14ea5:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   14ea8:	c7 40 54 02 00 00 00 	movl   $0x2,0x54(%eax)
   14eaf:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
   14eb2:	8b 45 08             	mov    0x8(%ebp),%eax
   14eb5:	89 42 64             	mov    %eax,0x64(%edx)
   14eb8:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
   14ebb:	8b 45 10             	mov    0x10(%ebp),%eax
   14ebe:	89 42 5c             	mov    %eax,0x5c(%edx)
   14ec1:	8b 45 0c             	mov    0xc(%ebp),%eax
   14ec4:	89 44 24 04          	mov    %eax,0x4(%esp)
   14ec8:	8b 45 08             	mov    0x8(%ebp),%eax
   14ecb:	89 04 24             	mov    %eax,(%esp)
   14ece:	e8 05 fc ff ff       	call   0x14ad8
   14ed3:	83 f8 ff             	cmp    $0xffffffff,%eax
   14ed6:	74 24                	je     0x14efc
   14ed8:	c7 44 24 0c 74 00 00 	movl   $0x74,0xc(%esp)
   14edf:	00 
   14ee0:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   14ee7:	00 
   14ee8:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   14eef:	00 
   14ef0:	c7 04 24 6a b6 01 00 	movl   $0x1b66a,(%esp)
   14ef7:	e8 2c 4d 00 00       	call   0x19c28
   14efc:	e8 93 38 00 00       	call   0x18794
   14f01:	e9 7f 01 00 00       	jmp    0x15085
   14f06:	e8 d7 57 00 00       	call   0x1a6e2
   14f0b:	25 00 02 00 00       	and    $0x200,%eax
   14f10:	85 c0                	test   %eax,%eax
   14f12:	75 09                	jne    0x14f1d
   14f14:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   14f19:	85 c0                	test   %eax,%eax
   14f1b:	75 24                	jne    0x14f41
   14f1d:	c7 44 24 0c 7b 00 00 	movl   $0x7b,0xc(%esp)
   14f24:	00 
   14f25:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   14f2c:	00 
   14f2d:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   14f34:	00 
   14f35:	c7 04 24 36 b6 01 00 	movl   $0x1b636,(%esp)
   14f3c:	e8 e7 4c 00 00       	call   0x19c28
   14f41:	8b 45 08             	mov    0x8(%ebp),%eax
   14f44:	89 44 24 04          	mov    %eax,0x4(%esp)
   14f48:	8b 45 0c             	mov    0xc(%ebp),%eax
   14f4b:	89 04 24             	mov    %eax,(%esp)
   14f4e:	e8 85 fb ff ff       	call   0x14ad8
   14f53:	85 c0                	test   %eax,%eax
   14f55:	75 1d                	jne    0x14f74
   14f57:	e8 74 57 00 00       	call   0x1a6d0
   14f5c:	c7 04 24 82 b6 01 00 	movl   $0x1b682,(%esp)
   14f63:	e8 e4 5d 00 00       	call   0x1ad4c
   14f68:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,0xffffffe0(%ebp)
   14f6f:	e9 1d 01 00 00       	jmp    0x15091
   14f74:	80 7d e4 02          	cmpb   $0x2,0xffffffe4(%ebp)
   14f78:	75 0c                	jne    0x14f86
   14f7a:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   14f7d:	c7 40 54 03 00 00 00 	movl   $0x3,0x54(%eax)
   14f84:	eb 36                	jmp    0x14fbc
   14f86:	80 7d e4 00          	cmpb   $0x0,0xffffffe4(%ebp)
   14f8a:	75 0c                	jne    0x14f98
   14f8c:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   14f8f:	c7 40 54 01 00 00 00 	movl   $0x1,0x54(%eax)
   14f96:	eb 24                	jmp    0x14fbc
   14f98:	c7 44 24 0c 87 00 00 	movl   $0x87,0xc(%esp)
   14f9f:	00 
   14fa0:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   14fa7:	00 
   14fa8:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   14faf:	00 
   14fb0:	c7 04 24 8d b6 01 00 	movl   $0x1b68d,(%esp)
   14fb7:	e8 6c 4c 00 00       	call   0x19c28
   14fbc:	8b 45 08             	mov    0x8(%ebp),%eax
   14fbf:	89 44 24 04          	mov    %eax,0x4(%esp)
   14fc3:	8b 45 0c             	mov    0xc(%ebp),%eax
   14fc6:	89 04 24             	mov    %eax,(%esp)
   14fc9:	e8 0a fb ff ff       	call   0x14ad8
   14fce:	83 f8 ff             	cmp    $0xffffffff,%eax
   14fd1:	74 24                	je     0x14ff7
   14fd3:	c7 44 24 0c 88 00 00 	movl   $0x88,0xc(%esp)
   14fda:	00 
   14fdb:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   14fe2:	00 
   14fe3:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   14fea:	00 
   14feb:	c7 04 24 8f b6 01 00 	movl   $0x1b68f,(%esp)
   14ff2:	e8 31 4c 00 00       	call   0x19c28
   14ff7:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
   14ffa:	8b 45 08             	mov    0x8(%ebp),%eax
   14ffd:	89 42 60             	mov    %eax,0x60(%edx)
   15000:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
   15003:	8b 45 10             	mov    0x10(%ebp),%eax
   15006:	89 42 5c             	mov    %eax,0x5c(%edx)
   15009:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   1500c:	8b 40 68             	mov    0x68(%eax),%eax
   1500f:	85 c0                	test   %eax,%eax
   15011:	74 64                	je     0x15077
   15013:	e8 ca 56 00 00       	call   0x1a6e2
   15018:	25 00 02 00 00       	and    $0x200,%eax
   1501d:	85 c0                	test   %eax,%eax
   1501f:	75 09                	jne    0x1502a
   15021:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   15026:	85 c0                	test   %eax,%eax
   15028:	75 24                	jne    0x1504e
   1502a:	c7 44 24 0c 8d 00 00 	movl   $0x8d,0xc(%esp)
   15031:	00 
   15032:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   15039:	00 
   1503a:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   15041:	00 
   15042:	c7 04 24 36 b6 01 00 	movl   $0x1b636,(%esp)
   15049:	e8 da 4b 00 00       	call   0x19c28
   1504e:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   15051:	8b 40 68             	mov    0x68(%eax),%eax
   15054:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   15057:	eb 09                	jmp    0x15062
   15059:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   1505c:	8b 40 6c             	mov    0x6c(%eax),%eax
   1505f:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   15062:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   15065:	8b 40 6c             	mov    0x6c(%eax),%eax
   15068:	85 c0                	test   %eax,%eax
   1506a:	75 ed                	jne    0x15059
   1506c:	8b 55 f4             	mov    0xfffffff4(%ebp),%edx
   1506f:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   15072:	89 42 6c             	mov    %eax,0x6c(%edx)
   15075:	eb 09                	jmp    0x15080
   15077:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
   1507a:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1507d:	89 42 68             	mov    %eax,0x68(%edx)
   15080:	e8 0f 37 00 00       	call   0x18794
   15085:	e8 46 56 00 00       	call   0x1a6d0
   1508a:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
   15091:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   15094:	83 c4 30             	add    $0x30,%esp
   15097:	5e                   	pop    %esi
   15098:	5f                   	pop    %edi
   15099:	5d                   	pop    %ebp
   1509a:	c3                   	ret    
   1509b:	55                   	push   %ebp
   1509c:	89 e5                	mov    %esp,%ebp
   1509e:	57                   	push   %edi
   1509f:	56                   	push   %esi
   150a0:	83 ec 30             	sub    $0x30,%esp
   150a3:	8b 55 08             	mov    0x8(%ebp),%edx
   150a6:	89 d0                	mov    %edx,%eax
   150a8:	c1 e0 03             	shl    $0x3,%eax
   150ab:	01 d0                	add    %edx,%eax
   150ad:	c1 e0 05             	shl    $0x5,%eax
   150b0:	05 e0 79 04 00       	add    $0x479e0,%eax
   150b5:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   150b8:	e8 1d 56 00 00       	call   0x1a6da
   150bd:	e8 20 56 00 00       	call   0x1a6e2
   150c2:	25 00 02 00 00       	and    $0x200,%eax
   150c7:	85 c0                	test   %eax,%eax
   150c9:	75 09                	jne    0x150d4
   150cb:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   150d0:	85 c0                	test   %eax,%eax
   150d2:	75 24                	jne    0x150f8
   150d4:	c7 44 24 0c a6 00 00 	movl   $0xa6,0xc(%esp)
   150db:	00 
   150dc:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   150e3:	00 
   150e4:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   150eb:	00 
   150ec:	c7 04 24 36 b6 01 00 	movl   $0x1b636,(%esp)
   150f3:	e8 30 4b 00 00       	call   0x19c28
   150f8:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   150fb:	0f b6 40 58          	movzbl 0x58(%eax),%eax
   150ff:	84 c0                	test   %al,%al
   15101:	74 40                	je     0x15143
   15103:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
   15107:	74 06                	je     0x1510f
   15109:	83 7d 0c fe          	cmpl   $0xfffffffe,0xc(%ebp)
   1510d:	75 34                	jne    0x15143
   1510f:	8b 45 10             	mov    0x10(%ebp),%eax
   15112:	c7 00 fe ff ff ff    	movl   $0xfffffffe,(%eax)
   15118:	8b 55 10             	mov    0x10(%ebp),%edx
   1511b:	8b 45 08             	mov    0x8(%ebp),%eax
   1511e:	89 42 04             	mov    %eax,0x4(%edx)
   15121:	8b 45 10             	mov    0x10(%ebp),%eax
   15124:	c7 40 08 ff ff ff ff 	movl   $0xffffffff,0x8(%eax)
   1512b:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   1512e:	c6 40 58 00          	movb   $0x0,0x58(%eax)
   15132:	e8 99 55 00 00       	call   0x1a6d0
   15137:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
   1513e:	e9 af 05 00 00       	jmp    0x156f2
   15143:	e8 9a 55 00 00       	call   0x1a6e2
   15148:	25 00 02 00 00       	and    $0x200,%eax
   1514d:	85 c0                	test   %eax,%eax
   1514f:	75 09                	jne    0x1515a
   15151:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   15156:	85 c0                	test   %eax,%eax
   15158:	75 24                	jne    0x1517e
   1515a:	c7 44 24 0c b1 00 00 	movl   $0xb1,0xc(%esp)
   15161:	00 
   15162:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   15169:	00 
   1516a:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   15171:	00 
   15172:	c7 04 24 36 b6 01 00 	movl   $0x1b636,(%esp)
   15179:	e8 aa 4a 00 00       	call   0x19c28
   1517e:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
   15182:	0f 85 84 02 00 00    	jne    0x1540c
   15188:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   1518b:	8b 40 68             	mov    0x68(%eax),%eax
   1518e:	85 c0                	test   %eax,%eax
   15190:	0f 84 a3 01 00 00    	je     0x15339
   15196:	e8 47 55 00 00       	call   0x1a6e2
   1519b:	25 00 02 00 00       	and    $0x200,%eax
   151a0:	85 c0                	test   %eax,%eax
   151a2:	75 09                	jne    0x151ad
   151a4:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   151a9:	85 c0                	test   %eax,%eax
   151ab:	75 24                	jne    0x151d1
   151ad:	c7 44 24 0c b8 00 00 	movl   $0xb8,0xc(%esp)
   151b4:	00 
   151b5:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   151bc:	00 
   151bd:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   151c4:	00 
   151c5:	c7 04 24 36 b6 01 00 	movl   $0x1b636,(%esp)
   151cc:	e8 57 4a 00 00       	call   0x19c28
   151d1:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   151d4:	8b 40 68             	mov    0x68(%eax),%eax
   151d7:	89 c2                	mov    %eax,%edx
   151d9:	b8 e0 79 04 00       	mov    $0x479e0,%eax
   151de:	89 d1                	mov    %edx,%ecx
   151e0:	29 c1                	sub    %eax,%ecx
   151e2:	89 c8                	mov    %ecx,%eax
   151e4:	3d 5f 2c 01 00       	cmp    $0x12c5f,%eax
   151e9:	7f 1a                	jg     0x15205
   151eb:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   151ee:	8b 40 68             	mov    0x68(%eax),%eax
   151f1:	89 c2                	mov    %eax,%edx
   151f3:	b8 e0 79 04 00       	mov    $0x479e0,%eax
   151f8:	89 d1                	mov    %edx,%ecx
   151fa:	29 c1                	sub    %eax,%ecx
   151fc:	89 c8                	mov    %ecx,%eax
   151fe:	3d e1 fe ff ff       	cmp    $0xfffffee1,%eax
   15203:	7d 24                	jge    0x15229
   15205:	c7 44 24 0c b9 00 00 	movl   $0xb9,0xc(%esp)
   1520c:	00 
   1520d:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   15214:	00 
   15215:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   1521c:	00 
   1521d:	c7 04 24 a8 b6 01 00 	movl   $0x1b6a8,(%esp)
   15224:	e8 ff 49 00 00       	call   0x19c28
   15229:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   1522c:	8b 40 68             	mov    0x68(%eax),%eax
   1522f:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   15232:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   15235:	8b 50 48             	mov    0x48(%eax),%edx
   15238:	8b 45 10             	mov    0x10(%ebp),%eax
   1523b:	89 44 24 04          	mov    %eax,0x4(%esp)
   1523f:	89 14 24             	mov    %edx,(%esp)
   15242:	e8 8f 5a 00 00       	call   0x1acd6
   15247:	89 c7                	mov    %eax,%edi
   15249:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1524c:	8b 50 5c             	mov    0x5c(%eax),%edx
   1524f:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   15252:	8b 40 48             	mov    0x48(%eax),%eax
   15255:	89 54 24 04          	mov    %edx,0x4(%esp)
   15259:	89 04 24             	mov    %eax,(%esp)
   1525c:	e8 75 5a 00 00       	call   0x1acd6
   15261:	89 c6                	mov    %eax,%esi
   15263:	b9 28 00 00 00       	mov    $0x28,%ecx
   15268:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   1526a:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1526d:	8b 50 6c             	mov    0x6c(%eax),%edx
   15270:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   15273:	89 50 68             	mov    %edx,0x68(%eax)
   15276:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   15279:	c7 40 6c 00 00 00 00 	movl   $0x0,0x6c(%eax)
   15280:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   15283:	8b 40 54             	mov    0x54(%eax),%eax
   15286:	83 f8 03             	cmp    $0x3,%eax
   15289:	75 6b                	jne    0x152f6
   1528b:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1528e:	c7 40 54 02 00 00 00 	movl   $0x2,0x54(%eax)
   15295:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
   15298:	8b 45 08             	mov    0x8(%ebp),%eax
   1529b:	89 42 64             	mov    %eax,0x64(%edx)
   1529e:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
   152a1:	b8 e0 79 04 00       	mov    $0x479e0,%eax
   152a6:	89 d1                	mov    %edx,%ecx
   152a8:	29 c1                	sub    %eax,%ecx
   152aa:	89 c8                	mov    %ecx,%eax
   152ac:	c1 f8 05             	sar    $0x5,%eax
   152af:	69 c0 39 8e e3 38    	imul   $0x38e38e39,%eax,%eax
   152b5:	89 44 24 04          	mov    %eax,0x4(%esp)
   152b9:	8b 45 08             	mov    0x8(%ebp),%eax
   152bc:	89 04 24             	mov    %eax,(%esp)
   152bf:	e8 14 f8 ff ff       	call   0x14ad8
   152c4:	83 f8 ff             	cmp    $0xffffffff,%eax
   152c7:	0f 84 19 04 00 00    	je     0x156e6
   152cd:	c7 44 24 0c c3 00 00 	movl   $0xc3,0xc(%esp)
   152d4:	00 
   152d5:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   152dc:	00 
   152dd:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   152e4:	00 
   152e5:	c7 04 24 f8 b6 01 00 	movl   $0x1b6f8,(%esp)
   152ec:	e8 37 49 00 00       	call   0x19c28
   152f1:	e9 f0 03 00 00       	jmp    0x156e6
   152f6:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   152f9:	8b 40 54             	mov    0x54(%eax),%eax
   152fc:	83 f8 01             	cmp    $0x1,%eax
   152ff:	75 0f                	jne    0x15310
   15301:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   15304:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
   1530b:	e9 d6 03 00 00       	jmp    0x156e6
   15310:	c7 44 24 0c ca 00 00 	movl   $0xca,0xc(%esp)
   15317:	00 
   15318:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   1531f:	00 
   15320:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   15327:	00 
   15328:	c7 04 24 8d b6 01 00 	movl   $0x1b68d,(%esp)
   1532f:	e8 f4 48 00 00       	call   0x19c28
   15334:	e9 ad 03 00 00       	jmp    0x156e6
   15339:	e8 a4 53 00 00       	call   0x1a6e2
   1533e:	25 00 02 00 00       	and    $0x200,%eax
   15343:	85 c0                	test   %eax,%eax
   15345:	75 09                	jne    0x15350
   15347:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   1534c:	85 c0                	test   %eax,%eax
   1534e:	75 24                	jne    0x15374
   15350:	c7 44 24 0c ce 00 00 	movl   $0xce,0xc(%esp)
   15357:	00 
   15358:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   1535f:	00 
   15360:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   15367:	00 
   15368:	c7 04 24 36 b6 01 00 	movl   $0x1b636,(%esp)
   1536f:	e8 b4 48 00 00       	call   0x19c28
   15374:	8b 45 08             	mov    0x8(%ebp),%eax
   15377:	89 44 24 04          	mov    %eax,0x4(%esp)
   1537b:	8b 45 0c             	mov    0xc(%ebp),%eax
   1537e:	89 04 24             	mov    %eax,(%esp)
   15381:	e8 52 f7 ff ff       	call   0x14ad8
   15386:	85 c0                	test   %eax,%eax
   15388:	75 1d                	jne    0x153a7
   1538a:	e8 41 53 00 00       	call   0x1a6d0
   1538f:	c7 04 24 1f b7 01 00 	movl   $0x1b71f,(%esp)
   15396:	e8 b1 59 00 00       	call   0x1ad4c
   1539b:	c7 45 e4 ff ff ff ff 	movl   $0xffffffff,0xffffffe4(%ebp)
   153a2:	e9 4b 03 00 00       	jmp    0x156f2
   153a7:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   153aa:	c7 40 54 02 00 00 00 	movl   $0x2,0x54(%eax)
   153b1:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
   153b4:	8b 45 10             	mov    0x10(%ebp),%eax
   153b7:	89 42 5c             	mov    %eax,0x5c(%edx)
   153ba:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
   153bd:	8b 45 0c             	mov    0xc(%ebp),%eax
   153c0:	89 42 64             	mov    %eax,0x64(%edx)
   153c3:	e8 cc 33 00 00       	call   0x18794
   153c8:	8b 45 08             	mov    0x8(%ebp),%eax
   153cb:	89 44 24 04          	mov    %eax,0x4(%esp)
   153cf:	8b 45 0c             	mov    0xc(%ebp),%eax
   153d2:	89 04 24             	mov    %eax,(%esp)
   153d5:	e8 fe f6 ff ff       	call   0x14ad8
   153da:	83 f8 ff             	cmp    $0xffffffff,%eax
   153dd:	0f 84 03 03 00 00    	je     0x156e6
   153e3:	c7 44 24 0c d9 00 00 	movl   $0xd9,0xc(%esp)
   153ea:	00 
   153eb:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   153f2:	00 
   153f3:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   153fa:	00 
   153fb:	c7 04 24 8f b6 01 00 	movl   $0x1b68f,(%esp)
   15402:	e8 21 48 00 00       	call   0x19c28
   15407:	e9 da 02 00 00       	jmp    0x156e6
   1540c:	e8 d1 52 00 00       	call   0x1a6e2
   15411:	25 00 02 00 00       	and    $0x200,%eax
   15416:	85 c0                	test   %eax,%eax
   15418:	75 09                	jne    0x15423
   1541a:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   1541f:	85 c0                	test   %eax,%eax
   15421:	75 24                	jne    0x15447
   15423:	c7 44 24 0c de 00 00 	movl   $0xde,0xc(%esp)
   1542a:	00 
   1542b:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   15432:	00 
   15433:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   1543a:	00 
   1543b:	c7 04 24 36 b6 01 00 	movl   $0x1b636,(%esp)
   15442:	e8 e1 47 00 00       	call   0x19c28
   15447:	8b 55 0c             	mov    0xc(%ebp),%edx
   1544a:	89 d0                	mov    %edx,%eax
   1544c:	c1 e0 03             	shl    $0x3,%eax
   1544f:	01 d0                	add    %edx,%eax
   15451:	c1 e0 05             	shl    $0x5,%eax
   15454:	05 e0 79 04 00       	add    $0x479e0,%eax
   15459:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   1545c:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1545f:	8b 40 54             	mov    0x54(%eax),%eax
   15462:	83 f8 01             	cmp    $0x1,%eax
   15465:	74 0f                	je     0x15476
   15467:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1546a:	8b 40 54             	mov    0x54(%eax),%eax
   1546d:	83 f8 03             	cmp    $0x3,%eax
   15470:	0f 85 e4 01 00 00    	jne    0x1565a
   15476:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   15479:	8b 40 60             	mov    0x60(%eax),%eax
   1547c:	3b 45 08             	cmp    0x8(%ebp),%eax
   1547f:	0f 85 d5 01 00 00    	jne    0x1565a
   15485:	e8 58 52 00 00       	call   0x1a6e2
   1548a:	25 00 02 00 00       	and    $0x200,%eax
   1548f:	85 c0                	test   %eax,%eax
   15491:	75 09                	jne    0x1549c
   15493:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   15498:	85 c0                	test   %eax,%eax
   1549a:	75 24                	jne    0x154c0
   1549c:	c7 44 24 0c e3 00 00 	movl   $0xe3,0xc(%esp)
   154a3:	00 
   154a4:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   154ab:	00 
   154ac:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   154b3:	00 
   154b4:	c7 04 24 36 b6 01 00 	movl   $0x1b636,(%esp)
   154bb:	e8 68 47 00 00       	call   0x19c28
   154c0:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   154c3:	8b 50 48             	mov    0x48(%eax),%edx
   154c6:	8b 45 10             	mov    0x10(%ebp),%eax
   154c9:	89 44 24 04          	mov    %eax,0x4(%esp)
   154cd:	89 14 24             	mov    %edx,(%esp)
   154d0:	e8 01 58 00 00       	call   0x1acd6
   154d5:	89 c7                	mov    %eax,%edi
   154d7:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   154da:	8b 50 5c             	mov    0x5c(%eax),%edx
   154dd:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   154e0:	8b 40 48             	mov    0x48(%eax),%eax
   154e3:	89 54 24 04          	mov    %edx,0x4(%esp)
   154e7:	89 04 24             	mov    %eax,(%esp)
   154ea:	e8 e7 57 00 00       	call   0x1acd6
   154ef:	89 c6                	mov    %eax,%esi
   154f1:	b9 28 00 00 00       	mov    $0x28,%ecx
   154f6:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   154f8:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   154fb:	8b 40 54             	mov    0x54(%eax),%eax
   154fe:	83 f8 03             	cmp    $0x3,%eax
   15501:	75 50                	jne    0x15553
   15503:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   15506:	c7 40 54 02 00 00 00 	movl   $0x2,0x54(%eax)
   1550d:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
   15510:	8b 45 08             	mov    0x8(%ebp),%eax
   15513:	89 42 64             	mov    %eax,0x64(%edx)
   15516:	8b 45 0c             	mov    0xc(%ebp),%eax
   15519:	89 44 24 04          	mov    %eax,0x4(%esp)
   1551d:	8b 45 08             	mov    0x8(%ebp),%eax
   15520:	89 04 24             	mov    %eax,(%esp)
   15523:	e8 b0 f5 ff ff       	call   0x14ad8
   15528:	83 f8 ff             	cmp    $0xffffffff,%eax
   1552b:	74 61                	je     0x1558e
   1552d:	c7 44 24 0c ea 00 00 	movl   $0xea,0xc(%esp)
   15534:	00 
   15535:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   1553c:	00 
   1553d:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   15544:	00 
   15545:	c7 04 24 6a b6 01 00 	movl   $0x1b66a,(%esp)
   1554c:	e8 d7 46 00 00       	call   0x19c28
   15551:	eb 3b                	jmp    0x1558e
   15553:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   15556:	8b 40 54             	mov    0x54(%eax),%eax
   15559:	83 f8 01             	cmp    $0x1,%eax
   1555c:	75 0c                	jne    0x1556a
   1555e:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   15561:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
   15568:	eb 24                	jmp    0x1558e
   1556a:	c7 44 24 0c ef 00 00 	movl   $0xef,0xc(%esp)
   15571:	00 
   15572:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   15579:	00 
   1557a:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   15581:	00 
   15582:	c7 04 24 8d b6 01 00 	movl   $0x1b68d,(%esp)
   15589:	e8 9a 46 00 00       	call   0x19c28
   1558e:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   15591:	8b 40 68             	mov    0x68(%eax),%eax
   15594:	3b 45 f0             	cmp    0xfffffff0(%ebp),%eax
   15597:	75 0e                	jne    0x155a7
   15599:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1559c:	8b 50 6c             	mov    0x6c(%eax),%edx
   1559f:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   155a2:	89 50 68             	mov    %edx,0x68(%eax)
   155a5:	eb 72                	jmp    0x15619
   155a7:	e8 36 51 00 00       	call   0x1a6e2
   155ac:	25 00 02 00 00       	and    $0x200,%eax
   155b1:	85 c0                	test   %eax,%eax
   155b3:	75 09                	jne    0x155be
   155b5:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   155ba:	85 c0                	test   %eax,%eax
   155bc:	75 24                	jne    0x155e2
   155be:	c7 44 24 0c f9 00 00 	movl   $0xf9,0xc(%esp)
   155c5:	00 
   155c6:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   155cd:	00 
   155ce:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   155d5:	00 
   155d6:	c7 04 24 36 b6 01 00 	movl   $0x1b636,(%esp)
   155dd:	e8 46 46 00 00       	call   0x19c28
   155e2:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   155e5:	8b 40 68             	mov    0x68(%eax),%eax
   155e8:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   155eb:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   155ee:	8b 40 6c             	mov    0x6c(%eax),%eax
   155f1:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   155f4:	eb 0f                	jmp    0x15605
   155f6:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   155f9:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   155fc:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   155ff:	8b 40 6c             	mov    0x6c(%eax),%eax
   15602:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   15605:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   15608:	3b 45 f0             	cmp    0xfffffff0(%ebp),%eax
   1560b:	75 e9                	jne    0x155f6
   1560d:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   15610:	8b 50 6c             	mov    0x6c(%eax),%edx
   15613:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   15616:	89 50 6c             	mov    %edx,0x6c(%eax)
   15619:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1561c:	c7 40 6c 00 00 00 00 	movl   $0x0,0x6c(%eax)
   15623:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   15626:	8b 40 6c             	mov    0x6c(%eax),%eax
   15629:	85 c0                	test   %eax,%eax
   1562b:	0f 84 b5 00 00 00    	je     0x156e6
   15631:	c7 44 24 0c 04 01 00 	movl   $0x104,0xc(%esp)
   15638:	00 
   15639:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   15640:	00 
   15641:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   15648:	00 
   15649:	c7 04 24 2a b7 01 00 	movl   $0x1b72a,(%esp)
   15650:	e8 d3 45 00 00       	call   0x19c28
   15655:	e9 8c 00 00 00       	jmp    0x156e6
   1565a:	e8 83 50 00 00       	call   0x1a6e2
   1565f:	25 00 02 00 00       	and    $0x200,%eax
   15664:	85 c0                	test   %eax,%eax
   15666:	75 09                	jne    0x15671
   15668:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   1566d:	85 c0                	test   %eax,%eax
   1566f:	75 24                	jne    0x15695
   15671:	c7 44 24 0c 09 01 00 	movl   $0x109,0xc(%esp)
   15678:	00 
   15679:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   15680:	00 
   15681:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   15688:	00 
   15689:	c7 04 24 36 b6 01 00 	movl   $0x1b636,(%esp)
   15690:	e8 93 45 00 00       	call   0x19c28
   15695:	8b 45 08             	mov    0x8(%ebp),%eax
   15698:	89 44 24 04          	mov    %eax,0x4(%esp)
   1569c:	8b 45 0c             	mov    0xc(%ebp),%eax
   1569f:	89 04 24             	mov    %eax,(%esp)
   156a2:	e8 31 f4 ff ff       	call   0x14ad8
   156a7:	85 c0                	test   %eax,%eax
   156a9:	75 1a                	jne    0x156c5
   156ab:	e8 20 50 00 00       	call   0x1a6d0
   156b0:	c7 04 24 44 b7 01 00 	movl   $0x1b744,(%esp)
   156b7:	e8 90 56 00 00       	call   0x1ad4c
   156bc:	c7 45 e4 ff ff ff ff 	movl   $0xffffffff,0xffffffe4(%ebp)
   156c3:	eb 2d                	jmp    0x156f2
   156c5:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   156c8:	c7 40 54 02 00 00 00 	movl   $0x2,0x54(%eax)
   156cf:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
   156d2:	8b 45 10             	mov    0x10(%ebp),%eax
   156d5:	89 42 5c             	mov    %eax,0x5c(%edx)
   156d8:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
   156db:	8b 45 0c             	mov    0xc(%ebp),%eax
   156de:	89 42 64             	mov    %eax,0x64(%edx)
   156e1:	e8 ae 30 00 00       	call   0x18794
   156e6:	e8 e5 4f 00 00       	call   0x1a6d0
   156eb:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
   156f2:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   156f5:	83 c4 30             	add    $0x30,%esp
   156f8:	5e                   	pop    %esi
   156f9:	5f                   	pop    %edi
   156fa:	5d                   	pop    %ebp
   156fb:	c3                   	ret    
   156fc:	55                   	push   %ebp
   156fd:	89 e5                	mov    %esp,%ebp
   156ff:	53                   	push   %ebx
   15700:	83 ec 14             	sub    $0x14,%esp
   15703:	e8 d2 4f 00 00       	call   0x1a6da
   15708:	e8 d5 4f 00 00       	call   0x1a6e2
   1570d:	25 00 02 00 00       	and    $0x200,%eax
   15712:	85 c0                	test   %eax,%eax
   15714:	75 09                	jne    0x1571f
   15716:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   1571b:	85 c0                	test   %eax,%eax
   1571d:	75 24                	jne    0x15743
   1571f:	c7 44 24 0c 1e 01 00 	movl   $0x11e,0xc(%esp)
   15726:	00 
   15727:	c7 44 24 08 30 b6 01 	movl   $0x1b630,0x8(%esp)
   1572e:	00 
   1572f:	c7 44 24 04 30 b6 01 	movl   $0x1b630,0x4(%esp)
   15736:	00 
   15737:	c7 04 24 36 b6 01 00 	movl   $0x1b636,(%esp)
   1573e:	e8 e5 44 00 00       	call   0x19c28
   15743:	8b 45 08             	mov    0x8(%ebp),%eax
   15746:	8b 40 54             	mov    0x54(%eax),%eax
   15749:	83 f8 02             	cmp    $0x2,%eax
   1574c:	75 5b                	jne    0x157a9
   1574e:	8b 45 08             	mov    0x8(%ebp),%eax
   15751:	8b 40 64             	mov    0x64(%eax),%eax
   15754:	83 f8 ff             	cmp    $0xffffffff,%eax
   15757:	74 0b                	je     0x15764
   15759:	8b 45 08             	mov    0x8(%ebp),%eax
   1575c:	8b 40 64             	mov    0x64(%eax),%eax
   1575f:	83 f8 fe             	cmp    $0xfffffffe,%eax
   15762:	75 45                	jne    0x157a9
   15764:	8b 45 08             	mov    0x8(%ebp),%eax
   15767:	8b 40 5c             	mov    0x5c(%eax),%eax
   1576a:	c7 00 fe ff ff ff    	movl   $0xfffffffe,(%eax)
   15770:	8b 45 08             	mov    0x8(%ebp),%eax
   15773:	8b 48 5c             	mov    0x5c(%eax),%ecx
   15776:	8b 55 08             	mov    0x8(%ebp),%edx
   15779:	b8 e0 79 04 00       	mov    $0x479e0,%eax
   1577e:	89 d3                	mov    %edx,%ebx
   15780:	29 c3                	sub    %eax,%ebx
   15782:	89 d8                	mov    %ebx,%eax
   15784:	c1 f8 05             	sar    $0x5,%eax
   15787:	69 c0 39 8e e3 38    	imul   $0x38e38e39,%eax,%eax
   1578d:	89 41 04             	mov    %eax,0x4(%ecx)
   15790:	8b 45 08             	mov    0x8(%ebp),%eax
   15793:	8b 40 5c             	mov    0x5c(%eax),%eax
   15796:	c7 40 08 ff ff ff ff 	movl   $0xffffffff,0x8(%eax)
   1579d:	8b 45 08             	mov    0x8(%ebp),%eax
   157a0:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
   157a7:	eb 07                	jmp    0x157b0
   157a9:	8b 45 08             	mov    0x8(%ebp),%eax
   157ac:	c6 40 58 01          	movb   $0x1,0x58(%eax)
   157b0:	e8 1b 4f 00 00       	call   0x1a6d0
   157b5:	83 c4 14             	add    $0x14,%esp
   157b8:	5b                   	pop    %ebx
   157b9:	5d                   	pop    %ebp
   157ba:	c3                   	ret    
   157bb:	00 55 89             	add    %dl,0xffffff89(%ebp)
   157be:	e5 83                	in     $0x83,%eax
   157c0:	ec                   	in     (%dx),%al
   157c1:	08 c6                	or     %al,%dh
   157c3:	05 0a f4 01 00       	add    $0x1f40a,%eax
   157c8:	00 e8                	add    %ch,%al
   157ca:	69 00 00 00 c7 05    	imul   $0x5c70000,(%eax),%eax
   157d0:	40                   	inc    %eax
   157d1:	ff 01                	incl   (%ecx)
   157d3:	00 00                	add    %al,(%eax)
   157d5:	00 00                	add    %al,(%eax)
   157d7:	00 c7                	add    %al,%bh
   157d9:	05 44 ff 01 00       	add    $0x1ff44,%eax
   157de:	4c                   	dec    %esp
   157df:	ff 01                	incl   (%ecx)
   157e1:	00 c7                	add    %al,%bh
   157e3:	05 48 ff 01 00       	add    $0x1ff48,%eax
   157e8:	4c                   	dec    %esp
   157e9:	ff 01                	incl   (%ecx)
   157eb:	00 c6                	add    %al,%dh
   157ed:	05 00 f4 01 00       	add    $0x1f400,%eax
   157f2:	00 c6                	add    %al,%dh
   157f4:	05 01 f4 01 00       	add    $0x1f401,%eax
   157f9:	00 c6                	add    %al,%dh
   157fb:	05 02 f4 01 00       	add    $0x1f402,%eax
   15800:	00 c6                	add    %al,%dh
   15802:	05 03 f4 01 00       	add    $0x1f403,%eax
   15807:	00 c6                	add    %al,%dh
   15809:	05 04 f4 01 00       	add    $0x1f404,%eax
   1580e:	00 c6                	add    %al,%dh
   15810:	05 05 f4 01 00       	add    $0x1f405,%eax
   15815:	00 c6                	add    %al,%dh
   15817:	05 06 f4 01 00       	add    $0x1f406,%eax
   1581c:	00 c6                	add    %al,%dh
   1581e:	05 07 f4 01 00       	add    $0x1f407,%eax
   15823:	00 c6                	add    %al,%dh
   15825:	05 08 f4 01 00       	add    $0x1f408,%eax
   1582a:	00 c7                	add    %al,%bh
   1582c:	05 a8 b5 02 00       	add    $0x2b5a8,%eax
   15831:	00 00                	add    %al,(%eax)
   15833:	00 00                	add    %al,(%eax)
   15835:	c9                   	leave  
   15836:	c3                   	ret    
   15837:	55                   	push   %ebp
   15838:	89 e5                	mov    %esp,%ebp
   1583a:	5d                   	pop    %ebp
   1583b:	c3                   	ret    
   1583c:	55                   	push   %ebp
   1583d:	89 e5                	mov    %esp,%ebp
   1583f:	83 ec 18             	sub    $0x18,%esp
   15842:	c7 04 24 60 00 00 00 	movl   $0x60,(%esp)
   15849:	e8 37 4e 00 00       	call   0x1a685
   1584e:	88 45 ff             	mov    %al,0xffffffff(%ebp)
   15851:	a1 40 ff 01 00       	mov    0x1ff40,%eax
   15856:	83 f8 63             	cmp    $0x63,%eax
   15859:	7f 4c                	jg     0x158a7
   1585b:	e8 7a 4e 00 00       	call   0x1a6da
   15860:	a1 40 ff 01 00       	mov    0x1ff40,%eax
   15865:	83 c0 01             	add    $0x1,%eax
   15868:	a3 40 ff 01 00       	mov    %eax,0x1ff40
   1586d:	8b 15 44 ff 01 00    	mov    0x1ff44,%edx
   15873:	0f b6 45 ff          	movzbl 0xffffffff(%ebp),%eax
   15877:	88 02                	mov    %al,(%edx)
   15879:	a1 44 ff 01 00       	mov    0x1ff44,%eax
   1587e:	83 c0 01             	add    $0x1,%eax
   15881:	a3 44 ff 01 00       	mov    %eax,0x1ff44
   15886:	8b 15 44 ff 01 00    	mov    0x1ff44,%edx
   1588c:	b8 b0 ff 01 00       	mov    $0x1ffb0,%eax
   15891:	39 c2                	cmp    %eax,%edx
   15893:	72 0d                	jb     0x158a2
   15895:	a1 44 ff 01 00       	mov    0x1ff44,%eax
   1589a:	83 e8 64             	sub    $0x64,%eax
   1589d:	a3 44 ff 01 00       	mov    %eax,0x1ff44
   158a2:	e8 29 4e 00 00       	call   0x1a6d0
   158a7:	c7 05 a8 b5 02 00 01 	movl   $0x1,0x2b5a8
   158ae:	00 00 00 
   158b1:	c9                   	leave  
   158b2:	c3                   	ret    
   158b3:	55                   	push   %ebp
   158b4:	89 e5                	mov    %esp,%ebp
   158b6:	83 ec 18             	sub    $0x18,%esp
   158b9:	eb 00                	jmp    0x158bb
   158bb:	a1 40 ff 01 00       	mov    0x1ff40,%eax
   158c0:	85 c0                	test   %eax,%eax
   158c2:	7e f7                	jle    0x158bb
   158c4:	e8 11 4e 00 00       	call   0x1a6da
   158c9:	a1 40 ff 01 00       	mov    0x1ff40,%eax
   158ce:	85 c0                	test   %eax,%eax
   158d0:	7f 07                	jg     0x158d9
   158d2:	e8 f9 4d 00 00       	call   0x1a6d0
   158d7:	eb e2                	jmp    0x158bb
   158d9:	a1 48 ff 01 00       	mov    0x1ff48,%eax
   158de:	0f b6 00             	movzbl (%eax),%eax
   158e1:	89 c2                	mov    %eax,%edx
   158e3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   158e8:	21 d0                	and    %edx,%eax
   158ea:	88 45 ff             	mov    %al,0xffffffff(%ebp)
   158ed:	a1 40 ff 01 00       	mov    0x1ff40,%eax
   158f2:	83 e8 01             	sub    $0x1,%eax
   158f5:	a3 40 ff 01 00       	mov    %eax,0x1ff40
   158fa:	a1 48 ff 01 00       	mov    0x1ff48,%eax
   158ff:	83 c0 01             	add    $0x1,%eax
   15902:	a3 48 ff 01 00       	mov    %eax,0x1ff48
   15907:	8b 15 48 ff 01 00    	mov    0x1ff48,%edx
   1590d:	b8 b0 ff 01 00       	mov    $0x1ffb0,%eax
   15912:	39 c2                	cmp    %eax,%edx
   15914:	72 0d                	jb     0x15923
   15916:	a1 48 ff 01 00       	mov    0x1ff48,%eax
   1591b:	83 e8 64             	sub    $0x64,%eax
   1591e:	a3 48 ff 01 00       	mov    %eax,0x1ff48
   15923:	e8 a8 4d 00 00       	call   0x1a6d0
   15928:	0f b6 45 ff          	movzbl 0xffffffff(%ebp),%eax
   1592c:	c9                   	leave  
   1592d:	c3                   	ret    
   1592e:	55                   	push   %ebp
   1592f:	89 e5                	mov    %esp,%ebp
   15931:	83 ec 18             	sub    $0x18,%esp
   15934:	c6 45 ff 00          	movb   $0x0,0xffffffff(%ebp)
   15938:	eb 00                	jmp    0x1593a
   1593a:	e8 74 ff ff ff       	call   0x158b3
   1593f:	0f b6 c0             	movzbl %al,%eax
   15942:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   15945:	81 7d f8 e1 00 00 00 	cmpl   $0xe1,0xfffffff8(%ebp)
   1594c:	75 22                	jne    0x15970
   1594e:	a1 40 ff 01 00       	mov    0x1ff40,%eax
   15953:	83 f8 02             	cmp    $0x2,%eax
   15956:	7e e2                	jle    0x1593a
   15958:	e8 56 ff ff ff       	call   0x158b3
   1595d:	0f b6 c0             	movzbl %al,%eax
   15960:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   15963:	e8 4b ff ff ff       	call   0x158b3
   15968:	0f b6 c0             	movzbl %al,%eax
   1596b:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   1596e:	eb ca                	jmp    0x1593a
   15970:	81 7d f8 e0 00 00 00 	cmpl   $0xe0,0xfffffff8(%ebp)
   15977:	75 11                	jne    0x1598a
   15979:	c6 45 ff 02          	movb   $0x2,0xffffffff(%ebp)
   1597d:	e8 31 ff ff ff       	call   0x158b3
   15982:	0f b6 c0             	movzbl %al,%eax
   15985:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   15988:	eb 31                	jmp    0x159bb
   1598a:	c6 45 ff 00          	movb   $0x0,0xffffffff(%ebp)
   1598e:	0f b6 05 02 f4 01 00 	movzbl 0x1f402,%eax
   15995:	84 c0                	test   %al,%al
   15997:	74 04                	je     0x1599d
   15999:	c6 45 ff 01          	movb   $0x1,0xffffffff(%ebp)
   1599d:	0f b6 05 00 f4 01 00 	movzbl 0x1f400,%eax
   159a4:	84 c0                	test   %al,%al
   159a6:	74 04                	je     0x159ac
   159a8:	c6 45 ff 01          	movb   $0x1,0xffffffff(%ebp)
   159ac:	0f b6 05 01 f4 01 00 	movzbl 0x1f401,%eax
   159b3:	84 c0                	test   %al,%al
   159b5:	74 04                	je     0x159bb
   159b7:	c6 45 ff 01          	movb   $0x1,0xffffffff(%ebp)
   159bb:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   159be:	25 80 00 00 00       	and    $0x80,%eax
   159c3:	85 c0                	test   %eax,%eax
   159c5:	74 0d                	je     0x159d4
   159c7:	c6 05 09 f4 01 00 00 	movb   $0x0,0x1f409
   159ce:	83 65 f8 7f          	andl   $0x7f,0xfffffff8(%ebp)
   159d2:	eb 07                	jmp    0x159db
   159d4:	c6 05 09 f4 01 00 01 	movb   $0x1,0x1f409
   159db:	0f b6 05 0a f4 01 00 	movzbl 0x1f40a,%eax
   159e2:	0f b6 c0             	movzbl %al,%eax
   159e5:	83 e0 02             	and    $0x2,%eax
   159e8:	85 c0                	test   %eax,%eax
   159ea:	74 16                	je     0x15a02
   159ec:	83 7d f8 46          	cmpl   $0x46,0xfffffff8(%ebp)
   159f0:	76 10                	jbe    0x15a02
   159f2:	83 7d f8 53          	cmpl   $0x53,0xfffffff8(%ebp)
   159f6:	77 0a                	ja     0x15a02
   159f8:	80 7d ff 00          	cmpb   $0x0,0xffffffff(%ebp)
   159fc:	75 04                	jne    0x15a02
   159fe:	c6 45 ff 01          	movb   $0x1,0xffffffff(%ebp)
   15a02:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   15a05:	0f b6 4d ff          	movzbl 0xffffffff(%ebp),%ecx
   15a09:	89 d0                	mov    %edx,%eax
   15a0b:	01 c0                	add    %eax,%eax
   15a0d:	01 d0                	add    %edx,%eax
   15a0f:	01 c8                	add    %ecx,%eax
   15a11:	8b 04 85 80 c6 01 00 	mov    0x1c680(,%eax,4),%eax
   15a18:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   15a1b:	0f b6 05 0a f4 01 00 	movzbl 0x1f40a,%eax
   15a22:	0f b6 c0             	movzbl %al,%eax
   15a25:	83 e0 04             	and    $0x4,%eax
   15a28:	85 c0                	test   %eax,%eax
   15a2a:	74 22                	je     0x15a4e
   15a2c:	83 7d f8 40          	cmpl   $0x40,0xfffffff8(%ebp)
   15a30:	76 0c                	jbe    0x15a3e
   15a32:	83 7d f8 5a          	cmpl   $0x5a,0xfffffff8(%ebp)
   15a36:	77 06                	ja     0x15a3e
   15a38:	83 45 f8 20          	addl   $0x20,0xfffffff8(%ebp)
   15a3c:	eb 10                	jmp    0x15a4e
   15a3e:	83 7d f8 60          	cmpl   $0x60,0xfffffff8(%ebp)
   15a42:	76 0a                	jbe    0x15a4e
   15a44:	83 7d f8 7a          	cmpl   $0x7a,0xfffffff8(%ebp)
   15a48:	77 04                	ja     0x15a4e
   15a4a:	83 6d f8 20          	subl   $0x20,0xfffffff8(%ebp)
   15a4e:	e8 87 4c 00 00       	call   0x1a6da
   15a53:	8b 45 08             	mov    0x8(%ebp),%eax
   15a56:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   15a5c:	83 f8 1d             	cmp    $0x1d,%eax
   15a5f:	7f 4e                	jg     0x15aaf
   15a61:	8b 45 08             	mov    0x8(%ebp),%eax
   15a64:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   15a6a:	8d 50 01             	lea    0x1(%eax),%edx
   15a6d:	8b 45 08             	mov    0x8(%ebp),%eax
   15a70:	89 90 80 00 00 00    	mov    %edx,0x80(%eax)
   15a76:	8b 45 08             	mov    0x8(%ebp),%eax
   15a79:	8b 50 78             	mov    0x78(%eax),%edx
   15a7c:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   15a7f:	89 02                	mov    %eax,(%edx)
   15a81:	8b 45 08             	mov    0x8(%ebp),%eax
   15a84:	8b 40 78             	mov    0x78(%eax),%eax
   15a87:	8d 50 04             	lea    0x4(%eax),%edx
   15a8a:	8b 45 08             	mov    0x8(%ebp),%eax
   15a8d:	89 50 78             	mov    %edx,0x78(%eax)
   15a90:	8b 45 08             	mov    0x8(%ebp),%eax
   15a93:	8b 50 78             	mov    0x78(%eax),%edx
   15a96:	8b 45 08             	mov    0x8(%ebp),%eax
   15a99:	83 c0 78             	add    $0x78,%eax
   15a9c:	39 c2                	cmp    %eax,%edx
   15a9e:	72 0f                	jb     0x15aaf
   15aa0:	8b 45 08             	mov    0x8(%ebp),%eax
   15aa3:	8b 40 78             	mov    0x78(%eax),%eax
   15aa6:	8d 50 88             	lea    0xffffff88(%eax),%edx
   15aa9:	8b 45 08             	mov    0x8(%ebp),%eax
   15aac:	89 50 78             	mov    %edx,0x78(%eax)
   15aaf:	e8 1c 4c 00 00       	call   0x1a6d0
   15ab4:	c9                   	leave  
   15ab5:	c3                   	ret    
   15ab6:	00 00                	add    %al,(%eax)
   15ab8:	55                   	push   %ebp
   15ab9:	89 e5                	mov    %esp,%ebp
   15abb:	83 ec 18             	sub    $0x18,%esp
   15abe:	c7 04 24 5e b7 01 00 	movl   $0x1b75e,(%esp)
   15ac5:	e8 82 52 00 00       	call   0x1ad4c
   15aca:	a1 f4 ca 01 00       	mov    0x1caf4,%eax
   15acf:	89 04 24             	mov    %eax,(%esp)
   15ad2:	e8 75 52 00 00       	call   0x1ad4c
   15ad7:	c7 04 24 65 b7 01 00 	movl   $0x1b765,(%esp)
   15ade:	e8 69 52 00 00       	call   0x1ad4c
   15ae3:	c7 44 24 08 cd 3a 02 	movl   $0x1023acd,0x8(%esp)
   15aea:	01 
   15aeb:	c7 44 24 04 79 b7 01 	movl   $0x1b779,0x4(%esp)
   15af2:	00 
   15af3:	c7 04 24 8d b7 01 00 	movl   $0x1b78d,(%esp)
   15afa:	e8 4d 52 00 00       	call   0x1ad4c
   15aff:	c7 04 24 a0 b7 01 00 	movl   $0x1b7a0,(%esp)
   15b06:	e8 41 52 00 00       	call   0x1ad4c
   15b0b:	c7 04 24 ab b7 01 00 	movl   $0x1b7ab,(%esp)
   15b12:	e8 35 52 00 00       	call   0x1ad4c
   15b17:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
   15b1e:	00 
   15b1f:	c7 04 24 b7 b7 01 00 	movl   $0x1b7b7,(%esp)
   15b26:	e8 21 52 00 00       	call   0x1ad4c
   15b2b:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
   15b32:	00 
   15b33:	c7 04 24 d3 b7 01 00 	movl   $0x1b7d3,(%esp)
   15b3a:	e8 0d 52 00 00       	call   0x1ad4c
   15b3f:	c7 44 24 04 15 cd 5b 	movl   $0x75bcd15,0x4(%esp)
   15b46:	07 
   15b47:	c7 04 24 ef b7 01 00 	movl   $0x1b7ef,(%esp)
   15b4e:	e8 f9 51 00 00       	call   0x1ad4c
   15b53:	a1 c0 45 04 00       	mov    0x445c0,%eax
   15b58:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   15b5e:	8b 50 08             	mov    0x8(%eax),%edx
   15b61:	a1 c0 45 04 00       	mov    0x445c0,%eax
   15b66:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   15b6c:	8b 40 04             	mov    0x4(%eax),%eax
   15b6f:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
   15b72:	c7 45 fc 67 66 66 66 	movl   $0x66666667,0xfffffffc(%ebp)
   15b79:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   15b7c:	f7 e9                	imul   %ecx
   15b7e:	c1 fa 06             	sar    $0x6,%edx
   15b81:	89 c8                	mov    %ecx,%eax
   15b83:	c1 f8 1f             	sar    $0x1f,%eax
   15b86:	89 d1                	mov    %edx,%ecx
   15b88:	29 c1                	sub    %eax,%ecx
   15b8a:	89 c8                	mov    %ecx,%eax
   15b8c:	89 44 24 04          	mov    %eax,0x4(%esp)
   15b90:	c7 04 24 f3 b7 01 00 	movl   $0x1b7f3,(%esp)
   15b97:	e8 b0 51 00 00       	call   0x1ad4c
   15b9c:	b8 00 00 00 00       	mov    $0x0,%eax
   15ba1:	c9                   	leave  
   15ba2:	c3                   	ret    
   15ba3:	00 55 89             	add    %dl,0xffffff89(%ebp)
   15ba6:	e5 83                	in     $0x83,%eax
   15ba8:	ec                   	in     (%dx),%al
   15ba9:	48                   	dec    %eax
   15baa:	e8 8b 02 00 00       	call   0x15e3a
   15baf:	eb 00                	jmp    0x15bb1
   15bb1:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
   15bb4:	89 44 24 08          	mov    %eax,0x8(%esp)
   15bb8:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
   15bbf:	ff 
   15bc0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
   15bc7:	e8 24 40 00 00       	call   0x19bf0
   15bcc:	85 c0                	test   %eax,%eax
   15bce:	74 24                	je     0x15bf4
   15bd0:	c7 44 24 0c 17 00 00 	movl   $0x17,0xc(%esp)
   15bd7:	00 
   15bd8:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   15bdf:	00 
   15be0:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   15be7:	00 
   15be8:	c7 04 24 fd b7 01 00 	movl   $0x1b7fd,(%esp)
   15bef:	e8 34 40 00 00       	call   0x19c28
   15bf4:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   15bf7:	83 f8 fb             	cmp    $0xfffffffb,%eax
   15bfa:	74 24                	je     0x15c20
   15bfc:	c7 44 24 0c 18 00 00 	movl   $0x18,0xc(%esp)
   15c03:	00 
   15c04:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   15c0b:	00 
   15c0c:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   15c13:	00 
   15c14:	c7 04 24 11 b8 01 00 	movl   $0x1b811,(%esp)
   15c1b:	e8 08 40 00 00       	call   0x19c28
   15c20:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
   15c23:	83 c0 0c             	add    $0xc,%eax
   15c26:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   15c29:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   15c2c:	89 d0                	mov    %edx,%eax
   15c2e:	c1 e0 03             	shl    $0x3,%eax
   15c31:	01 d0                	add    %edx,%eax
   15c33:	c1 e0 05             	shl    $0x5,%eax
   15c36:	8b 80 34 7a 04 00    	mov    0x47a34(%eax),%eax
   15c3c:	83 f8 02             	cmp    $0x2,%eax
   15c3f:	75 e8                	jne    0x15c29
   15c41:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   15c44:	89 d0                	mov    %edx,%eax
   15c46:	c1 e0 03             	shl    $0x3,%eax
   15c49:	01 d0                	add    %edx,%eax
   15c4b:	c1 e0 05             	shl    $0x5,%eax
   15c4e:	8b 80 34 7a 04 00    	mov    0x47a34(%eax),%eax
   15c54:	83 f8 02             	cmp    $0x2,%eax
   15c57:	74 24                	je     0x15c7d
   15c59:	c7 44 24 0c 1b 00 00 	movl   $0x1b,0xc(%esp)
   15c60:	00 
   15c61:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   15c68:	00 
   15c69:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   15c70:	00 
   15c71:	c7 04 24 2c b8 01 00 	movl   $0x1b82c,(%esp)
   15c78:	e8 ab 3f 00 00       	call   0x19c28
   15c7d:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   15c80:	89 d0                	mov    %edx,%eax
   15c82:	c1 e0 03             	shl    $0x3,%eax
   15c85:	01 d0                	add    %edx,%eax
   15c87:	c1 e0 05             	shl    $0x5,%eax
   15c8a:	8b 80 44 7a 04 00    	mov    0x47a44(%eax),%eax
   15c90:	83 f8 05             	cmp    $0x5,%eax
   15c93:	74 24                	je     0x15cb9
   15c95:	c7 44 24 0c 1c 00 00 	movl   $0x1c,0xc(%esp)
   15c9c:	00 
   15c9d:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   15ca4:	00 
   15ca5:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   15cac:	00 
   15cad:	c7 04 24 58 b8 01 00 	movl   $0x1b858,(%esp)
   15cb4:	e8 6f 3f 00 00       	call   0x19c28
   15cb9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   15cbc:	8b 00                	mov    (%eax),%eax
   15cbe:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
   15cc1:	83 7d cc 05          	cmpl   $0x5,0xffffffcc(%ebp)
   15cc5:	0f 87 0b 01 00 00    	ja     0x15dd6
   15ccb:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
   15cce:	8b 04 95 a4 b8 01 00 	mov    0x1b8a4(,%edx,4),%eax
   15cd5:	ff e0                	jmp    *%eax
   15cd7:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   15cda:	89 04 24             	mov    %eax,(%esp)
   15cdd:	e8 8b 01 00 00       	call   0x15e6d
   15ce2:	89 c2                	mov    %eax,%edx
   15ce4:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   15ce7:	89 10                	mov    %edx,(%eax)
   15ce9:	e9 e8 00 00 00       	jmp    0x15dd6
   15cee:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   15cf1:	8b 40 08             	mov    0x8(%eax),%eax
   15cf4:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   15cf7:	89 44 24 04          	mov    %eax,0x4(%esp)
   15cfb:	89 14 24             	mov    %edx,(%esp)
   15cfe:	e8 a9 05 00 00       	call   0x162ac
   15d03:	e9 ce 00 00 00       	jmp    0x15dd6
   15d08:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   15d0b:	8b 40 04             	mov    0x4(%eax),%eax
   15d0e:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   15d11:	89 44 24 04          	mov    %eax,0x4(%esp)
   15d15:	89 14 24             	mov    %edx,(%esp)
   15d18:	e8 bf 07 00 00       	call   0x164dc
   15d1d:	89 c2                	mov    %eax,%edx
   15d1f:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   15d22:	89 10                	mov    %edx,(%eax)
   15d24:	e9 ad 00 00 00       	jmp    0x15dd6
   15d29:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
   15d2c:	89 04 24             	mov    %eax,(%esp)
   15d2f:	e8 b4 09 00 00       	call   0x166e8
   15d34:	89 c2                	mov    %eax,%edx
   15d36:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   15d39:	89 10                	mov    %edx,(%eax)
   15d3b:	e9 96 00 00 00       	jmp    0x15dd6
   15d40:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   15d43:	8b 48 14             	mov    0x14(%eax),%ecx
   15d46:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   15d49:	8b 40 10             	mov    0x10(%eax),%eax
   15d4c:	89 c2                	mov    %eax,%edx
   15d4e:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   15d51:	8b 40 0c             	mov    0xc(%eax),%eax
   15d54:	89 4c 24 08          	mov    %ecx,0x8(%esp)
   15d58:	89 54 24 04          	mov    %edx,0x4(%esp)
   15d5c:	89 04 24             	mov    %eax,(%esp)
   15d5f:	e8 9f 0b 00 00       	call   0x16903
   15d64:	89 c2                	mov    %eax,%edx
   15d66:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   15d69:	89 10                	mov    %edx,(%eax)
   15d6b:	c7 05 10 f4 01 00 01 	movl   $0x1,0x1f410
   15d72:	00 00 00 
   15d75:	e8 60 49 00 00       	call   0x1a6da
   15d7a:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   15d7d:	89 d0                	mov    %edx,%eax
   15d7f:	c1 e0 03             	shl    $0x3,%eax
   15d82:	01 d0                	add    %edx,%eax
   15d84:	c1 e0 05             	shl    $0x5,%eax
   15d87:	8b 80 34 7a 04 00    	mov    0x47a34(%eax),%eax
   15d8d:	83 f8 02             	cmp    $0x2,%eax
   15d90:	74 24                	je     0x15db6
   15d92:	c7 44 24 0c 31 00 00 	movl   $0x31,0xc(%esp)
   15d99:	00 
   15d9a:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   15da1:	00 
   15da2:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   15da9:	00 
   15daa:	c7 04 24 2c b8 01 00 	movl   $0x1b82c,(%esp)
   15db1:	e8 72 3e 00 00       	call   0x19c28
   15db6:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   15db9:	89 c2                	mov    %eax,%edx
   15dbb:	89 d0                	mov    %edx,%eax
   15dbd:	c1 e0 03             	shl    $0x3,%eax
   15dc0:	01 d0                	add    %edx,%eax
   15dc2:	c1 e0 05             	shl    $0x5,%eax
   15dc5:	05 e0 79 04 00       	add    $0x479e0,%eax
   15dca:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
   15dd1:	e8 fa 48 00 00       	call   0x1a6d0
   15dd6:	a1 10 f4 01 00       	mov    0x1f410,%eax
   15ddb:	83 f8 01             	cmp    $0x1,%eax
   15dde:	75 0f                	jne    0x15def
   15de0:	c7 05 10 f4 01 00 00 	movl   $0x0,0x1f410
   15de7:	00 00 00 
   15dea:	e9 c2 fd ff ff       	jmp    0x15bb1
   15def:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   15df2:	8d 55 d4             	lea    0xffffffd4(%ebp),%edx
   15df5:	89 54 24 08          	mov    %edx,0x8(%esp)
   15df9:	89 44 24 04          	mov    %eax,0x4(%esp)
   15dfd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   15e04:	e8 e7 3d 00 00       	call   0x19bf0
   15e09:	85 c0                	test   %eax,%eax
   15e0b:	0f 84 a0 fd ff ff    	je     0x15bb1
   15e11:	c7 44 24 0c 3a 00 00 	movl   $0x3a,0xc(%esp)
   15e18:	00 
   15e19:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   15e20:	00 
   15e21:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   15e28:	00 
   15e29:	c7 04 24 87 b8 01 00 	movl   $0x1b887,(%esp)
   15e30:	e8 f3 3d 00 00       	call   0x19c28
   15e35:	e9 77 fd ff ff       	jmp    0x15bb1
   15e3a:	55                   	push   %ebp
   15e3b:	89 e5                	mov    %esp,%ebp
   15e3d:	c7 05 10 f4 01 00 00 	movl   $0x0,0x1f410
   15e44:	00 00 00 
   15e47:	5d                   	pop    %ebp
   15e48:	c3                   	ret    
   15e49:	55                   	push   %ebp
   15e4a:	89 e5                	mov    %esp,%ebp
   15e4c:	5d                   	pop    %ebp
   15e4d:	c3                   	ret    
   15e4e:	55                   	push   %ebp
   15e4f:	89 e5                	mov    %esp,%ebp
   15e51:	83 ec 10             	sub    $0x10,%esp
   15e54:	c7 45 fc 0a 00 00 00 	movl   $0xa,0xfffffffc(%ebp)
   15e5b:	8b 45 08             	mov    0x8(%ebp),%eax
   15e5e:	83 e8 0b             	sub    $0xb,%eax
   15e61:	01 45 fc             	add    %eax,0xfffffffc(%ebp)
   15e64:	c1 65 fc 14          	shll   $0x14,0xfffffffc(%ebp)
   15e68:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   15e6b:	c9                   	leave  
   15e6c:	c3                   	ret    
   15e6d:	55                   	push   %ebp
   15e6e:	89 e5                	mov    %esp,%ebp
   15e70:	57                   	push   %edi
   15e71:	56                   	push   %esi
   15e72:	81 ec 90 00 00 00    	sub    $0x90,%esp
   15e78:	8b 55 08             	mov    0x8(%ebp),%edx
   15e7b:	89 d0                	mov    %edx,%eax
   15e7d:	c1 e0 03             	shl    $0x3,%eax
   15e80:	01 d0                	add    %edx,%eax
   15e82:	c1 e0 05             	shl    $0x5,%eax
   15e85:	05 e0 79 04 00       	add    $0x479e0,%eax
   15e8a:	89 45 b8             	mov    %eax,0xffffffb8(%ebp)
   15e8d:	e8 74 2a 00 00       	call   0x18906
   15e92:	89 45 bc             	mov    %eax,0xffffffbc(%ebp)
   15e95:	83 7d bc 00          	cmpl   $0x0,0xffffffbc(%ebp)
   15e99:	75 18                	jne    0x15eb3
   15e9b:	c7 04 24 bc b8 01 00 	movl   $0x1b8bc,(%esp)
   15ea2:	e8 a5 4e 00 00       	call   0x1ad4c
   15ea7:	c7 45 84 ff ff ff ff 	movl   $0xffffffff,0xffffff84(%ebp)
   15eae:	e9 ec 03 00 00       	jmp    0x1629f
   15eb3:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   15eb6:	8b 40 4c             	mov    0x4c(%eax),%eax
   15eb9:	89 45 c0             	mov    %eax,0xffffffc0(%ebp)
   15ebc:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   15ebf:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
   15ec5:	89 45 c4             	mov    %eax,0xffffffc4(%ebp)
   15ec8:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   15ecb:	8b 80 14 01 00 00    	mov    0x114(%eax),%eax
   15ed1:	89 45 c8             	mov    %eax,0xffffffc8(%ebp)
   15ed4:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   15ed7:	8b 40 50             	mov    0x50(%eax),%eax
   15eda:	83 f8 01             	cmp    $0x1,%eax
   15edd:	74 24                	je     0x15f03
   15edf:	c7 44 24 0c 88 00 00 	movl   $0x88,0xc(%esp)
   15ee6:	00 
   15ee7:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   15eee:	00 
   15eef:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   15ef6:	00 
   15ef7:	c7 04 24 d4 b8 01 00 	movl   $0x1b8d4,(%esp)
   15efe:	e8 25 3d 00 00       	call   0x19c28
   15f03:	e8 d2 47 00 00       	call   0x1a6da
   15f08:	8b 7d bc             	mov    0xffffffbc(%ebp),%edi
   15f0b:	8b 75 b8             	mov    0xffffffb8(%ebp),%esi
   15f0e:	b9 20 01 00 00       	mov    $0x120,%ecx
   15f13:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   15f15:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   15f18:	8b 40 54             	mov    0x54(%eax),%eax
   15f1b:	83 f8 02             	cmp    $0x2,%eax
   15f1e:	74 24                	je     0x15f44
   15f20:	c7 44 24 0c 8d 00 00 	movl   $0x8d,0xc(%esp)
   15f27:	00 
   15f28:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   15f2f:	00 
   15f30:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   15f37:	00 
   15f38:	c7 04 24 e8 b8 01 00 	movl   $0x1b8e8,(%esp)
   15f3f:	e8 e4 3c 00 00       	call   0x19c28
   15f44:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   15f47:	8b 40 64             	mov    0x64(%eax),%eax
   15f4a:	83 f8 05             	cmp    $0x5,%eax
   15f4d:	74 24                	je     0x15f73
   15f4f:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
   15f56:	00 
   15f57:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   15f5e:	00 
   15f5f:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   15f66:	00 
   15f67:	c7 04 24 04 b9 01 00 	movl   $0x1b904,(%esp)
   15f6e:	e8 b5 3c 00 00       	call   0x19c28
   15f73:	8b 55 bc             	mov    0xffffffbc(%ebp),%edx
   15f76:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
   15f79:	89 42 4c             	mov    %eax,0x4c(%edx)
   15f7c:	8b 55 08             	mov    0x8(%ebp),%edx
   15f7f:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   15f82:	89 90 fc 00 00 00    	mov    %edx,0xfc(%eax)
   15f88:	8b 55 bc             	mov    0xffffffbc(%ebp),%edx
   15f8b:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
   15f8e:	89 82 18 01 00 00    	mov    %eax,0x118(%edx)
   15f94:	8b 55 bc             	mov    0xffffffbc(%ebp),%edx
   15f97:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   15f9a:	89 82 14 01 00 00    	mov    %eax,0x114(%edx)
   15fa0:	e8 2b 47 00 00       	call   0x1a6d0
   15fa5:	e8 2d 0f 00 00       	call   0x16ed7
   15faa:	89 c2                	mov    %eax,%edx
   15fac:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   15faf:	89 50 48             	mov    %edx,0x48(%eax)
   15fb2:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   15fb5:	8b 40 48             	mov    0x48(%eax),%eax
   15fb8:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
   15fbb:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
   15fc2:	eb 17                	jmp    0x15fdb
   15fc4:	e8 0e 0f 00 00       	call   0x16ed7
   15fc9:	89 c2                	mov    %eax,%edx
   15fcb:	83 ca 07             	or     $0x7,%edx
   15fce:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   15fd1:	89 10                	mov    %edx,(%eax)
   15fd3:	83 45 cc 04          	addl   $0x4,0xffffffcc(%ebp)
   15fd7:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
   15fdb:	83 7d d0 07          	cmpl   $0x7,0xffffffd0(%ebp)
   15fdf:	7e e3                	jle    0x15fc4
   15fe1:	c7 45 d8 00 10 10 00 	movl   $0x101000,0xffffffd8(%ebp)
   15fe8:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   15feb:	8b 40 48             	mov    0x48(%eax),%eax
   15fee:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
   15ff1:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   15ff4:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
   15ff7:	c7 44 24 0c 07 00 00 	movl   $0x7,0xc(%esp)
   15ffe:	00 
   15fff:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   16002:	89 44 24 08          	mov    %eax,0x8(%esp)
   16006:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
   1600d:	00 
   1600e:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   16011:	89 04 24             	mov    %eax,(%esp)
   16014:	e8 54 10 00 00       	call   0x1706d
   16019:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
   16020:	eb 37                	jmp    0x16059
   16022:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   16025:	8b 00                	mov    (%eax),%eax
   16027:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   1602c:	c7 44 24 0c 07 00 00 	movl   $0x7,0xc(%esp)
   16033:	00 
   16034:	89 44 24 08          	mov    %eax,0x8(%esp)
   16038:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   1603b:	89 44 24 04          	mov    %eax,0x4(%esp)
   1603f:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   16042:	89 04 24             	mov    %eax,(%esp)
   16045:	e8 23 10 00 00       	call   0x1706d
   1604a:	81 45 d8 00 10 00 00 	addl   $0x1000,0xffffffd8(%ebp)
   16051:	83 45 dc 04          	addl   $0x4,0xffffffdc(%ebp)
   16055:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
   16059:	83 7d d0 07          	cmpl   $0x7,0xffffffd0(%ebp)
   1605d:	7e c3                	jle    0x16022
   1605f:	8b 45 b8             	mov    0xffffffb8(%ebp),%eax
   16062:	8b 40 48             	mov    0x48(%eax),%eax
   16065:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   16068:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   1606b:	8b 40 48             	mov    0x48(%eax),%eax
   1606e:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
   16071:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
   16078:	e9 a5 00 00 00       	jmp    0x16122
   1607d:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   16080:	8b 00                	mov    (%eax),%eax
   16082:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   16087:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   1608a:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   1608d:	8b 00                	mov    (%eax),%eax
   1608f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   16094:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   16097:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
   1609e:	eb 71                	jmp    0x16111
   160a0:	81 7d d0 ff 00 00 00 	cmpl   $0xff,0xffffffd0(%ebp)
   160a7:	7f 0c                	jg     0x160b5
   160a9:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   160ac:	8b 10                	mov    (%eax),%edx
   160ae:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   160b1:	89 10                	mov    %edx,(%eax)
   160b3:	eb 4c                	jmp    0x16101
   160b5:	81 7d d0 0f 01 00 00 	cmpl   $0x10f,0xffffffd0(%ebp)
   160bc:	7e 43                	jle    0x16101
   160be:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   160c1:	8b 00                	mov    (%eax),%eax
   160c3:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   160c6:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   160c9:	83 e0 01             	and    $0x1,%eax
   160cc:	84 c0                	test   %al,%al
   160ce:	74 1d                	je     0x160ed
   160d0:	81 7d f4 ff ff 5f 00 	cmpl   $0x5fffff,0xfffffff4(%ebp)
   160d7:	76 14                	jbe    0x160ed
   160d9:	81 7d f4 ff ff ef 01 	cmpl   $0x1efffff,0xfffffff4(%ebp)
   160e0:	77 0b                	ja     0x160ed
   160e2:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   160e5:	89 04 24             	mov    %eax,(%esp)
   160e8:	e8 e3 0e 00 00       	call   0x16fd0
   160ed:	83 65 f4 fd          	andl   $0xfffffffd,0xfffffff4(%ebp)
   160f1:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
   160f4:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   160f7:	89 02                	mov    %eax,(%edx)
   160f9:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
   160fc:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   160ff:	89 02                	mov    %eax,(%edx)
   16101:	83 45 ec 04          	addl   $0x4,0xffffffec(%ebp)
   16105:	83 45 f0 04          	addl   $0x4,0xfffffff0(%ebp)
   16109:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
   1610d:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
   16111:	81 7d d4 ff 03 00 00 	cmpl   $0x3ff,0xffffffd4(%ebp)
   16118:	7e 86                	jle    0x160a0
   1611a:	83 45 e0 04          	addl   $0x4,0xffffffe0(%ebp)
   1611e:	83 45 cc 04          	addl   $0x4,0xffffffcc(%ebp)
   16122:	81 7d d0 ff 1f 00 00 	cmpl   $0x1fff,0xffffffd0(%ebp)
   16129:	0f 8e 4e ff ff ff    	jle    0x1607d
   1612f:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   16132:	8b 40 48             	mov    0x48(%eax),%eax
   16135:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
   16138:	c7 44 24 04 00 70 ef 	movl   $0x1ef7000,0x4(%esp)
   1613f:	01 
   16140:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   16143:	89 04 24             	mov    %eax,(%esp)
   16146:	e8 c9 4b 00 00       	call   0x1ad14
   1614b:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   1614e:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   16151:	83 e0 01             	and    $0x1,%eax
   16154:	84 c0                	test   %al,%al
   16156:	74 50                	je     0x161a8
   16158:	81 7d e4 ff ff 5f 00 	cmpl   $0x5fffff,0xffffffe4(%ebp)
   1615f:	76 47                	jbe    0x161a8
   16161:	81 7d e4 ff ff ef 01 	cmpl   $0x1efffff,0xffffffe4(%ebp)
   16168:	77 3e                	ja     0x161a8
   1616a:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1616d:	89 04 24             	mov    %eax,(%esp)
   16170:	e8 f5 0d 00 00       	call   0x16f6a
   16175:	85 c0                	test   %eax,%eax
   16177:	7f 24                	jg     0x1619d
   16179:	c7 44 24 0c d4 00 00 	movl   $0xd4,0xc(%esp)
   16180:	00 
   16181:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   16188:	00 
   16189:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   16190:	00 
   16191:	c7 04 24 23 b9 01 00 	movl   $0x1b923,(%esp)
   16198:	e8 8b 3a 00 00       	call   0x19c28
   1619d:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   161a0:	89 04 24             	mov    %eax,(%esp)
   161a3:	e8 3e 0d 00 00       	call   0x16ee6
   161a8:	e8 2a 0d 00 00       	call   0x16ed7
   161ad:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   161b0:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   161b3:	c7 44 24 0c 07 00 00 	movl   $0x7,0xc(%esp)
   161ba:	00 
   161bb:	89 44 24 08          	mov    %eax,0x8(%esp)
   161bf:	c7 44 24 04 00 70 ef 	movl   $0x1ef7000,0x4(%esp)
   161c6:	01 
   161c7:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   161ca:	89 04 24             	mov    %eax,(%esp)
   161cd:	e8 9b 0e 00 00       	call   0x1706d
   161d2:	c7 45 98 fd ff ff ff 	movl   $0xfffffffd,0xffffff98(%ebp)
   161d9:	c7 45 9c 06 00 00 00 	movl   $0x6,0xffffff9c(%ebp)
   161e0:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
   161e3:	89 45 a4             	mov    %eax,0xffffffa4(%ebp)
   161e6:	8d 45 90             	lea    0xffffff90(%ebp),%eax
   161e9:	89 44 24 08          	mov    %eax,0x8(%esp)
   161ed:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
   161f4:	00 
   161f5:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   161fc:	e8 ef 39 00 00       	call   0x19bf0
   16201:	85 c0                	test   %eax,%eax
   16203:	74 24                	je     0x16229
   16205:	c7 44 24 0c fd 00 00 	movl   $0xfd,0xc(%esp)
   1620c:	00 
   1620d:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   16214:	00 
   16215:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   1621c:	00 
   1621d:	c7 04 24 40 b9 01 00 	movl   $0x1b940,(%esp)
   16224:	e8 ff 39 00 00       	call   0x19c28
   16229:	8b 45 9c             	mov    0xffffff9c(%ebp),%eax
   1622c:	83 f8 ff             	cmp    $0xffffffff,%eax
   1622f:	75 1f                	jne    0x16250
   16231:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
   16234:	c7 40 50 01 00 00 00 	movl   $0x1,0x50(%eax)
   1623b:	c7 04 24 65 b9 01 00 	movl   $0x1b965,(%esp)
   16242:	e8 05 4b 00 00       	call   0x1ad4c
   16247:	c7 45 84 ff ff ff ff 	movl   $0xffffffff,0xffffff84(%ebp)
   1624e:	eb 4f                	jmp    0x1629f
   16250:	c7 45 9c 00 00 00 00 	movl   $0x0,0xffffff9c(%ebp)
   16257:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
   1625a:	8d 55 90             	lea    0xffffff90(%ebp),%edx
   1625d:	89 54 24 08          	mov    %edx,0x8(%esp)
   16261:	89 44 24 04          	mov    %eax,0x4(%esp)
   16265:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   1626c:	e8 7f 39 00 00       	call   0x19bf0
   16271:	85 c0                	test   %eax,%eax
   16273:	74 24                	je     0x16299
   16275:	c7 44 24 0c 0a 01 00 	movl   $0x10a,0xc(%esp)
   1627c:	00 
   1627d:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   16284:	00 
   16285:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   1628c:	00 
   1628d:	c7 04 24 7f b9 01 00 	movl   $0x1b97f,(%esp)
   16294:	e8 8f 39 00 00       	call   0x19c28
   16299:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
   1629c:	89 45 84             	mov    %eax,0xffffff84(%ebp)
   1629f:	8b 45 84             	mov    0xffffff84(%ebp),%eax
   162a2:	81 c4 90 00 00 00    	add    $0x90,%esp
   162a8:	5e                   	pop    %esi
   162a9:	5f                   	pop    %edi
   162aa:	5d                   	pop    %ebp
   162ab:	c3                   	ret    
   162ac:	55                   	push   %ebp
   162ad:	89 e5                	mov    %esp,%ebp
   162af:	83 ec 78             	sub    $0x78,%esp
   162b2:	a1 b0 ff 01 00       	mov    0x1ffb0,%eax
   162b7:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   162ba:	eb 55                	jmp    0x16311
   162bc:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   162bf:	8b 40 50             	mov    0x50(%eax),%eax
   162c2:	85 c0                	test   %eax,%eax
   162c4:	74 24                	je     0x162ea
   162c6:	c7 44 24 0c 19 01 00 	movl   $0x119,0xc(%esp)
   162cd:	00 
   162ce:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   162d5:	00 
   162d6:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   162dd:	00 
   162de:	c7 04 24 9d b9 01 00 	movl   $0x1b99d,(%esp)
   162e5:	e8 3e 39 00 00       	call   0x19c28
   162ea:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   162ed:	8b 80 fc 00 00 00    	mov    0xfc(%eax),%eax
   162f3:	3b 45 08             	cmp    0x8(%ebp),%eax
   162f6:	75 0d                	jne    0x16305
   162f8:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   162fb:	c7 80 fc 00 00 00 06 	movl   $0x6,0xfc(%eax)
   16302:	00 00 00 
   16305:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16308:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
   1630e:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   16311:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
   16315:	75 a5                	jne    0x162bc
   16317:	8b 55 08             	mov    0x8(%ebp),%edx
   1631a:	89 d0                	mov    %edx,%eax
   1631c:	c1 e0 03             	shl    $0x3,%eax
   1631f:	01 d0                	add    %edx,%eax
   16321:	c1 e0 05             	shl    $0x5,%eax
   16324:	05 e0 79 04 00       	add    $0x479e0,%eax
   16329:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   1632c:	8b 45 08             	mov    0x8(%ebp),%eax
   1632f:	89 04 24             	mov    %eax,(%esp)
   16332:	e8 12 fb ff ff       	call   0x15e49
   16337:	c7 45 dc fd ff ff ff 	movl   $0xfffffffd,0xffffffdc(%ebp)
   1633e:	c7 45 e0 07 00 00 00 	movl   $0x7,0xffffffe0(%ebp)
   16345:	8b 45 08             	mov    0x8(%ebp),%eax
   16348:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   1634b:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
   1634e:	89 44 24 08          	mov    %eax,0x8(%esp)
   16352:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
   16359:	00 
   1635a:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   16361:	e8 8a 38 00 00       	call   0x19bf0
   16366:	85 c0                	test   %eax,%eax
   16368:	74 24                	je     0x1638e
   1636a:	c7 44 24 0c 27 01 00 	movl   $0x127,0xc(%esp)
   16371:	00 
   16372:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   16379:	00 
   1637a:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   16381:	00 
   16382:	c7 04 24 40 b9 01 00 	movl   $0x1b940,(%esp)
   16389:	e8 9a 38 00 00       	call   0x19c28
   1638e:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16391:	8b 90 fc 00 00 00    	mov    0xfc(%eax),%edx
   16397:	89 d0                	mov    %edx,%eax
   16399:	c1 e0 03             	shl    $0x3,%eax
   1639c:	01 d0                	add    %edx,%eax
   1639e:	c1 e0 05             	shl    $0x5,%eax
   163a1:	8b 80 34 7a 04 00    	mov    0x47a34(%eax),%eax
   163a7:	83 f8 05             	cmp    $0x5,%eax
   163aa:	0f 85 0a 01 00 00    	jne    0x164ba
   163b0:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   163b3:	8b 90 fc 00 00 00    	mov    0xfc(%eax),%edx
   163b9:	89 d0                	mov    %edx,%eax
   163bb:	c1 e0 03             	shl    $0x3,%eax
   163be:	01 d0                	add    %edx,%eax
   163c0:	c1 e0 05             	shl    $0x5,%eax
   163c3:	8b 88 ec 7a 04 00    	mov    0x47aec(%eax),%ecx
   163c9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   163cc:	8b 80 fc 00 00 00    	mov    0xfc(%eax),%eax
   163d2:	89 c2                	mov    %eax,%edx
   163d4:	89 d0                	mov    %edx,%eax
   163d6:	c1 e0 03             	shl    $0x3,%eax
   163d9:	01 d0                	add    %edx,%eax
   163db:	c1 e0 05             	shl    $0x5,%eax
   163de:	05 e0 79 04 00       	add    $0x479e0,%eax
   163e3:	8b 40 48             	mov    0x48(%eax),%eax
   163e6:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   163ea:	89 04 24             	mov    %eax,(%esp)
   163ed:	e8 e4 48 00 00       	call   0x1acd6
   163f2:	89 c2                	mov    %eax,%edx
   163f4:	8b 45 0c             	mov    0xc(%ebp),%eax
   163f7:	89 02                	mov    %eax,(%edx)
   163f9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   163fc:	8b 90 fc 00 00 00    	mov    0xfc(%eax),%edx
   16402:	89 d0                	mov    %edx,%eax
   16404:	c1 e0 03             	shl    $0x3,%eax
   16407:	01 d0                	add    %edx,%eax
   16409:	c1 e0 05             	shl    $0x5,%eax
   1640c:	8b 80 44 7a 04 00    	mov    0x47a44(%eax),%eax
   16412:	83 f8 05             	cmp    $0x5,%eax
   16415:	74 24                	je     0x1643b
   16417:	c7 44 24 0c 2d 01 00 	movl   $0x12d,0xc(%esp)
   1641e:	00 
   1641f:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   16426:	00 
   16427:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   1642e:	00 
   1642f:	c7 04 24 b4 b9 01 00 	movl   $0x1b9b4,(%esp)
   16436:	e8 ed 37 00 00       	call   0x19c28
   1643b:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1643e:	8b 90 fc 00 00 00    	mov    0xfc(%eax),%edx
   16444:	89 d0                	mov    %edx,%eax
   16446:	c1 e0 03             	shl    $0x3,%eax
   16449:	01 d0                	add    %edx,%eax
   1644b:	c1 e0 05             	shl    $0x5,%eax
   1644e:	c7 80 34 7a 04 00 02 	movl   $0x2,0x47a34(%eax)
   16455:	00 00 00 
   16458:	c7 45 b4 fb ff ff ff 	movl   $0xfffffffb,0xffffffb4(%ebp)
   1645f:	8b 45 08             	mov    0x8(%ebp),%eax
   16462:	89 45 b8             	mov    %eax,0xffffffb8(%ebp)
   16465:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16468:	8b 90 fc 00 00 00    	mov    0xfc(%eax),%edx
   1646e:	8d 45 ac             	lea    0xffffffac(%ebp),%eax
   16471:	89 44 24 08          	mov    %eax,0x8(%esp)
   16475:	89 54 24 04          	mov    %edx,0x4(%esp)
   16479:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   16480:	e8 6b 37 00 00       	call   0x19bf0
   16485:	85 c0                	test   %eax,%eax
   16487:	74 24                	je     0x164ad
   16489:	c7 44 24 0c 32 01 00 	movl   $0x132,0xc(%esp)
   16490:	00 
   16491:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   16498:	00 
   16499:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   164a0:	00 
   164a1:	c7 04 24 e8 b9 01 00 	movl   $0x1b9e8,(%esp)
   164a8:	e8 7b 37 00 00       	call   0x19c28
   164ad:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   164b0:	89 04 24             	mov    %eax,(%esp)
   164b3:	e8 52 25 00 00       	call   0x18a0a
   164b8:	eb 16                	jmp    0x164d0
   164ba:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   164bd:	c7 40 54 06 00 00 00 	movl   $0x6,0x54(%eax)
   164c4:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   164c7:	8b 45 0c             	mov    0xc(%ebp),%eax
   164ca:	89 82 10 01 00 00    	mov    %eax,0x110(%edx)
   164d0:	c7 05 10 f4 01 00 01 	movl   $0x1,0x1f410
   164d7:	00 00 00 
   164da:	c9                   	leave  
   164db:	c3                   	ret    
   164dc:	55                   	push   %ebp
   164dd:	89 e5                	mov    %esp,%ebp
   164df:	83 ec 28             	sub    $0x28,%esp
   164e2:	a1 b0 ff 01 00       	mov    0x1ffb0,%eax
   164e7:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   164ea:	eb 48                	jmp    0x16534
   164ec:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   164ef:	8b 40 50             	mov    0x50(%eax),%eax
   164f2:	85 c0                	test   %eax,%eax
   164f4:	74 24                	je     0x1651a
   164f6:	c7 44 24 0c 4d 01 00 	movl   $0x14d,0xc(%esp)
   164fd:	00 
   164fe:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   16505:	00 
   16506:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   1650d:	00 
   1650e:	c7 04 24 9d b9 01 00 	movl   $0x1b99d,(%esp)
   16515:	e8 0e 37 00 00       	call   0x19c28
   1651a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1651d:	8b 80 fc 00 00 00    	mov    0xfc(%eax),%eax
   16523:	3b 45 08             	cmp    0x8(%ebp),%eax
   16526:	74 12                	je     0x1653a
   16528:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1652b:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
   16531:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   16534:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
   16538:	75 b2                	jne    0x164ec
   1653a:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
   1653e:	75 0c                	jne    0x1654c
   16540:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,0xffffffec(%ebp)
   16547:	e9 00 01 00 00       	jmp    0x1664c
   1654c:	a1 b0 ff 01 00       	mov    0x1ffb0,%eax
   16551:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   16554:	eb 53                	jmp    0x165a9
   16556:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16559:	8b 40 50             	mov    0x50(%eax),%eax
   1655c:	85 c0                	test   %eax,%eax
   1655e:	74 24                	je     0x16584
   16560:	c7 44 24 0c 58 01 00 	movl   $0x158,0xc(%esp)
   16567:	00 
   16568:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   1656f:	00 
   16570:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   16577:	00 
   16578:	c7 04 24 9d b9 01 00 	movl   $0x1b99d,(%esp)
   1657f:	e8 a4 36 00 00       	call   0x19c28
   16584:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16587:	8b 80 fc 00 00 00    	mov    0xfc(%eax),%eax
   1658d:	3b 45 08             	cmp    0x8(%ebp),%eax
   16590:	75 0b                	jne    0x1659d
   16592:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16595:	8b 40 54             	mov    0x54(%eax),%eax
   16598:	83 f8 06             	cmp    $0x6,%eax
   1659b:	74 12                	je     0x165af
   1659d:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   165a0:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
   165a6:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   165a9:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
   165ad:	75 a7                	jne    0x16556
   165af:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
   165b3:	75 3b                	jne    0x165f0
   165b5:	8b 55 08             	mov    0x8(%ebp),%edx
   165b8:	89 d0                	mov    %edx,%eax
   165ba:	c1 e0 03             	shl    $0x3,%eax
   165bd:	01 d0                	add    %edx,%eax
   165bf:	c1 e0 05             	shl    $0x5,%eax
   165c2:	c7 80 34 7a 04 00 05 	movl   $0x5,0x47a34(%eax)
   165c9:	00 00 00 
   165cc:	8b 55 08             	mov    0x8(%ebp),%edx
   165cf:	89 d0                	mov    %edx,%eax
   165d1:	c1 e0 03             	shl    $0x3,%eax
   165d4:	01 d0                	add    %edx,%eax
   165d6:	89 c2                	mov    %eax,%edx
   165d8:	c1 e2 05             	shl    $0x5,%edx
   165db:	8b 45 0c             	mov    0xc(%ebp),%eax
   165de:	89 82 ec 7a 04 00    	mov    %eax,0x47aec(%edx)
   165e4:	c7 05 10 f4 01 00 01 	movl   $0x1,0x1f410
   165eb:	00 00 00 
   165ee:	eb 56                	jmp    0x16646
   165f0:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   165f3:	b8 e0 79 04 00       	mov    $0x479e0,%eax
   165f8:	89 d1                	mov    %edx,%ecx
   165fa:	29 c1                	sub    %eax,%ecx
   165fc:	89 c8                	mov    %ecx,%eax
   165fe:	c1 f8 05             	sar    $0x5,%eax
   16601:	69 c0 39 8e e3 38    	imul   $0x38e38e39,%eax,%eax
   16607:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   1660a:	8b 55 08             	mov    0x8(%ebp),%edx
   1660d:	89 d0                	mov    %edx,%eax
   1660f:	c1 e0 03             	shl    $0x3,%eax
   16612:	01 d0                	add    %edx,%eax
   16614:	c1 e0 05             	shl    $0x5,%eax
   16617:	05 e0 79 04 00       	add    $0x479e0,%eax
   1661c:	8b 50 48             	mov    0x48(%eax),%edx
   1661f:	8b 45 0c             	mov    0xc(%ebp),%eax
   16622:	89 44 24 04          	mov    %eax,0x4(%esp)
   16626:	89 14 24             	mov    %edx,(%esp)
   16629:	e8 a8 46 00 00       	call   0x1acd6
   1662e:	89 c2                	mov    %eax,%edx
   16630:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16633:	8b 80 10 01 00 00    	mov    0x110(%eax),%eax
   16639:	89 02                	mov    %eax,(%edx)
   1663b:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1663e:	89 04 24             	mov    %eax,(%esp)
   16641:	e8 c4 23 00 00       	call   0x18a0a
   16646:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   16649:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   1664c:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   1664f:	c9                   	leave  
   16650:	c3                   	ret    
   16651:	55                   	push   %ebp
   16652:	89 e5                	mov    %esp,%ebp
   16654:	57                   	push   %edi
   16655:	56                   	push   %esi
   16656:	e8 7f 40 00 00       	call   0x1a6da
   1665b:	8b 45 08             	mov    0x8(%ebp),%eax
   1665e:	c7 40 34 00 00 11 00 	movl   $0x110000,0x34(%eax)
   16665:	8b 45 08             	mov    0x8(%ebp),%eax
   16668:	c7 40 40 00 70 ef 01 	movl   $0x1ef7000,0x40(%eax)
   1666f:	8b 45 08             	mov    0x8(%ebp),%eax
   16672:	c6 40 58 00          	movb   $0x0,0x58(%eax)
   16676:	8b 45 08             	mov    0x8(%ebp),%eax
   16679:	c7 40 5c 00 00 00 00 	movl   $0x0,0x5c(%eax)
   16680:	8b 45 08             	mov    0x8(%ebp),%eax
   16683:	c7 40 60 00 00 00 00 	movl   $0x0,0x60(%eax)
   1668a:	8b 45 08             	mov    0x8(%ebp),%eax
   1668d:	c7 40 64 00 00 00 00 	movl   $0x0,0x64(%eax)
   16694:	8b 45 08             	mov    0x8(%ebp),%eax
   16697:	c7 40 68 00 00 00 00 	movl   $0x0,0x68(%eax)
   1669e:	8b 45 08             	mov    0x8(%ebp),%eax
   166a1:	c7 40 6c 00 00 00 00 	movl   $0x0,0x6c(%eax)
   166a8:	8b 45 08             	mov    0x8(%ebp),%eax
   166ab:	8b 90 f0 00 00 00    	mov    0xf0(%eax),%edx
   166b1:	8b 45 08             	mov    0x8(%ebp),%eax
   166b4:	89 90 f4 00 00 00    	mov    %edx,0xf4(%eax)
   166ba:	8b 45 08             	mov    0x8(%ebp),%eax
   166bd:	c7 80 f8 00 00 00 00 	movl   $0x0,0xf8(%eax)
   166c4:	00 00 00 
   166c7:	8b 7d 08             	mov    0x8(%ebp),%edi
   166ca:	81 c7 00 01 00 00    	add    $0x100,%edi
   166d0:	8b 75 0c             	mov    0xc(%ebp),%esi
   166d3:	b9 0c 00 00 00       	mov    $0xc,%ecx
   166d8:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   166da:	e8 f1 3f 00 00       	call   0x1a6d0
   166df:	b8 00 00 00 00       	mov    $0x0,%eax
   166e4:	5e                   	pop    %esi
   166e5:	5f                   	pop    %edi
   166e6:	5d                   	pop    %ebp
   166e7:	c3                   	ret    
   166e8:	55                   	push   %ebp
   166e9:	89 e5                	mov    %esp,%ebp
   166eb:	57                   	push   %edi
   166ec:	56                   	push   %esi
   166ed:	83 ec 60             	sub    $0x60,%esp
   166f0:	8b 45 08             	mov    0x8(%ebp),%eax
   166f3:	8b 00                	mov    (%eax),%eax
   166f5:	89 c2                	mov    %eax,%edx
   166f7:	89 d0                	mov    %edx,%eax
   166f9:	c1 e0 03             	shl    $0x3,%eax
   166fc:	01 d0                	add    %edx,%eax
   166fe:	c1 e0 05             	shl    $0x5,%eax
   16701:	05 e0 79 04 00       	add    $0x479e0,%eax
   16706:	89 45 c0             	mov    %eax,0xffffffc0(%ebp)
   16709:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
   1670c:	8b 40 48             	mov    0x48(%eax),%eax
   1670f:	89 45 c4             	mov    %eax,0xffffffc4(%ebp)
   16712:	8b 45 08             	mov    0x8(%ebp),%eax
   16715:	8b 40 18             	mov    0x18(%eax),%eax
   16718:	89 44 24 04          	mov    %eax,0x4(%esp)
   1671c:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
   1671f:	89 04 24             	mov    %eax,(%esp)
   16722:	e8 af 45 00 00       	call   0x1acd6
   16727:	89 45 c8             	mov    %eax,0xffffffc8(%ebp)
   1672a:	8b 45 08             	mov    0x8(%ebp),%eax
   1672d:	8b 40 1c             	mov    0x1c(%eax),%eax
   16730:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
   16733:	8b 45 08             	mov    0x8(%ebp),%eax
   16736:	8b 40 20             	mov    0x20(%eax),%eax
   16739:	89 44 24 04          	mov    %eax,0x4(%esp)
   1673d:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
   16740:	89 04 24             	mov    %eax,(%esp)
   16743:	e8 8e 45 00 00       	call   0x1acd6
   16748:	89 45 d0             	mov    %eax,0xffffffd0(%ebp)
   1674b:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   1674e:	89 44 24 04          	mov    %eax,0x4(%esp)
   16752:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
   16755:	89 04 24             	mov    %eax,(%esp)
   16758:	e8 f4 fe ff ff       	call   0x16651
   1675d:	83 f8 ff             	cmp    $0xffffffff,%eax
   16760:	75 0c                	jne    0x1676e
   16762:	c7 45 b4 ff ff ff ff 	movl   $0xffffffff,0xffffffb4(%ebp)
   16769:	e9 8b 01 00 00       	jmp    0x168f9
   1676e:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
   16771:	8b 40 54             	mov    0x54(%eax),%eax
   16774:	83 f8 02             	cmp    $0x2,%eax
   16777:	74 24                	je     0x1679d
   16779:	c7 44 24 0c ae 01 00 	movl   $0x1ae,0xc(%esp)
   16780:	00 
   16781:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   16788:	00 
   16789:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   16790:	00 
   16791:	c7 04 24 e8 b8 01 00 	movl   $0x1b8e8,(%esp)
   16798:	e8 8b 34 00 00       	call   0x19c28
   1679d:	c7 44 24 04 00 70 ef 	movl   $0x1ef7000,0x4(%esp)
   167a4:	01 
   167a5:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
   167a8:	89 04 24             	mov    %eax,(%esp)
   167ab:	e8 26 45 00 00       	call   0x1acd6
   167b0:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
   167b3:	8b 55 dc             	mov    0xffffffdc(%ebp),%edx
   167b6:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   167b9:	89 02                	mov    %eax,(%edx)
   167bb:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   167be:	83 c0 04             	add    $0x4,%eax
   167c1:	c7 00 08 70 ef 01    	movl   $0x1ef7008,(%eax)
   167c7:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   167ca:	83 c0 08             	add    $0x8,%eax
   167cd:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   167d0:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   167d3:	05 98 01 00 00       	add    $0x198,%eax
   167d8:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   167db:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
   167e2:	eb 59                	jmp    0x1683d
   167e4:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   167e7:	c1 e0 02             	shl    $0x2,%eax
   167ea:	03 45 d0             	add    0xffffffd0(%ebp),%eax
   167ed:	8b 00                	mov    (%eax),%eax
   167ef:	89 44 24 04          	mov    %eax,0x4(%esp)
   167f3:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
   167f6:	89 04 24             	mov    %eax,(%esp)
   167f9:	e8 d8 44 00 00       	call   0x1acd6
   167fe:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   16801:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   16804:	89 04 24             	mov    %eax,(%esp)
   16807:	e8 94 41 00 00       	call   0x1a9a0
   1680c:	83 c0 01             	add    $0x1,%eax
   1680f:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   16812:	8b 7d e4             	mov    0xffffffe4(%ebp),%edi
   16815:	8b 75 e8             	mov    0xffffffe8(%ebp),%esi
   16818:	8b 4d ec             	mov    0xffffffec(%ebp),%ecx
   1681b:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   1681d:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   16820:	2b 45 dc             	sub    0xffffffdc(%ebp),%eax
   16823:	05 00 70 ef 01       	add    $0x1ef7000,%eax
   16828:	89 c2                	mov    %eax,%edx
   1682a:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   1682d:	89 10                	mov    %edx,(%eax)
   1682f:	83 45 e0 04          	addl   $0x4,0xffffffe0(%ebp)
   16833:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   16836:	01 45 e4             	add    %eax,0xffffffe4(%ebp)
   16839:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
   1683d:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   16840:	3b 45 cc             	cmp    0xffffffcc(%ebp),%eax
   16843:	7c 9f                	jl     0x167e4
   16845:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
   1684c:	eb 79                	jmp    0x168c7
   1684e:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
   16851:	8b 00                	mov    (%eax),%eax
   16853:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   16858:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   1685b:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
   16862:	eb 56                	jmp    0x168ba
   16864:	81 7d d4 0f 01 00 00 	cmpl   $0x10f,0xffffffd4(%ebp)
   1686b:	7e 41                	jle    0x168ae
   1686d:	81 7d d4 f6 1e 00 00 	cmpl   $0x1ef6,0xffffffd4(%ebp)
   16874:	7f 38                	jg     0x168ae
   16876:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   16879:	8b 00                	mov    (%eax),%eax
   1687b:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   1687e:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   16881:	83 e0 01             	and    $0x1,%eax
   16884:	84 c0                	test   %al,%al
   16886:	74 1d                	je     0x168a5
   16888:	81 7d f4 ff ff 5f 00 	cmpl   $0x5fffff,0xfffffff4(%ebp)
   1688f:	76 14                	jbe    0x168a5
   16891:	81 7d f4 ff ff ef 01 	cmpl   $0x1efffff,0xfffffff4(%ebp)
   16898:	77 0b                	ja     0x168a5
   1689a:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   1689d:	89 04 24             	mov    %eax,(%esp)
   168a0:	e8 41 06 00 00       	call   0x16ee6
   168a5:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   168a8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   168ae:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
   168b2:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
   168b6:	83 45 f0 04          	addl   $0x4,0xfffffff0(%ebp)
   168ba:	81 7d d8 ff 03 00 00 	cmpl   $0x3ff,0xffffffd8(%ebp)
   168c1:	7e a1                	jle    0x16864
   168c3:	83 45 c4 04          	addl   $0x4,0xffffffc4(%ebp)
   168c7:	81 7d d4 ff 1f 00 00 	cmpl   $0x1fff,0xffffffd4(%ebp)
   168ce:	0f 8e 7a ff ff ff    	jle    0x1684e
   168d4:	e8 01 3e 00 00       	call   0x1a6da
   168d9:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
   168dc:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
   168e3:	e8 e8 3d 00 00       	call   0x1a6d0
   168e8:	c7 05 10 f4 01 00 01 	movl   $0x1,0x1f410
   168ef:	00 00 00 
   168f2:	c7 45 b4 00 00 00 00 	movl   $0x0,0xffffffb4(%ebp)
   168f9:	8b 45 b4             	mov    0xffffffb4(%ebp),%eax
   168fc:	83 c4 60             	add    $0x60,%esp
   168ff:	5e                   	pop    %esi
   16900:	5f                   	pop    %edi
   16901:	5d                   	pop    %ebp
   16902:	c3                   	ret    
   16903:	55                   	push   %ebp
   16904:	89 e5                	mov    %esp,%ebp
   16906:	81 ec 68 02 00 00    	sub    $0x268,%esp
   1690c:	8b 45 0c             	mov    0xc(%ebp),%eax
   1690f:	25 ff 0f 00 00       	and    $0xfff,%eax
   16914:	85 c0                	test   %eax,%eax
   16916:	74 24                	je     0x1693c
   16918:	c7 44 24 0c ec 01 00 	movl   $0x1ec,0xc(%esp)
   1691f:	00 
   16920:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   16927:	00 
   16928:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   1692f:	00 
   16930:	c7 04 24 0f ba 01 00 	movl   $0x1ba0f,(%esp)
   16937:	e8 ec 32 00 00       	call   0x19c28
   1693c:	8b 45 10             	mov    0x10(%ebp),%eax
   1693f:	25 ff 0f 00 00       	and    $0xfff,%eax
   16944:	85 c0                	test   %eax,%eax
   16946:	74 24                	je     0x1696c
   16948:	c7 44 24 0c ed 01 00 	movl   $0x1ed,0xc(%esp)
   1694f:	00 
   16950:	c7 44 24 08 f8 b7 01 	movl   $0x1b7f8,0x8(%esp)
   16957:	00 
   16958:	c7 44 24 04 f8 b7 01 	movl   $0x1b7f8,0x4(%esp)
   1695f:	00 
   16960:	c7 04 24 28 ba 01 00 	movl   $0x1ba28,(%esp)
   16967:	e8 bc 32 00 00       	call   0x19c28
   1696c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   16973:	00 
   16974:	8b 45 08             	mov    0x8(%ebp),%eax
   16977:	89 04 24             	mov    %eax,(%esp)
   1697a:	e8 d9 32 00 00       	call   0x19c58
   1697f:	89 45 c8             	mov    %eax,0xffffffc8(%ebp)
   16982:	83 7d c8 ff          	cmpl   $0xffffffff,0xffffffc8(%ebp)
   16986:	75 0f                	jne    0x16997
   16988:	c7 85 bc fd ff ff ff 	movl   $0xffffffff,0xfffffdbc(%ebp)
   1698f:	ff ff ff 
   16992:	e9 94 01 00 00       	jmp    0x16b2b
   16997:	c7 44 24 0c 00 02 00 	movl   $0x200,0xc(%esp)
   1699e:	00 
   1699f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
   169a6:	00 
   169a7:	8d 85 c8 fd ff ff    	lea    0xfffffdc8(%ebp),%eax
   169ad:	89 44 24 04          	mov    %eax,0x4(%esp)
   169b1:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   169b4:	89 04 24             	mov    %eax,(%esp)
   169b7:	e8 81 33 00 00       	call   0x19d3d
   169bc:	8d 85 c8 fd ff ff    	lea    0xfffffdc8(%ebp),%eax
   169c2:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
   169c5:	8d 85 c8 fd ff ff    	lea    0xfffffdc8(%ebp),%eax
   169cb:	89 c2                	mov    %eax,%edx
   169cd:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   169d0:	8b 40 1c             	mov    0x1c(%eax),%eax
   169d3:	8d 04 02             	lea    (%edx,%eax,1),%eax
   169d6:	89 45 d0             	mov    %eax,0xffffffd0(%ebp)
   169d9:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   169dc:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
   169e0:	0f b7 c0             	movzwl %ax,%eax
   169e3:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
   169e6:	8b 45 10             	mov    0x10(%ebp),%eax
   169e9:	89 45 d8             	mov    %eax,0xffffffd8(%ebp)
   169ec:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   169ef:	05 00 10 00 00       	add    $0x1000,%eax
   169f4:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
   169f7:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
   169fe:	e9 07 01 00 00       	jmp    0x16b0a
   16a03:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   16a06:	8b 40 08             	mov    0x8(%eax),%eax
   16a09:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   16a0c:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   16a0f:	8b 40 10             	mov    0x10(%eax),%eax
   16a12:	03 45 e4             	add    0xffffffe4(%ebp),%eax
   16a15:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   16a18:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   16a1b:	3b 45 dc             	cmp    0xffffffdc(%ebp),%eax
   16a1e:	0f 87 de 00 00 00    	ja     0x16b02
   16a24:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   16a27:	3b 45 d8             	cmp    0xffffffd8(%ebp),%eax
   16a2a:	0f 82 d2 00 00 00    	jb     0x16b02
   16a30:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   16a33:	89 85 b4 fd ff ff    	mov    %eax,0xfffffdb4(%ebp)
   16a39:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   16a3c:	89 85 b8 fd ff ff    	mov    %eax,0xfffffdb8(%ebp)
   16a42:	8b 85 b4 fd ff ff    	mov    0xfffffdb4(%ebp),%eax
   16a48:	39 85 b8 fd ff ff    	cmp    %eax,0xfffffdb8(%ebp)
   16a4e:	73 0c                	jae    0x16a5c
   16a50:	8b 85 b4 fd ff ff    	mov    0xfffffdb4(%ebp),%eax
   16a56:	89 85 b8 fd ff ff    	mov    %eax,0xfffffdb8(%ebp)
   16a5c:	8b 85 b8 fd ff ff    	mov    0xfffffdb8(%ebp),%eax
   16a62:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   16a65:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   16a68:	89 85 ac fd ff ff    	mov    %eax,0xfffffdac(%ebp)
   16a6e:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   16a71:	89 85 b0 fd ff ff    	mov    %eax,0xfffffdb0(%ebp)
   16a77:	8b 85 ac fd ff ff    	mov    0xfffffdac(%ebp),%eax
   16a7d:	39 85 b0 fd ff ff    	cmp    %eax,0xfffffdb0(%ebp)
   16a83:	76 0c                	jbe    0x16a91
   16a85:	8b 85 ac fd ff ff    	mov    0xfffffdac(%ebp),%eax
   16a8b:	89 85 b0 fd ff ff    	mov    %eax,0xfffffdb0(%ebp)
   16a91:	8b 85 b0 fd ff ff    	mov    0xfffffdb0(%ebp),%eax
   16a97:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   16a9a:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
   16a9d:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   16aa0:	29 d0                	sub    %edx,%eax
   16aa2:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   16aa5:	8b 55 d8             	mov    0xffffffd8(%ebp),%edx
   16aa8:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   16aab:	29 d0                	sub    %edx,%eax
   16aad:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   16ab0:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   16ab3:	8b 40 04             	mov    0x4(%eax),%eax
   16ab6:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   16ab9:	8b 55 e4             	mov    0xffffffe4(%ebp),%edx
   16abc:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   16abf:	29 d0                	sub    %edx,%eax
   16ac1:	01 45 fc             	add    %eax,0xfffffffc(%ebp)
   16ac4:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
   16acb:	00 
   16acc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   16ad3:	00 
   16ad4:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   16ad7:	89 04 24             	mov    %eax,(%esp)
   16ada:	e8 a5 33 00 00       	call   0x19e84
   16adf:	8b 55 f4             	mov    0xfffffff4(%ebp),%edx
   16ae2:	8b 4d fc             	mov    0xfffffffc(%ebp),%ecx
   16ae5:	8b 45 0c             	mov    0xc(%ebp),%eax
   16ae8:	03 45 f8             	add    0xfffffff8(%ebp),%eax
   16aeb:	89 54 24 0c          	mov    %edx,0xc(%esp)
   16aef:	89 4c 24 08          	mov    %ecx,0x8(%esp)
   16af3:	89 44 24 04          	mov    %eax,0x4(%esp)
   16af7:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   16afa:	89 04 24             	mov    %eax,(%esp)
   16afd:	e8 3b 32 00 00       	call   0x19d3d
   16b02:	83 45 e0 01          	addl   $0x1,0xffffffe0(%ebp)
   16b06:	83 45 d0 20          	addl   $0x20,0xffffffd0(%ebp)
   16b0a:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   16b0d:	3b 45 d4             	cmp    0xffffffd4(%ebp),%eax
   16b10:	0f 8c ed fe ff ff    	jl     0x16a03
   16b16:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
   16b19:	89 04 24             	mov    %eax,(%esp)
   16b1c:	e8 90 32 00 00       	call   0x19db1
   16b21:	c7 85 bc fd ff ff 00 	movl   $0x0,0xfffffdbc(%ebp)
   16b28:	00 00 00 
   16b2b:	8b 85 bc fd ff ff    	mov    0xfffffdbc(%ebp),%eax
   16b31:	c9                   	leave  
   16b32:	c3                   	ret    
   16b33:	00 55 89             	add    %dl,0xffffff89(%ebp)
   16b36:	e5 83                	in     $0x83,%eax
   16b38:	ec                   	in     (%dx),%al
   16b39:	28 c7                	sub    %al,%bh
   16b3b:	45                   	inc    %ebp
   16b3c:	fc                   	cld    
   16b3d:	00 00                	add    %al,(%eax)
   16b3f:	60                   	pusha  
   16b40:	00 c7                	add    %al,%bh
   16b42:	45                   	inc    %ebp
   16b43:	f8                   	clc    
   16b44:	c0                   	(bad)  
   16b45:	b5 02                	mov    $0x2,%ch
   16b47:	00 eb                	add    %ch,%bl
   16b49:	35 8b 55 fc 8b       	xor    $0x8bfc558b,%eax
   16b4e:	45                   	inc    %ebp
   16b4f:	f8                   	clc    
   16b50:	89 10                	mov    %edx,(%eax)
   16b52:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   16b55:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   16b5c:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   16b5f:	83 ea 10             	sub    $0x10,%edx
   16b62:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   16b65:	89 50 08             	mov    %edx,0x8(%eax)
   16b68:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   16b6b:	83 c2 10             	add    $0x10,%edx
   16b6e:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   16b71:	89 50 0c             	mov    %edx,0xc(%eax)
   16b74:	81 45 fc 00 10 00 00 	addl   $0x1000,0xfffffffc(%ebp)
   16b7b:	83 45 f8 10          	addl   $0x10,0xfffffff8(%ebp)
   16b7f:	b8 c0 45 04 00       	mov    $0x445c0,%eax
   16b84:	39 45 f8             	cmp    %eax,0xfffffff8(%ebp)
   16b87:	72 c1                	jb     0x16b4a
   16b89:	c7 05 c8 b5 02 00 00 	movl   $0x0,0x2b5c8
   16b90:	00 00 00 
   16b93:	b8 b0 45 04 00       	mov    $0x445b0,%eax
   16b98:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
   16b9f:	b8 c0 45 04 00       	mov    $0x445c0,%eax
   16ba4:	39 45 f8             	cmp    %eax,0xfffffff8(%ebp)
   16ba7:	74 24                	je     0x16bcd
   16ba9:	c7 44 24 0c 18 00 00 	movl   $0x18,0xc(%esp)
   16bb0:	00 
   16bb1:	c7 44 24 08 44 ba 01 	movl   $0x1ba44,0x8(%esp)
   16bb8:	00 
   16bb9:	c7 44 24 04 44 ba 01 	movl   $0x1ba44,0x4(%esp)
   16bc0:	00 
   16bc1:	c7 04 24 4d ba 01 00 	movl   $0x1ba4d,(%esp)
   16bc8:	e8 5b 30 00 00       	call   0x19c28
   16bcd:	81 7d fc 00 00 f0 01 	cmpl   $0x1f00000,0xfffffffc(%ebp)
   16bd4:	74 24                	je     0x16bfa
   16bd6:	c7 44 24 0c 19 00 00 	movl   $0x19,0xc(%esp)
   16bdd:	00 
   16bde:	c7 44 24 08 44 ba 01 	movl   $0x1ba44,0x8(%esp)
   16be5:	00 
   16be6:	c7 44 24 04 44 ba 01 	movl   $0x1ba44,0x4(%esp)
   16bed:	00 
   16bee:	c7 04 24 68 ba 01 00 	movl   $0x1ba68,(%esp)
   16bf5:	e8 2e 30 00 00       	call   0x19c28
   16bfa:	c7 05 b4 ff 01 00 c0 	movl   $0x2b5c0,0x1ffb4
   16c01:	b5 02 00 
   16c04:	b8 b0 45 04 00       	mov    $0x445b0,%eax
   16c09:	a3 b8 ff 01 00       	mov    %eax,0x1ffb8
   16c0e:	c9                   	leave  
   16c0f:	c3                   	ret    
   16c10:	55                   	push   %ebp
   16c11:	89 e5                	mov    %esp,%ebp
   16c13:	83 ec 28             	sub    $0x28,%esp
   16c16:	e8 bf 3a 00 00       	call   0x1a6da
   16c1b:	a1 b4 ff 01 00       	mov    0x1ffb4,%eax
   16c20:	85 c0                	test   %eax,%eax
   16c22:	75 3e                	jne    0x16c62
   16c24:	c7 04 24 80 ba 01 00 	movl   $0x1ba80,(%esp)
   16c2b:	e8 1c 41 00 00       	call   0x1ad4c
   16c30:	c7 44 24 0c 2f 00 00 	movl   $0x2f,0xc(%esp)
   16c37:	00 
   16c38:	c7 44 24 08 44 ba 01 	movl   $0x1ba44,0x8(%esp)
   16c3f:	00 
   16c40:	c7 44 24 04 44 ba 01 	movl   $0x1ba44,0x4(%esp)
   16c47:	00 
   16c48:	c7 04 24 8f ba 01 00 	movl   $0x1ba8f,(%esp)
   16c4f:	e8 d4 2f 00 00       	call   0x19c28
   16c54:	e8 77 3a 00 00       	call   0x1a6d0
   16c59:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
   16c60:	eb 79                	jmp    0x16cdb
   16c62:	a1 b4 ff 01 00       	mov    0x1ffb4,%eax
   16c67:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   16c6a:	a1 b4 ff 01 00       	mov    0x1ffb4,%eax
   16c6f:	8b 40 0c             	mov    0xc(%eax),%eax
   16c72:	a3 b4 ff 01 00       	mov    %eax,0x1ffb4
   16c77:	a1 b4 ff 01 00       	mov    0x1ffb4,%eax
   16c7c:	85 c0                	test   %eax,%eax
   16c7e:	75 0c                	jne    0x16c8c
   16c80:	c7 05 b8 ff 01 00 00 	movl   $0x0,0x1ffb8
   16c87:	00 00 00 
   16c8a:	eb 0c                	jmp    0x16c98
   16c8c:	a1 b4 ff 01 00       	mov    0x1ffb4,%eax
   16c91:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   16c98:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16c9b:	8b 40 04             	mov    0x4(%eax),%eax
   16c9e:	85 c0                	test   %eax,%eax
   16ca0:	74 24                	je     0x16cc6
   16ca2:	c7 44 24 0c 40 00 00 	movl   $0x40,0xc(%esp)
   16ca9:	00 
   16caa:	c7 44 24 08 44 ba 01 	movl   $0x1ba44,0x8(%esp)
   16cb1:	00 
   16cb2:	c7 44 24 04 44 ba 01 	movl   $0x1ba44,0x4(%esp)
   16cb9:	00 
   16cba:	c7 04 24 91 ba 01 00 	movl   $0x1ba91,(%esp)
   16cc1:	e8 62 2f 00 00       	call   0x19c28
   16cc6:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16cc9:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
   16cd0:	e8 fb 39 00 00       	call   0x1a6d0
   16cd5:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16cd8:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   16cdb:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   16cde:	c9                   	leave  
   16cdf:	c3                   	ret    
   16ce0:	55                   	push   %ebp
   16ce1:	89 e5                	mov    %esp,%ebp
   16ce3:	83 ec 18             	sub    $0x18,%esp
   16ce6:	8b 45 08             	mov    0x8(%ebp),%eax
   16ce9:	8b 40 04             	mov    0x4(%eax),%eax
   16cec:	85 c0                	test   %eax,%eax
   16cee:	74 0c                	je     0x16cfc
   16cf0:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,0xfffffffc(%ebp)
   16cf7:	e9 9f 00 00 00       	jmp    0x16d9b
   16cfc:	8b 45 08             	mov    0x8(%ebp),%eax
   16cff:	8b 40 04             	mov    0x4(%eax),%eax
   16d02:	85 c0                	test   %eax,%eax
   16d04:	74 24                	je     0x16d2a
   16d06:	c7 44 24 0c 50 00 00 	movl   $0x50,0xc(%esp)
   16d0d:	00 
   16d0e:	c7 44 24 08 44 ba 01 	movl   $0x1ba44,0x8(%esp)
   16d15:	00 
   16d16:	c7 44 24 04 44 ba 01 	movl   $0x1ba44,0x4(%esp)
   16d1d:	00 
   16d1e:	c7 04 24 91 ba 01 00 	movl   $0x1ba91,(%esp)
   16d25:	e8 fe 2e 00 00       	call   0x19c28
   16d2a:	8b 15 b8 ff 01 00    	mov    0x1ffb8,%edx
   16d30:	8b 45 08             	mov    0x8(%ebp),%eax
   16d33:	89 50 08             	mov    %edx,0x8(%eax)
   16d36:	8b 45 08             	mov    0x8(%ebp),%eax
   16d39:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
   16d40:	a1 b4 ff 01 00       	mov    0x1ffb4,%eax
   16d45:	85 c0                	test   %eax,%eax
   16d47:	75 37                	jne    0x16d80
   16d49:	a1 b8 ff 01 00       	mov    0x1ffb8,%eax
   16d4e:	85 c0                	test   %eax,%eax
   16d50:	74 24                	je     0x16d76
   16d52:	c7 44 24 0c 56 00 00 	movl   $0x56,0xc(%esp)
   16d59:	00 
   16d5a:	c7 44 24 08 44 ba 01 	movl   $0x1ba44,0x8(%esp)
   16d61:	00 
   16d62:	c7 44 24 04 44 ba 01 	movl   $0x1ba44,0x4(%esp)
   16d69:	00 
   16d6a:	c7 04 24 a2 ba 01 00 	movl   $0x1baa2,(%esp)
   16d71:	e8 b2 2e 00 00       	call   0x19c28
   16d76:	8b 45 08             	mov    0x8(%ebp),%eax
   16d79:	a3 b4 ff 01 00       	mov    %eax,0x1ffb4
   16d7e:	eb 0c                	jmp    0x16d8c
   16d80:	8b 15 b8 ff 01 00    	mov    0x1ffb8,%edx
   16d86:	8b 45 08             	mov    0x8(%ebp),%eax
   16d89:	89 42 0c             	mov    %eax,0xc(%edx)
   16d8c:	8b 45 08             	mov    0x8(%ebp),%eax
   16d8f:	a3 b8 ff 01 00       	mov    %eax,0x1ffb8
   16d94:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
   16d9b:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16d9e:	c9                   	leave  
   16d9f:	c3                   	ret    
   16da0:	55                   	push   %ebp
   16da1:	89 e5                	mov    %esp,%ebp
   16da3:	83 ec 38             	sub    $0x38,%esp
   16da6:	a1 30 f4 01 00       	mov    0x1f430,%eax
   16dab:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   16dae:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   16db1:	8b 40 48             	mov    0x48(%eax),%eax
   16db4:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   16db7:	e8 08 98 ff ff       	call   0x105c4
   16dbc:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   16dc1:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   16dc4:	e8 0e 01 00 00       	call   0x16ed7
   16dc9:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   16dcc:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   16dcf:	05 00 01 00 00       	add    $0x100,%eax
   16dd4:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   16dd7:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   16dda:	89 44 24 08          	mov    %eax,0x8(%esp)
   16dde:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   16de1:	89 44 24 04          	mov    %eax,0x4(%esp)
   16de5:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16de8:	89 04 24             	mov    %eax,(%esp)
   16deb:	e8 43 33 00 00       	call   0x1a133
   16df0:	c7 44 24 0c 07 00 00 	movl   $0x7,0xc(%esp)
   16df7:	00 
   16df8:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   16dfb:	89 44 24 08          	mov    %eax,0x8(%esp)
   16dff:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   16e02:	89 44 24 04          	mov    %eax,0x4(%esp)
   16e06:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   16e09:	89 04 24             	mov    %eax,(%esp)
   16e0c:	e8 5c 02 00 00       	call   0x1706d
   16e11:	c9                   	leave  
   16e12:	c3                   	ret    
   16e13:	55                   	push   %ebp
   16e14:	89 e5                	mov    %esp,%ebp
   16e16:	57                   	push   %edi
   16e17:	56                   	push   %esi
   16e18:	83 ec 30             	sub    $0x30,%esp
   16e1b:	a1 30 f4 01 00       	mov    0x1f430,%eax
   16e20:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   16e23:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   16e26:	8b 40 48             	mov    0x48(%eax),%eax
   16e29:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   16e2c:	e8 93 97 ff ff       	call   0x105c4
   16e31:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   16e36:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   16e39:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   16e3c:	8b 50 48             	mov    0x48(%eax),%edx
   16e3f:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   16e42:	89 44 24 04          	mov    %eax,0x4(%esp)
   16e46:	89 14 24             	mov    %edx,(%esp)
   16e49:	e8 88 3e 00 00       	call   0x1acd6
   16e4e:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   16e51:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   16e54:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   16e57:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   16e5a:	3d ff ff 5f 00       	cmp    $0x5fffff,%eax
   16e5f:	76 1a                	jbe    0x16e7b
   16e61:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   16e64:	3d ff ff ef 01       	cmp    $0x1efffff,%eax
   16e69:	77 10                	ja     0x16e7b
   16e6b:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   16e6e:	89 04 24             	mov    %eax,(%esp)
   16e71:	e8 f4 00 00 00       	call   0x16f6a
   16e76:	83 f8 01             	cmp    $0x1,%eax
   16e79:	7e 34                	jle    0x16eaf
   16e7b:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   16e7e:	3d ff ff 5f 00       	cmp    $0x5fffff,%eax
   16e83:	76 15                	jbe    0x16e9a
   16e85:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   16e88:	3d ff ff ef 01       	cmp    $0x1efffff,%eax
   16e8d:	77 0b                	ja     0x16e9a
   16e8f:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   16e92:	89 04 24             	mov    %eax,(%esp)
   16e95:	e8 4c 00 00 00       	call   0x16ee6
   16e9a:	e8 38 00 00 00       	call   0x16ed7
   16e9f:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   16ea2:	8b 7d f4             	mov    0xfffffff4(%ebp),%edi
   16ea5:	8b 75 f0             	mov    0xfffffff0(%ebp),%esi
   16ea8:	b9 00 10 00 00       	mov    $0x1000,%ecx
   16ead:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   16eaf:	c7 44 24 0c 07 00 00 	movl   $0x7,0xc(%esp)
   16eb6:	00 
   16eb7:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   16eba:	89 44 24 08          	mov    %eax,0x8(%esp)
   16ebe:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   16ec1:	89 44 24 04          	mov    %eax,0x4(%esp)
   16ec5:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   16ec8:	89 04 24             	mov    %eax,(%esp)
   16ecb:	e8 9d 01 00 00       	call   0x1706d
   16ed0:	83 c4 30             	add    $0x30,%esp
   16ed3:	5e                   	pop    %esi
   16ed4:	5f                   	pop    %edi
   16ed5:	5d                   	pop    %ebp
   16ed6:	c3                   	ret    
   16ed7:	55                   	push   %ebp
   16ed8:	89 e5                	mov    %esp,%ebp
   16eda:	83 ec 08             	sub    $0x8,%esp
   16edd:	e8 2e fd ff ff       	call   0x16c10
   16ee2:	8b 00                	mov    (%eax),%eax
   16ee4:	c9                   	leave  
   16ee5:	c3                   	ret    
   16ee6:	55                   	push   %ebp
   16ee7:	89 e5                	mov    %esp,%ebp
   16ee9:	83 ec 28             	sub    $0x28,%esp
   16eec:	e8 e9 37 00 00       	call   0x1a6da
   16ef1:	8b 45 08             	mov    0x8(%ebp),%eax
   16ef4:	3d ff ff 5f 00       	cmp    $0x5fffff,%eax
   16ef9:	76 0a                	jbe    0x16f05
   16efb:	8b 45 08             	mov    0x8(%ebp),%eax
   16efe:	3d ff ff ef 01       	cmp    $0x1efffff,%eax
   16f03:	76 24                	jbe    0x16f29
   16f05:	c7 44 24 0c c0 00 00 	movl   $0xc0,0xc(%esp)
   16f0c:	00 
   16f0d:	c7 44 24 08 44 ba 01 	movl   $0x1ba44,0x8(%esp)
   16f14:	00 
   16f15:	c7 44 24 04 44 ba 01 	movl   $0x1ba44,0x4(%esp)
   16f1c:	00 
   16f1d:	c7 04 24 b8 ba 01 00 	movl   $0x1bab8,(%esp)
   16f24:	e8 ff 2c 00 00       	call   0x19c28
   16f29:	8b 45 08             	mov    0x8(%ebp),%eax
   16f2c:	2d 00 00 60 00       	sub    $0x600000,%eax
   16f31:	c1 e8 0c             	shr    $0xc,%eax
   16f34:	c1 e0 04             	shl    $0x4,%eax
   16f37:	05 c0 b5 02 00       	add    $0x2b5c0,%eax
   16f3c:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   16f3f:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16f42:	8b 40 04             	mov    0x4(%eax),%eax
   16f45:	8d 50 ff             	lea    0xffffffff(%eax),%edx
   16f48:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16f4b:	89 50 04             	mov    %edx,0x4(%eax)
   16f4e:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16f51:	8b 40 04             	mov    0x4(%eax),%eax
   16f54:	85 c0                	test   %eax,%eax
   16f56:	75 0b                	jne    0x16f63
   16f58:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16f5b:	89 04 24             	mov    %eax,(%esp)
   16f5e:	e8 7d fd ff ff       	call   0x16ce0
   16f63:	e8 68 37 00 00       	call   0x1a6d0
   16f68:	c9                   	leave  
   16f69:	c3                   	ret    
   16f6a:	55                   	push   %ebp
   16f6b:	89 e5                	mov    %esp,%ebp
   16f6d:	83 ec 28             	sub    $0x28,%esp
   16f70:	e8 65 37 00 00       	call   0x1a6da
   16f75:	8b 45 08             	mov    0x8(%ebp),%eax
   16f78:	3d ff ff 5f 00       	cmp    $0x5fffff,%eax
   16f7d:	76 0a                	jbe    0x16f89
   16f7f:	8b 45 08             	mov    0x8(%ebp),%eax
   16f82:	3d ff ff ef 01       	cmp    $0x1efffff,%eax
   16f87:	76 24                	jbe    0x16fad
   16f89:	c7 44 24 0c d0 00 00 	movl   $0xd0,0xc(%esp)
   16f90:	00 
   16f91:	c7 44 24 08 44 ba 01 	movl   $0x1ba44,0x8(%esp)
   16f98:	00 
   16f99:	c7 44 24 04 44 ba 01 	movl   $0x1ba44,0x4(%esp)
   16fa0:	00 
   16fa1:	c7 04 24 b8 ba 01 00 	movl   $0x1bab8,(%esp)
   16fa8:	e8 7b 2c 00 00       	call   0x19c28
   16fad:	8b 45 08             	mov    0x8(%ebp),%eax
   16fb0:	2d 00 00 60 00       	sub    $0x600000,%eax
   16fb5:	c1 e8 0c             	shr    $0xc,%eax
   16fb8:	c1 e0 04             	shl    $0x4,%eax
   16fbb:	05 c0 b5 02 00       	add    $0x2b5c0,%eax
   16fc0:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   16fc3:	e8 08 37 00 00       	call   0x1a6d0
   16fc8:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   16fcb:	8b 40 04             	mov    0x4(%eax),%eax
   16fce:	c9                   	leave  
   16fcf:	c3                   	ret    
   16fd0:	55                   	push   %ebp
   16fd1:	89 e5                	mov    %esp,%ebp
   16fd3:	83 ec 28             	sub    $0x28,%esp
   16fd6:	e8 ff 36 00 00       	call   0x1a6da
   16fdb:	8b 45 08             	mov    0x8(%ebp),%eax
   16fde:	3d ff ff 5f 00       	cmp    $0x5fffff,%eax
   16fe3:	76 0a                	jbe    0x16fef
   16fe5:	8b 45 08             	mov    0x8(%ebp),%eax
   16fe8:	3d ff ff ef 01       	cmp    $0x1efffff,%eax
   16fed:	76 24                	jbe    0x17013
   16fef:	c7 44 24 0c de 00 00 	movl   $0xde,0xc(%esp)
   16ff6:	00 
   16ff7:	c7 44 24 08 44 ba 01 	movl   $0x1ba44,0x8(%esp)
   16ffe:	00 
   16fff:	c7 44 24 04 44 ba 01 	movl   $0x1ba44,0x4(%esp)
   17006:	00 
   17007:	c7 04 24 b8 ba 01 00 	movl   $0x1bab8,(%esp)
   1700e:	e8 15 2c 00 00       	call   0x19c28
   17013:	8b 45 08             	mov    0x8(%ebp),%eax
   17016:	2d 00 00 60 00       	sub    $0x600000,%eax
   1701b:	c1 e8 0c             	shr    $0xc,%eax
   1701e:	c1 e0 04             	shl    $0x4,%eax
   17021:	05 c0 b5 02 00       	add    $0x2b5c0,%eax
   17026:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   17029:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1702c:	8b 40 04             	mov    0x4(%eax),%eax
   1702f:	85 c0                	test   %eax,%eax
   17031:	7f 24                	jg     0x17057
   17033:	c7 44 24 0c e0 00 00 	movl   $0xe0,0xc(%esp)
   1703a:	00 
   1703b:	c7 44 24 08 44 ba 01 	movl   $0x1ba44,0x8(%esp)
   17042:	00 
   17043:	c7 44 24 04 44 ba 01 	movl   $0x1ba44,0x4(%esp)
   1704a:	00 
   1704b:	c7 04 24 e5 ba 01 00 	movl   $0x1bae5,(%esp)
   17052:	e8 d1 2b 00 00       	call   0x19c28
   17057:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1705a:	8b 40 04             	mov    0x4(%eax),%eax
   1705d:	8d 50 01             	lea    0x1(%eax),%edx
   17060:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   17063:	89 50 04             	mov    %edx,0x4(%eax)
   17066:	e8 65 36 00 00       	call   0x1a6d0
   1706b:	c9                   	leave  
   1706c:	c3                   	ret    
   1706d:	55                   	push   %ebp
   1706e:	89 e5                	mov    %esp,%ebp
   17070:	83 ec 10             	sub    $0x10,%esp
   17073:	8b 45 0c             	mov    0xc(%ebp),%eax
   17076:	c1 e8 16             	shr    $0x16,%eax
   17079:	25 ff 03 00 00       	and    $0x3ff,%eax
   1707e:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   17081:	8b 45 0c             	mov    0xc(%ebp),%eax
   17084:	c1 e8 0c             	shr    $0xc,%eax
   17087:	25 ff 03 00 00       	and    $0x3ff,%eax
   1708c:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   1708f:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   17092:	c1 e0 02             	shl    $0x2,%eax
   17095:	03 45 08             	add    0x8(%ebp),%eax
   17098:	8b 00                	mov    (%eax),%eax
   1709a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   1709f:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   170a2:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   170a5:	c1 e0 02             	shl    $0x2,%eax
   170a8:	89 c1                	mov    %eax,%ecx
   170aa:	03 4d fc             	add    0xfffffffc(%ebp),%ecx
   170ad:	8b 45 10             	mov    0x10(%ebp),%eax
   170b0:	89 c2                	mov    %eax,%edx
   170b2:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
   170b8:	8b 45 14             	mov    0x14(%ebp),%eax
   170bb:	25 ff 0f 00 00       	and    $0xfff,%eax
   170c0:	09 d0                	or     %edx,%eax
   170c2:	89 01                	mov    %eax,(%ecx)
   170c4:	c9                   	leave  
   170c5:	c3                   	ret    
   170c6:	55                   	push   %ebp
   170c7:	89 e5                	mov    %esp,%ebp
   170c9:	b8 00 00 00 00       	mov    $0x0,%eax
   170ce:	5d                   	pop    %ebp
   170cf:	c3                   	ret    
   170d0:	55                   	push   %ebp
   170d1:	89 e5                	mov    %esp,%ebp
   170d3:	b8 00 00 00 00       	mov    $0x0,%eax
   170d8:	5d                   	pop    %ebp
   170d9:	c3                   	ret    
   170da:	00 00                	add    %al,(%eax)
   170dc:	55                   	push   %ebp
   170dd:	89 e5                	mov    %esp,%ebp
   170df:	83 ec 0c             	sub    $0xc,%esp
   170e2:	8b 45 0c             	mov    0xc(%ebp),%eax
   170e5:	8b 55 14             	mov    0x14(%ebp),%edx
   170e8:	8b 4d 18             	mov    0x18(%ebp),%ecx
   170eb:	66 89 45 fc          	mov    %ax,0xfffffffc(%ebp)
   170ef:	88 55 f8             	mov    %dl,0xfffffff8(%ebp)
   170f2:	88 4d f4             	mov    %cl,0xfffffff4(%ebp)
   170f5:	8b 45 10             	mov    0x10(%ebp),%eax
   170f8:	89 c2                	mov    %eax,%edx
   170fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   170ff:	21 c2                	and    %eax,%edx
   17101:	8b 45 08             	mov    0x8(%ebp),%eax
   17104:	66 89 10             	mov    %dx,(%eax)
   17107:	8b 55 08             	mov    0x8(%ebp),%edx
   1710a:	0f b7 45 fc          	movzwl 0xfffffffc(%ebp),%eax
   1710e:	66 89 42 02          	mov    %ax,0x2(%edx)
   17112:	8b 55 08             	mov    0x8(%ebp),%edx
   17115:	0f b6 45 f8          	movzbl 0xfffffff8(%ebp),%eax
   17119:	88 42 04             	mov    %al,0x4(%edx)
   1711c:	8b 55 08             	mov    0x8(%ebp),%edx
   1711f:	0f b6 45 f4          	movzbl 0xfffffff4(%ebp),%eax
   17123:	88 42 05             	mov    %al,0x5(%edx)
   17126:	8b 45 10             	mov    0x10(%ebp),%eax
   17129:	c1 f8 10             	sar    $0x10,%eax
   1712c:	89 c2                	mov    %eax,%edx
   1712e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   17133:	21 c2                	and    %eax,%edx
   17135:	8b 45 08             	mov    0x8(%ebp),%eax
   17138:	66 89 50 06          	mov    %dx,0x6(%eax)
   1713c:	c9                   	leave  
   1713d:	c3                   	ret    
   1713e:	55                   	push   %ebp
   1713f:	89 e5                	mov    %esp,%ebp
   17141:	83 ec 14             	sub    $0x14,%esp
   17144:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   1714b:	00 
   1714c:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17153:	00 
   17154:	c7 44 24 08 b9 00 01 	movl   $0x100b9,0x8(%esp)
   1715b:	00 
   1715c:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   17163:	00 
   17164:	c7 04 24 a0 ad 02 00 	movl   $0x2ada0,(%esp)
   1716b:	e8 6c ff ff ff       	call   0x170dc
   17170:	b8 a8 ad 02 00       	mov    $0x2ada8,%eax
   17175:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   1717c:	00 
   1717d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17184:	00 
   17185:	c7 44 24 08 31 01 01 	movl   $0x10131,0x8(%esp)
   1718c:	00 
   1718d:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   17194:	00 
   17195:	89 04 24             	mov    %eax,(%esp)
   17198:	e8 3f ff ff ff       	call   0x170dc
   1719d:	b8 b0 ad 02 00       	mov    $0x2adb0,%eax
   171a2:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   171a9:	00 
   171aa:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   171b1:	00 
   171b2:	c7 44 24 08 70 01 01 	movl   $0x10170,0x8(%esp)
   171b9:	00 
   171ba:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   171c1:	00 
   171c2:	89 04 24             	mov    %eax,(%esp)
   171c5:	e8 12 ff ff ff       	call   0x170dc
   171ca:	b8 b8 ad 02 00       	mov    $0x2adb8,%eax
   171cf:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   171d6:	00 
   171d7:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   171de:	00 
   171df:	c7 44 24 08 b2 01 01 	movl   $0x101b2,0x8(%esp)
   171e6:	00 
   171e7:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   171ee:	00 
   171ef:	89 04 24             	mov    %eax,(%esp)
   171f2:	e8 e5 fe ff ff       	call   0x170dc
   171f7:	b8 c0 ad 02 00       	mov    $0x2adc0,%eax
   171fc:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   17203:	00 
   17204:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   1720b:	00 
   1720c:	c7 44 24 08 f4 01 01 	movl   $0x101f4,0x8(%esp)
   17213:	00 
   17214:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   1721b:	00 
   1721c:	89 04 24             	mov    %eax,(%esp)
   1721f:	e8 b8 fe ff ff       	call   0x170dc
   17224:	b8 c8 ad 02 00       	mov    $0x2adc8,%eax
   17229:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   17230:	00 
   17231:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17238:	00 
   17239:	c7 44 24 08 36 02 01 	movl   $0x10236,0x8(%esp)
   17240:	00 
   17241:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   17248:	00 
   17249:	89 04 24             	mov    %eax,(%esp)
   1724c:	e8 8b fe ff ff       	call   0x170dc
   17251:	b8 d0 ad 02 00       	mov    $0x2add0,%eax
   17256:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   1725d:	00 
   1725e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17265:	00 
   17266:	c7 44 24 08 78 02 01 	movl   $0x10278,0x8(%esp)
   1726d:	00 
   1726e:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   17275:	00 
   17276:	89 04 24             	mov    %eax,(%esp)
   17279:	e8 5e fe ff ff       	call   0x170dc
   1727e:	b8 d8 ad 02 00       	mov    $0x2add8,%eax
   17283:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   1728a:	00 
   1728b:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17292:	00 
   17293:	c7 44 24 08 ba 02 01 	movl   $0x102ba,0x8(%esp)
   1729a:	00 
   1729b:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   172a2:	00 
   172a3:	89 04 24             	mov    %eax,(%esp)
   172a6:	e8 31 fe ff ff       	call   0x170dc
   172ab:	b8 e0 ad 02 00       	mov    $0x2ade0,%eax
   172b0:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   172b7:	00 
   172b8:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   172bf:	00 
   172c0:	c7 44 24 08 fc 02 01 	movl   $0x102fc,0x8(%esp)
   172c7:	00 
   172c8:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   172cf:	00 
   172d0:	89 04 24             	mov    %eax,(%esp)
   172d3:	e8 04 fe ff ff       	call   0x170dc
   172d8:	b8 e8 ad 02 00       	mov    $0x2ade8,%eax
   172dd:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   172e4:	00 
   172e5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   172ec:	00 
   172ed:	c7 44 24 08 3c 03 01 	movl   $0x1033c,0x8(%esp)
   172f4:	00 
   172f5:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   172fc:	00 
   172fd:	89 04 24             	mov    %eax,(%esp)
   17300:	e8 d7 fd ff ff       	call   0x170dc
   17305:	b8 f0 ad 02 00       	mov    $0x2adf0,%eax
   1730a:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   17311:	00 
   17312:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17319:	00 
   1731a:	c7 44 24 08 7e 03 01 	movl   $0x1037e,0x8(%esp)
   17321:	00 
   17322:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   17329:	00 
   1732a:	89 04 24             	mov    %eax,(%esp)
   1732d:	e8 aa fd ff ff       	call   0x170dc
   17332:	b8 f8 ad 02 00       	mov    $0x2adf8,%eax
   17337:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   1733e:	00 
   1733f:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17346:	00 
   17347:	c7 44 24 08 be 03 01 	movl   $0x103be,0x8(%esp)
   1734e:	00 
   1734f:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   17356:	00 
   17357:	89 04 24             	mov    %eax,(%esp)
   1735a:	e8 7d fd ff ff       	call   0x170dc
   1735f:	b8 00 ae 02 00       	mov    $0x2ae00,%eax
   17364:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   1736b:	00 
   1736c:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17373:	00 
   17374:	c7 44 24 08 fe 03 01 	movl   $0x103fe,0x8(%esp)
   1737b:	00 
   1737c:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   17383:	00 
   17384:	89 04 24             	mov    %eax,(%esp)
   17387:	e8 50 fd ff ff       	call   0x170dc
   1738c:	b8 08 ae 02 00       	mov    $0x2ae08,%eax
   17391:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   17398:	00 
   17399:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   173a0:	00 
   173a1:	c7 44 24 08 3e 04 01 	movl   $0x1043e,0x8(%esp)
   173a8:	00 
   173a9:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   173b0:	00 
   173b1:	89 04 24             	mov    %eax,(%esp)
   173b4:	e8 23 fd ff ff       	call   0x170dc
   173b9:	b8 10 ae 02 00       	mov    $0x2ae10,%eax
   173be:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   173c5:	00 
   173c6:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   173cd:	00 
   173ce:	c7 44 24 08 7e 04 01 	movl   $0x1047e,0x8(%esp)
   173d5:	00 
   173d6:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   173dd:	00 
   173de:	89 04 24             	mov    %eax,(%esp)
   173e1:	e8 f6 fc ff ff       	call   0x170dc
   173e6:	b8 20 ae 02 00       	mov    $0x2ae20,%eax
   173eb:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   173f2:	00 
   173f3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   173fa:	00 
   173fb:	c7 44 24 08 be 04 01 	movl   $0x104be,0x8(%esp)
   17402:	00 
   17403:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   1740a:	00 
   1740b:	89 04 24             	mov    %eax,(%esp)
   1740e:	e8 c9 fc ff ff       	call   0x170dc
   17413:	b8 28 ae 02 00       	mov    $0x2ae28,%eax
   17418:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   1741f:	00 
   17420:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17427:	00 
   17428:	c7 44 24 08 00 05 01 	movl   $0x10500,0x8(%esp)
   1742f:	00 
   17430:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   17437:	00 
   17438:	89 04 24             	mov    %eax,(%esp)
   1743b:	e8 9c fc ff ff       	call   0x170dc
   17440:	b8 30 ae 02 00       	mov    $0x2ae30,%eax
   17445:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   1744c:	00 
   1744d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17454:	00 
   17455:	c7 44 24 08 40 05 01 	movl   $0x10540,0x8(%esp)
   1745c:	00 
   1745d:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   17464:	00 
   17465:	89 04 24             	mov    %eax,(%esp)
   17468:	e8 6f fc ff ff       	call   0x170dc
   1746d:	b8 38 ae 02 00       	mov    $0x2ae38,%eax
   17472:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   17479:	00 
   1747a:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17481:	00 
   17482:	c7 44 24 08 82 05 01 	movl   $0x10582,0x8(%esp)
   17489:	00 
   1748a:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   17491:	00 
   17492:	89 04 24             	mov    %eax,(%esp)
   17495:	e8 42 fc ff ff       	call   0x170dc
   1749a:	c9                   	leave  
   1749b:	c3                   	ret    
   1749c:	55                   	push   %ebp
   1749d:	89 e5                	mov    %esp,%ebp
   1749f:	83 ec 14             	sub    $0x14,%esp
   174a2:	b8 a0 ae 02 00       	mov    $0x2aea0,%eax
   174a7:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   174ae:	00 
   174af:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   174b6:	00 
   174b7:	c7 44 24 08 0c 06 01 	movl   $0x1060c,0x8(%esp)
   174be:	00 
   174bf:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   174c6:	00 
   174c7:	89 04 24             	mov    %eax,(%esp)
   174ca:	e8 0d fc ff ff       	call   0x170dc
   174cf:	b8 a8 ae 02 00       	mov    $0x2aea8,%eax
   174d4:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   174db:	00 
   174dc:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   174e3:	00 
   174e4:	c7 44 24 08 3d 06 01 	movl   $0x1063d,0x8(%esp)
   174eb:	00 
   174ec:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   174f3:	00 
   174f4:	89 04 24             	mov    %eax,(%esp)
   174f7:	e8 e0 fb ff ff       	call   0x170dc
   174fc:	b8 b0 ae 02 00       	mov    $0x2aeb0,%eax
   17501:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   17508:	00 
   17509:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17510:	00 
   17511:	c7 44 24 08 71 06 01 	movl   $0x10671,0x8(%esp)
   17518:	00 
   17519:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   17520:	00 
   17521:	89 04 24             	mov    %eax,(%esp)
   17524:	e8 b3 fb ff ff       	call   0x170dc
   17529:	b8 b8 ae 02 00       	mov    $0x2aeb8,%eax
   1752e:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   17535:	00 
   17536:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   1753d:	00 
   1753e:	c7 44 24 08 a5 06 01 	movl   $0x106a5,0x8(%esp)
   17545:	00 
   17546:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   1754d:	00 
   1754e:	89 04 24             	mov    %eax,(%esp)
   17551:	e8 86 fb ff ff       	call   0x170dc
   17556:	b8 c0 ae 02 00       	mov    $0x2aec0,%eax
   1755b:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   17562:	00 
   17563:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   1756a:	00 
   1756b:	c7 44 24 08 d9 06 01 	movl   $0x106d9,0x8(%esp)
   17572:	00 
   17573:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   1757a:	00 
   1757b:	89 04 24             	mov    %eax,(%esp)
   1757e:	e8 59 fb ff ff       	call   0x170dc
   17583:	b8 c8 ae 02 00       	mov    $0x2aec8,%eax
   17588:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   1758f:	00 
   17590:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17597:	00 
   17598:	c7 44 24 08 0d 07 01 	movl   $0x1070d,0x8(%esp)
   1759f:	00 
   175a0:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   175a7:	00 
   175a8:	89 04 24             	mov    %eax,(%esp)
   175ab:	e8 2c fb ff ff       	call   0x170dc
   175b0:	b8 d0 ae 02 00       	mov    $0x2aed0,%eax
   175b5:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   175bc:	00 
   175bd:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   175c4:	00 
   175c5:	c7 44 24 08 41 07 01 	movl   $0x10741,0x8(%esp)
   175cc:	00 
   175cd:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   175d4:	00 
   175d5:	89 04 24             	mov    %eax,(%esp)
   175d8:	e8 ff fa ff ff       	call   0x170dc
   175dd:	b8 d8 ae 02 00       	mov    $0x2aed8,%eax
   175e2:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   175e9:	00 
   175ea:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   175f1:	00 
   175f2:	c7 44 24 08 75 07 01 	movl   $0x10775,0x8(%esp)
   175f9:	00 
   175fa:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   17601:	00 
   17602:	89 04 24             	mov    %eax,(%esp)
   17605:	e8 d2 fa ff ff       	call   0x170dc
   1760a:	b8 e0 ae 02 00       	mov    $0x2aee0,%eax
   1760f:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   17616:	00 
   17617:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   1761e:	00 
   1761f:	c7 44 24 08 a9 07 01 	movl   $0x107a9,0x8(%esp)
   17626:	00 
   17627:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   1762e:	00 
   1762f:	89 04 24             	mov    %eax,(%esp)
   17632:	e8 a5 fa ff ff       	call   0x170dc
   17637:	b8 e8 ae 02 00       	mov    $0x2aee8,%eax
   1763c:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   17643:	00 
   17644:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   1764b:	00 
   1764c:	c7 44 24 08 dd 07 01 	movl   $0x107dd,0x8(%esp)
   17653:	00 
   17654:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   1765b:	00 
   1765c:	89 04 24             	mov    %eax,(%esp)
   1765f:	e8 78 fa ff ff       	call   0x170dc
   17664:	b8 f0 ae 02 00       	mov    $0x2aef0,%eax
   17669:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   17670:	00 
   17671:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17678:	00 
   17679:	c7 44 24 08 11 08 01 	movl   $0x10811,0x8(%esp)
   17680:	00 
   17681:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   17688:	00 
   17689:	89 04 24             	mov    %eax,(%esp)
   1768c:	e8 4b fa ff ff       	call   0x170dc
   17691:	b8 f8 ae 02 00       	mov    $0x2aef8,%eax
   17696:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   1769d:	00 
   1769e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   176a5:	00 
   176a6:	c7 44 24 08 45 08 01 	movl   $0x10845,0x8(%esp)
   176ad:	00 
   176ae:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   176b5:	00 
   176b6:	89 04 24             	mov    %eax,(%esp)
   176b9:	e8 1e fa ff ff       	call   0x170dc
   176be:	b8 00 af 02 00       	mov    $0x2af00,%eax
   176c3:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   176ca:	00 
   176cb:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   176d2:	00 
   176d3:	c7 44 24 08 79 08 01 	movl   $0x10879,0x8(%esp)
   176da:	00 
   176db:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   176e2:	00 
   176e3:	89 04 24             	mov    %eax,(%esp)
   176e6:	e8 f1 f9 ff ff       	call   0x170dc
   176eb:	b8 08 af 02 00       	mov    $0x2af08,%eax
   176f0:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   176f7:	00 
   176f8:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   176ff:	00 
   17700:	c7 44 24 08 ad 08 01 	movl   $0x108ad,0x8(%esp)
   17707:	00 
   17708:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   1770f:	00 
   17710:	89 04 24             	mov    %eax,(%esp)
   17713:	e8 c4 f9 ff ff       	call   0x170dc
   17718:	b8 10 af 02 00       	mov    $0x2af10,%eax
   1771d:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   17724:	00 
   17725:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   1772c:	00 
   1772d:	c7 44 24 08 e1 08 01 	movl   $0x108e1,0x8(%esp)
   17734:	00 
   17735:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   1773c:	00 
   1773d:	89 04 24             	mov    %eax,(%esp)
   17740:	e8 97 f9 ff ff       	call   0x170dc
   17745:	b8 18 af 02 00       	mov    $0x2af18,%eax
   1774a:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
   17751:	00 
   17752:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   17759:	00 
   1775a:	c7 44 24 08 15 09 01 	movl   $0x10915,0x8(%esp)
   17761:	00 
   17762:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
   17769:	00 
   1776a:	89 04 24             	mov    %eax,(%esp)
   1776d:	e8 6a f9 ff ff       	call   0x170dc
   17772:	c9                   	leave  
   17773:	c3                   	ret    
   17774:	55                   	push   %ebp
   17775:	89 e5                	mov    %esp,%ebp
   17777:	83 ec 14             	sub    $0x14,%esp
   1777a:	b8 a0 b1 02 00       	mov    $0x2b1a0,%eax
   1777f:	c7 44 24 10 ee 00 00 	movl   $0xee,0x10(%esp)
   17786:	00 
   17787:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   1778e:	00 
   1778f:	c7 44 24 08 86 09 01 	movl   $0x10986,0x8(%esp)
   17796:	00 
   17797:	c7 44 24 04 13 00 00 	movl   $0x13,0x4(%esp)
   1779e:	00 
   1779f:	89 04 24             	mov    %eax,(%esp)
   177a2:	e8 35 f9 ff ff       	call   0x170dc
   177a7:	c9                   	leave  
   177a8:	c3                   	ret    
   177a9:	55                   	push   %ebp
   177aa:	89 e5                	mov    %esp,%ebp
   177ac:	83 ec 28             	sub    $0x28,%esp
   177af:	8b 45 08             	mov    0x8(%ebp),%eax
   177b2:	83 f8 0e             	cmp    $0xe,%eax
   177b5:	74 02                	je     0x177b9
   177b7:	eb 6c                	jmp    0x17825
   177b9:	8b 45 0c             	mov    0xc(%ebp),%eax
   177bc:	83 e0 07             	and    $0x7,%eax
   177bf:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   177c2:	83 7d ec 08          	cmpl   $0x8,0xffffffec(%ebp)
   177c6:	0f 87 d4 00 00 00    	ja     0x178a0
   177cc:	b8 01 00 00 00       	mov    $0x1,%eax
   177d1:	89 c2                	mov    %eax,%edx
   177d3:	0f b6 4d ec          	movzbl 0xffffffec(%ebp),%ecx
   177d7:	d3 e2                	shl    %cl,%edx
   177d9:	89 55 e8             	mov    %edx,0xffffffe8(%ebp)
   177dc:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   177df:	83 e0 55             	and    $0x55,%eax
   177e2:	85 c0                	test   %eax,%eax
   177e4:	75 27                	jne    0x1780d
   177e6:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   177e9:	25 02 01 00 00       	and    $0x102,%eax
   177ee:	85 c0                	test   %eax,%eax
   177f0:	75 25                	jne    0x17817
   177f2:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   177f5:	25 88 00 00 00       	and    $0x88,%eax
   177fa:	85 c0                	test   %eax,%eax
   177fc:	75 05                	jne    0x17803
   177fe:	e9 9d 00 00 00       	jmp    0x178a0
   17803:	e8 0b f6 ff ff       	call   0x16e13
   17808:	e9 93 00 00 00       	jmp    0x178a0
   1780d:	e8 8e f5 ff ff       	call   0x16da0
   17812:	e9 89 00 00 00       	jmp    0x178a0
   17817:	c7 04 24 f6 bc 01 00 	movl   $0x1bcf6,(%esp)
   1781e:	e8 29 35 00 00       	call   0x1ad4c
   17823:	eb fe                	jmp    0x17823
   17825:	a1 c0 45 04 00       	mov    0x445c0,%eax
   1782a:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   17830:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   17837:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
   1783e:	eb 10                	jmp    0x17850
   17840:	c7 04 24 0c bd 01 00 	movl   $0x1bd0c,(%esp)
   17847:	e8 00 35 00 00       	call   0x1ad4c
   1784c:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
   17850:	81 7d fc 8f 01 00 00 	cmpl   $0x18f,0xfffffffc(%ebp)
   17857:	7e e7                	jle    0x17840
   17859:	a1 c0 45 04 00       	mov    0x445c0,%eax
   1785e:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   17864:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   1786b:	8b 45 08             	mov    0x8(%ebp),%eax
   1786e:	8b 04 85 00 cb 01 00 	mov    0x1cb00(,%eax,4),%eax
   17875:	89 44 24 04          	mov    %eax,0x4(%esp)
   17879:	c7 04 24 0e bd 01 00 	movl   $0x1bd0e,(%esp)
   17880:	e8 c7 34 00 00       	call   0x1ad4c
   17885:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
   17889:	74 13                	je     0x1789e
   1788b:	8b 45 0c             	mov    0xc(%ebp),%eax
   1788e:	89 44 24 04          	mov    %eax,0x4(%esp)
   17892:	c7 04 24 11 bd 01 00 	movl   $0x1bd11,(%esp)
   17899:	e8 ae 34 00 00       	call   0x1ad4c
   1789e:	eb fe                	jmp    0x1789e
   178a0:	c9                   	leave  
   178a1:	c3                   	ret    
   178a2:	55                   	push   %ebp
   178a3:	89 e5                	mov    %esp,%ebp
   178a5:	83 ec 08             	sub    $0x8,%esp
   178a8:	c7 44 24 04 34 00 00 	movl   $0x34,0x4(%esp)
   178af:	00 
   178b0:	c7 04 24 43 00 00 00 	movl   $0x43,(%esp)
   178b7:	e8 ba 2d 00 00       	call   0x1a676
   178bc:	c7 44 24 04 9b 00 00 	movl   $0x9b,0x4(%esp)
   178c3:	00 
   178c4:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
   178cb:	e8 a6 2d 00 00       	call   0x1a676
   178d0:	c7 44 24 04 2e 00 00 	movl   $0x2e,0x4(%esp)
   178d7:	00 
   178d8:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
   178df:	e8 92 2d 00 00       	call   0x1a676
   178e4:	c9                   	leave  
   178e5:	c3                   	ret    
   178e6:	00 00                	add    %al,(%eax)
   178e8:	55                   	push   %ebp
   178e9:	89 e5                	mov    %esp,%ebp
   178eb:	83 ec 48             	sub    $0x48,%esp
   178ee:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   178f5:	00 
   178f6:	c7 04 24 20 bd 01 00 	movl   $0x1bd20,(%esp)
   178fd:	e8 56 23 00 00       	call   0x19c58
   17902:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   17905:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
   17909:	74 24                	je     0x1792f
   1790b:	c7 44 24 0c 07 00 00 	movl   $0x7,0xc(%esp)
   17912:	00 
   17913:	c7 44 24 08 25 bd 01 	movl   $0x1bd25,0x8(%esp)
   1791a:	00 
   1791b:	c7 44 24 04 25 bd 01 	movl   $0x1bd25,0x4(%esp)
   17922:	00 
   17923:	c7 04 24 2c bd 01 00 	movl   $0x1bd2c,(%esp)
   1792a:	e8 f9 22 00 00       	call   0x19c28
   1792f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   17936:	00 
   17937:	c7 04 24 20 bd 01 00 	movl   $0x1bd20,(%esp)
   1793e:	e8 15 23 00 00       	call   0x19c58
   17943:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   17946:	83 7d fc 01          	cmpl   $0x1,0xfffffffc(%ebp)
   1794a:	74 26                	je     0x17972
   1794c:	c7 44 24 0c 09 00 00 	movl   $0x9,0xc(%esp)
   17953:	00 
   17954:	c7 44 24 08 25 bd 01 	movl   $0x1bd25,0x8(%esp)
   1795b:	00 
   1795c:	c7 44 24 04 25 bd 01 	movl   $0x1bd25,0x4(%esp)
   17963:	00 
   17964:	c7 04 24 37 bd 01 00 	movl   $0x1bd37,(%esp)
   1796b:	e8 b8 22 00 00       	call   0x19c28
   17970:	eb 00                	jmp    0x17972
   17972:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
   17975:	89 44 24 08          	mov    %eax,0x8(%esp)
   17979:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
   17980:	ff 
   17981:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
   17988:	e8 63 22 00 00       	call   0x19bf0
   1798d:	85 c0                	test   %eax,%eax
   1798f:	74 24                	je     0x179b5
   17991:	c7 44 24 0c 0f 00 00 	movl   $0xf,0xc(%esp)
   17998:	00 
   17999:	c7 44 24 08 25 bd 01 	movl   $0x1bd25,0x8(%esp)
   179a0:	00 
   179a1:	c7 44 24 04 25 bd 01 	movl   $0x1bd25,0x4(%esp)
   179a8:	00 
   179a9:	c7 04 24 43 bd 01 00 	movl   $0x1bd43,(%esp)
   179b0:	e8 73 22 00 00       	call   0x19c28
   179b5:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   179b8:	89 44 24 04          	mov    %eax,0x4(%esp)
   179bc:	c7 04 24 58 bd 01 00 	movl   $0x1bd58,(%esp)
   179c3:	e8 c5 33 00 00       	call   0x1ad8d
   179c8:	8b 55 d0             	mov    0xffffffd0(%ebp),%edx
   179cb:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
   179ce:	89 44 24 08          	mov    %eax,0x8(%esp)
   179d2:	89 54 24 04          	mov    %edx,0x4(%esp)
   179d6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   179dd:	e8 0e 22 00 00       	call   0x19bf0
   179e2:	85 c0                	test   %eax,%eax
   179e4:	74 8c                	je     0x17972
   179e6:	c7 44 24 0c 11 00 00 	movl   $0x11,0xc(%esp)
   179ed:	00 
   179ee:	c7 44 24 08 25 bd 01 	movl   $0x1bd25,0x8(%esp)
   179f5:	00 
   179f6:	c7 44 24 04 25 bd 01 	movl   $0x1bd25,0x4(%esp)
   179fd:	00 
   179fe:	c7 04 24 79 bd 01 00 	movl   $0x1bd79,(%esp)
   17a05:	e8 1e 22 00 00       	call   0x19c28
   17a0a:	e9 63 ff ff ff       	jmp    0x17972
   17a0f:	55                   	push   %ebp
   17a10:	89 e5                	mov    %esp,%ebp
   17a12:	83 ec 48             	sub    $0x48,%esp
   17a15:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   17a1c:	00 
   17a1d:	c7 04 24 94 bd 01 00 	movl   $0x1bd94,(%esp)
   17a24:	e8 2f 22 00 00       	call   0x19c58
   17a29:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   17a2c:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
   17a30:	74 24                	je     0x17a56
   17a32:	c7 44 24 0c 19 00 00 	movl   $0x19,0xc(%esp)
   17a39:	00 
   17a3a:	c7 44 24 08 25 bd 01 	movl   $0x1bd25,0x8(%esp)
   17a41:	00 
   17a42:	c7 44 24 04 25 bd 01 	movl   $0x1bd25,0x4(%esp)
   17a49:	00 
   17a4a:	c7 04 24 2c bd 01 00 	movl   $0x1bd2c,(%esp)
   17a51:	e8 d2 21 00 00       	call   0x19c28
   17a56:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   17a5d:	00 
   17a5e:	c7 04 24 94 bd 01 00 	movl   $0x1bd94,(%esp)
   17a65:	e8 ee 21 00 00       	call   0x19c58
   17a6a:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   17a6d:	83 7d fc 01          	cmpl   $0x1,0xfffffffc(%ebp)
   17a71:	74 24                	je     0x17a97
   17a73:	c7 44 24 0c 1b 00 00 	movl   $0x1b,0xc(%esp)
   17a7a:	00 
   17a7b:	c7 44 24 08 25 bd 01 	movl   $0x1bd25,0x8(%esp)
   17a82:	00 
   17a83:	c7 44 24 04 25 bd 01 	movl   $0x1bd25,0x4(%esp)
   17a8a:	00 
   17a8b:	c7 04 24 37 bd 01 00 	movl   $0x1bd37,(%esp)
   17a92:	e8 91 21 00 00       	call   0x19c28
   17a97:	e8 1c 29 00 00       	call   0x1a3b8
   17a9c:	89 44 24 04          	mov    %eax,0x4(%esp)
   17aa0:	c7 04 24 9c bd 01 00 	movl   $0x1bd9c,(%esp)
   17aa7:	e8 e1 32 00 00       	call   0x1ad8d
   17aac:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
   17aaf:	89 44 24 08          	mov    %eax,0x8(%esp)
   17ab3:	c7 44 24 04 07 00 00 	movl   $0x7,0x4(%esp)
   17aba:	00 
   17abb:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   17ac2:	e8 29 21 00 00       	call   0x19bf0
   17ac7:	85 c0                	test   %eax,%eax
   17ac9:	74 24                	je     0x17aef
   17acb:	c7 44 24 0c 1f 00 00 	movl   $0x1f,0xc(%esp)
   17ad2:	00 
   17ad3:	c7 44 24 08 25 bd 01 	movl   $0x1bd25,0x8(%esp)
   17ada:	00 
   17adb:	c7 44 24 04 25 bd 01 	movl   $0x1bd25,0x4(%esp)
   17ae2:	00 
   17ae3:	c7 04 24 c0 bd 01 00 	movl   $0x1bdc0,(%esp)
   17aea:	e8 39 21 00 00       	call   0x19c28
   17aef:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
   17af6:	e8 0c 2c 00 00       	call   0x1a707
   17afb:	eb 9a                	jmp    0x17a97
   17afd:	55                   	push   %ebp
   17afe:	89 e5                	mov    %esp,%ebp
   17b00:	83 ec 58             	sub    $0x58,%esp
   17b03:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   17b0a:	00 
   17b0b:	c7 04 24 94 bd 01 00 	movl   $0x1bd94,(%esp)
   17b12:	e8 41 21 00 00       	call   0x19c58
   17b17:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   17b1a:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
   17b1e:	74 24                	je     0x17b44
   17b20:	c7 44 24 0c 29 00 00 	movl   $0x29,0xc(%esp)
   17b27:	00 
   17b28:	c7 44 24 08 25 bd 01 	movl   $0x1bd25,0x8(%esp)
   17b2f:	00 
   17b30:	c7 44 24 04 25 bd 01 	movl   $0x1bd25,0x4(%esp)
   17b37:	00 
   17b38:	c7 04 24 2c bd 01 00 	movl   $0x1bd2c,(%esp)
   17b3f:	e8 e4 20 00 00       	call   0x19c28
   17b44:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   17b4b:	00 
   17b4c:	c7 04 24 94 bd 01 00 	movl   $0x1bd94,(%esp)
   17b53:	e8 00 21 00 00       	call   0x19c58
   17b58:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   17b5b:	83 7d f4 01          	cmpl   $0x1,0xfffffff4(%ebp)
   17b5f:	74 24                	je     0x17b85
   17b61:	c7 44 24 0c 2b 00 00 	movl   $0x2b,0xc(%esp)
   17b68:	00 
   17b69:	c7 44 24 08 25 bd 01 	movl   $0x1bd25,0x8(%esp)
   17b70:	00 
   17b71:	c7 44 24 04 25 bd 01 	movl   $0x1bd25,0x4(%esp)
   17b78:	00 
   17b79:	c7 04 24 37 bd 01 00 	movl   $0x1bd37,(%esp)
   17b80:	e8 a3 20 00 00       	call   0x19c28
   17b85:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
   17b8c:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
   17b93:	e8 20 28 00 00       	call   0x1a3b8
   17b98:	83 45 f8 01          	addl   $0x1,0xfffffff8(%ebp)
   17b9c:	89 44 24 08          	mov    %eax,0x8(%esp)
   17ba0:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   17ba3:	89 44 24 04          	mov    %eax,0x4(%esp)
   17ba7:	c7 04 24 e4 bd 01 00 	movl   $0x1bde4,(%esp)
   17bae:	e8 da 31 00 00       	call   0x1ad8d
   17bb3:	e8 5c 28 00 00       	call   0x1a414
   17bb8:	2b 45 fc             	sub    0xfffffffc(%ebp),%eax
   17bbb:	89 44 24 04          	mov    %eax,0x4(%esp)
   17bbf:	c7 04 24 0d be 01 00 	movl   $0x1be0d,(%esp)
   17bc6:	e8 c2 31 00 00       	call   0x1ad8d
   17bcb:	e8 44 28 00 00       	call   0x1a414
   17bd0:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   17bd3:	8d 45 c8             	lea    0xffffffc8(%ebp),%eax
   17bd6:	89 44 24 08          	mov    %eax,0x8(%esp)
   17bda:	c7 44 24 04 07 00 00 	movl   $0x7,0x4(%esp)
   17be1:	00 
   17be2:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   17be9:	e8 02 20 00 00       	call   0x19bf0
   17bee:	85 c0                	test   %eax,%eax
   17bf0:	74 24                	je     0x17c16
   17bf2:	c7 44 24 0c 35 00 00 	movl   $0x35,0xc(%esp)
   17bf9:	00 
   17bfa:	c7 44 24 08 25 bd 01 	movl   $0x1bd25,0x8(%esp)
   17c01:	00 
   17c02:	c7 44 24 04 25 bd 01 	movl   $0x1bd25,0x4(%esp)
   17c09:	00 
   17c0a:	c7 04 24 c0 bd 01 00 	movl   $0x1bdc0,(%esp)
   17c11:	e8 12 20 00 00       	call   0x19c28
   17c16:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
   17c1d:	e8 e5 2a 00 00       	call   0x1a707
   17c22:	e9 6c ff ff ff       	jmp    0x17b93
   17c27:	55                   	push   %ebp
   17c28:	89 e5                	mov    %esp,%ebp
   17c2a:	83 ec 48             	sub    $0x48,%esp
   17c2d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   17c34:	00 
   17c35:	c7 04 24 94 bd 01 00 	movl   $0x1bd94,(%esp)
   17c3c:	e8 17 20 00 00       	call   0x19c58
   17c41:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   17c44:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
   17c48:	74 24                	je     0x17c6e
   17c4a:	c7 44 24 0c 40 00 00 	movl   $0x40,0xc(%esp)
   17c51:	00 
   17c52:	c7 44 24 08 25 bd 01 	movl   $0x1bd25,0x8(%esp)
   17c59:	00 
   17c5a:	c7 44 24 04 25 bd 01 	movl   $0x1bd25,0x4(%esp)
   17c61:	00 
   17c62:	c7 04 24 2c bd 01 00 	movl   $0x1bd2c,(%esp)
   17c69:	e8 ba 1f 00 00       	call   0x19c28
   17c6e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   17c75:	00 
   17c76:	c7 04 24 94 bd 01 00 	movl   $0x1bd94,(%esp)
   17c7d:	e8 d6 1f 00 00       	call   0x19c58
   17c82:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   17c85:	83 7d fc 01          	cmpl   $0x1,0xfffffffc(%ebp)
   17c89:	74 24                	je     0x17caf
   17c8b:	c7 44 24 0c 42 00 00 	movl   $0x42,0xc(%esp)
   17c92:	00 
   17c93:	c7 44 24 08 25 bd 01 	movl   $0x1bd25,0x8(%esp)
   17c9a:	00 
   17c9b:	c7 44 24 04 25 bd 01 	movl   $0x1bd25,0x4(%esp)
   17ca2:	00 
   17ca3:	c7 04 24 37 bd 01 00 	movl   $0x1bd37,(%esp)
   17caa:	e8 79 1f 00 00       	call   0x19c28
   17caf:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
   17cb2:	89 44 24 08          	mov    %eax,0x8(%esp)
   17cb6:	c7 44 24 04 07 00 00 	movl   $0x7,0x4(%esp)
   17cbd:	00 
   17cbe:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   17cc5:	e8 26 1f 00 00       	call   0x19bf0
   17cca:	85 c0                	test   %eax,%eax
   17ccc:	74 24                	je     0x17cf2
   17cce:	c7 44 24 0c 46 00 00 	movl   $0x46,0xc(%esp)
   17cd5:	00 
   17cd6:	c7 44 24 08 25 bd 01 	movl   $0x1bd25,0x8(%esp)
   17cdd:	00 
   17cde:	c7 44 24 04 25 bd 01 	movl   $0x1bd25,0x4(%esp)
   17ce5:	00 
   17ce6:	c7 04 24 c0 bd 01 00 	movl   $0x1bdc0,(%esp)
   17ced:	e8 36 1f 00 00       	call   0x19c28
   17cf2:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
   17cf9:	e8 09 2a 00 00       	call   0x1a707
   17cfe:	eb af                	jmp    0x17caf
   17d00:	55                   	push   %ebp
   17d01:	89 e5                	mov    %esp,%ebp
   17d03:	83 ec 18             	sub    $0x18,%esp
   17d06:	c7 05 a4 b5 02 00 00 	movl   $0x0,0x2b5a4
   17d0d:	00 00 00 
   17d10:	b8 20 f4 01 00       	mov    $0x1f420,%eax
   17d15:	66 c7 00 30 00       	movw   $0x30,(%eax)
   17d1a:	b8 22 f4 01 00       	mov    $0x1f422,%eax
   17d1f:	89 c2                	mov    %eax,%edx
   17d21:	b8 f8 c5 01 00       	mov    $0x1c5f8,%eax
   17d26:	89 02                	mov    %eax,(%edx)
   17d28:	b8 b0 00 01 00       	mov    $0x100b0,%eax
   17d2d:	89 c2                	mov    %eax,%edx
   17d2f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   17d34:	21 d0                	and    %edx,%eax
   17d36:	66 a3 a0 ad 02 00    	mov    %ax,0x2ada0
   17d3c:	66 c7 05 a2 ad 02 00 	movw   $0x10,0x2ada2
   17d43:	10 00 
   17d45:	c6 05 a4 ad 02 00 00 	movb   $0x0,0x2ada4
   17d4c:	c6 05 a5 ad 02 00 8e 	movb   $0x8e,0x2ada5
   17d53:	b8 b0 00 01 00       	mov    $0x100b0,%eax
   17d58:	c1 f8 10             	sar    $0x10,%eax
   17d5b:	89 c2                	mov    %eax,%edx
   17d5d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   17d62:	21 d0                	and    %edx,%eax
   17d64:	66 a3 a6 ad 02 00    	mov    %ax,0x2ada6
   17d6a:	c7 45 fc 01 00 00 00 	movl   $0x1,0xfffffffc(%ebp)
   17d71:	eb 20                	jmp    0x17d93
   17d73:	8b 4d fc             	mov    0xfffffffc(%ebp),%ecx
   17d76:	a1 a0 ad 02 00       	mov    0x2ada0,%eax
   17d7b:	8b 15 a4 ad 02 00    	mov    0x2ada4,%edx
   17d81:	89 04 cd a0 ad 02 00 	mov    %eax,0x2ada0(,%ecx,8)
   17d88:	89 14 cd a4 ad 02 00 	mov    %edx,0x2ada4(,%ecx,8)
   17d8f:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
   17d93:	81 7d fc ff 00 00 00 	cmpl   $0xff,0xfffffffc(%ebp)
   17d9a:	7e d7                	jle    0x17d73
   17d9c:	b8 c4 aa 02 00       	mov    $0x2aac4,%eax
   17da1:	66 c7 00 00 08       	movw   $0x800,(%eax)
   17da6:	b8 c6 aa 02 00       	mov    $0x2aac6,%eax
   17dab:	89 c2                	mov    %eax,%edx
   17dad:	b8 a0 ad 02 00       	mov    $0x2ada0,%eax
   17db2:	89 02                	mov    %eax,(%edx)
   17db4:	e8 85 f3 ff ff       	call   0x1713e
   17db9:	e8 de f6 ff ff       	call   0x1749c
   17dbe:	e8 b1 f9 ff ff       	call   0x17774
   17dc3:	e8 da fa ff ff       	call   0x178a2
   17dc8:	e8 43 05 00 00       	call   0x18310
   17dcd:	e8 f9 b8 ff ff       	call   0x136cb
   17dd2:	e8 11 8c ff ff       	call   0x109e8
   17dd7:	e8 58 ed ff ff       	call   0x16b34
   17ddc:	c9                   	leave  
   17ddd:	c3                   	ret    
   17dde:	00 00                	add    %al,(%eax)
   17de0:	55                   	push   %ebp
   17de1:	89 e5                	mov    %esp,%ebp
   17de3:	83 ec 28             	sub    $0x28,%esp
   17de6:	81 7d 08 80 00 00 00 	cmpl   $0x80,0x8(%ebp)
   17ded:	75 3a                	jne    0x17e29
   17def:	8b 45 28             	mov    0x28(%ebp),%eax
   17df2:	8b 14 85 50 cb 01 00 	mov    0x1cb50(,%eax,4),%edx
   17df9:	8b 45 24             	mov    0x24(%ebp),%eax
   17dfc:	89 44 24 14          	mov    %eax,0x14(%esp)
   17e00:	8b 45 20             	mov    0x20(%ebp),%eax
   17e03:	89 44 24 10          	mov    %eax,0x10(%esp)
   17e07:	8b 45 1c             	mov    0x1c(%ebp),%eax
   17e0a:	89 44 24 0c          	mov    %eax,0xc(%esp)
   17e0e:	8b 45 14             	mov    0x14(%ebp),%eax
   17e11:	89 44 24 08          	mov    %eax,0x8(%esp)
   17e15:	8b 45 10             	mov    0x10(%ebp),%eax
   17e18:	89 44 24 04          	mov    %eax,0x4(%esp)
   17e1c:	8b 45 0c             	mov    0xc(%ebp),%eax
   17e1f:	89 04 24             	mov    %eax,(%esp)
   17e22:	ff d2                	call   *%edx
   17e24:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   17e27:	eb 07                	jmp    0x17e30
   17e29:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
   17e30:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   17e33:	c9                   	leave  
   17e34:	c3                   	ret    
   17e35:	00 00                	add    %al,(%eax)
   17e37:	00 55 89             	add    %dl,0xffffff89(%ebp)
   17e3a:	e5 83                	in     $0x83,%eax
   17e3c:	ec                   	in     (%dx),%al
   17e3d:	28 8b 45 0c 89 45    	sub    %cl,0x45890c45(%ebx)
   17e43:	f8                   	clc    
   17e44:	8b 45 18             	mov    0x18(%ebp),%eax
   17e47:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   17e4a:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
   17e4e:	74 0a                	je     0x17e5a
   17e50:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
   17e54:	0f 85 ae 00 00 00    	jne    0x17f08
   17e5a:	e8 7b 28 00 00       	call   0x1a6da
   17e5f:	e8 7e 28 00 00       	call   0x1a6e2
   17e64:	25 00 02 00 00       	and    $0x200,%eax
   17e69:	85 c0                	test   %eax,%eax
   17e6b:	75 09                	jne    0x17e76
   17e6d:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   17e72:	85 c0                	test   %eax,%eax
   17e74:	75 24                	jne    0x17e9a
   17e76:	c7 44 24 0c 13 00 00 	movl   $0x13,0xc(%esp)
   17e7d:	00 
   17e7e:	c7 44 24 08 22 be 01 	movl   $0x1be22,0x8(%esp)
   17e85:	00 
   17e86:	c7 44 24 04 22 be 01 	movl   $0x1be22,0x4(%esp)
   17e8d:	00 
   17e8e:	c7 04 24 2d be 01 00 	movl   $0x1be2d,(%esp)
   17e95:	e8 8e 1d 00 00       	call   0x19c28
   17e9a:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   17e9d:	8b 50 48             	mov    0x48(%eax),%edx
   17ea0:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   17ea3:	89 44 24 04          	mov    %eax,0x4(%esp)
   17ea7:	89 14 24             	mov    %edx,(%esp)
   17eaa:	e8 27 2e 00 00       	call   0x1acd6
   17eaf:	89 c2                	mov    %eax,%edx
   17eb1:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   17eb4:	8b 40 4c             	mov    0x4c(%eax),%eax
   17eb7:	89 02                	mov    %eax,(%edx)
   17eb9:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   17ebc:	8b 50 48             	mov    0x48(%eax),%edx
   17ebf:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   17ec2:	89 44 24 04          	mov    %eax,0x4(%esp)
   17ec6:	89 14 24             	mov    %edx,(%esp)
   17ec9:	e8 08 2e 00 00       	call   0x1acd6
   17ece:	89 c2                	mov    %eax,%edx
   17ed0:	8b 45 1c             	mov    0x1c(%ebp),%eax
   17ed3:	89 42 04             	mov    %eax,0x4(%edx)
   17ed6:	e8 f5 27 00 00       	call   0x1a6d0
   17edb:	8b 45 14             	mov    0x14(%ebp),%eax
   17ede:	0f b6 d0             	movzbl %al,%edx
   17ee1:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   17ee4:	8b 40 4c             	mov    0x4c(%eax),%eax
   17ee7:	89 c1                	mov    %eax,%ecx
   17ee9:	89 54 24 0c          	mov    %edx,0xc(%esp)
   17eed:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   17ef0:	89 44 24 08          	mov    %eax,0x8(%esp)
   17ef4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   17ef8:	8b 45 1c             	mov    0x1c(%ebp),%eax
   17efb:	89 04 24             	mov    %eax,(%esp)
   17efe:	e8 68 ce ff ff       	call   0x14d6b
   17f03:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   17f06:	eb 54                	jmp    0x17f5c
   17f08:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
   17f0c:	75 23                	jne    0x17f31
   17f0e:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   17f11:	8b 40 4c             	mov    0x4c(%eax),%eax
   17f14:	89 c2                	mov    %eax,%edx
   17f16:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   17f19:	89 44 24 08          	mov    %eax,0x8(%esp)
   17f1d:	8b 45 1c             	mov    0x1c(%ebp),%eax
   17f20:	89 44 24 04          	mov    %eax,0x4(%esp)
   17f24:	89 14 24             	mov    %edx,(%esp)
   17f27:	e8 6f d1 ff ff       	call   0x1509b
   17f2c:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   17f2f:	eb 2b                	jmp    0x17f5c
   17f31:	c7 44 24 0c 1f 00 00 	movl   $0x1f,0xc(%esp)
   17f38:	00 
   17f39:	c7 44 24 08 22 be 01 	movl   $0x1be22,0x8(%esp)
   17f40:	00 
   17f41:	c7 44 24 04 22 be 01 	movl   $0x1be22,0x4(%esp)
   17f48:	00 
   17f49:	c7 04 24 34 be 01 00 	movl   $0x1be34,(%esp)
   17f50:	e8 d3 1c 00 00       	call   0x19c28
   17f55:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,0xffffffec(%ebp)
   17f5c:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   17f5f:	c9                   	leave  
   17f60:	c3                   	ret    
   17f61:	55                   	push   %ebp
   17f62:	89 e5                	mov    %esp,%ebp
   17f64:	83 ec 28             	sub    $0x28,%esp
   17f67:	e8 6e 27 00 00       	call   0x1a6da
   17f6c:	a1 c0 45 04 00       	mov    0x445c0,%eax
   17f71:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   17f77:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   17f7a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   17f7d:	8b 10                	mov    (%eax),%edx
   17f7f:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   17f82:	8b 40 04             	mov    0x4(%eax),%eax
   17f85:	01 c2                	add    %eax,%edx
   17f87:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   17f8a:	8b 40 08             	mov    0x8(%eax),%eax
   17f8d:	8d 04 02             	lea    (%edx,%eax,1),%eax
   17f90:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   17f93:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   17f96:	8b 40 0c             	mov    0xc(%eax),%eax
   17f99:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   17f9c:	8b 55 14             	mov    0x14(%ebp),%edx
   17f9f:	8b 45 0c             	mov    0xc(%ebp),%eax
   17fa2:	8b 40 48             	mov    0x48(%eax),%eax
   17fa5:	89 54 24 04          	mov    %edx,0x4(%esp)
   17fa9:	89 04 24             	mov    %eax,(%esp)
   17fac:	e8 25 2d 00 00       	call   0x1acd6
   17fb1:	89 c2                	mov    %eax,%edx
   17fb3:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   17fb6:	89 44 24 08          	mov    %eax,0x8(%esp)
   17fba:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   17fbd:	89 44 24 04          	mov    %eax,0x4(%esp)
   17fc1:	89 14 24             	mov    %edx,(%esp)
   17fc4:	e8 5c 26 00 00       	call   0x1a625
   17fc9:	89 c2                	mov    %eax,%edx
   17fcb:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   17fce:	8b 00                	mov    (%eax),%eax
   17fd0:	29 c2                	sub    %eax,%edx
   17fd2:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   17fd5:	8b 40 04             	mov    0x4(%eax),%eax
   17fd8:	29 c2                	sub    %eax,%edx
   17fda:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   17fdd:	89 50 08             	mov    %edx,0x8(%eax)
   17fe0:	c7 05 a8 b5 02 00 01 	movl   $0x1,0x2b5a8
   17fe7:	00 00 00 
   17fea:	e8 e1 26 00 00       	call   0x1a6d0
   17fef:	a1 c0 45 04 00       	mov    0x445c0,%eax
   17ff4:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   17ffa:	3d e0 aa 02 00       	cmp    $0x2aae0,%eax
   17fff:	75 05                	jne    0x18006
   18001:	e8 6e 1b 00 00       	call   0x19b74
   18006:	b8 00 00 00 00       	mov    $0x0,%eax
   1800b:	c9                   	leave  
   1800c:	c3                   	ret    
   1800d:	55                   	push   %ebp
   1800e:	89 e5                	mov    %esp,%ebp
   18010:	83 ec 18             	sub    $0x18,%esp
   18013:	8b 45 0c             	mov    0xc(%ebp),%eax
   18016:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   18019:	e8 bc 26 00 00       	call   0x1a6da
   1801e:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18021:	8b 40 54             	mov    0x54(%eax),%eax
   18024:	85 c0                	test   %eax,%eax
   18026:	75 1b                	jne    0x18043
   18028:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1802b:	c7 40 54 04 00 00 00 	movl   $0x4,0x54(%eax)
   18032:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   18035:	8b 45 14             	mov    0x14(%ebp),%eax
   18038:	89 82 f8 00 00 00    	mov    %eax,0xf8(%edx)
   1803e:	e8 51 07 00 00       	call   0x18794
   18043:	e8 88 26 00 00       	call   0x1a6d0
   18048:	b8 00 00 00 00       	mov    $0x0,%eax
   1804d:	c9                   	leave  
   1804e:	c3                   	ret    
   1804f:	00 55 89             	add    %dl,0xffffff89(%ebp)
   18052:	e5 83                	in     $0x83,%eax
   18054:	ec                   	in     (%dx),%al
   18055:	48                   	dec    %eax
   18056:	eb 00                	jmp    0x18058
   18058:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
   1805b:	89 44 24 08          	mov    %eax,0x8(%esp)
   1805f:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
   18066:	ff 
   18067:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
   1806e:	e8 7d 1b 00 00       	call   0x19bf0
   18073:	85 c0                	test   %eax,%eax
   18075:	74 24                	je     0x1809b
   18077:	c7 44 24 0c 0c 00 00 	movl   $0xc,0xc(%esp)
   1807e:	00 
   1807f:	c7 44 24 08 38 be 01 	movl   $0x1be38,0x8(%esp)
   18086:	00 
   18087:	c7 44 24 04 38 be 01 	movl   $0x1be38,0x4(%esp)
   1808e:	00 
   1808f:	c7 04 24 43 be 01 00 	movl   $0x1be43,(%esp)
   18096:	e8 8d 1b 00 00       	call   0x19c28
   1809b:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   1809e:	83 f8 fc             	cmp    $0xfffffffc,%eax
   180a1:	74 24                	je     0x180c7
   180a3:	c7 44 24 0c 0d 00 00 	movl   $0xd,0xc(%esp)
   180aa:	00 
   180ab:	c7 44 24 08 38 be 01 	movl   $0x1be38,0x8(%esp)
   180b2:	00 
   180b3:	c7 44 24 04 38 be 01 	movl   $0x1be38,0x4(%esp)
   180ba:	00 
   180bb:	c7 04 24 60 be 01 00 	movl   $0x1be60,(%esp)
   180c2:	e8 61 1b 00 00       	call   0x19c28
   180c7:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
   180ca:	83 c0 0c             	add    $0xc,%eax
   180cd:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   180d0:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   180d3:	8b 00                	mov    (%eax),%eax
   180d5:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
   180d8:	83 7d cc 05          	cmpl   $0x5,0xffffffcc(%ebp)
   180dc:	0f 87 d1 00 00 00    	ja     0x181b3
   180e2:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
   180e5:	8b 04 95 a0 be 01 00 	mov    0x1bea0(,%edx,4),%eax
   180ec:	ff e0                	jmp    *%eax
   180ee:	e8 e7 25 00 00       	call   0x1a6da
   180f3:	a1 a4 b5 02 00       	mov    0x2b5a4,%eax
   180f8:	89 c2                	mov    %eax,%edx
   180fa:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   180fd:	89 10                	mov    %edx,(%eax)
   180ff:	e8 cc 25 00 00       	call   0x1a6d0
   18104:	e9 aa 00 00 00       	jmp    0x181b3
   18109:	e8 cc 25 00 00       	call   0x1a6da
   1810e:	8b 15 3c f4 01 00    	mov    0x1f43c,%edx
   18114:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18117:	89 10                	mov    %edx,(%eax)
   18119:	e8 b2 25 00 00       	call   0x1a6d0
   1811e:	e9 90 00 00 00       	jmp    0x181b3
   18123:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18126:	89 04 24             	mov    %eax,(%esp)
   18129:	e8 d0 00 00 00       	call   0x181fe
   1812e:	e9 80 00 00 00       	jmp    0x181b3
   18133:	e8 a2 25 00 00       	call   0x1a6da
   18138:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   1813b:	89 c2                	mov    %eax,%edx
   1813d:	89 d0                	mov    %edx,%eax
   1813f:	c1 e0 03             	shl    $0x3,%eax
   18142:	01 d0                	add    %edx,%eax
   18144:	c1 e0 05             	shl    $0x5,%eax
   18147:	05 e0 79 04 00       	add    $0x479e0,%eax
   1814c:	8b 80 fc 00 00 00    	mov    0xfc(%eax),%eax
   18152:	89 c2                	mov    %eax,%edx
   18154:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18157:	89 10                	mov    %edx,(%eax)
   18159:	e8 72 25 00 00       	call   0x1a6d0
   1815e:	eb 53                	jmp    0x181b3
   18160:	e8 75 25 00 00       	call   0x1a6da
   18165:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18168:	89 c2                	mov    %eax,%edx
   1816a:	89 d0                	mov    %edx,%eax
   1816c:	c1 e0 03             	shl    $0x3,%eax
   1816f:	01 d0                	add    %edx,%eax
   18171:	c1 e0 05             	shl    $0x5,%eax
   18174:	05 e0 79 04 00       	add    $0x479e0,%eax
   18179:	8b 50 4c             	mov    0x4c(%eax),%edx
   1817c:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1817f:	89 10                	mov    %edx,(%eax)
   18181:	e8 4a 25 00 00       	call   0x1a6d0
   18186:	eb 2b                	jmp    0x181b3
   18188:	e8 4d 25 00 00       	call   0x1a6da
   1818d:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18190:	89 c2                	mov    %eax,%edx
   18192:	89 d0                	mov    %edx,%eax
   18194:	c1 e0 03             	shl    $0x3,%eax
   18197:	01 d0                	add    %edx,%eax
   18199:	c1 e0 05             	shl    $0x5,%eax
   1819c:	8d 90 e0 79 04 00    	lea    0x479e0(%eax),%edx
   181a2:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   181a5:	8b 40 0c             	mov    0xc(%eax),%eax
   181a8:	89 82 fc 00 00 00    	mov    %eax,0xfc(%edx)
   181ae:	e8 1d 25 00 00       	call   0x1a6d0
   181b3:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   181b6:	8d 55 d4             	lea    0xffffffd4(%ebp),%edx
   181b9:	89 54 24 08          	mov    %edx,0x8(%esp)
   181bd:	89 44 24 04          	mov    %eax,0x4(%esp)
   181c1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   181c8:	e8 23 1a 00 00       	call   0x19bf0
   181cd:	85 c0                	test   %eax,%eax
   181cf:	0f 84 83 fe ff ff    	je     0x18058
   181d5:	c7 44 24 0c 2f 00 00 	movl   $0x2f,0xc(%esp)
   181dc:	00 
   181dd:	c7 44 24 08 38 be 01 	movl   $0x1be38,0x8(%esp)
   181e4:	00 
   181e5:	c7 44 24 04 38 be 01 	movl   $0x1be38,0x4(%esp)
   181ec:	00 
   181ed:	c7 04 24 7c be 01 00 	movl   $0x1be7c,(%esp)
   181f4:	e8 2f 1a 00 00       	call   0x19c28
   181f9:	e9 5a fe ff ff       	jmp    0x18058
   181fe:	55                   	push   %ebp
   181ff:	89 e5                	mov    %esp,%ebp
   18201:	83 ec 18             	sub    $0x18,%esp
   18204:	8b 45 08             	mov    0x8(%ebp),%eax
   18207:	8b 40 08             	mov    0x8(%eax),%eax
   1820a:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   18210:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   18213:	8b 45 08             	mov    0x8(%ebp),%eax
   18216:	0f b6 40 04          	movzbl 0x4(%eax),%eax
   1821a:	3c 0a                	cmp    $0xa,%al
   1821c:	75 58                	jne    0x18276
   1821e:	e8 b7 24 00 00       	call   0x1a6da
   18223:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   18226:	8b 40 08             	mov    0x8(%eax),%eax
   18229:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
   1822f:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   18232:	89 50 08             	mov    %edx,0x8(%eax)
   18235:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   18238:	8b 48 08             	mov    0x8(%eax),%ecx
   1823b:	c7 45 ec 67 66 66 66 	movl   $0x66666667,0xffffffec(%ebp)
   18242:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   18245:	f7 e9                	imul   %ecx
   18247:	c1 fa 06             	sar    $0x6,%edx
   1824a:	89 c8                	mov    %ecx,%eax
   1824c:	c1 f8 1f             	sar    $0x1f,%eax
   1824f:	29 c2                	sub    %eax,%edx
   18251:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   18254:	89 50 08             	mov    %edx,0x8(%eax)
   18257:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1825a:	8b 50 08             	mov    0x8(%eax),%edx
   1825d:	89 d0                	mov    %edx,%eax
   1825f:	c1 e0 02             	shl    $0x2,%eax
   18262:	01 d0                	add    %edx,%eax
   18264:	c1 e0 05             	shl    $0x5,%eax
   18267:	89 c2                	mov    %eax,%edx
   18269:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1826c:	89 50 08             	mov    %edx,0x8(%eax)
   1826f:	e8 5c 24 00 00       	call   0x1a6d0
   18274:	eb 79                	jmp    0x182ef
   18276:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   18279:	8b 00                	mov    (%eax),%eax
   1827b:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
   18281:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   18284:	8b 40 04             	mov    0x4(%eax),%eax
   18287:	01 c2                	add    %eax,%edx
   18289:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1828c:	8b 40 08             	mov    0x8(%eax),%eax
   1828f:	8d 04 02             	lea    (%edx,%eax,1),%eax
   18292:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   18295:	e8 40 24 00 00       	call   0x1a6da
   1829a:	8b 45 08             	mov    0x8(%ebp),%eax
   1829d:	0f b6 40 04          	movzbl 0x4(%eax),%eax
   182a1:	3c 08                	cmp    $0x8,%al
   182a3:	75 1b                	jne    0x182c0
   182a5:	83 6d fc 02          	subl   $0x2,0xfffffffc(%ebp)
   182a9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   182ac:	c6 00 20             	movb   $0x20,(%eax)
   182af:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   182b2:	8b 40 08             	mov    0x8(%eax),%eax
   182b5:	8d 50 fe             	lea    0xfffffffe(%eax),%edx
   182b8:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   182bb:	89 50 08             	mov    %edx,0x8(%eax)
   182be:	eb 2a                	jmp    0x182ea
   182c0:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   182c3:	8b 45 08             	mov    0x8(%ebp),%eax
   182c6:	0f b6 40 04          	movzbl 0x4(%eax),%eax
   182ca:	88 02                	mov    %al,(%edx)
   182cc:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
   182d0:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   182d3:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   182d6:	8b 40 0c             	mov    0xc(%eax),%eax
   182d9:	88 02                	mov    %al,(%edx)
   182db:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   182de:	8b 40 08             	mov    0x8(%eax),%eax
   182e1:	8d 50 02             	lea    0x2(%eax),%edx
   182e4:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   182e7:	89 50 08             	mov    %edx,0x8(%eax)
   182ea:	e8 e1 23 00 00       	call   0x1a6d0
   182ef:	c7 05 a8 b5 02 00 01 	movl   $0x1,0x2b5a8
   182f6:	00 00 00 
   182f9:	a1 c0 45 04 00       	mov    0x445c0,%eax
   182fe:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   18304:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
   18307:	75 05                	jne    0x1830e
   18309:	e8 66 18 00 00       	call   0x19b74
   1830e:	c9                   	leave  
   1830f:	c3                   	ret    
   18310:	55                   	push   %ebp
   18311:	89 e5                	mov    %esp,%ebp
   18313:	57                   	push   %edi
   18314:	56                   	push   %esi
   18315:	83 ec 40             	sub    $0x40,%esp
   18318:	c7 45 d4 e0 79 04 00 	movl   $0x479e0,0xffffffd4(%ebp)
   1831f:	c7 45 d8 60 cb 01 00 	movl   $0x1cb60,0xffffffd8(%ebp)
   18326:	b8 40 a6 05 00       	mov    $0x5a640,%eax
   1832b:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
   1832e:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
   18335:	e9 0b 02 00 00       	jmp    0x18545
   1833a:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   1833d:	81 ea 20 01 00 00    	sub    $0x120,%edx
   18343:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18346:	89 90 14 01 00 00    	mov    %edx,0x114(%eax)
   1834c:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   1834f:	81 c2 20 01 00 00    	add    $0x120,%edx
   18355:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18358:	89 90 18 01 00 00    	mov    %edx,0x118(%eax)
   1835e:	8b 55 d0             	mov    0xffffffd0(%ebp),%edx
   18361:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18364:	89 50 4c             	mov    %edx,0x4c(%eax)
   18367:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   1836a:	c7 40 50 01 00 00 00 	movl   $0x1,0x50(%eax)
   18371:	83 7d d0 0a          	cmpl   $0xa,0xffffffd0(%ebp)
   18375:	0f 8f bb 01 00 00    	jg     0x18536
   1837b:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   1837e:	c7 40 50 00 00 00 00 	movl   $0x0,0x50(%eax)
   18385:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18388:	c7 40 48 00 00 00 00 	movl   $0x0,0x48(%eax)
   1838f:	83 7d d0 05          	cmpl   $0x5,0xffffffd0(%ebp)
   18393:	7f 0d                	jg     0x183a2
   18395:	c6 45 ef 03          	movb   $0x3,0xffffffef(%ebp)
   18399:	c7 45 f0 00 20 00 00 	movl   $0x2000,0xfffffff0(%ebp)
   183a0:	eb 0b                	jmp    0x183ad
   183a2:	c6 45 ef 00          	movb   $0x0,0xffffffef(%ebp)
   183a6:	c7 45 f0 00 20 00 00 	movl   $0x2000,0xfffffff0(%ebp)
   183ad:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   183b0:	c7 00 1b 00 00 00    	movl   $0x1b,(%eax)
   183b6:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   183b9:	c7 40 04 1b 00 00 00 	movl   $0x1b,0x4(%eax)
   183c0:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   183c3:	c7 40 08 1b 00 00 00 	movl   $0x1b,0x8(%eax)
   183ca:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   183cd:	c7 40 0c 1b 00 00 00 	movl   $0x1b,0xc(%eax)
   183d4:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   183d7:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
   183de:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   183e1:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
   183e8:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   183eb:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
   183f2:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   183f5:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
   183fc:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   183ff:	c7 40 20 00 00 00 00 	movl   $0x0,0x20(%eax)
   18406:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18409:	c7 40 24 00 00 00 00 	movl   $0x0,0x24(%eax)
   18410:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18413:	c7 40 28 00 00 00 00 	movl   $0x0,0x28(%eax)
   1841a:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   1841d:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
   18424:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18427:	c7 40 30 00 00 00 00 	movl   $0x0,0x30(%eax)
   1842e:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   18431:	8b 00                	mov    (%eax),%eax
   18433:	89 c2                	mov    %eax,%edx
   18435:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18438:	89 50 34             	mov    %edx,0x34(%eax)
   1843b:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   1843e:	c7 40 38 23 00 00 00 	movl   $0x23,0x38(%eax)
   18445:	0f b6 45 ef          	movzbl 0xffffffef(%ebp),%eax
   18449:	c1 e0 0c             	shl    $0xc,%eax
   1844c:	0d 02 02 00 00       	or     $0x202,%eax
   18451:	89 c2                	mov    %eax,%edx
   18453:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18456:	89 50 3c             	mov    %edx,0x3c(%eax)
   18459:	83 7d d0 06          	cmpl   $0x6,0xffffffd0(%ebp)
   1845d:	74 11                	je     0x18470
   1845f:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   18462:	01 45 dc             	add    %eax,0xffffffdc(%ebp)
   18465:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
   18468:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   1846b:	89 42 40             	mov    %eax,0x40(%edx)
   1846e:	eb 0a                	jmp    0x1847a
   18470:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18473:	c7 40 40 00 f0 11 00 	movl   $0x11f000,0x40(%eax)
   1847a:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   1847d:	c7 40 44 1b 00 00 00 	movl   $0x1b,0x44(%eax)
   18484:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18487:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
   1848e:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18491:	c6 40 58 00          	movb   $0x0,0x58(%eax)
   18495:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18498:	c7 40 5c 00 00 00 00 	movl   $0x0,0x5c(%eax)
   1849f:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   184a2:	c7 40 60 00 00 00 00 	movl   $0x0,0x60(%eax)
   184a9:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   184ac:	c7 40 64 00 00 00 00 	movl   $0x0,0x64(%eax)
   184b3:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   184b6:	c7 40 68 00 00 00 00 	movl   $0x0,0x68(%eax)
   184bd:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   184c0:	c7 40 6c 00 00 00 00 	movl   $0x0,0x6c(%eax)
   184c7:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
   184ce:	eb 12                	jmp    0x184e2
   184d0:	8b 55 f4             	mov    0xfffffff4(%ebp),%edx
   184d3:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   184d6:	c7 44 90 70 00 00 00 	movl   $0x0,0x70(%eax,%edx,4)
   184dd:	00 
   184de:	83 45 f4 01          	addl   $0x1,0xfffffff4(%ebp)
   184e2:	83 7d f4 1f          	cmpl   $0x1f,0xfffffff4(%ebp)
   184e6:	7e e8                	jle    0x184d0
   184e8:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   184eb:	8b 50 08             	mov    0x8(%eax),%edx
   184ee:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   184f1:	89 90 f0 00 00 00    	mov    %edx,0xf0(%eax)
   184f7:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   184fa:	8b 50 08             	mov    0x8(%eax),%edx
   184fd:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18500:	89 90 f4 00 00 00    	mov    %edx,0xf4(%eax)
   18506:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18509:	c7 80 f8 00 00 00 00 	movl   $0x0,0xf8(%eax)
   18510:	00 00 00 
   18513:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18516:	c7 80 fc 00 00 00 06 	movl   $0x6,0xfc(%eax)
   1851d:	00 00 00 
   18520:	8b 7d d4             	mov    0xffffffd4(%ebp),%edi
   18523:	81 c7 00 01 00 00    	add    $0x100,%edi
   18529:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   1852c:	8b 70 04             	mov    0x4(%eax),%esi
   1852f:	b9 0c 00 00 00       	mov    $0xc,%ecx
   18534:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   18536:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
   1853a:	81 45 d4 20 01 00 00 	addl   $0x120,0xffffffd4(%ebp)
   18541:	83 45 d8 0c          	addl   $0xc,0xffffffd8(%ebp)
   18545:	81 7d d0 0a 01 00 00 	cmpl   $0x10a,0xffffffd0(%ebp)
   1854c:	0f 8e e8 fd ff ff    	jle    0x1833a
   18552:	b8 40 86 04 00       	mov    $0x48640,%eax
   18557:	a3 28 f4 01 00       	mov    %eax,0x1f428
   1855c:	b8 20 a5 05 00       	mov    $0x5a520,%eax
   18561:	a3 a0 b5 02 00       	mov    %eax,0x2b5a0
   18566:	a1 28 f4 01 00       	mov    0x1f428,%eax
   1856b:	85 c0                	test   %eax,%eax
   1856d:	75 24                	jne    0x18593
   1856f:	c7 44 24 0c 76 00 00 	movl   $0x76,0xc(%esp)
   18576:	00 
   18577:	c7 44 24 08 0e bf 01 	movl   $0x1bf0e,0x8(%esp)
   1857e:	00 
   1857f:	c7 44 24 04 0e bf 01 	movl   $0x1bf0e,0x4(%esp)
   18586:	00 
   18587:	c7 04 24 15 bf 01 00 	movl   $0x1bf15,(%esp)
   1858e:	e8 95 16 00 00       	call   0x19c28
   18593:	a1 a0 b5 02 00       	mov    0x2b5a0,%eax
   18598:	85 c0                	test   %eax,%eax
   1859a:	75 24                	jne    0x185c0
   1859c:	c7 44 24 0c 77 00 00 	movl   $0x77,0xc(%esp)
   185a3:	00 
   185a4:	c7 44 24 08 0e bf 01 	movl   $0x1bf0e,0x8(%esp)
   185ab:	00 
   185ac:	c7 44 24 04 0e bf 01 	movl   $0x1bf0e,0x4(%esp)
   185b3:	00 
   185b4:	c7 04 24 28 bf 01 00 	movl   $0x1bf28,(%esp)
   185bb:	e8 68 16 00 00       	call   0x19c28
   185c0:	a1 28 f4 01 00       	mov    0x1f428,%eax
   185c5:	c7 80 14 01 00 00 00 	movl   $0x0,0x114(%eax)
   185cc:	00 00 00 
   185cf:	a1 a0 b5 02 00       	mov    0x2b5a0,%eax
   185d4:	c7 80 18 01 00 00 00 	movl   $0x0,0x118(%eax)
   185db:	00 00 00 
   185de:	c7 05 b0 ff 01 00 e0 	movl   $0x479e0,0x1ffb0
   185e5:	79 04 00 
   185e8:	b8 20 85 04 00       	mov    $0x48520,%eax
   185ed:	a3 38 f4 01 00       	mov    %eax,0x1f438
   185f2:	a1 b0 ff 01 00       	mov    0x1ffb0,%eax
   185f7:	85 c0                	test   %eax,%eax
   185f9:	75 24                	jne    0x1861f
   185fb:	c7 44 24 0c 7d 00 00 	movl   $0x7d,0xc(%esp)
   18602:	00 
   18603:	c7 44 24 08 0e bf 01 	movl   $0x1bf0e,0x8(%esp)
   1860a:	00 
   1860b:	c7 44 24 04 0e bf 01 	movl   $0x1bf0e,0x4(%esp)
   18612:	00 
   18613:	c7 04 24 3b bf 01 00 	movl   $0x1bf3b,(%esp)
   1861a:	e8 09 16 00 00       	call   0x19c28
   1861f:	a1 38 f4 01 00       	mov    0x1f438,%eax
   18624:	85 c0                	test   %eax,%eax
   18626:	75 24                	jne    0x1864c
   18628:	c7 44 24 0c 7e 00 00 	movl   $0x7e,0xc(%esp)
   1862f:	00 
   18630:	c7 44 24 08 0e bf 01 	movl   $0x1bf0e,0x8(%esp)
   18637:	00 
   18638:	c7 44 24 04 0e bf 01 	movl   $0x1bf0e,0x4(%esp)
   1863f:	00 
   18640:	c7 04 24 4f bf 01 00 	movl   $0x1bf4f,(%esp)
   18647:	e8 dc 15 00 00       	call   0x19c28
   1864c:	a1 b0 ff 01 00       	mov    0x1ffb0,%eax
   18651:	c7 80 14 01 00 00 00 	movl   $0x0,0x114(%eax)
   18658:	00 00 00 
   1865b:	a1 38 f4 01 00       	mov    0x1f438,%eax
   18660:	c7 80 18 01 00 00 00 	movl   $0x0,0x118(%eax)
   18667:	00 00 00 
   1866a:	66 c7 05 20 c6 01 00 	movw   $0x6c,0x1c620
   18671:	6c 00 
   18673:	b8 20 ab 02 00       	mov    $0x2ab20,%eax
   18678:	66 a3 22 c6 01 00    	mov    %ax,0x1c622
   1867e:	b8 20 ab 02 00       	mov    $0x2ab20,%eax
   18683:	c1 e8 10             	shr    $0x10,%eax
   18686:	a2 24 c6 01 00       	mov    %al,0x1c624
   1868b:	c6 05 25 c6 01 00 89 	movb   $0x89,0x1c625
   18692:	c6 05 26 c6 01 00 00 	movb   $0x0,0x1c626
   18699:	b8 20 ab 02 00       	mov    $0x2ab20,%eax
   1869e:	c1 e8 18             	shr    $0x18,%eax
   186a1:	a2 27 c6 01 00       	mov    %al,0x1c627
   186a6:	c7 05 30 f4 01 00 e0 	movl   $0x479e0,0x1f430
   186ad:	79 04 00 
   186b0:	a1 30 f4 01 00       	mov    0x1f430,%eax
   186b5:	83 c0 48             	add    $0x48,%eax
   186b8:	a3 24 ab 02 00       	mov    %eax,0x2ab24
   186bd:	c7 05 28 ab 02 00 08 	movl   $0x8,0x2ab28
   186c4:	00 00 00 
   186c7:	a1 30 f4 01 00       	mov    0x1f430,%eax
   186cc:	05 c0 06 00 00       	add    $0x6c0,%eax
   186d1:	c7 40 48 00 00 08 00 	movl   $0x80000,0x48(%eax)
   186d8:	c7 45 e0 00 00 08 00 	movl   $0x80000,0xffffffe0(%ebp)
   186df:	c7 45 e4 00 10 08 00 	movl   $0x81000,0xffffffe4(%ebp)
   186e6:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
   186ed:	eb 1a                	jmp    0x18709
   186ef:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   186f2:	8d 50 07             	lea    0x7(%eax),%edx
   186f5:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   186f8:	89 10                	mov    %edx,(%eax)
   186fa:	83 45 e0 04          	addl   $0x4,0xffffffe0(%ebp)
   186fe:	81 45 e4 00 10 00 00 	addl   $0x1000,0xffffffe4(%ebp)
   18705:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
   18709:	83 7d d0 07          	cmpl   $0x7,0xffffffd0(%ebp)
   1870d:	7e e0                	jle    0x186ef
   1870f:	c7 45 e4 00 10 08 00 	movl   $0x81000,0xffffffe4(%ebp)
   18716:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
   1871d:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
   18724:	eb 1a                	jmp    0x18740
   18726:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
   18729:	83 ca 07             	or     $0x7,%edx
   1872c:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1872f:	89 10                	mov    %edx,(%eax)
   18731:	83 45 e4 04          	addl   $0x4,0xffffffe4(%ebp)
   18735:	81 45 e8 00 10 00 00 	addl   $0x1000,0xffffffe8(%ebp)
   1873c:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
   18740:	81 7d d0 ff 00 00 00 	cmpl   $0xff,0xffffffd0(%ebp)
   18747:	7e dd                	jle    0x18726
   18749:	c7 45 e8 00 00 08 00 	movl   $0x80000,0xffffffe8(%ebp)
   18750:	eb 32                	jmp    0x18784
   18752:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
   18755:	83 ca 06             	or     $0x6,%edx
   18758:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1875b:	89 10                	mov    %edx,(%eax)
   1875d:	81 7d d0 ff 01 00 00 	cmpl   $0x1ff,0xffffffd0(%ebp)
   18764:	7f 0f                	jg     0x18775
   18766:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   18769:	8b 00                	mov    (%eax),%eax
   1876b:	89 c2                	mov    %eax,%edx
   1876d:	83 ca 01             	or     $0x1,%edx
   18770:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   18773:	89 10                	mov    %edx,(%eax)
   18775:	83 45 e4 04          	addl   $0x4,0xffffffe4(%ebp)
   18779:	81 45 e8 00 10 00 00 	addl   $0x1000,0xffffffe8(%ebp)
   18780:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
   18784:	81 7d d0 ff 1f 00 00 	cmpl   $0x1fff,0xffffffd0(%ebp)
   1878b:	7e c5                	jle    0x18752
   1878d:	83 c4 40             	add    $0x40,%esp
   18790:	5e                   	pop    %esi
   18791:	5f                   	pop    %edi
   18792:	5d                   	pop    %ebp
   18793:	c3                   	ret    
   18794:	55                   	push   %ebp
   18795:	89 e5                	mov    %esp,%ebp
   18797:	83 ec 28             	sub    $0x28,%esp
   1879a:	e8 43 1f 00 00       	call   0x1a6e2
   1879f:	25 00 02 00 00       	and    $0x200,%eax
   187a4:	85 c0                	test   %eax,%eax
   187a6:	75 09                	jne    0x187b1
   187a8:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   187ad:	85 c0                	test   %eax,%eax
   187af:	75 24                	jne    0x187d5
   187b1:	c7 44 24 0c b7 00 00 	movl   $0xb7,0xc(%esp)
   187b8:	00 
   187b9:	c7 44 24 08 0e bf 01 	movl   $0x1bf0e,0x8(%esp)
   187c0:	00 
   187c1:	c7 44 24 04 0e bf 01 	movl   $0x1bf0e,0x4(%esp)
   187c8:	00 
   187c9:	c7 04 24 63 bf 01 00 	movl   $0x1bf63,(%esp)
   187d0:	e8 53 14 00 00       	call   0x19c28
   187d5:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
   187dc:	e9 de 00 00 00       	jmp    0x188bf
   187e1:	b8 60 7e 04 00       	mov    $0x47e60,%eax
   187e6:	8b 40 54             	mov    0x54(%eax),%eax
   187e9:	85 c0                	test   %eax,%eax
   187eb:	74 24                	je     0x18811
   187ed:	c7 44 24 0c bb 00 00 	movl   $0xbb,0xc(%esp)
   187f4:	00 
   187f5:	c7 44 24 08 0e bf 01 	movl   $0x1bf0e,0x8(%esp)
   187fc:	00 
   187fd:	c7 44 24 04 0e bf 01 	movl   $0x1bf0e,0x4(%esp)
   18804:	00 
   18805:	c7 04 24 6c bf 01 00 	movl   $0x1bf6c,(%esp)
   1880c:	e8 17 14 00 00       	call   0x19c28
   18811:	a1 b0 ff 01 00       	mov    0x1ffb0,%eax
   18816:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   18819:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
   18820:	eb 41                	jmp    0x18863
   18822:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   18825:	8b 40 50             	mov    0x50(%eax),%eax
   18828:	83 f8 01             	cmp    $0x1,%eax
   1882b:	74 2a                	je     0x18857
   1882d:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   18830:	8b 40 54             	mov    0x54(%eax),%eax
   18833:	85 c0                	test   %eax,%eax
   18835:	75 20                	jne    0x18857
   18837:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1883a:	8b 80 f4 00 00 00    	mov    0xf4(%eax),%eax
   18840:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
   18843:	7e 12                	jle    0x18857
   18845:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   18848:	8b 80 f4 00 00 00    	mov    0xf4(%eax),%eax
   1884e:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   18851:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   18854:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   18857:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1885a:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
   18860:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   18863:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
   18867:	75 b9                	jne    0x18822
   18869:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
   1886d:	75 46                	jne    0x188b5
   1886f:	a1 b0 ff 01 00       	mov    0x1ffb0,%eax
   18874:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   18877:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
   1887e:	eb 29                	jmp    0x188a9
   18880:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   18883:	8b 40 50             	mov    0x50(%eax),%eax
   18886:	83 f8 01             	cmp    $0x1,%eax
   18889:	74 12                	je     0x1889d
   1888b:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1888e:	8b 90 f0 00 00 00    	mov    0xf0(%eax),%edx
   18894:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   18897:	89 90 f4 00 00 00    	mov    %edx,0xf4(%eax)
   1889d:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   188a0:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
   188a6:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   188a9:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
   188ad:	75 d1                	jne    0x18880
   188af:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
   188b3:	eb 0a                	jmp    0x188bf
   188b5:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   188b8:	a3 30 f4 01 00       	mov    %eax,0x1f430
   188bd:	eb 0a                	jmp    0x188c9
   188bf:	83 7d fc 01          	cmpl   $0x1,0xfffffffc(%ebp)
   188c3:	0f 8e 18 ff ff ff    	jle    0x187e1
   188c9:	e8 14 1e 00 00       	call   0x1a6e2
   188ce:	25 00 02 00 00       	and    $0x200,%eax
   188d3:	85 c0                	test   %eax,%eax
   188d5:	75 09                	jne    0x188e0
   188d7:	a1 cc a6 01 00       	mov    0x1a6cc,%eax
   188dc:	85 c0                	test   %eax,%eax
   188de:	75 24                	jne    0x18904
   188e0:	c7 44 24 0c d5 00 00 	movl   $0xd5,0xc(%esp)
   188e7:	00 
   188e8:	c7 44 24 08 0e bf 01 	movl   $0x1bf0e,0x8(%esp)
   188ef:	00 
   188f0:	c7 44 24 04 0e bf 01 	movl   $0x1bf0e,0x4(%esp)
   188f7:	00 
   188f8:	c7 04 24 63 bf 01 00 	movl   $0x1bf63,(%esp)
   188ff:	e8 24 13 00 00       	call   0x19c28
   18904:	c9                   	leave  
   18905:	c3                   	ret    
   18906:	55                   	push   %ebp
   18907:	89 e5                	mov    %esp,%ebp
   18909:	83 ec 28             	sub    $0x28,%esp
   1890c:	a1 28 f4 01 00       	mov    0x1f428,%eax
   18911:	85 c0                	test   %eax,%eax
   18913:	75 0c                	jne    0x18921
   18915:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
   1891c:	e9 e4 00 00 00       	jmp    0x18a05
   18921:	a1 28 f4 01 00       	mov    0x1f428,%eax
   18926:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   18929:	a1 28 f4 01 00       	mov    0x1f428,%eax
   1892e:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
   18934:	a3 28 f4 01 00       	mov    %eax,0x1f428
   18939:	a1 28 f4 01 00       	mov    0x1f428,%eax
   1893e:	85 c0                	test   %eax,%eax
   18940:	75 0c                	jne    0x1894e
   18942:	c7 05 a0 b5 02 00 00 	movl   $0x0,0x2b5a0
   18949:	00 00 00 
   1894c:	eb 0f                	jmp    0x1895d
   1894e:	a1 28 f4 01 00       	mov    0x1f428,%eax
   18953:	c7 80 14 01 00 00 00 	movl   $0x0,0x114(%eax)
   1895a:	00 00 00 
   1895d:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18960:	8b 40 50             	mov    0x50(%eax),%eax
   18963:	83 f8 01             	cmp    $0x1,%eax
   18966:	74 24                	je     0x1898c
   18968:	c7 44 24 0c e7 00 00 	movl   $0xe7,0xc(%esp)
   1896f:	00 
   18970:	c7 44 24 08 0e bf 01 	movl   $0x1bf0e,0x8(%esp)
   18977:	00 
   18978:	c7 44 24 04 0e bf 01 	movl   $0x1bf0e,0x4(%esp)
   1897f:	00 
   18980:	c7 04 24 9a bf 01 00 	movl   $0x1bf9a,(%esp)
   18987:	e8 9c 12 00 00       	call   0x19c28
   1898c:	8b 15 38 f4 01 00    	mov    0x1f438,%edx
   18992:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18995:	89 90 14 01 00 00    	mov    %edx,0x114(%eax)
   1899b:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1899e:	c7 80 18 01 00 00 00 	movl   $0x0,0x118(%eax)
   189a5:	00 00 00 
   189a8:	a1 b0 ff 01 00       	mov    0x1ffb0,%eax
   189ad:	85 c0                	test   %eax,%eax
   189af:	75 37                	jne    0x189e8
   189b1:	a1 38 f4 01 00       	mov    0x1f438,%eax
   189b6:	85 c0                	test   %eax,%eax
   189b8:	74 24                	je     0x189de
   189ba:	c7 44 24 0c ed 00 00 	movl   $0xed,0xc(%esp)
   189c1:	00 
   189c2:	c7 44 24 08 0e bf 01 	movl   $0x1bf0e,0x8(%esp)
   189c9:	00 
   189ca:	c7 44 24 04 0e bf 01 	movl   $0x1bf0e,0x4(%esp)
   189d1:	00 
   189d2:	c7 04 24 ae bf 01 00 	movl   $0x1bfae,(%esp)
   189d9:	e8 4a 12 00 00       	call   0x19c28
   189de:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   189e1:	a3 b0 ff 01 00       	mov    %eax,0x1ffb0
   189e6:	eb 0f                	jmp    0x189f7
   189e8:	8b 15 38 f4 01 00    	mov    0x1f438,%edx
   189ee:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   189f1:	89 82 18 01 00 00    	mov    %eax,0x118(%edx)
   189f7:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   189fa:	a3 38 f4 01 00       	mov    %eax,0x1f438
   189ff:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18a02:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   18a05:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   18a08:	c9                   	leave  
   18a09:	c3                   	ret    
   18a0a:	55                   	push   %ebp
   18a0b:	89 e5                	mov    %esp,%ebp
   18a0d:	83 ec 18             	sub    $0x18,%esp
   18a10:	a1 b0 ff 01 00       	mov    0x1ffb0,%eax
   18a15:	39 45 08             	cmp    %eax,0x8(%ebp)
   18a18:	75 39                	jne    0x18a53
   18a1a:	a1 b0 ff 01 00       	mov    0x1ffb0,%eax
   18a1f:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
   18a25:	a3 b0 ff 01 00       	mov    %eax,0x1ffb0
   18a2a:	a1 b0 ff 01 00       	mov    0x1ffb0,%eax
   18a2f:	85 c0                	test   %eax,%eax
   18a31:	75 0f                	jne    0x18a42
   18a33:	c7 05 38 f4 01 00 00 	movl   $0x0,0x1f438
   18a3a:	00 00 00 
   18a3d:	e9 81 00 00 00       	jmp    0x18ac3
   18a42:	a1 b0 ff 01 00       	mov    0x1ffb0,%eax
   18a47:	c7 80 14 01 00 00 00 	movl   $0x0,0x114(%eax)
   18a4e:	00 00 00 
   18a51:	eb 70                	jmp    0x18ac3
   18a53:	a1 38 f4 01 00       	mov    0x1f438,%eax
   18a58:	39 45 08             	cmp    %eax,0x8(%ebp)
   18a5b:	75 36                	jne    0x18a93
   18a5d:	a1 38 f4 01 00       	mov    0x1f438,%eax
   18a62:	8b 80 14 01 00 00    	mov    0x114(%eax),%eax
   18a68:	a3 38 f4 01 00       	mov    %eax,0x1f438
   18a6d:	a1 38 f4 01 00       	mov    0x1f438,%eax
   18a72:	85 c0                	test   %eax,%eax
   18a74:	75 0c                	jne    0x18a82
   18a76:	c7 05 b0 ff 01 00 00 	movl   $0x0,0x1ffb0
   18a7d:	00 00 00 
   18a80:	eb 41                	jmp    0x18ac3
   18a82:	a1 38 f4 01 00       	mov    0x1f438,%eax
   18a87:	c7 80 18 01 00 00 00 	movl   $0x0,0x118(%eax)
   18a8e:	00 00 00 
   18a91:	eb 30                	jmp    0x18ac3
   18a93:	8b 45 08             	mov    0x8(%ebp),%eax
   18a96:	8b 90 14 01 00 00    	mov    0x114(%eax),%edx
   18a9c:	8b 45 08             	mov    0x8(%ebp),%eax
   18a9f:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
   18aa5:	89 82 18 01 00 00    	mov    %eax,0x118(%edx)
   18aab:	8b 45 08             	mov    0x8(%ebp),%eax
   18aae:	8b 90 18 01 00 00    	mov    0x118(%eax),%edx
   18ab4:	8b 45 08             	mov    0x8(%ebp),%eax
   18ab7:	8b 80 14 01 00 00    	mov    0x114(%eax),%eax
   18abd:	89 82 14 01 00 00    	mov    %eax,0x114(%edx)
   18ac3:	8b 45 08             	mov    0x8(%ebp),%eax
   18ac6:	8b 40 50             	mov    0x50(%eax),%eax
   18ac9:	85 c0                	test   %eax,%eax
   18acb:	74 24                	je     0x18af1
   18acd:	c7 44 24 0c 20 01 00 	movl   $0x120,0xc(%esp)
   18ad4:	00 
   18ad5:	c7 44 24 08 0e bf 01 	movl   $0x1bf0e,0x8(%esp)
   18adc:	00 
   18add:	c7 44 24 04 0e bf 01 	movl   $0x1bf0e,0x4(%esp)
   18ae4:	00 
   18ae5:	c7 04 24 c2 bf 01 00 	movl   $0x1bfc2,(%esp)
   18aec:	e8 37 11 00 00       	call   0x19c28
   18af1:	8b 45 08             	mov    0x8(%ebp),%eax
   18af4:	c7 40 50 01 00 00 00 	movl   $0x1,0x50(%eax)
   18afb:	8b 45 08             	mov    0x8(%ebp),%eax
   18afe:	8b 40 4c             	mov    0x4c(%eax),%eax
   18b01:	83 f8 05             	cmp    $0x5,%eax
   18b04:	77 0c                	ja     0x18b12
   18b06:	c7 45 fc 01 00 00 00 	movl   $0x1,0xfffffffc(%ebp)
   18b0d:	e9 a9 00 00 00       	jmp    0x18bbb
   18b12:	8b 45 08             	mov    0x8(%ebp),%eax
   18b15:	8b 40 4c             	mov    0x4c(%eax),%eax
   18b18:	83 f8 05             	cmp    $0x5,%eax
   18b1b:	77 24                	ja     0x18b41
   18b1d:	c7 44 24 0c 24 01 00 	movl   $0x124,0xc(%esp)
   18b24:	00 
   18b25:	c7 44 24 08 0e bf 01 	movl   $0x1bf0e,0x8(%esp)
   18b2c:	00 
   18b2d:	c7 44 24 04 0e bf 01 	movl   $0x1bf0e,0x4(%esp)
   18b34:	00 
   18b35:	c7 04 24 d8 bf 01 00 	movl   $0x1bfd8,(%esp)
   18b3c:	e8 e7 10 00 00       	call   0x19c28
   18b41:	8b 15 a0 b5 02 00    	mov    0x2b5a0,%edx
   18b47:	8b 45 08             	mov    0x8(%ebp),%eax
   18b4a:	89 90 14 01 00 00    	mov    %edx,0x114(%eax)
   18b50:	8b 45 08             	mov    0x8(%ebp),%eax
   18b53:	c7 80 18 01 00 00 00 	movl   $0x0,0x118(%eax)
   18b5a:	00 00 00 
   18b5d:	a1 28 f4 01 00       	mov    0x1f428,%eax
   18b62:	85 c0                	test   %eax,%eax
   18b64:	75 37                	jne    0x18b9d
   18b66:	a1 a0 b5 02 00       	mov    0x2b5a0,%eax
   18b6b:	85 c0                	test   %eax,%eax
   18b6d:	74 24                	je     0x18b93
   18b6f:	c7 44 24 0c 2a 01 00 	movl   $0x12a,0xc(%esp)
   18b76:	00 
   18b77:	c7 44 24 08 0e bf 01 	movl   $0x1bf0e,0x8(%esp)
   18b7e:	00 
   18b7f:	c7 44 24 04 0e bf 01 	movl   $0x1bf0e,0x4(%esp)
   18b86:	00 
   18b87:	c7 04 24 fa bf 01 00 	movl   $0x1bffa,(%esp)
   18b8e:	e8 95 10 00 00       	call   0x19c28
   18b93:	8b 45 08             	mov    0x8(%ebp),%eax
   18b96:	a3 28 f4 01 00       	mov    %eax,0x1f428
   18b9b:	eb 0f                	jmp    0x18bac
   18b9d:	8b 15 a0 b5 02 00    	mov    0x2b5a0,%edx
   18ba3:	8b 45 08             	mov    0x8(%ebp),%eax
   18ba6:	89 82 18 01 00 00    	mov    %eax,0x118(%edx)
   18bac:	8b 45 08             	mov    0x8(%ebp),%eax
   18baf:	a3 a0 b5 02 00       	mov    %eax,0x2b5a0
   18bb4:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
   18bbb:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18bbe:	c9                   	leave  
   18bbf:	c3                   	ret    
   18bc0:	55                   	push   %ebp
   18bc1:	89 e5                	mov    %esp,%ebp
   18bc3:	c7 05 3c f4 01 00 00 	movl   $0x0,0x1f43c
   18bca:	00 00 00 
   18bcd:	a1 3c f4 01 00       	mov    0x1f43c,%eax
   18bd2:	83 c0 01             	add    $0x1,%eax
   18bd5:	a3 3c f4 01 00       	mov    %eax,0x1f43c
   18bda:	eb f1                	jmp    0x18bcd
   18bdc:	55                   	push   %ebp
   18bdd:	89 e5                	mov    %esp,%ebp
   18bdf:	83 ec 58             	sub    $0x58,%esp
   18be2:	e8 a4 03 00 00       	call   0x18f8b
   18be7:	e8 cc ce ff ff       	call   0x15ab8
   18bec:	c7 45 f4 e0 45 04 00 	movl   $0x445e0,0xfffffff4(%ebp)
   18bf3:	eb 1d                	jmp    0x18c12
   18bf5:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   18bf8:	89 04 24             	mov    %eax,(%esp)
   18bfb:	e8 0b 05 00 00       	call   0x1910b
   18c00:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   18c03:	89 04 24             	mov    %eax,(%esp)
   18c06:	e8 28 05 00 00       	call   0x19133
   18c0b:	81 45 f4 9c 00 00 00 	addl   $0x9c,0xfffffff4(%ebp)
   18c12:	b8 b4 47 04 00       	mov    $0x447b4,%eax
   18c17:	39 45 f4             	cmp    %eax,0xfffffff4(%ebp)
   18c1a:	72 d9                	jb     0x18bf5
   18c1c:	8d 45 cc             	lea    0xffffffcc(%ebp),%eax
   18c1f:	89 44 24 08          	mov    %eax,0x8(%esp)
   18c23:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
   18c2a:	ff 
   18c2b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
   18c32:	e8 b9 0f 00 00       	call   0x19bf0
   18c37:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   18c3a:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   18c3d:	83 7d fc fe          	cmpl   $0xfffffffe,0xfffffffc(%ebp)
   18c41:	74 30                	je     0x18c73
   18c43:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
   18c47:	78 06                	js     0x18c4f
   18c49:	83 7d fc 0a          	cmpl   $0xa,0xfffffffc(%ebp)
   18c4d:	7e 24                	jle    0x18c73
   18c4f:	c7 44 24 0c 25 00 00 	movl   $0x25,0xc(%esp)
   18c56:	00 
   18c57:	c7 44 24 08 10 c0 01 	movl   $0x1c010,0x8(%esp)
   18c5e:	00 
   18c5f:	c7 44 24 04 10 c0 01 	movl   $0x1c010,0x4(%esp)
   18c66:	00 
   18c67:	c7 04 24 18 c0 01 00 	movl   $0x1c018,(%esp)
   18c6e:	e8 b5 0f 00 00       	call   0x19c28
   18c73:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18c76:	83 f8 fe             	cmp    $0xfffffffe,%eax
   18c79:	74 2c                	je     0x18ca7
   18c7b:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18c7e:	83 f8 ff             	cmp    $0xffffffff,%eax
   18c81:	74 24                	je     0x18ca7
   18c83:	c7 44 24 0c 26 00 00 	movl   $0x26,0xc(%esp)
   18c8a:	00 
   18c8b:	c7 44 24 08 10 c0 01 	movl   $0x1c010,0x8(%esp)
   18c92:	00 
   18c93:	c7 44 24 04 10 c0 01 	movl   $0x1c010,0x4(%esp)
   18c9a:	00 
   18c9b:	c7 04 24 54 c0 01 00 	movl   $0x1c054,(%esp)
   18ca2:	e8 81 0f 00 00       	call   0x19c28
   18ca7:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18caa:	83 f8 ff             	cmp    $0xffffffff,%eax
   18cad:	75 0f                	jne    0x18cbe
   18caf:	c7 05 a8 b5 02 00 00 	movl   $0x0,0x2b5a8
   18cb6:	00 00 00 
   18cb9:	e9 19 01 00 00       	jmp    0x18dd7
   18cbe:	8d 45 cc             	lea    0xffffffcc(%ebp),%eax
   18cc1:	83 c0 0c             	add    $0xc,%eax
   18cc4:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   18cc7:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   18cca:	8b 00                	mov    (%eax),%eax
   18ccc:	89 45 bc             	mov    %eax,0xffffffbc(%ebp)
   18ccf:	83 7d bc 01          	cmpl   $0x1,0xffffffbc(%ebp)
   18cd3:	74 53                	je     0x18d28
   18cd5:	83 7d bc 01          	cmpl   $0x1,0xffffffbc(%ebp)
   18cd9:	72 15                	jb     0x18cf0
   18cdb:	83 7d bc 02          	cmpl   $0x2,0xffffffbc(%ebp)
   18cdf:	74 7c                	je     0x18d5d
   18ce1:	83 7d bc 03          	cmpl   $0x3,0xffffffbc(%ebp)
   18ce5:	0f 84 e1 00 00 00    	je     0x18dcc
   18ceb:	e9 e7 00 00 00       	jmp    0x18dd7
   18cf0:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   18cf3:	8b 40 04             	mov    0x4(%eax),%eax
   18cf6:	83 f8 02             	cmp    $0x2,%eax
   18cf9:	0f 86 d8 00 00 00    	jbe    0x18dd7
   18cff:	c7 44 24 0c 31 00 00 	movl   $0x31,0xc(%esp)
   18d06:	00 
   18d07:	c7 44 24 08 10 c0 01 	movl   $0x1c010,0x8(%esp)
   18d0e:	00 
   18d0f:	c7 44 24 04 10 c0 01 	movl   $0x1c010,0x4(%esp)
   18d16:	00 
   18d17:	c7 04 24 88 c0 01 00 	movl   $0x1c088,(%esp)
   18d1e:	e8 05 0f 00 00       	call   0x19c28
   18d23:	e9 af 00 00 00       	jmp    0x18dd7
   18d28:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   18d2b:	8b 40 04             	mov    0x4(%eax),%eax
   18d2e:	83 f8 02             	cmp    $0x2,%eax
   18d31:	0f 86 a0 00 00 00    	jbe    0x18dd7
   18d37:	c7 44 24 0c 34 00 00 	movl   $0x34,0xc(%esp)
   18d3e:	00 
   18d3f:	c7 44 24 08 10 c0 01 	movl   $0x1c010,0x8(%esp)
   18d46:	00 
   18d47:	c7 44 24 04 10 c0 01 	movl   $0x1c010,0x4(%esp)
   18d4e:	00 
   18d4f:	c7 04 24 88 c0 01 00 	movl   $0x1c088,(%esp)
   18d56:	e8 cd 0e 00 00       	call   0x19c28
   18d5b:	eb 7a                	jmp    0x18dd7
   18d5d:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   18d60:	89 04 24             	mov    %eax,(%esp)
   18d63:	e8 61 0a 00 00       	call   0x197c9
   18d68:	83 f8 ff             	cmp    $0xffffffff,%eax
   18d6b:	75 53                	jne    0x18dc0
   18d6d:	c7 45 d4 fd ff ff ff 	movl   $0xfffffffd,0xffffffd4(%ebp)
   18d74:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   18d77:	8b 40 08             	mov    0x8(%eax),%eax
   18d7a:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   18d7d:	c7 45 d8 05 00 00 00 	movl   $0x5,0xffffffd8(%ebp)
   18d84:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   18d87:	8b 40 0c             	mov    0xc(%eax),%eax
   18d8a:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
   18d8d:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,0xffffffe8(%ebp)
   18d94:	83 7d fc 03          	cmpl   $0x3,0xfffffffc(%ebp)
   18d98:	74 3d                	je     0x18dd7
   18d9a:	c7 44 24 0c 40 00 00 	movl   $0x40,0xc(%esp)
   18da1:	00 
   18da2:	c7 44 24 08 10 c0 01 	movl   $0x1c010,0x8(%esp)
   18da9:	00 
   18daa:	c7 44 24 04 10 c0 01 	movl   $0x1c010,0x4(%esp)
   18db1:	00 
   18db2:	c7 04 24 c9 c0 01 00 	movl   $0x1c0c9,(%esp)
   18db9:	e8 6a 0e 00 00       	call   0x19c28
   18dbe:	eb 17                	jmp    0x18dd7
   18dc0:	c7 05 10 f4 01 00 01 	movl   $0x1,0x1f410
   18dc7:	00 00 00 
   18dca:	eb 0b                	jmp    0x18dd7
   18dcc:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   18dcf:	89 04 24             	mov    %eax,(%esp)
   18dd2:	e8 f5 0a 00 00       	call   0x198cc
   18dd7:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
   18ddb:	78 06                	js     0x18de3
   18ddd:	83 7d fc 0b          	cmpl   $0xb,0xfffffffc(%ebp)
   18de1:	7e 2a                	jle    0x18e0d
   18de3:	83 7d fc fe          	cmpl   $0xfffffffe,0xfffffffc(%ebp)
   18de7:	74 24                	je     0x18e0d
   18de9:	c7 44 24 0c 50 00 00 	movl   $0x50,0xc(%esp)
   18df0:	00 
   18df1:	c7 44 24 08 10 c0 01 	movl   $0x1c010,0x8(%esp)
   18df8:	00 
   18df9:	c7 44 24 04 10 c0 01 	movl   $0x1c010,0x4(%esp)
   18e00:	00 
   18e01:	c7 04 24 dc c0 01 00 	movl   $0x1c0dc,(%esp)
   18e08:	e8 1b 0e 00 00       	call   0x19c28
   18e0d:	a1 10 f4 01 00       	mov    0x1f410,%eax
   18e12:	83 f8 01             	cmp    $0x1,%eax
   18e15:	75 0f                	jne    0x18e26
   18e17:	c7 05 10 f4 01 00 00 	movl   $0x0,0x1f410
   18e1e:	00 00 00 
   18e21:	e9 c8 00 00 00       	jmp    0x18eee
   18e26:	8d 45 cc             	lea    0xffffffcc(%ebp),%eax
   18e29:	89 44 24 08          	mov    %eax,0x8(%esp)
   18e2d:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18e30:	89 44 24 04          	mov    %eax,0x4(%esp)
   18e34:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   18e3b:	e8 b0 0d 00 00       	call   0x19bf0
   18e40:	85 c0                	test   %eax,%eax
   18e42:	0f 84 a6 00 00 00    	je     0x18eee
   18e48:	e8 8d 18 00 00       	call   0x1a6da
   18e4d:	a1 70 e6 06 00       	mov    0x6e670,%eax
   18e52:	85 c0                	test   %eax,%eax
   18e54:	74 24                	je     0x18e7a
   18e56:	c7 44 24 0c 59 00 00 	movl   $0x59,0xc(%esp)
   18e5d:	00 
   18e5e:	c7 44 24 08 10 c0 01 	movl   $0x1c010,0x8(%esp)
   18e65:	00 
   18e66:	c7 44 24 04 10 c0 01 	movl   $0x1c010,0x4(%esp)
   18e6d:	00 
   18e6e:	c7 04 24 1f c1 01 00 	movl   $0x1c11f,(%esp)
   18e75:	e8 ae 0d 00 00       	call   0x19c28
   18e7a:	c7 05 70 e6 06 00 01 	movl   $0x1,0x6e670
   18e81:	00 00 00 
   18e84:	a1 6c e6 06 00       	mov    0x6e66c,%eax
   18e89:	83 c0 01             	add    $0x1,%eax
   18e8c:	a3 6c e6 06 00       	mov    %eax,0x6e66c
   18e91:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   18e94:	a3 80 e6 06 00       	mov    %eax,0x6e680
   18e99:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   18e9c:	a3 84 e6 06 00       	mov    %eax,0x6e684
   18ea1:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   18ea4:	a3 88 e6 06 00       	mov    %eax,0x6e688
   18ea9:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   18eac:	a3 8c e6 06 00       	mov    %eax,0x6e68c
   18eb1:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   18eb4:	a3 90 e6 06 00       	mov    %eax,0x6e690
   18eb9:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   18ebc:	a3 94 e6 06 00       	mov    %eax,0x6e694
   18ec1:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   18ec4:	a3 98 e6 06 00       	mov    %eax,0x6e698
   18ec9:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   18ecc:	a3 9c e6 06 00       	mov    %eax,0x6e69c
   18ed1:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   18ed4:	a3 a0 e6 06 00       	mov    %eax,0x6e6a0
   18ed9:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   18edc:	a3 a4 e6 06 00       	mov    %eax,0x6e6a4
   18ee1:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18ee4:	a3 84 e6 06 00       	mov    %eax,0x6e684
   18ee9:	e8 e2 17 00 00       	call   0x1a6d0
   18eee:	e8 e7 17 00 00       	call   0x1a6da
   18ef3:	a1 70 e6 06 00       	mov    0x6e670,%eax
   18ef8:	83 f8 01             	cmp    $0x1,%eax
   18efb:	75 38                	jne    0x18f35
   18efd:	a1 84 e6 06 00       	mov    0x6e684,%eax
   18f02:	c7 44 24 08 80 e6 06 	movl   $0x6e680,0x8(%esp)
   18f09:	00 
   18f0a:	89 44 24 04          	mov    %eax,0x4(%esp)
   18f0e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   18f15:	e8 d6 0c 00 00       	call   0x19bf0
   18f1a:	85 c0                	test   %eax,%eax
   18f1c:	75 17                	jne    0x18f35
   18f1e:	c7 05 70 e6 06 00 00 	movl   $0x0,0x6e670
   18f25:	00 00 00 
   18f28:	a1 6c e6 06 00       	mov    0x6e66c,%eax
   18f2d:	83 e8 01             	sub    $0x1,%eax
   18f30:	a3 6c e6 06 00       	mov    %eax,0x6e66c
   18f35:	e8 96 17 00 00       	call   0x1a6d0
   18f3a:	e8 9b 17 00 00       	call   0x1a6da
   18f3f:	a1 68 e6 06 00       	mov    0x6e668,%eax
   18f44:	83 f8 01             	cmp    $0x1,%eax
   18f47:	75 38                	jne    0x18f81
   18f49:	a1 44 e6 06 00       	mov    0x6e644,%eax
   18f4e:	c7 44 24 08 40 e6 06 	movl   $0x6e640,0x8(%esp)
   18f55:	00 
   18f56:	89 44 24 04          	mov    %eax,0x4(%esp)
   18f5a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   18f61:	e8 8a 0c 00 00       	call   0x19bf0
   18f66:	85 c0                	test   %eax,%eax
   18f68:	75 17                	jne    0x18f81
   18f6a:	c7 05 68 e6 06 00 00 	movl   $0x0,0x6e668
   18f71:	00 00 00 
   18f74:	a1 6c e6 06 00       	mov    0x6e66c,%eax
   18f79:	83 e8 01             	sub    $0x1,%eax
   18f7c:	a3 6c e6 06 00       	mov    %eax,0x6e66c
   18f81:	e8 4a 17 00 00       	call   0x1a6d0
   18f86:	e9 61 fc ff ff       	jmp    0x18bec
   18f8b:	55                   	push   %ebp
   18f8c:	89 e5                	mov    %esp,%ebp
   18f8e:	83 ec 28             	sub    $0x28,%esp
   18f91:	c7 05 6c e6 06 00 00 	movl   $0x0,0x6e66c
   18f98:	00 00 00 
   18f9b:	c7 05 68 e6 06 00 00 	movl   $0x0,0x6e668
   18fa2:	00 00 00 
   18fa5:	c7 05 70 e6 06 00 00 	movl   $0x0,0x6e670
   18fac:	00 00 00 
   18faf:	c7 45 fc e0 45 04 00 	movl   $0x445e0,0xfffffffc(%ebp)
   18fb6:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
   18fbd:	e9 90 00 00 00       	jmp    0x19052
   18fc2:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   18fc5:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18fc8:	89 50 78             	mov    %edx,0x78(%eax)
   18fcb:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   18fce:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18fd1:	89 50 7c             	mov    %edx,0x7c(%eax)
   18fd4:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18fd7:	c7 80 80 00 00 00 00 	movl   $0x0,0x80(%eax)
   18fde:	00 00 00 
   18fe1:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   18fe4:	c1 e0 04             	shl    $0x4,%eax
   18fe7:	8d 90 e0 aa 02 00    	lea    0x2aae0(%eax),%edx
   18fed:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18ff0:	89 90 84 00 00 00    	mov    %edx,0x84(%eax)
   18ff6:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   18ff9:	c7 80 94 00 00 00 00 	movl   $0x0,0x94(%eax)
   19000:	00 00 00 
   19003:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   19006:	8b 90 84 00 00 00    	mov    0x84(%eax),%edx
   1900c:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1900f:	69 c0 20 2b 00 00    	imul   $0x2b20,%eax,%eax
   19015:	89 02                	mov    %eax,(%edx)
   19017:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1901a:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19020:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   19027:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1902a:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19030:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   19037:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1903a:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19040:	c7 40 0c 07 00 00 00 	movl   $0x7,0xc(%eax)
   19047:	81 45 fc 9c 00 00 00 	addl   $0x9c,0xfffffffc(%ebp)
   1904e:	83 45 f8 01          	addl   $0x1,0xfffffff8(%ebp)
   19052:	b8 b4 47 04 00       	mov    $0x447b4,%eax
   19057:	39 45 fc             	cmp    %eax,0xfffffffc(%ebp)
   1905a:	0f 82 62 ff ff ff    	jb     0x18fc2
   19060:	e8 57 c7 ff ff       	call   0x157bc
   19065:	c7 45 f8 02 00 00 00 	movl   $0x2,0xfffffff8(%ebp)
   1906c:	eb 6b                	jmp    0x190d9
   1906e:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   19071:	89 04 24             	mov    %eax,(%esp)
   19074:	e8 68 00 00 00       	call   0x190e1
   19079:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1907c:	89 44 24 04          	mov    %eax,0x4(%esp)
   19080:	c7 04 24 31 c1 01 00 	movl   $0x1c131,(%esp)
   19087:	e8 c0 1c 00 00       	call   0x1ad4c
   1908c:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19091:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19097:	8b 50 08             	mov    0x8(%eax),%edx
   1909a:	a1 c0 45 04 00       	mov    0x445c0,%eax
   1909f:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   190a5:	8b 40 04             	mov    0x4(%eax),%eax
   190a8:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
   190ab:	c7 45 ec 67 66 66 66 	movl   $0x66666667,0xffffffec(%ebp)
   190b2:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   190b5:	f7 e9                	imul   %ecx
   190b7:	c1 fa 06             	sar    $0x6,%edx
   190ba:	89 c8                	mov    %ecx,%eax
   190bc:	c1 f8 1f             	sar    $0x1f,%eax
   190bf:	89 d1                	mov    %edx,%ecx
   190c1:	29 c1                	sub    %eax,%ecx
   190c3:	89 c8                	mov    %ecx,%eax
   190c5:	89 44 24 04          	mov    %eax,0x4(%esp)
   190c9:	c7 04 24 40 c1 01 00 	movl   $0x1c140,(%esp)
   190d0:	e8 77 1c 00 00       	call   0x1ad4c
   190d5:	83 6d f8 01          	subl   $0x1,0xfffffff8(%ebp)
   190d9:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
   190dd:	79 8f                	jns    0x1906e
   190df:	c9                   	leave  
   190e0:	c3                   	ret    
   190e1:	55                   	push   %ebp
   190e2:	89 e5                	mov    %esp,%ebp
   190e4:	83 ec 08             	sub    $0x8,%esp
   190e7:	e8 ee 15 00 00       	call   0x1a6da
   190ec:	8b 45 08             	mov    0x8(%ebp),%eax
   190ef:	69 c0 9c 00 00 00    	imul   $0x9c,%eax,%eax
   190f5:	05 e0 45 04 00       	add    $0x445e0,%eax
   190fa:	a3 c0 45 04 00       	mov    %eax,0x445c0
   190ff:	e8 cc 15 00 00       	call   0x1a6d0
   19104:	e8 99 08 00 00       	call   0x199a2
   19109:	c9                   	leave  
   1910a:	c3                   	ret    
   1910b:	55                   	push   %ebp
   1910c:	89 e5                	mov    %esp,%ebp
   1910e:	83 ec 08             	sub    $0x8,%esp
   19111:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19116:	39 45 08             	cmp    %eax,0x8(%ebp)
   19119:	75 16                	jne    0x19131
   1911b:	a1 40 ff 01 00       	mov    0x1ff40,%eax
   19120:	85 c0                	test   %eax,%eax
   19122:	7e 0d                	jle    0x19131
   19124:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19129:	89 04 24             	mov    %eax,(%esp)
   1912c:	e8 fd c7 ff ff       	call   0x1592e
   19131:	c9                   	leave  
   19132:	c3                   	ret    
   19133:	55                   	push   %ebp
   19134:	89 e5                	mov    %esp,%ebp
   19136:	83 ec 08             	sub    $0x8,%esp
   19139:	8b 45 08             	mov    0x8(%ebp),%eax
   1913c:	89 04 24             	mov    %eax,(%esp)
   1913f:	e8 a0 00 00 00       	call   0x191e4
   19144:	e8 91 15 00 00       	call   0x1a6da
   19149:	8b 45 08             	mov    0x8(%ebp),%eax
   1914c:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19152:	8b 50 04             	mov    0x4(%eax),%edx
   19155:	8b 45 08             	mov    0x8(%ebp),%eax
   19158:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   1915e:	8b 40 08             	mov    0x8(%eax),%eax
   19161:	8d 04 02             	lea    (%edx,%eax,1),%eax
   19164:	85 c0                	test   %eax,%eax
   19166:	79 18                	jns    0x19180
   19168:	8b 45 08             	mov    0x8(%ebp),%eax
   1916b:	8b 90 84 00 00 00    	mov    0x84(%eax),%edx
   19171:	8b 45 08             	mov    0x8(%ebp),%eax
   19174:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   1917a:	8b 40 04             	mov    0x4(%eax),%eax
   1917d:	89 42 08             	mov    %eax,0x8(%edx)
   19180:	8b 45 08             	mov    0x8(%ebp),%eax
   19183:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19189:	8b 50 04             	mov    0x4(%eax),%edx
   1918c:	8b 45 08             	mov    0x8(%ebp),%eax
   1918f:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19195:	8b 40 08             	mov    0x8(%eax),%eax
   19198:	8d 04 02             	lea    (%edx,%eax,1),%eax
   1919b:	3d ff 27 00 00       	cmp    $0x27ff,%eax
   191a0:	7e 36                	jle    0x191d8
   191a2:	8b 45 08             	mov    0x8(%ebp),%eax
   191a5:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   191ab:	89 04 24             	mov    %eax,(%esp)
   191ae:	e8 4d 14 00 00       	call   0x1a600
   191b3:	8b 45 08             	mov    0x8(%ebp),%eax
   191b6:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   191bc:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   191c3:	8b 45 08             	mov    0x8(%ebp),%eax
   191c6:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   191cc:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   191d3:	e8 ca 07 00 00       	call   0x199a2
   191d8:	e8 f3 14 00 00       	call   0x1a6d0
   191dd:	e8 4c 08 00 00       	call   0x19a2e
   191e2:	c9                   	leave  
   191e3:	c3                   	ret    
   191e4:	55                   	push   %ebp
   191e5:	89 e5                	mov    %esp,%ebp
   191e7:	83 ec 48             	sub    $0x48,%esp
   191ea:	e8 eb 14 00 00       	call   0x1a6da
   191ef:	8b 45 08             	mov    0x8(%ebp),%eax
   191f2:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   191f8:	85 c0                	test   %eax,%eax
   191fa:	7f 0a                	jg     0x19206
   191fc:	e8 cf 14 00 00       	call   0x1a6d0
   19201:	e9 c1 05 00 00       	jmp    0x197c7
   19206:	8b 45 08             	mov    0x8(%ebp),%eax
   19209:	8b 40 7c             	mov    0x7c(%eax),%eax
   1920c:	8b 00                	mov    (%eax),%eax
   1920e:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   19211:	8b 45 08             	mov    0x8(%ebp),%eax
   19214:	8b 40 7c             	mov    0x7c(%eax),%eax
   19217:	8d 50 04             	lea    0x4(%eax),%edx
   1921a:	8b 45 08             	mov    0x8(%ebp),%eax
   1921d:	89 50 7c             	mov    %edx,0x7c(%eax)
   19220:	8b 45 08             	mov    0x8(%ebp),%eax
   19223:	8b 50 7c             	mov    0x7c(%eax),%edx
   19226:	8b 45 08             	mov    0x8(%ebp),%eax
   19229:	83 c0 78             	add    $0x78,%eax
   1922c:	39 c2                	cmp    %eax,%edx
   1922e:	72 0f                	jb     0x1923f
   19230:	8b 45 08             	mov    0x8(%ebp),%eax
   19233:	8b 40 7c             	mov    0x7c(%eax),%eax
   19236:	8d 50 88             	lea    0xffffff88(%eax),%edx
   19239:	8b 45 08             	mov    0x8(%ebp),%eax
   1923c:	89 50 7c             	mov    %edx,0x7c(%eax)
   1923f:	8b 45 08             	mov    0x8(%ebp),%eax
   19242:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   19248:	8d 50 ff             	lea    0xffffffff(%eax),%edx
   1924b:	8b 45 08             	mov    0x8(%ebp),%eax
   1924e:	89 90 80 00 00 00    	mov    %edx,0x80(%eax)
   19254:	e8 77 14 00 00       	call   0x1a6d0
   19259:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1925c:	85 c0                	test   %eax,%eax
   1925e:	0f 89 03 03 00 00    	jns    0x19567
   19264:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   19267:	2d 00 00 00 80       	sub    $0x80000000,%eax
   1926c:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
   1926f:	83 7d cc 2f          	cmpl   $0x2f,0xffffffcc(%ebp)
   19273:	0f 87 ee 02 00 00    	ja     0x19567
   19279:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
   1927c:	8b 04 95 58 c1 01 00 	mov    0x1c158(,%edx,4),%eax
   19283:	ff e0                	jmp    *%eax
   19285:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   1928c:	84 c0                	test   %al,%al
   1928e:	74 09                	je     0x19299
   19290:	c6 05 03 f4 01 00 01 	movb   $0x1,0x1f403
   19297:	eb 07                	jmp    0x192a0
   19299:	c6 05 03 f4 01 00 00 	movb   $0x0,0x1f403
   192a0:	0f b6 05 03 f4 01 00 	movzbl 0x1f403,%eax
   192a7:	0f b6 15 04 f4 01 00 	movzbl 0x1f404,%edx
   192ae:	09 d0                	or     %edx,%eax
   192b0:	a2 05 f4 01 00       	mov    %al,0x1f405
   192b5:	e9 ad 02 00 00       	jmp    0x19567
   192ba:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   192c1:	84 c0                	test   %al,%al
   192c3:	74 09                	je     0x192ce
   192c5:	c6 05 04 f4 01 00 01 	movb   $0x1,0x1f404
   192cc:	eb 07                	jmp    0x192d5
   192ce:	c6 05 04 f4 01 00 00 	movb   $0x0,0x1f404
   192d5:	0f b6 05 03 f4 01 00 	movzbl 0x1f403,%eax
   192dc:	0f b6 15 04 f4 01 00 	movzbl 0x1f404,%edx
   192e3:	09 d0                	or     %edx,%eax
   192e5:	a2 05 f4 01 00       	mov    %al,0x1f405
   192ea:	e9 78 02 00 00       	jmp    0x19567
   192ef:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   192f6:	84 c0                	test   %al,%al
   192f8:	74 09                	je     0x19303
   192fa:	c6 05 00 f4 01 00 01 	movb   $0x1,0x1f400
   19301:	eb 07                	jmp    0x1930a
   19303:	c6 05 00 f4 01 00 00 	movb   $0x0,0x1f400
   1930a:	0f b6 05 00 f4 01 00 	movzbl 0x1f400,%eax
   19311:	0f b6 15 01 f4 01 00 	movzbl 0x1f401,%edx
   19318:	09 d0                	or     %edx,%eax
   1931a:	a2 02 f4 01 00       	mov    %al,0x1f402
   1931f:	e9 43 02 00 00       	jmp    0x19567
   19324:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   1932b:	84 c0                	test   %al,%al
   1932d:	74 09                	je     0x19338
   1932f:	c6 05 01 f4 01 00 01 	movb   $0x1,0x1f401
   19336:	eb 07                	jmp    0x1933f
   19338:	c6 05 01 f4 01 00 00 	movb   $0x0,0x1f401
   1933f:	0f b6 05 00 f4 01 00 	movzbl 0x1f400,%eax
   19346:	0f b6 15 01 f4 01 00 	movzbl 0x1f401,%edx
   1934d:	09 d0                	or     %edx,%eax
   1934f:	a2 02 f4 01 00       	mov    %al,0x1f402
   19354:	e9 0e 02 00 00       	jmp    0x19567
   19359:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   19360:	84 c0                	test   %al,%al
   19362:	74 09                	je     0x1936d
   19364:	c6 05 06 f4 01 00 01 	movb   $0x1,0x1f406
   1936b:	eb 07                	jmp    0x19374
   1936d:	c6 05 06 f4 01 00 00 	movb   $0x0,0x1f406
   19374:	0f b6 05 06 f4 01 00 	movzbl 0x1f406,%eax
   1937b:	0f b6 15 07 f4 01 00 	movzbl 0x1f407,%edx
   19382:	09 d0                	or     %edx,%eax
   19384:	a2 08 f4 01 00       	mov    %al,0x1f408
   19389:	e9 d9 01 00 00       	jmp    0x19567
   1938e:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   19395:	84 c0                	test   %al,%al
   19397:	74 09                	je     0x193a2
   19399:	c6 05 07 f4 01 00 01 	movb   $0x1,0x1f407
   193a0:	eb 07                	jmp    0x193a9
   193a2:	c6 05 07 f4 01 00 00 	movb   $0x0,0x1f407
   193a9:	0f b6 05 06 f4 01 00 	movzbl 0x1f406,%eax
   193b0:	0f b6 15 07 f4 01 00 	movzbl 0x1f407,%edx
   193b7:	09 d0                	or     %edx,%eax
   193b9:	a2 08 f4 01 00       	mov    %al,0x1f408
   193be:	e9 a4 01 00 00       	jmp    0x19567
   193c3:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   193ca:	84 c0                	test   %al,%al
   193cc:	0f 84 95 01 00 00    	je     0x19567
   193d2:	0f b6 05 0a f4 01 00 	movzbl 0x1f40a,%eax
   193d9:	83 f0 04             	xor    $0x4,%eax
   193dc:	a2 0a f4 01 00       	mov    %al,0x1f40a
   193e1:	e8 51 c4 ff ff       	call   0x15837
   193e6:	e9 7c 01 00 00       	jmp    0x19567
   193eb:	0f b6 05 08 f4 01 00 	movzbl 0x1f408,%eax
   193f2:	84 c0                	test   %al,%al
   193f4:	0f 84 6d 01 00 00    	je     0x19567
   193fa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   19401:	e8 db fc ff ff       	call   0x190e1
   19406:	e9 5c 01 00 00       	jmp    0x19567
   1940b:	0f b6 05 08 f4 01 00 	movzbl 0x1f408,%eax
   19412:	84 c0                	test   %al,%al
   19414:	0f 84 4d 01 00 00    	je     0x19567
   1941a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
   19421:	e8 bb fc ff ff       	call   0x190e1
   19426:	e9 3c 01 00 00       	jmp    0x19567
   1942b:	0f b6 05 08 f4 01 00 	movzbl 0x1f408,%eax
   19432:	84 c0                	test   %al,%al
   19434:	0f 84 2d 01 00 00    	je     0x19567
   1943a:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   19441:	e8 9b fc ff ff       	call   0x190e1
   19446:	e9 1c 01 00 00       	jmp    0x19567
   1944b:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   19452:	84 c0                	test   %al,%al
   19454:	0f 84 0d 01 00 00    	je     0x19567
   1945a:	0f b6 05 0a f4 01 00 	movzbl 0x1f40a,%eax
   19461:	83 f0 02             	xor    $0x2,%eax
   19464:	a2 0a f4 01 00       	mov    %al,0x1f40a
   19469:	e8 c9 c3 ff ff       	call   0x15837
   1946e:	e9 f4 00 00 00       	jmp    0x19567
   19473:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   1947a:	84 c0                	test   %al,%al
   1947c:	0f 84 e5 00 00 00    	je     0x19567
   19482:	0f b6 05 0a f4 01 00 	movzbl 0x1f40a,%eax
   19489:	83 f0 01             	xor    $0x1,%eax
   1948c:	a2 0a f4 01 00       	mov    %al,0x1f40a
   19491:	e8 a1 c3 ff ff       	call   0x15837
   19496:	e9 cc 00 00 00       	jmp    0x19567
   1949b:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   194a2:	84 c0                	test   %al,%al
   194a4:	0f 84 bd 00 00 00    	je     0x19567
   194aa:	0f b6 05 02 f4 01 00 	movzbl 0x1f402,%eax
   194b1:	84 c0                	test   %al,%al
   194b3:	74 11                	je     0x194c6
   194b5:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
   194bc:	e8 09 06 00 00       	call   0x19aca
   194c1:	e9 a1 00 00 00       	jmp    0x19567
   194c6:	e8 0f 12 00 00       	call   0x1a6da
   194cb:	e8 00 12 00 00       	call   0x1a6d0
   194d0:	e9 92 00 00 00       	jmp    0x19567
   194d5:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   194dc:	84 c0                	test   %al,%al
   194de:	0f 84 83 00 00 00    	je     0x19567
   194e4:	c7 04 24 e7 ff ff ff 	movl   $0xffffffe7,(%esp)
   194eb:	e8 da 05 00 00       	call   0x19aca
   194f0:	eb 75                	jmp    0x19567
   194f2:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   194f9:	84 c0                	test   %al,%al
   194fb:	74 6a                	je     0x19567
   194fd:	e8 d8 11 00 00       	call   0x1a6da
   19502:	e8 c9 11 00 00       	call   0x1a6d0
   19507:	eb 5e                	jmp    0x19567
   19509:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   19510:	84 c0                	test   %al,%al
   19512:	74 53                	je     0x19567
   19514:	e8 c1 11 00 00       	call   0x1a6da
   19519:	e8 b2 11 00 00       	call   0x1a6d0
   1951e:	eb 47                	jmp    0x19567
   19520:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   19527:	84 c0                	test   %al,%al
   19529:	74 3c                	je     0x19567
   1952b:	0f b6 05 02 f4 01 00 	movzbl 0x1f402,%eax
   19532:	84 c0                	test   %al,%al
   19534:	74 0e                	je     0x19544
   19536:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
   1953d:	e8 88 05 00 00       	call   0x19aca
   19542:	eb 23                	jmp    0x19567
   19544:	e8 91 11 00 00       	call   0x1a6da
   19549:	e8 82 11 00 00       	call   0x1a6d0
   1954e:	eb 17                	jmp    0x19567
   19550:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   19557:	84 c0                	test   %al,%al
   19559:	74 0c                	je     0x19567
   1955b:	c7 04 24 19 00 00 00 	movl   $0x19,(%esp)
   19562:	e8 63 05 00 00       	call   0x19aca
   19567:	0f b6 05 09 f4 01 00 	movzbl 0x1f409,%eax
   1956e:	84 c0                	test   %al,%al
   19570:	0f 84 51 02 00 00    	je     0x197c7
   19576:	8b 45 08             	mov    0x8(%ebp),%eax
   19579:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
   1957f:	85 c0                	test   %eax,%eax
   19581:	0f 84 40 02 00 00    	je     0x197c7
   19587:	83 7d fc 1f          	cmpl   $0x1f,0xfffffffc(%ebp)
   1958b:	76 61                	jbe    0x195ee
   1958d:	83 7d fc 7e          	cmpl   $0x7e,0xfffffffc(%ebp)
   19591:	77 5b                	ja     0x195ee
   19593:	8b 45 08             	mov    0x8(%ebp),%eax
   19596:	8b 90 90 00 00 00    	mov    0x90(%eax),%edx
   1959c:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1959f:	88 02                	mov    %al,(%edx)
   195a1:	83 c2 01             	add    $0x1,%edx
   195a4:	8b 45 08             	mov    0x8(%ebp),%eax
   195a7:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
   195ad:	8b 45 08             	mov    0x8(%ebp),%eax
   195b0:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
   195b6:	8d 50 ff             	lea    0xffffffff(%eax),%edx
   195b9:	8b 45 08             	mov    0x8(%ebp),%eax
   195bc:	89 90 94 00 00 00    	mov    %edx,0x94(%eax)
   195c2:	8b 45 08             	mov    0x8(%ebp),%eax
   195c5:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
   195cb:	8d 50 01             	lea    0x1(%eax),%edx
   195ce:	8b 45 08             	mov    0x8(%ebp),%eax
   195d1:	89 90 98 00 00 00    	mov    %edx,0x98(%eax)
   195d7:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   195da:	0f be c0             	movsbl %al,%eax
   195dd:	89 44 24 04          	mov    %eax,0x4(%esp)
   195e1:	8b 45 08             	mov    0x8(%ebp),%eax
   195e4:	89 04 24             	mov    %eax,(%esp)
   195e7:	e8 84 0e 00 00       	call   0x1a470
   195ec:	eb 68                	jmp    0x19656
   195ee:	81 7d fc 01 00 00 80 	cmpl   $0x80000001,0xfffffffc(%ebp)
   195f5:	75 5f                	jne    0x19656
   195f7:	8b 45 08             	mov    0x8(%ebp),%eax
   195fa:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
   19600:	85 c0                	test   %eax,%eax
   19602:	74 52                	je     0x19656
   19604:	8b 45 08             	mov    0x8(%ebp),%eax
   19607:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
   1960d:	8d 50 01             	lea    0x1(%eax),%edx
   19610:	8b 45 08             	mov    0x8(%ebp),%eax
   19613:	89 90 94 00 00 00    	mov    %edx,0x94(%eax)
   19619:	8b 45 08             	mov    0x8(%ebp),%eax
   1961c:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
   19622:	8d 50 ff             	lea    0xffffffff(%eax),%edx
   19625:	8b 45 08             	mov    0x8(%ebp),%eax
   19628:	89 90 98 00 00 00    	mov    %edx,0x98(%eax)
   1962e:	8b 45 08             	mov    0x8(%ebp),%eax
   19631:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
   19637:	8d 50 ff             	lea    0xffffffff(%eax),%edx
   1963a:	8b 45 08             	mov    0x8(%ebp),%eax
   1963d:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
   19643:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
   1964a:	00 
   1964b:	8b 45 08             	mov    0x8(%ebp),%eax
   1964e:	89 04 24             	mov    %eax,(%esp)
   19651:	e8 1a 0e 00 00       	call   0x1a470
   19656:	81 7d fc 03 00 00 80 	cmpl   $0x80000003,0xfffffffc(%ebp)
   1965d:	74 11                	je     0x19670
   1965f:	8b 45 08             	mov    0x8(%ebp),%eax
   19662:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
   19668:	85 c0                	test   %eax,%eax
   1966a:	0f 85 57 01 00 00    	jne    0x197c7
   19670:	81 7d fc 03 00 00 80 	cmpl   $0x80000003,0xfffffffc(%ebp)
   19677:	75 0d                	jne    0x19686
   19679:	8b 45 08             	mov    0x8(%ebp),%eax
   1967c:	c7 80 94 00 00 00 00 	movl   $0x0,0x94(%eax)
   19683:	00 00 00 
   19686:	8b 45 08             	mov    0x8(%ebp),%eax
   19689:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
   1968f:	c6 00 00             	movb   $0x0,(%eax)
   19692:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
   19699:	00 
   1969a:	8b 45 08             	mov    0x8(%ebp),%eax
   1969d:	89 04 24             	mov    %eax,(%esp)
   196a0:	e8 cb 0d 00 00       	call   0x1a470
   196a5:	c7 44 24 04 23 00 00 	movl   $0x23,0x4(%esp)
   196ac:	00 
   196ad:	8b 45 08             	mov    0x8(%ebp),%eax
   196b0:	89 04 24             	mov    %eax,(%esp)
   196b3:	e8 b8 0d 00 00       	call   0x1a470
   196b8:	c7 44 24 04 3e 00 00 	movl   $0x3e,0x4(%esp)
   196bf:	00 
   196c0:	8b 45 08             	mov    0x8(%ebp),%eax
   196c3:	89 04 24             	mov    %eax,(%esp)
   196c6:	e8 a5 0d 00 00       	call   0x1a470
   196cb:	c7 45 dc fd ff ff ff 	movl   $0xfffffffd,0xffffffdc(%ebp)
   196d2:	c7 45 e0 05 00 00 00 	movl   $0x5,0xffffffe0(%ebp)
   196d9:	8b 45 08             	mov    0x8(%ebp),%eax
   196dc:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
   196e2:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   196e5:	8b 45 08             	mov    0x8(%ebp),%eax
   196e8:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
   196ee:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   196f1:	8b 45 08             	mov    0x8(%ebp),%eax
   196f4:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
   196fa:	89 c2                	mov    %eax,%edx
   196fc:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
   196ff:	89 44 24 08          	mov    %eax,0x8(%esp)
   19703:	89 54 24 04          	mov    %edx,0x4(%esp)
   19707:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
   1970e:	e8 dd 04 00 00       	call   0x19bf0
   19713:	85 c0                	test   %eax,%eax
   19715:	0f 84 ac 00 00 00    	je     0x197c7
   1971b:	e8 ba 0f 00 00       	call   0x1a6da
   19720:	a1 68 e6 06 00       	mov    0x6e668,%eax
   19725:	85 c0                	test   %eax,%eax
   19727:	74 24                	je     0x1974d
   19729:	c7 44 24 0c af 01 00 	movl   $0x1af,0xc(%esp)
   19730:	00 
   19731:	c7 44 24 08 10 c0 01 	movl   $0x1c010,0x8(%esp)
   19738:	00 
   19739:	c7 44 24 04 10 c0 01 	movl   $0x1c010,0x4(%esp)
   19740:	00 
   19741:	c7 04 24 45 c1 01 00 	movl   $0x1c145,(%esp)
   19748:	e8 db 04 00 00       	call   0x19c28
   1974d:	c7 05 68 e6 06 00 01 	movl   $0x1,0x6e668
   19754:	00 00 00 
   19757:	a1 6c e6 06 00       	mov    0x6e66c,%eax
   1975c:	83 c0 01             	add    $0x1,%eax
   1975f:	a3 6c e6 06 00       	mov    %eax,0x6e66c
   19764:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
   19767:	a3 40 e6 06 00       	mov    %eax,0x6e640
   1976c:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
   1976f:	a3 44 e6 06 00       	mov    %eax,0x6e644
   19774:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   19777:	a3 48 e6 06 00       	mov    %eax,0x6e648
   1977c:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   1977f:	a3 4c e6 06 00       	mov    %eax,0x6e64c
   19784:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   19787:	a3 50 e6 06 00       	mov    %eax,0x6e650
   1978c:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   1978f:	a3 54 e6 06 00       	mov    %eax,0x6e654
   19794:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   19797:	a3 58 e6 06 00       	mov    %eax,0x6e658
   1979c:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1979f:	a3 5c e6 06 00       	mov    %eax,0x6e65c
   197a4:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   197a7:	a3 60 e6 06 00       	mov    %eax,0x6e660
   197ac:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   197af:	a3 64 e6 06 00       	mov    %eax,0x6e664
   197b4:	8b 45 08             	mov    0x8(%ebp),%eax
   197b7:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
   197bd:	a3 44 e6 06 00       	mov    %eax,0x6e644
   197c2:	e8 09 0f 00 00       	call   0x1a6d0
   197c7:	c9                   	leave  
   197c8:	c3                   	ret    
   197c9:	55                   	push   %ebp
   197ca:	89 e5                	mov    %esp,%ebp
   197cc:	83 ec 28             	sub    $0x28,%esp
   197cf:	8b 45 08             	mov    0x8(%ebp),%eax
   197d2:	8b 40 04             	mov    0x4(%eax),%eax
   197d5:	69 c0 9c 00 00 00    	imul   $0x9c,%eax,%eax
   197db:	05 e0 45 04 00       	add    $0x445e0,%eax
   197e0:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   197e3:	e8 f2 0e 00 00       	call   0x1a6da
   197e8:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   197eb:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
   197f1:	85 c0                	test   %eax,%eax
   197f3:	75 0a                	jne    0x197ff
   197f5:	8b 45 08             	mov    0x8(%ebp),%eax
   197f8:	8b 40 14             	mov    0x14(%eax),%eax
   197fb:	85 c0                	test   %eax,%eax
   197fd:	75 11                	jne    0x19810
   197ff:	e8 cc 0e 00 00       	call   0x1a6d0
   19804:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,0xffffffec(%ebp)
   1980b:	e9 b7 00 00 00       	jmp    0x198c7
   19810:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   19813:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
   19819:	85 c0                	test   %eax,%eax
   1981b:	74 24                	je     0x19841
   1981d:	c7 44 24 0c cd 01 00 	movl   $0x1cd,0xc(%esp)
   19824:	00 
   19825:	c7 44 24 08 10 c0 01 	movl   $0x1c010,0x8(%esp)
   1982c:	00 
   1982d:	c7 44 24 04 10 c0 01 	movl   $0x1c010,0x4(%esp)
   19834:	00 
   19835:	c7 04 24 18 c2 01 00 	movl   $0x1c218,(%esp)
   1983c:	e8 e7 03 00 00       	call   0x19c28
   19841:	8b 45 08             	mov    0x8(%ebp),%eax
   19844:	8b 50 08             	mov    0x8(%eax),%edx
   19847:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1984a:	89 90 88 00 00 00    	mov    %edx,0x88(%eax)
   19850:	8b 45 08             	mov    0x8(%ebp),%eax
   19853:	8b 50 0c             	mov    0xc(%eax),%edx
   19856:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   19859:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
   1985f:	8b 45 08             	mov    0x8(%ebp),%eax
   19862:	8b 50 10             	mov    0x10(%eax),%edx
   19865:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   19868:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
   1986e:	8b 45 08             	mov    0x8(%ebp),%eax
   19871:	8b 50 14             	mov    0x14(%eax),%edx
   19874:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   19877:	89 90 94 00 00 00    	mov    %edx,0x94(%eax)
   1987d:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   19880:	c7 80 98 00 00 00 00 	movl   $0x0,0x98(%eax)
   19887:	00 00 00 
   1988a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1988d:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
   19893:	85 c0                	test   %eax,%eax
   19895:	75 24                	jne    0x198bb
   19897:	c7 44 24 0c d5 01 00 	movl   $0x1d5,0xc(%esp)
   1989e:	00 
   1989f:	c7 44 24 08 10 c0 01 	movl   $0x1c010,0x8(%esp)
   198a6:	00 
   198a7:	c7 44 24 04 10 c0 01 	movl   $0x1c010,0x4(%esp)
   198ae:	00 
   198af:	c7 04 24 2e c2 01 00 	movl   $0x1c22e,(%esp)
   198b6:	e8 6d 03 00 00       	call   0x19c28
   198bb:	e8 10 0e 00 00       	call   0x1a6d0
   198c0:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
   198c7:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   198ca:	c9                   	leave  
   198cb:	c3                   	ret    
   198cc:	55                   	push   %ebp
   198cd:	89 e5                	mov    %esp,%ebp
   198cf:	53                   	push   %ebx
   198d0:	83 ec 24             	sub    $0x24,%esp
   198d3:	8b 45 08             	mov    0x8(%ebp),%eax
   198d6:	8b 40 14             	mov    0x14(%eax),%eax
   198d9:	85 c0                	test   %eax,%eax
   198db:	74 3c                	je     0x19919
   198dd:	8b 45 08             	mov    0x8(%ebp),%eax
   198e0:	8b 58 14             	mov    0x14(%eax),%ebx
   198e3:	8b 45 08             	mov    0x8(%ebp),%eax
   198e6:	8b 40 10             	mov    0x10(%eax),%eax
   198e9:	89 04 24             	mov    %eax,(%esp)
   198ec:	e8 af 10 00 00       	call   0x1a9a0
   198f1:	39 c3                	cmp    %eax,%ebx
   198f3:	73 0b                	jae    0x19900
   198f5:	8b 45 08             	mov    0x8(%ebp),%eax
   198f8:	8b 40 14             	mov    0x14(%eax),%eax
   198fb:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   198fe:	eb 11                	jmp    0x19911
   19900:	8b 45 08             	mov    0x8(%ebp),%eax
   19903:	8b 40 10             	mov    0x10(%eax),%eax
   19906:	89 04 24             	mov    %eax,(%esp)
   19909:	e8 92 10 00 00       	call   0x1a9a0
   1990e:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   19911:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   19914:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   19917:	eb 11                	jmp    0x1992a
   19919:	8b 45 08             	mov    0x8(%ebp),%eax
   1991c:	8b 40 10             	mov    0x10(%eax),%eax
   1991f:	89 04 24             	mov    %eax,(%esp)
   19922:	e8 79 10 00 00       	call   0x1a9a0
   19927:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   1992a:	8b 45 08             	mov    0x8(%ebp),%eax
   1992d:	8b 50 10             	mov    0x10(%eax),%edx
   19930:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   19933:	8d 04 02             	lea    (%edx,%eax,1),%eax
   19936:	c6 00 00             	movb   $0x0,(%eax)
   19939:	8b 45 08             	mov    0x8(%ebp),%eax
   1993c:	8b 40 04             	mov    0x4(%eax),%eax
   1993f:	69 c0 9c 00 00 00    	imul   $0x9c,%eax,%eax
   19945:	05 e0 45 04 00       	add    $0x445e0,%eax
   1994a:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   1994d:	eb 24                	jmp    0x19973
   1994f:	8b 45 08             	mov    0x8(%ebp),%eax
   19952:	8b 50 10             	mov    0x10(%eax),%edx
   19955:	0f b6 02             	movzbl (%edx),%eax
   19958:	0f be c8             	movsbl %al,%ecx
   1995b:	83 c2 01             	add    $0x1,%edx
   1995e:	8b 45 08             	mov    0x8(%ebp),%eax
   19961:	89 50 10             	mov    %edx,0x10(%eax)
   19964:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   19968:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   1996b:	89 04 24             	mov    %eax,(%esp)
   1996e:	e8 fd 0a 00 00       	call   0x1a470
   19973:	8b 45 08             	mov    0x8(%ebp),%eax
   19976:	8b 40 10             	mov    0x10(%eax),%eax
   19979:	0f b6 00             	movzbl (%eax),%eax
   1997c:	84 c0                	test   %al,%al
   1997e:	75 cf                	jne    0x1994f
   19980:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   19983:	8b 45 08             	mov    0x8(%ebp),%eax
   19986:	89 50 14             	mov    %edx,0x14(%eax)
   19989:	83 c4 24             	add    $0x24,%esp
   1998c:	5b                   	pop    %ebx
   1998d:	5d                   	pop    %ebp
   1998e:	c3                   	ret    
   1998f:	00 55 89             	add    %dl,0xffffff89(%ebp)
   19992:	e5 83                	in     $0x83,%eax
   19994:	ec                   	in     (%dx),%al
   19995:	08 e8                	or     %ch,%al
   19997:	07                   	pop    %es
   19998:	00 00                	add    %al,(%eax)
   1999a:	00 e8                	add    %ch,%al
   1999c:	8e 00                	movw   (%eax),%es
   1999e:	00 00                	add    %al,(%eax)
   199a0:	c9                   	leave  
   199a1:	c3                   	ret    
   199a2:	55                   	push   %ebp
   199a3:	89 e5                	mov    %esp,%ebp
   199a5:	83 ec 18             	sub    $0x18,%esp
   199a8:	e8 2d 0d 00 00       	call   0x1a6da
   199ad:	a1 c0 45 04 00       	mov    0x445c0,%eax
   199b2:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   199b8:	8b 10                	mov    (%eax),%edx
   199ba:	a1 c0 45 04 00       	mov    0x445c0,%eax
   199bf:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   199c5:	8b 40 04             	mov    0x4(%eax),%eax
   199c8:	8d 04 02             	lea    (%edx,%eax,1),%eax
   199cb:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   199ce:	c7 44 24 04 0d 00 00 	movl   $0xd,0x4(%esp)
   199d5:	00 
   199d6:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
   199dd:	e8 94 0c 00 00       	call   0x1a676
   199e2:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   199e5:	d1 e8                	shr    %eax
   199e7:	0f b6 c0             	movzbl %al,%eax
   199ea:	89 44 24 04          	mov    %eax,0x4(%esp)
   199ee:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
   199f5:	e8 7c 0c 00 00       	call   0x1a676
   199fa:	c7 44 24 04 0c 00 00 	movl   $0xc,0x4(%esp)
   19a01:	00 
   19a02:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
   19a09:	e8 68 0c 00 00       	call   0x1a676
   19a0e:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   19a11:	c1 e8 09             	shr    $0x9,%eax
   19a14:	0f b6 c0             	movzbl %al,%eax
   19a17:	89 44 24 04          	mov    %eax,0x4(%esp)
   19a1b:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
   19a22:	e8 4f 0c 00 00       	call   0x1a676
   19a27:	e8 a4 0c 00 00       	call   0x1a6d0
   19a2c:	c9                   	leave  
   19a2d:	c3                   	ret    
   19a2e:	55                   	push   %ebp
   19a2f:	89 e5                	mov    %esp,%ebp
   19a31:	83 ec 18             	sub    $0x18,%esp
   19a34:	e8 a1 0c 00 00       	call   0x1a6da
   19a39:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19a3e:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19a44:	8b 50 08             	mov    0x8(%eax),%edx
   19a47:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19a4c:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19a52:	8b 00                	mov    (%eax),%eax
   19a54:	01 c2                	add    %eax,%edx
   19a56:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19a5b:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19a61:	8b 40 04             	mov    0x4(%eax),%eax
   19a64:	8d 04 02             	lea    (%edx,%eax,1),%eax
   19a67:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   19a6a:	c7 44 24 04 0f 00 00 	movl   $0xf,0x4(%esp)
   19a71:	00 
   19a72:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
   19a79:	e8 f8 0b 00 00       	call   0x1a676
   19a7e:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   19a81:	d1 e8                	shr    %eax
   19a83:	0f b6 c0             	movzbl %al,%eax
   19a86:	89 44 24 04          	mov    %eax,0x4(%esp)
   19a8a:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
   19a91:	e8 e0 0b 00 00       	call   0x1a676
   19a96:	c7 44 24 04 0e 00 00 	movl   $0xe,0x4(%esp)
   19a9d:	00 
   19a9e:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
   19aa5:	e8 cc 0b 00 00       	call   0x1a676
   19aaa:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   19aad:	c1 e8 09             	shr    $0x9,%eax
   19ab0:	0f b6 c0             	movzbl %al,%eax
   19ab3:	89 44 24 04          	mov    %eax,0x4(%esp)
   19ab7:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
   19abe:	e8 b3 0b 00 00       	call   0x1a676
   19ac3:	e8 08 0c 00 00       	call   0x1a6d0
   19ac8:	c9                   	leave  
   19ac9:	c3                   	ret    
   19aca:	55                   	push   %ebp
   19acb:	89 e5                	mov    %esp,%ebp
   19acd:	53                   	push   %ebx
   19ace:	83 ec 14             	sub    $0x14,%esp
   19ad1:	e8 04 0c 00 00       	call   0x1a6da
   19ad6:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19adb:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19ae1:	8b 48 04             	mov    0x4(%eax),%ecx
   19ae4:	8b 55 08             	mov    0x8(%ebp),%edx
   19ae7:	89 d0                	mov    %edx,%eax
   19ae9:	c1 e0 02             	shl    $0x2,%eax
   19aec:	01 d0                	add    %edx,%eax
   19aee:	c1 e0 05             	shl    $0x5,%eax
   19af1:	8d 04 01             	lea    (%ecx,%eax,1),%eax
   19af4:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   19af7:	e8 d4 0b 00 00       	call   0x1a6d0
   19afc:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
   19b00:	79 07                	jns    0x19b09
   19b02:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
   19b09:	81 7d f8 60 18 00 00 	cmpl   $0x1860,0xfffffff8(%ebp)
   19b10:	7e 07                	jle    0x19b19
   19b12:	c7 45 f8 60 18 00 00 	movl   $0x1860,0xfffffff8(%ebp)
   19b19:	e8 bc 0b 00 00       	call   0x1a6da
   19b1e:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19b23:	8b 88 84 00 00 00    	mov    0x84(%eax),%ecx
   19b29:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19b2e:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19b34:	8b 58 08             	mov    0x8(%eax),%ebx
   19b37:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19b3c:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19b42:	8b 50 04             	mov    0x4(%eax),%edx
   19b45:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   19b48:	29 d0                	sub    %edx,%eax
   19b4a:	89 da                	mov    %ebx,%edx
   19b4c:	29 c2                	sub    %eax,%edx
   19b4e:	89 d0                	mov    %edx,%eax
   19b50:	89 41 08             	mov    %eax,0x8(%ecx)
   19b53:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19b58:	8b 90 84 00 00 00    	mov    0x84(%eax),%edx
   19b5e:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   19b61:	89 42 04             	mov    %eax,0x4(%edx)
   19b64:	e8 67 0b 00 00       	call   0x1a6d0
   19b69:	e8 34 fe ff ff       	call   0x199a2
   19b6e:	83 c4 14             	add    $0x14,%esp
   19b71:	5b                   	pop    %ebx
   19b72:	5d                   	pop    %ebp
   19b73:	c3                   	ret    
   19b74:	55                   	push   %ebp
   19b75:	89 e5                	mov    %esp,%ebp
   19b77:	83 ec 08             	sub    $0x8,%esp
   19b7a:	e8 5b 0b 00 00       	call   0x1a6da
   19b7f:	eb 0c                	jmp    0x19b8d
   19b81:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
   19b88:	e8 3d ff ff ff       	call   0x19aca
   19b8d:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19b92:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19b98:	8b 40 08             	mov    0x8(%eax),%eax
   19b9b:	3d 9f 0f 00 00       	cmp    $0xf9f,%eax
   19ba0:	7e 23                	jle    0x19bc5
   19ba2:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19ba7:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19bad:	8b 40 04             	mov    0x4(%eax),%eax
   19bb0:	3d 5f 18 00 00       	cmp    $0x185f,%eax
   19bb5:	7e ca                	jle    0x19b81
   19bb7:	eb 0c                	jmp    0x19bc5
   19bb9:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
   19bc0:	e8 05 ff ff ff       	call   0x19aca
   19bc5:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19bca:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19bd0:	8b 40 08             	mov    0x8(%eax),%eax
   19bd3:	85 c0                	test   %eax,%eax
   19bd5:	79 12                	jns    0x19be9
   19bd7:	a1 c0 45 04 00       	mov    0x445c0,%eax
   19bdc:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   19be2:	8b 40 04             	mov    0x4(%eax),%eax
   19be5:	85 c0                	test   %eax,%eax
   19be7:	7f d0                	jg     0x19bb9
   19be9:	e8 e2 0a 00 00       	call   0x1a6d0
   19bee:	c9                   	leave  
   19bef:	c3                   	ret    
   19bf0:	b8 00 00 00 00       	mov    $0x0,%eax
   19bf5:	8b 5c 24 04          	mov    0x4(%esp),%ebx
   19bf9:	8b 4c 24 08          	mov    0x8(%esp),%ecx
   19bfd:	8b 54 24 0c          	mov    0xc(%esp),%edx
   19c01:	cd 80                	int    $0x80
   19c03:	c3                   	ret    
   19c04:	b8 01 00 00 00       	mov    $0x1,%eax
   19c09:	8b 5c 24 04          	mov    0x4(%esp),%ebx
   19c0d:	cd 80                	int    $0x80
   19c0f:	c3                   	ret    
   19c10:	b8 02 00 00 00       	mov    $0x2,%eax
   19c15:	8b 5c 24 04          	mov    0x4(%esp),%ebx
   19c19:	cd 80                	int    $0x80
   19c1b:	c3                   	ret    
   19c1c:	b8 03 00 00 00       	mov    $0x3,%eax
   19c21:	8b 5c 24 04          	mov    0x4(%esp),%ebx
   19c25:	cd 80                	int    $0x80
   19c27:	c3                   	ret    
   19c28:	55                   	push   %ebp
   19c29:	89 e5                	mov    %esp,%ebp
   19c2b:	83 ec 18             	sub    $0x18,%esp
   19c2e:	8b 45 14             	mov    0x14(%ebp),%eax
   19c31:	89 44 24 0c          	mov    %eax,0xc(%esp)
   19c35:	8b 45 0c             	mov    0xc(%ebp),%eax
   19c38:	89 44 24 08          	mov    %eax,0x8(%esp)
   19c3c:	8b 45 08             	mov    0x8(%ebp),%eax
   19c3f:	89 44 24 04          	mov    %eax,0x4(%esp)
   19c43:	c7 04 24 44 c2 01 00 	movl   $0x1c244,(%esp)
   19c4a:	e8 fd 10 00 00       	call   0x1ad4c
   19c4f:	e8 86 0a 00 00       	call   0x1a6da
   19c54:	eb fe                	jmp    0x19c54
   19c56:	00 00                	add    %al,(%eax)
   19c58:	55                   	push   %ebp
   19c59:	89 e5                	mov    %esp,%ebp
   19c5b:	83 ec 48             	sub    $0x48,%esp
   19c5e:	8b 45 08             	mov    0x8(%ebp),%eax
   19c61:	0f b6 00             	movzbl (%eax),%eax
   19c64:	88 45 ff             	mov    %al,0xffffffff(%ebp)
   19c67:	c7 45 dc fd ff ff ff 	movl   $0xfffffffd,0xffffffdc(%ebp)
   19c6e:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
   19c75:	8b 45 08             	mov    0x8(%ebp),%eax
   19c78:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   19c7b:	8b 45 0c             	mov    0xc(%ebp),%eax
   19c7e:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   19c81:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
   19c84:	89 44 24 08          	mov    %eax,0x8(%esp)
   19c88:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
   19c8f:	00 
   19c90:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   19c97:	e8 54 ff ff ff       	call   0x19bf0
   19c9c:	85 c0                	test   %eax,%eax
   19c9e:	74 24                	je     0x19cc4
   19ca0:	c7 44 24 0c 15 00 00 	movl   $0x15,0xc(%esp)
   19ca7:	00 
   19ca8:	c7 44 24 08 68 c2 01 	movl   $0x1c268,0x8(%esp)
   19caf:	00 
   19cb0:	c7 44 24 04 68 c2 01 	movl   $0x1c268,0x4(%esp)
   19cb7:	00 
   19cb8:	c7 04 24 78 c2 01 00 	movl   $0x1c278,(%esp)
   19cbf:	e8 64 ff ff ff       	call   0x19c28
   19cc4:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   19cc7:	c9                   	leave  
   19cc8:	c3                   	ret    
   19cc9:	55                   	push   %ebp
   19cca:	89 e5                	mov    %esp,%ebp
   19ccc:	83 ec 48             	sub    $0x48,%esp
   19ccf:	c7 45 e0 fd ff ff ff 	movl   $0xfffffffd,0xffffffe0(%ebp)
   19cd6:	c7 45 e4 02 00 00 00 	movl   $0x2,0xffffffe4(%ebp)
   19cdd:	8b 45 08             	mov    0x8(%ebp),%eax
   19ce0:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   19ce3:	8b 45 0c             	mov    0xc(%ebp),%eax
   19ce6:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   19ce9:	8b 45 10             	mov    0x10(%ebp),%eax
   19cec:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   19cef:	8b 45 14             	mov    0x14(%ebp),%eax
   19cf2:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   19cf5:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   19cf8:	89 44 24 08          	mov    %eax,0x8(%esp)
   19cfc:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
   19d03:	00 
   19d04:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   19d0b:	e8 e0 fe ff ff       	call   0x19bf0
   19d10:	85 c0                	test   %eax,%eax
   19d12:	74 24                	je     0x19d38
   19d14:	c7 44 24 0c 2b 00 00 	movl   $0x2b,0xc(%esp)
   19d1b:	00 
   19d1c:	c7 44 24 08 68 c2 01 	movl   $0x1c268,0x8(%esp)
   19d23:	00 
   19d24:	c7 44 24 04 68 c2 01 	movl   $0x1c268,0x4(%esp)
   19d2b:	00 
   19d2c:	c7 04 24 78 c2 01 00 	movl   $0x1c278,(%esp)
   19d33:	e8 f0 fe ff ff       	call   0x19c28
   19d38:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   19d3b:	c9                   	leave  
   19d3c:	c3                   	ret    
   19d3d:	55                   	push   %ebp
   19d3e:	89 e5                	mov    %esp,%ebp
   19d40:	83 ec 48             	sub    $0x48,%esp
   19d43:	c7 45 e0 fd ff ff ff 	movl   $0xfffffffd,0xffffffe0(%ebp)
   19d4a:	c7 45 e4 03 00 00 00 	movl   $0x3,0xffffffe4(%ebp)
   19d51:	8b 45 08             	mov    0x8(%ebp),%eax
   19d54:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   19d57:	8b 45 0c             	mov    0xc(%ebp),%eax
   19d5a:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   19d5d:	8b 45 10             	mov    0x10(%ebp),%eax
   19d60:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   19d63:	8b 45 14             	mov    0x14(%ebp),%eax
   19d66:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   19d69:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   19d6c:	89 44 24 08          	mov    %eax,0x8(%esp)
   19d70:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
   19d77:	00 
   19d78:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   19d7f:	e8 6c fe ff ff       	call   0x19bf0
   19d84:	85 c0                	test   %eax,%eax
   19d86:	74 24                	je     0x19dac
   19d88:	c7 44 24 0c 42 00 00 	movl   $0x42,0xc(%esp)
   19d8f:	00 
   19d90:	c7 44 24 08 68 c2 01 	movl   $0x1c268,0x8(%esp)
   19d97:	00 
   19d98:	c7 44 24 04 68 c2 01 	movl   $0x1c268,0x4(%esp)
   19d9f:	00 
   19da0:	c7 04 24 78 c2 01 00 	movl   $0x1c278,(%esp)
   19da7:	e8 7c fe ff ff       	call   0x19c28
   19dac:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
   19daf:	c9                   	leave  
   19db0:	c3                   	ret    
   19db1:	55                   	push   %ebp
   19db2:	89 e5                	mov    %esp,%ebp
   19db4:	83 ec 48             	sub    $0x48,%esp
   19db7:	c7 45 e0 fd ff ff ff 	movl   $0xfffffffd,0xffffffe0(%ebp)
   19dbe:	c7 45 e4 01 00 00 00 	movl   $0x1,0xffffffe4(%ebp)
   19dc5:	8b 45 08             	mov    0x8(%ebp),%eax
   19dc8:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   19dcb:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   19dce:	89 44 24 08          	mov    %eax,0x8(%esp)
   19dd2:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
   19dd9:	00 
   19dda:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   19de1:	e8 0a fe ff ff       	call   0x19bf0
   19de6:	85 c0                	test   %eax,%eax
   19de8:	74 24                	je     0x19e0e
   19dea:	c7 44 24 0c 52 00 00 	movl   $0x52,0xc(%esp)
   19df1:	00 
   19df2:	c7 44 24 08 68 c2 01 	movl   $0x1c268,0x8(%esp)
   19df9:	00 
   19dfa:	c7 44 24 04 68 c2 01 	movl   $0x1c268,0x4(%esp)
   19e01:	00 
   19e02:	c7 04 24 78 c2 01 00 	movl   $0x1c278,(%esp)
   19e09:	e8 1a fe ff ff       	call   0x19c28
   19e0e:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   19e11:	c9                   	leave  
   19e12:	c3                   	ret    
   19e13:	55                   	push   %ebp
   19e14:	89 e5                	mov    %esp,%ebp
   19e16:	83 ec 48             	sub    $0x48,%esp
   19e19:	8b 45 08             	mov    0x8(%ebp),%eax
   19e1c:	0f b6 00             	movzbl (%eax),%eax
   19e1f:	88 45 ff             	mov    %al,0xffffffff(%ebp)
   19e22:	c7 45 dc fd ff ff ff 	movl   $0xfffffffd,0xffffffdc(%ebp)
   19e29:	c7 45 e0 04 00 00 00 	movl   $0x4,0xffffffe0(%ebp)
   19e30:	8b 45 08             	mov    0x8(%ebp),%eax
   19e33:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   19e36:	8b 45 0c             	mov    0xc(%ebp),%eax
   19e39:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   19e3c:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
   19e3f:	89 44 24 08          	mov    %eax,0x8(%esp)
   19e43:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
   19e4a:	00 
   19e4b:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   19e52:	e8 99 fd ff ff       	call   0x19bf0
   19e57:	85 c0                	test   %eax,%eax
   19e59:	74 24                	je     0x19e7f
   19e5b:	c7 44 24 0c 66 00 00 	movl   $0x66,0xc(%esp)
   19e62:	00 
   19e63:	c7 44 24 08 68 c2 01 	movl   $0x1c268,0x8(%esp)
   19e6a:	00 
   19e6b:	c7 44 24 04 68 c2 01 	movl   $0x1c268,0x4(%esp)
   19e72:	00 
   19e73:	c7 04 24 78 c2 01 00 	movl   $0x1c278,(%esp)
   19e7a:	e8 a9 fd ff ff       	call   0x19c28
   19e7f:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   19e82:	c9                   	leave  
   19e83:	c3                   	ret    
   19e84:	55                   	push   %ebp
   19e85:	89 e5                	mov    %esp,%ebp
   19e87:	83 ec 48             	sub    $0x48,%esp
   19e8a:	c7 45 e0 fd ff ff ff 	movl   $0xfffffffd,0xffffffe0(%ebp)
   19e91:	c7 45 e4 08 00 00 00 	movl   $0x8,0xffffffe4(%ebp)
   19e98:	8b 45 08             	mov    0x8(%ebp),%eax
   19e9b:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   19e9e:	8b 45 0c             	mov    0xc(%ebp),%eax
   19ea1:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   19ea4:	8b 45 10             	mov    0x10(%ebp),%eax
   19ea7:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   19eaa:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   19ead:	89 44 24 08          	mov    %eax,0x8(%esp)
   19eb1:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
   19eb8:	00 
   19eb9:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   19ec0:	e8 2b fd ff ff       	call   0x19bf0
   19ec5:	85 c0                	test   %eax,%eax
   19ec7:	74 24                	je     0x19eed
   19ec9:	c7 44 24 0c 7a 00 00 	movl   $0x7a,0xc(%esp)
   19ed0:	00 
   19ed1:	c7 44 24 08 68 c2 01 	movl   $0x1c268,0x8(%esp)
   19ed8:	00 
   19ed9:	c7 44 24 04 68 c2 01 	movl   $0x1c268,0x4(%esp)
   19ee0:	00 
   19ee1:	c7 04 24 78 c2 01 00 	movl   $0x1c278,(%esp)
   19ee8:	e8 3b fd ff ff       	call   0x19c28
   19eed:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   19ef0:	c9                   	leave  
   19ef1:	c3                   	ret    
   19ef2:	55                   	push   %ebp
   19ef3:	89 e5                	mov    %esp,%ebp
   19ef5:	83 ec 18             	sub    $0x18,%esp
   19ef8:	8b 45 08             	mov    0x8(%ebp),%eax
   19efb:	0f b6 00             	movzbl (%eax),%eax
   19efe:	88 45 fb             	mov    %al,0xfffffffb(%ebp)
   19f01:	8b 45 08             	mov    0x8(%ebp),%eax
   19f04:	89 04 24             	mov    %eax,(%esp)
   19f07:	e8 94 0a 00 00       	call   0x1a9a0
   19f0c:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   19f0f:	eb 17                	jmp    0x19f28
   19f11:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   19f14:	03 45 08             	add    0x8(%ebp),%eax
   19f17:	0f b6 00             	movzbl (%eax),%eax
   19f1a:	3c 2f                	cmp    $0x2f,%al
   19f1c:	75 06                	jne    0x19f24
   19f1e:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
   19f22:	eb 0a                	jmp    0x19f2e
   19f24:	83 6d fc 01          	subl   $0x1,0xfffffffc(%ebp)
   19f28:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
   19f2c:	7f e3                	jg     0x19f11
   19f2e:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   19f31:	03 45 08             	add    0x8(%ebp),%eax
   19f34:	c9                   	leave  
   19f35:	c3                   	ret    
   19f36:	00 00                	add    %al,(%eax)
   19f38:	55                   	push   %ebp
   19f39:	89 e5                	mov    %esp,%ebp
   19f3b:	83 ec 48             	sub    $0x48,%esp
   19f3e:	c7 45 d8 fb ff ff ff 	movl   $0xfffffffb,0xffffffd8(%ebp)
   19f45:	c7 45 dc 01 00 00 00 	movl   $0x1,0xffffffdc(%ebp)
   19f4c:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
   19f4f:	89 44 24 08          	mov    %eax,0x8(%esp)
   19f53:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
   19f5a:	00 
   19f5b:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   19f62:	e8 89 fc ff ff       	call   0x19bf0
   19f67:	85 c0                	test   %eax,%eax
   19f69:	74 24                	je     0x19f8f
   19f6b:	c7 44 24 0c 0e 00 00 	movl   $0xe,0xc(%esp)
   19f72:	00 
   19f73:	c7 44 24 08 a0 c2 01 	movl   $0x1c2a0,0x8(%esp)
   19f7a:	00 
   19f7b:	c7 44 24 04 a0 c2 01 	movl   $0x1c2a0,0x4(%esp)
   19f82:	00 
   19f83:	c7 04 24 b0 c2 01 00 	movl   $0x1c2b0,(%esp)
   19f8a:	e8 99 fc ff ff       	call   0x19c28
   19f8f:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
   19f92:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   19f95:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   19f9c:	e8 53 07 00 00       	call   0x1a6f4
   19fa1:	e8 92 05 00 00       	call   0x1a538
   19fa6:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   19fa9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   19fac:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
   19faf:	75 09                	jne    0x19fba
   19fb1:	c7 45 cc 00 00 00 00 	movl   $0x0,0xffffffcc(%ebp)
   19fb8:	eb 06                	jmp    0x19fc0
   19fba:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   19fbd:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
   19fc0:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   19fc3:	c9                   	leave  
   19fc4:	c3                   	ret    
   19fc5:	55                   	push   %ebp
   19fc6:	89 e5                	mov    %esp,%ebp
   19fc8:	83 ec 48             	sub    $0x48,%esp
   19fcb:	c7 45 e0 fb ff ff ff 	movl   $0xfffffffb,0xffffffe0(%ebp)
   19fd2:	c7 45 e4 02 00 00 00 	movl   $0x2,0xffffffe4(%ebp)
   19fd9:	8b 45 08             	mov    0x8(%ebp),%eax
   19fdc:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   19fdf:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   19fe2:	89 44 24 08          	mov    %eax,0x8(%esp)
   19fe6:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
   19fed:	00 
   19fee:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   19ff5:	e8 f6 fb ff ff       	call   0x19bf0
   19ffa:	85 c0                	test   %eax,%eax
   19ffc:	74 24                	je     0x1a022
   19ffe:	c7 44 24 0c 23 00 00 	movl   $0x23,0xc(%esp)
   1a005:	00 
   1a006:	c7 44 24 08 a0 c2 01 	movl   $0x1c2a0,0x8(%esp)
   1a00d:	00 
   1a00e:	c7 44 24 04 a0 c2 01 	movl   $0x1c2a0,0x4(%esp)
   1a015:	00 
   1a016:	c7 04 24 b0 c2 01 00 	movl   $0x1c2b0,(%esp)
   1a01d:	e8 06 fc ff ff       	call   0x19c28
   1a022:	c9                   	leave  
   1a023:	c3                   	ret    
   1a024:	55                   	push   %ebp
   1a025:	89 e5                	mov    %esp,%ebp
   1a027:	83 ec 48             	sub    $0x48,%esp
   1a02a:	8b 45 08             	mov    0x8(%ebp),%eax
   1a02d:	c7 00 10 10 10 10    	movl   $0x10101010,(%eax)
   1a033:	c7 45 e0 fb ff ff ff 	movl   $0xfffffffb,0xffffffe0(%ebp)
   1a03a:	c7 45 e4 03 00 00 00 	movl   $0x3,0xffffffe4(%ebp)
   1a041:	8b 45 08             	mov    0x8(%ebp),%eax
   1a044:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   1a047:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   1a04a:	89 44 24 08          	mov    %eax,0x8(%esp)
   1a04e:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
   1a055:	00 
   1a056:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   1a05d:	e8 8e fb ff ff       	call   0x19bf0
   1a062:	85 c0                	test   %eax,%eax
   1a064:	74 24                	je     0x1a08a
   1a066:	c7 44 24 0c 34 00 00 	movl   $0x34,0xc(%esp)
   1a06d:	00 
   1a06e:	c7 44 24 08 a0 c2 01 	movl   $0x1c2a0,0x8(%esp)
   1a075:	00 
   1a076:	c7 44 24 04 a0 c2 01 	movl   $0x1c2a0,0x4(%esp)
   1a07d:	00 
   1a07e:	c7 04 24 b0 c2 01 00 	movl   $0x1c2b0,(%esp)
   1a085:	e8 9e fb ff ff       	call   0x19c28
   1a08a:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1a08d:	c9                   	leave  
   1a08e:	c3                   	ret    
   1a08f:	55                   	push   %ebp
   1a090:	89 e5                	mov    %esp,%ebp
   1a092:	83 ec 48             	sub    $0x48,%esp
   1a095:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   1a09c:	00 
   1a09d:	8b 45 08             	mov    0x8(%ebp),%eax
   1a0a0:	89 04 24             	mov    %eax,(%esp)
   1a0a3:	e8 b0 fb ff ff       	call   0x19c58
   1a0a8:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   1a0ab:	83 7d fc ff          	cmpl   $0xffffffff,0xfffffffc(%ebp)
   1a0af:	75 09                	jne    0x1a0ba
   1a0b1:	c7 45 cc ff ff ff ff 	movl   $0xffffffff,0xffffffcc(%ebp)
   1a0b8:	eb 74                	jmp    0x1a12e
   1a0ba:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1a0bd:	89 04 24             	mov    %eax,(%esp)
   1a0c0:	e8 ec fc ff ff       	call   0x19db1
   1a0c5:	c7 45 dc fb ff ff ff 	movl   $0xfffffffb,0xffffffdc(%ebp)
   1a0cc:	c7 45 e0 04 00 00 00 	movl   $0x4,0xffffffe0(%ebp)
   1a0d3:	8b 45 08             	mov    0x8(%ebp),%eax
   1a0d6:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   1a0d9:	8b 45 0c             	mov    0xc(%ebp),%eax
   1a0dc:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   1a0df:	8b 45 10             	mov    0x10(%ebp),%eax
   1a0e2:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   1a0e5:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
   1a0e8:	89 44 24 08          	mov    %eax,0x8(%esp)
   1a0ec:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
   1a0f3:	00 
   1a0f4:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   1a0fb:	e8 f0 fa ff ff       	call   0x19bf0
   1a100:	85 c0                	test   %eax,%eax
   1a102:	74 24                	je     0x1a128
   1a104:	c7 44 24 0c 4d 00 00 	movl   $0x4d,0xc(%esp)
   1a10b:	00 
   1a10c:	c7 44 24 08 a0 c2 01 	movl   $0x1c2a0,0x8(%esp)
   1a113:	00 
   1a114:	c7 44 24 04 a0 c2 01 	movl   $0x1c2a0,0x4(%esp)
   1a11b:	00 
   1a11c:	c7 04 24 b0 c2 01 00 	movl   $0x1c2b0,(%esp)
   1a123:	e8 00 fb ff ff       	call   0x19c28
   1a128:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   1a12b:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
   1a12e:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   1a131:	c9                   	leave  
   1a132:	c3                   	ret    
   1a133:	55                   	push   %ebp
   1a134:	89 e5                	mov    %esp,%ebp
   1a136:	83 ec 48             	sub    $0x48,%esp
   1a139:	c7 45 e0 fb ff ff ff 	movl   $0xfffffffb,0xffffffe0(%ebp)
   1a140:	c7 45 e4 05 00 00 00 	movl   $0x5,0xffffffe4(%ebp)
   1a147:	8b 45 08             	mov    0x8(%ebp),%eax
   1a14a:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   1a14d:	8b 45 0c             	mov    0xc(%ebp),%eax
   1a150:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
   1a153:	8b 45 10             	mov    0x10(%ebp),%eax
   1a156:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   1a159:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   1a15c:	89 44 24 08          	mov    %eax,0x8(%esp)
   1a160:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
   1a167:	00 
   1a168:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   1a16f:	e8 7c fa ff ff       	call   0x19bf0
   1a174:	85 c0                	test   %eax,%eax
   1a176:	74 24                	je     0x1a19c
   1a178:	c7 44 24 0c 5b 00 00 	movl   $0x5b,0xc(%esp)
   1a17f:	00 
   1a180:	c7 44 24 08 a0 c2 01 	movl   $0x1c2a0,0x8(%esp)
   1a187:	00 
   1a188:	c7 44 24 04 a0 c2 01 	movl   $0x1c2a0,0x4(%esp)
   1a18f:	00 
   1a190:	c7 04 24 b0 c2 01 00 	movl   $0x1c2b0,(%esp)
   1a197:	e8 8c fa ff ff       	call   0x19c28
   1a19c:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1a19f:	c9                   	leave  
   1a1a0:	c3                   	ret    
   1a1a1:	00 00                	add    %al,(%eax)
   1a1a3:	00 55 89             	add    %dl,0xffffff89(%ebp)
   1a1a6:	e5 81                	in     $0x81,%eax
   1a1a8:	ec                   	in     (%dx),%al
   1a1a9:	48                   	dec    %eax
   1a1aa:	0c 00                	or     $0x0,%al
   1a1ac:	00 8b 45 08 0f b6    	add    %cl,0xb60f0845(%ebx)
   1a1b2:	00 88 45 df c7 45    	add    %cl,0x45c7df45(%eax)
   1a1b8:	e0 00                	loopne 0x1a1ba
   1a1ba:	0c 00                	or     $0x0,%al
   1a1bc:	00 c7                	add    %al,%bh
   1a1be:	44                   	inc    %esp
   1a1bf:	24 04                	and    $0x4,%al
   1a1c1:	00 00                	add    %al,(%eax)
   1a1c3:	00 00                	add    %al,(%eax)
   1a1c5:	8b 45 08             	mov    0x8(%ebp),%eax
   1a1c8:	89 04 24             	mov    %eax,(%esp)
   1a1cb:	e8 88 fa ff ff       	call   0x19c58
   1a1d0:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   1a1d3:	83 7d f0 ff          	cmpl   $0xffffffff,0xfffffff0(%ebp)
   1a1d7:	75 24                	jne    0x1a1fd
   1a1d9:	c7 44 24 0c 13 00 00 	movl   $0x13,0xc(%esp)
   1a1e0:	00 
   1a1e1:	c7 44 24 08 d5 c2 01 	movl   $0x1c2d5,0x8(%esp)
   1a1e8:	00 
   1a1e9:	c7 44 24 04 d5 c2 01 	movl   $0x1c2d5,0x4(%esp)
   1a1f0:	00 
   1a1f1:	c7 04 24 e0 c2 01 00 	movl   $0x1c2e0,(%esp)
   1a1f8:	e8 2b fa ff ff       	call   0x19c28
   1a1fd:	c7 44 24 0c 00 02 00 	movl   $0x200,0xc(%esp)
   1a204:	00 
   1a205:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
   1a20c:	00 
   1a20d:	8d 85 df f3 ff ff    	lea    0xfffff3df(%ebp),%eax
   1a213:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a217:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1a21a:	89 04 24             	mov    %eax,(%esp)
   1a21d:	e8 1b fb ff ff       	call   0x19d3d
   1a222:	0f b6 85 df f3 ff ff 	movzbl 0xfffff3df(%ebp),%eax
   1a229:	84 c0                	test   %al,%al
   1a22b:	0f 84 74 01 00 00    	je     0x1a3a5
   1a231:	8d 85 df f3 ff ff    	lea    0xfffff3df(%ebp),%eax
   1a237:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   1a23a:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1a23d:	89 04 24             	mov    %eax,(%esp)
   1a240:	e8 ad fc ff ff       	call   0x19ef2
   1a245:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
   1a248:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1a24b:	83 c0 7c             	add    $0x7c,%eax
   1a24e:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   1a251:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
   1a258:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
   1a25f:	eb 25                	jmp    0x1a286
   1a261:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   1a264:	0f b6 00             	movzbl (%eax),%eax
   1a267:	84 c0                	test   %al,%al
   1a269:	74 21                	je     0x1a28c
   1a26b:	c1 65 f8 03          	shll   $0x3,0xfffffff8(%ebp)
   1a26f:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
   1a272:	0f b6 00             	movzbl (%eax),%eax
   1a275:	0f be c0             	movsbl %al,%eax
   1a278:	83 e8 30             	sub    $0x30,%eax
   1a27b:	01 45 f8             	add    %eax,0xfffffff8(%ebp)
   1a27e:	83 45 f4 01          	addl   $0x1,0xfffffff4(%ebp)
   1a282:	83 45 ec 01          	addl   $0x1,0xffffffec(%ebp)
   1a286:	83 7d f4 0b          	cmpl   $0xb,0xfffffff4(%ebp)
   1a28a:	7e d5                	jle    0x1a261
   1a28c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   1a293:	00 
   1a294:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
   1a297:	89 04 24             	mov    %eax,(%esp)
   1a29a:	e8 b9 f9 ff ff       	call   0x19c58
   1a29f:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
   1a2a2:	83 7d fc ff          	cmpl   $0xffffffff,0xfffffffc(%ebp)
   1a2a6:	0f 85 df 00 00 00    	jne    0x1a38b
   1a2ac:	c7 44 24 0c 27 00 00 	movl   $0x27,0xc(%esp)
   1a2b3:	00 
   1a2b4:	c7 44 24 08 d5 c2 01 	movl   $0x1c2d5,0x8(%esp)
   1a2bb:	00 
   1a2bc:	c7 44 24 04 d5 c2 01 	movl   $0x1c2d5,0x4(%esp)
   1a2c3:	00 
   1a2c4:	c7 04 24 e9 c2 01 00 	movl   $0x1c2e9,(%esp)
   1a2cb:	e8 58 f9 ff ff       	call   0x19c28
   1a2d0:	e9 b6 00 00 00       	jmp    0x1a38b
   1a2d5:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1a2d8:	3b 45 e0             	cmp    0xffffffe0(%ebp),%eax
   1a2db:	7f 60                	jg     0x1a33d
   1a2dd:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
   1a2e0:	81 c2 ff 01 00 00    	add    $0x1ff,%edx
   1a2e6:	89 d0                	mov    %edx,%eax
   1a2e8:	c1 f8 1f             	sar    $0x1f,%eax
   1a2eb:	c1 e8 17             	shr    $0x17,%eax
   1a2ee:	01 d0                	add    %edx,%eax
   1a2f0:	c1 f8 09             	sar    $0x9,%eax
   1a2f3:	c1 e0 09             	shl    $0x9,%eax
   1a2f6:	89 44 24 0c          	mov    %eax,0xc(%esp)
   1a2fa:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
   1a301:	00 
   1a302:	8d 85 df f3 ff ff    	lea    0xfffff3df(%ebp),%eax
   1a308:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a30c:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1a30f:	89 04 24             	mov    %eax,(%esp)
   1a312:	e8 26 fa ff ff       	call   0x19d3d
   1a317:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
   1a31a:	89 44 24 0c          	mov    %eax,0xc(%esp)
   1a31e:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
   1a325:	00 
   1a326:	8d 85 df f3 ff ff    	lea    0xfffff3df(%ebp),%eax
   1a32c:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a330:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1a333:	89 04 24             	mov    %eax,(%esp)
   1a336:	e8 8e f9 ff ff       	call   0x19cc9
   1a33b:	eb 58                	jmp    0x1a395
   1a33d:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   1a340:	89 44 24 0c          	mov    %eax,0xc(%esp)
   1a344:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
   1a34b:	00 
   1a34c:	8d 85 df f3 ff ff    	lea    0xfffff3df(%ebp),%eax
   1a352:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a356:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1a359:	89 04 24             	mov    %eax,(%esp)
   1a35c:	e8 dc f9 ff ff       	call   0x19d3d
   1a361:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   1a364:	89 44 24 0c          	mov    %eax,0xc(%esp)
   1a368:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
   1a36f:	00 
   1a370:	8d 85 df f3 ff ff    	lea    0xfffff3df(%ebp),%eax
   1a376:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a37a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1a37d:	89 04 24             	mov    %eax,(%esp)
   1a380:	e8 44 f9 ff ff       	call   0x19cc9
   1a385:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   1a388:	29 45 f8             	sub    %eax,0xfffffff8(%ebp)
   1a38b:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
   1a38f:	0f 8f 40 ff ff ff    	jg     0x1a2d5
   1a395:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1a398:	89 04 24             	mov    %eax,(%esp)
   1a39b:	e8 11 fa ff ff       	call   0x19db1
   1a3a0:	e9 58 fe ff ff       	jmp    0x1a1fd
   1a3a5:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1a3a8:	89 04 24             	mov    %eax,(%esp)
   1a3ab:	e8 01 fa ff ff       	call   0x19db1
   1a3b0:	b8 00 00 00 00       	mov    $0x0,%eax
   1a3b5:	c9                   	leave  
   1a3b6:	c3                   	ret    
   1a3b7:	00 55 89             	add    %dl,0xffffff89(%ebp)
   1a3ba:	e5 83                	in     $0x83,%eax
   1a3bc:	ec                   	in     (%dx),%al
   1a3bd:	48                   	dec    %eax
   1a3be:	c7 45 e0 fc ff ff ff 	movl   $0xfffffffc,0xffffffe0(%ebp)
   1a3c5:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
   1a3cc:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   1a3cf:	89 44 24 08          	mov    %eax,0x8(%esp)
   1a3d3:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   1a3da:	00 
   1a3db:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   1a3e2:	e8 09 f8 ff ff       	call   0x19bf0
   1a3e7:	85 c0                	test   %eax,%eax
   1a3e9:	74 24                	je     0x1a40f
   1a3eb:	c7 44 24 0c 09 00 00 	movl   $0x9,0xc(%esp)
   1a3f2:	00 
   1a3f3:	c7 44 24 08 f8 c2 01 	movl   $0x1c2f8,0x8(%esp)
   1a3fa:	00 
   1a3fb:	c7 44 24 04 f8 c2 01 	movl   $0x1c2f8,0x4(%esp)
   1a402:	00 
   1a403:	c7 04 24 08 c3 01 00 	movl   $0x1c308,(%esp)
   1a40a:	e8 19 f8 ff ff       	call   0x19c28
   1a40f:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1a412:	c9                   	leave  
   1a413:	c3                   	ret    
   1a414:	55                   	push   %ebp
   1a415:	89 e5                	mov    %esp,%ebp
   1a417:	83 ec 48             	sub    $0x48,%esp
   1a41a:	c7 45 e0 fc ff ff ff 	movl   $0xfffffffc,0xffffffe0(%ebp)
   1a421:	c7 45 e4 01 00 00 00 	movl   $0x1,0xffffffe4(%ebp)
   1a428:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   1a42b:	89 44 24 08          	mov    %eax,0x8(%esp)
   1a42f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   1a436:	00 
   1a437:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   1a43e:	e8 ad f7 ff ff       	call   0x19bf0
   1a443:	85 c0                	test   %eax,%eax
   1a445:	74 24                	je     0x1a46b
   1a447:	c7 44 24 0c 13 00 00 	movl   $0x13,0xc(%esp)
   1a44e:	00 
   1a44f:	c7 44 24 08 f8 c2 01 	movl   $0x1c2f8,0x8(%esp)
   1a456:	00 
   1a457:	c7 44 24 04 f8 c2 01 	movl   $0x1c2f8,0x4(%esp)
   1a45e:	00 
   1a45f:	c7 04 24 08 c3 01 00 	movl   $0x1c308,(%esp)
   1a466:	e8 bd f7 ff ff       	call   0x19c28
   1a46b:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1a46e:	c9                   	leave  
   1a46f:	c3                   	ret    
   1a470:	55                   	push   %ebp
   1a471:	89 e5                	mov    %esp,%ebp
   1a473:	83 ec 48             	sub    $0x48,%esp
   1a476:	8b 45 0c             	mov    0xc(%ebp),%eax
   1a479:	88 45 cc             	mov    %al,0xffffffcc(%ebp)
   1a47c:	c7 45 e0 fc ff ff ff 	movl   $0xfffffffc,0xffffffe0(%ebp)
   1a483:	c7 45 e4 02 00 00 00 	movl   $0x2,0xffffffe4(%ebp)
   1a48a:	0f b6 45 cc          	movzbl 0xffffffcc(%ebp),%eax
   1a48e:	88 45 e8             	mov    %al,0xffffffe8(%ebp)
   1a491:	8b 45 08             	mov    0x8(%ebp),%eax
   1a494:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   1a497:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   1a49a:	89 44 24 08          	mov    %eax,0x8(%esp)
   1a49e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   1a4a5:	00 
   1a4a6:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   1a4ad:	e8 3e f7 ff ff       	call   0x19bf0
   1a4b2:	85 c0                	test   %eax,%eax
   1a4b4:	74 24                	je     0x1a4da
   1a4b6:	c7 44 24 0c 20 00 00 	movl   $0x20,0xc(%esp)
   1a4bd:	00 
   1a4be:	c7 44 24 08 f8 c2 01 	movl   $0x1c2f8,0x8(%esp)
   1a4c5:	00 
   1a4c6:	c7 44 24 04 f8 c2 01 	movl   $0x1c2f8,0x4(%esp)
   1a4cd:	00 
   1a4ce:	c7 04 24 08 c3 01 00 	movl   $0x1c308,(%esp)
   1a4d5:	e8 4e f7 ff ff       	call   0x19c28
   1a4da:	c9                   	leave  
   1a4db:	c3                   	ret    
   1a4dc:	55                   	push   %ebp
   1a4dd:	89 e5                	mov    %esp,%ebp
   1a4df:	83 ec 48             	sub    $0x48,%esp
   1a4e2:	c7 45 e0 fc ff ff ff 	movl   $0xfffffffc,0xffffffe0(%ebp)
   1a4e9:	c7 45 e4 03 00 00 00 	movl   $0x3,0xffffffe4(%ebp)
   1a4f0:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   1a4f3:	89 44 24 08          	mov    %eax,0x8(%esp)
   1a4f7:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   1a4fe:	00 
   1a4ff:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   1a506:	e8 e5 f6 ff ff       	call   0x19bf0
   1a50b:	85 c0                	test   %eax,%eax
   1a50d:	74 24                	je     0x1a533
   1a50f:	c7 44 24 0c 29 00 00 	movl   $0x29,0xc(%esp)
   1a516:	00 
   1a517:	c7 44 24 08 f8 c2 01 	movl   $0x1c2f8,0x8(%esp)
   1a51e:	00 
   1a51f:	c7 44 24 04 f8 c2 01 	movl   $0x1c2f8,0x4(%esp)
   1a526:	00 
   1a527:	c7 04 24 08 c3 01 00 	movl   $0x1c308,(%esp)
   1a52e:	e8 f5 f6 ff ff       	call   0x19c28
   1a533:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1a536:	c9                   	leave  
   1a537:	c3                   	ret    
   1a538:	55                   	push   %ebp
   1a539:	89 e5                	mov    %esp,%ebp
   1a53b:	83 ec 48             	sub    $0x48,%esp
   1a53e:	c7 45 e0 fc ff ff ff 	movl   $0xfffffffc,0xffffffe0(%ebp)
   1a545:	c7 45 e4 04 00 00 00 	movl   $0x4,0xffffffe4(%ebp)
   1a54c:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   1a54f:	89 44 24 08          	mov    %eax,0x8(%esp)
   1a553:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   1a55a:	00 
   1a55b:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   1a562:	e8 89 f6 ff ff       	call   0x19bf0
   1a567:	85 c0                	test   %eax,%eax
   1a569:	74 24                	je     0x1a58f
   1a56b:	c7 44 24 0c 33 00 00 	movl   $0x33,0xc(%esp)
   1a572:	00 
   1a573:	c7 44 24 08 f8 c2 01 	movl   $0x1c2f8,0x8(%esp)
   1a57a:	00 
   1a57b:	c7 44 24 04 f8 c2 01 	movl   $0x1c2f8,0x4(%esp)
   1a582:	00 
   1a583:	c7 04 24 08 c3 01 00 	movl   $0x1c308,(%esp)
   1a58a:	e8 99 f6 ff ff       	call   0x19c28
   1a58f:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1a592:	c9                   	leave  
   1a593:	c3                   	ret    
   1a594:	55                   	push   %ebp
   1a595:	89 e5                	mov    %esp,%ebp
   1a597:	83 ec 48             	sub    $0x48,%esp
   1a59a:	c7 45 e0 fc ff ff ff 	movl   $0xfffffffc,0xffffffe0(%ebp)
   1a5a1:	c7 45 e4 05 00 00 00 	movl   $0x5,0xffffffe4(%ebp)
   1a5a8:	8b 45 08             	mov    0x8(%ebp),%eax
   1a5ab:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   1a5ae:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
   1a5b1:	89 44 24 08          	mov    %eax,0x8(%esp)
   1a5b5:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   1a5bc:	00 
   1a5bd:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
   1a5c4:	e8 27 f6 ff ff       	call   0x19bf0
   1a5c9:	85 c0                	test   %eax,%eax
   1a5cb:	74 24                	je     0x1a5f1
   1a5cd:	c7 44 24 0c 3e 00 00 	movl   $0x3e,0xc(%esp)
   1a5d4:	00 
   1a5d5:	c7 44 24 08 f8 c2 01 	movl   $0x1c2f8,0x8(%esp)
   1a5dc:	00 
   1a5dd:	c7 44 24 04 f8 c2 01 	movl   $0x1c2f8,0x4(%esp)
   1a5e4:	00 
   1a5e5:	c7 04 24 08 c3 01 00 	movl   $0x1c308,(%esp)
   1a5ec:	e8 37 f6 ff ff       	call   0x19c28
   1a5f1:	c9                   	leave  
   1a5f2:	c3                   	ret    
	...
   1a5ff:	00 50 8b             	add    %dl,0xffffff8b(%eax)
   1a602:	44                   	inc    %esp
   1a603:	24 08                	and    $0x8,%al
   1a605:	57                   	push   %edi
   1a606:	8b 38                	mov    (%eax),%edi
   1a608:	89 f8                	mov    %edi,%eax
   1a60a:	81 c7 fc 27 00 00    	add    $0x27fc,%edi
   1a610:	65 c7 87 00 80 0b 00 	movl   $0x7000700,%gs:0xb8000(%edi)
   1a617:	00 07 00 07 
   1a61b:	83 ef 04             	sub    $0x4,%edi
   1a61e:	39 c7                	cmp    %eax,%edi
   1a620:	7d ee                	jge    0x1a610
   1a622:	5f                   	pop    %edi
   1a623:	58                   	pop    %eax
   1a624:	c3                   	ret    
   1a625:	60                   	pusha  
   1a626:	8b 4c 24 2c          	mov    0x2c(%esp),%ecx
   1a62a:	c1 e1 08             	shl    $0x8,%ecx
   1a62d:	8b 7c 24 28          	mov    0x28(%esp),%edi
   1a631:	8b 5c 24 24          	mov    0x24(%esp),%ebx
   1a635:	be 00 00 00 00       	mov    $0x0,%esi
   1a63a:	8a 0c 33             	mov    (%ebx,%esi,1),%cl
   1a63d:	80 f9 00             	cmp    $0x0,%cl
   1a640:	74 2e                	je     0x1a670
   1a642:	80 f9 0a             	cmp    $0xa,%cl
   1a645:	75 1b                	jne    0x1a662
   1a647:	81 c7 a0 00 00 00    	add    $0xa0,%edi
   1a64d:	89 f8                	mov    %edi,%eax
   1a64f:	ba 00 00 00 00       	mov    $0x0,%edx
   1a654:	bf a0 00 00 00       	mov    $0xa0,%edi
   1a659:	f7 f7                	div    %edi
   1a65b:	f7 e7                	mul    %edi
   1a65d:	89 c7                	mov    %eax,%edi
   1a65f:	46                   	inc    %esi
   1a660:	eb d8                	jmp    0x1a63a
   1a662:	65 66 89 8f 00 80 0b 	mov    %cx,%gs:0xb8000(%edi)
   1a669:	00 
   1a66a:	83 c7 02             	add    $0x2,%edi
   1a66d:	46                   	inc    %esi
   1a66e:	eb ca                	jmp    0x1a63a
   1a670:	89 7c 24 1c          	mov    %edi,0x1c(%esp)
   1a674:	61                   	popa   
   1a675:	c3                   	ret    
   1a676:	8b 54 24 04          	mov    0x4(%esp),%edx
   1a67a:	8b 44 24 08          	mov    0x8(%esp),%eax
   1a67e:	ee                   	out    %al,(%dx)
   1a67f:	90                   	nop    
   1a680:	90                   	nop    
   1a681:	90                   	nop    
   1a682:	90                   	nop    
   1a683:	90                   	nop    
   1a684:	c3                   	ret    
   1a685:	8b 54 24 04          	mov    0x4(%esp),%edx
   1a689:	31 c0                	xor    %eax,%eax
   1a68b:	ec                   	in     (%dx),%al
   1a68c:	90                   	nop    
   1a68d:	90                   	nop    
   1a68e:	90                   	nop    
   1a68f:	90                   	nop    
   1a690:	90                   	nop    
   1a691:	c3                   	ret    
   1a692:	8b 54 24 04          	mov    0x4(%esp),%edx
   1a696:	8b 44 24 08          	mov    0x8(%esp),%eax
   1a69a:	66 ef                	out    %ax,(%dx)
   1a69c:	90                   	nop    
   1a69d:	90                   	nop    
   1a69e:	90                   	nop    
   1a69f:	90                   	nop    
   1a6a0:	90                   	nop    
   1a6a1:	c3                   	ret    
   1a6a2:	8b 54 24 04          	mov    0x4(%esp),%edx
   1a6a6:	31 c0                	xor    %eax,%eax
   1a6a8:	66 ed                	in     (%dx),%ax
   1a6aa:	90                   	nop    
   1a6ab:	90                   	nop    
   1a6ac:	90                   	nop    
   1a6ad:	90                   	nop    
   1a6ae:	90                   	nop    
   1a6af:	c3                   	ret    
   1a6b0:	8b 54 24 04          	mov    0x4(%esp),%edx
   1a6b4:	8b 44 24 08          	mov    0x8(%esp),%eax
   1a6b8:	ef                   	out    %eax,(%dx)
   1a6b9:	90                   	nop    
   1a6ba:	90                   	nop    
   1a6bb:	90                   	nop    
   1a6bc:	90                   	nop    
   1a6bd:	90                   	nop    
   1a6be:	c3                   	ret    
   1a6bf:	8b 54 24 04          	mov    0x4(%esp),%edx
   1a6c3:	31 c0                	xor    %eax,%eax
   1a6c5:	ed                   	in     (%dx),%eax
   1a6c6:	90                   	nop    
   1a6c7:	90                   	nop    
   1a6c8:	90                   	nop    
   1a6c9:	90                   	nop    
   1a6ca:	90                   	nop    
   1a6cb:	c3                   	ret    
   1a6cc:	00 00                	add    %al,(%eax)
   1a6ce:	00 00                	add    %al,(%eax)
   1a6d0:	ff 0d cc a6 01 00    	decl   0x1a6cc
   1a6d6:	75 01                	jne    0x1a6d9
   1a6d8:	fb                   	sti    
   1a6d9:	c3                   	ret    
   1a6da:	fa                   	cli    
   1a6db:	ff 05 cc a6 01 00    	incl   0x1a6cc
   1a6e1:	c3                   	ret    
   1a6e2:	9c                   	pushf  
   1a6e3:	8b 04 24             	mov    (%esp),%eax
   1a6e6:	83 c4 04             	add    $0x4,%esp
   1a6e9:	c3                   	ret    
   1a6ea:	8b 44 24 10          	mov    0x10(%esp),%eax
   1a6ee:	0f 22 d8             	mov    %eax,%cr3
   1a6f1:	c3                   	ret    
   1a6f2:	00 00                	add    %al,(%eax)
   1a6f4:	55                   	push   %ebp
   1a6f5:	89 e5                	mov    %esp,%ebp
   1a6f7:	83 ec 08             	sub    $0x8,%esp
   1a6fa:	8b 45 08             	mov    0x8(%ebp),%eax
   1a6fd:	89 04 24             	mov    %eax,(%esp)
   1a700:	e8 0b f5 ff ff       	call   0x19c10
   1a705:	c9                   	leave  
   1a706:	c3                   	ret    
   1a707:	55                   	push   %ebp
   1a708:	89 e5                	mov    %esp,%ebp
   1a70a:	83 ec 08             	sub    $0x8,%esp
   1a70d:	8b 45 08             	mov    0x8(%ebp),%eax
   1a710:	6b c0 64             	imul   $0x64,%eax,%eax
   1a713:	89 04 24             	mov    %eax,(%esp)
   1a716:	e8 f5 f4 ff ff       	call   0x19c10
   1a71b:	c9                   	leave  
   1a71c:	c3                   	ret    
   1a71d:	55                   	push   %ebp
   1a71e:	89 e5                	mov    %esp,%ebp
   1a720:	83 ec 28             	sub    $0x28,%esp
   1a723:	c7 04 24 2e c3 01 00 	movl   $0x1c32e,(%esp)
   1a72a:	e8 1d 06 00 00       	call   0x1ad4c
   1a72f:	8b 45 08             	mov    0x8(%ebp),%eax
   1a732:	8b 00                	mov    (%eax),%eax
   1a734:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a738:	c7 04 24 30 c3 01 00 	movl   $0x1c330,(%esp)
   1a73f:	e8 08 06 00 00       	call   0x1ad4c
   1a744:	8b 45 08             	mov    0x8(%ebp),%eax
   1a747:	8b 40 04             	mov    0x4(%eax),%eax
   1a74a:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a74e:	c7 04 24 43 c3 01 00 	movl   $0x1c343,(%esp)
   1a755:	e8 f2 05 00 00       	call   0x1ad4c
   1a75a:	8b 45 08             	mov    0x8(%ebp),%eax
   1a75d:	8b 40 08             	mov    0x8(%eax),%eax
   1a760:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a764:	c7 04 24 56 c3 01 00 	movl   $0x1c356,(%esp)
   1a76b:	e8 dc 05 00 00       	call   0x1ad4c
   1a770:	8b 45 08             	mov    0x8(%ebp),%eax
   1a773:	8b 40 0c             	mov    0xc(%eax),%eax
   1a776:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a77a:	c7 04 24 66 c3 01 00 	movl   $0x1c366,(%esp)
   1a781:	e8 c6 05 00 00       	call   0x1ad4c
   1a786:	8b 45 08             	mov    0x8(%ebp),%eax
   1a789:	8b 40 10             	mov    0x10(%eax),%eax
   1a78c:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a790:	c7 04 24 79 c3 01 00 	movl   $0x1c379,(%esp)
   1a797:	e8 b0 05 00 00       	call   0x1ad4c
   1a79c:	8b 45 08             	mov    0x8(%ebp),%eax
   1a79f:	8b 40 14             	mov    0x14(%eax),%eax
   1a7a2:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a7a6:	c7 04 24 8c c3 01 00 	movl   $0x1c38c,(%esp)
   1a7ad:	e8 9a 05 00 00       	call   0x1ad4c
   1a7b2:	8b 45 08             	mov    0x8(%ebp),%eax
   1a7b5:	8b 40 18             	mov    0x18(%eax),%eax
   1a7b8:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a7bc:	c7 04 24 9c c3 01 00 	movl   $0x1c39c,(%esp)
   1a7c3:	e8 84 05 00 00       	call   0x1ad4c
   1a7c8:	8b 45 08             	mov    0x8(%ebp),%eax
   1a7cb:	8b 40 1c             	mov    0x1c(%eax),%eax
   1a7ce:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a7d2:	c7 04 24 af c3 01 00 	movl   $0x1c3af,(%esp)
   1a7d9:	e8 6e 05 00 00       	call   0x1ad4c
   1a7de:	8b 45 08             	mov    0x8(%ebp),%eax
   1a7e1:	8b 40 20             	mov    0x20(%eax),%eax
   1a7e4:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a7e8:	c7 04 24 c2 c3 01 00 	movl   $0x1c3c2,(%esp)
   1a7ef:	e8 58 05 00 00       	call   0x1ad4c
   1a7f4:	8b 45 08             	mov    0x8(%ebp),%eax
   1a7f7:	8b 40 24             	mov    0x24(%eax),%eax
   1a7fa:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a7fe:	c7 04 24 d2 c3 01 00 	movl   $0x1c3d2,(%esp)
   1a805:	e8 42 05 00 00       	call   0x1ad4c
   1a80a:	8b 45 08             	mov    0x8(%ebp),%eax
   1a80d:	8b 40 28             	mov    0x28(%eax),%eax
   1a810:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a814:	c7 04 24 e5 c3 01 00 	movl   $0x1c3e5,(%esp)
   1a81b:	e8 2c 05 00 00       	call   0x1ad4c
   1a820:	8b 45 08             	mov    0x8(%ebp),%eax
   1a823:	8b 40 2c             	mov    0x2c(%eax),%eax
   1a826:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a82a:	c7 04 24 f8 c3 01 00 	movl   $0x1c3f8,(%esp)
   1a831:	e8 16 05 00 00       	call   0x1ad4c
   1a836:	8b 45 08             	mov    0x8(%ebp),%eax
   1a839:	8b 40 34             	mov    0x34(%eax),%eax
   1a83c:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a840:	c7 04 24 08 c4 01 00 	movl   $0x1c408,(%esp)
   1a847:	e8 00 05 00 00       	call   0x1ad4c
   1a84c:	8b 45 08             	mov    0x8(%ebp),%eax
   1a84f:	8b 40 38             	mov    0x38(%eax),%eax
   1a852:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a856:	c7 04 24 1b c4 01 00 	movl   $0x1c41b,(%esp)
   1a85d:	e8 ea 04 00 00       	call   0x1ad4c
   1a862:	8b 45 08             	mov    0x8(%ebp),%eax
   1a865:	8b 40 3c             	mov    0x3c(%eax),%eax
   1a868:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a86c:	c7 04 24 2e c4 01 00 	movl   $0x1c42e,(%esp)
   1a873:	e8 d4 04 00 00       	call   0x1ad4c
   1a878:	8b 45 08             	mov    0x8(%ebp),%eax
   1a87b:	8b 40 40             	mov    0x40(%eax),%eax
   1a87e:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a882:	c7 04 24 3e c4 01 00 	movl   $0x1c43e,(%esp)
   1a889:	e8 be 04 00 00       	call   0x1ad4c
   1a88e:	8b 45 08             	mov    0x8(%ebp),%eax
   1a891:	8b 40 44             	mov    0x44(%eax),%eax
   1a894:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a898:	c7 04 24 51 c4 01 00 	movl   $0x1c451,(%esp)
   1a89f:	e8 a8 04 00 00       	call   0x1ad4c
   1a8a4:	8b 45 08             	mov    0x8(%ebp),%eax
   1a8a7:	8b 40 4c             	mov    0x4c(%eax),%eax
   1a8aa:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a8ae:	c7 04 24 61 c4 01 00 	movl   $0x1c461,(%esp)
   1a8b5:	e8 92 04 00 00       	call   0x1ad4c
   1a8ba:	8b 45 08             	mov    0x8(%ebp),%eax
   1a8bd:	8b 40 50             	mov    0x50(%eax),%eax
   1a8c0:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a8c4:	c7 04 24 77 c4 01 00 	movl   $0x1c477,(%esp)
   1a8cb:	e8 7c 04 00 00       	call   0x1ad4c
   1a8d0:	8b 45 08             	mov    0x8(%ebp),%eax
   1a8d3:	8b 40 54             	mov    0x54(%eax),%eax
   1a8d6:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a8da:	c7 04 24 90 c4 01 00 	movl   $0x1c490,(%esp)
   1a8e1:	e8 66 04 00 00       	call   0x1ad4c
   1a8e6:	8b 45 08             	mov    0x8(%ebp),%eax
   1a8e9:	8b 40 60             	mov    0x60(%eax),%eax
   1a8ec:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a8f0:	c7 04 24 a6 c4 01 00 	movl   $0x1c4a6,(%esp)
   1a8f7:	e8 50 04 00 00       	call   0x1ad4c
   1a8fc:	8b 45 08             	mov    0x8(%ebp),%eax
   1a8ff:	8b 40 64             	mov    0x64(%eax),%eax
   1a902:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a906:	c7 04 24 bf c4 01 00 	movl   $0x1c4bf,(%esp)
   1a90d:	e8 3a 04 00 00       	call   0x1ad4c
   1a912:	8b 45 08             	mov    0x8(%ebp),%eax
   1a915:	8b 40 48             	mov    0x48(%eax),%eax
   1a918:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a91c:	c7 04 24 d5 c4 01 00 	movl   $0x1c4d5,(%esp)
   1a923:	e8 24 04 00 00       	call   0x1ad4c
   1a928:	8b 45 08             	mov    0x8(%ebp),%eax
   1a92b:	8b 80 fc 00 00 00    	mov    0xfc(%eax),%eax
   1a931:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a935:	c7 04 24 e1 c4 01 00 	movl   $0x1c4e1,(%esp)
   1a93c:	e8 0b 04 00 00       	call   0x1ad4c
   1a941:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
   1a948:	eb 33                	jmp    0x1a97d
   1a94a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1a94d:	8b 55 08             	mov    0x8(%ebp),%edx
   1a950:	8b 44 82 70          	mov    0x70(%edx,%eax,4),%eax
   1a954:	85 c0                	test   %eax,%eax
   1a956:	74 21                	je     0x1a979
   1a958:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
   1a95b:	8b 45 08             	mov    0x8(%ebp),%eax
   1a95e:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
   1a962:	89 44 24 08          	mov    %eax,0x8(%esp)
   1a966:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1a969:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a96d:	c7 04 24 ef c4 01 00 	movl   $0x1c4ef,(%esp)
   1a974:	e8 d3 03 00 00       	call   0x1ad4c
   1a979:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
   1a97d:	83 7d fc 1f          	cmpl   $0x1f,0xfffffffc(%ebp)
   1a981:	7e c7                	jle    0x1a94a
   1a983:	8b 45 08             	mov    0x8(%ebp),%eax
   1a986:	05 00 01 00 00       	add    $0x100,%eax
   1a98b:	89 44 24 04          	mov    %eax,0x4(%esp)
   1a98f:	c7 04 24 05 c5 01 00 	movl   $0x1c505,(%esp)
   1a996:	e8 b1 03 00 00       	call   0x1ad4c
   1a99b:	c9                   	leave  
   1a99c:	c3                   	ret    
   1a99d:	00 00                	add    %al,(%eax)
   1a99f:	00 55 89             	add    %dl,0xffffff89(%ebp)
   1a9a2:	e5 83                	in     $0x83,%eax
   1a9a4:	ec                   	in     (%dx),%al
   1a9a5:	10 c7                	adc    %al,%bh
   1a9a7:	45                   	inc    %ebp
   1a9a8:	fc                   	cld    
   1a9a9:	00 00                	add    %al,(%eax)
   1a9ab:	00 00                	add    %al,(%eax)
   1a9ad:	eb 04                	jmp    0x1a9b3
   1a9af:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
   1a9b3:	8b 45 08             	mov    0x8(%ebp),%eax
   1a9b6:	0f b6 00             	movzbl (%eax),%eax
   1a9b9:	84 c0                	test   %al,%al
   1a9bb:	0f 95 c0             	setne  %al
   1a9be:	83 45 08 01          	addl   $0x1,0x8(%ebp)
   1a9c2:	84 c0                	test   %al,%al
   1a9c4:	75 e9                	jne    0x1a9af
   1a9c6:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1a9c9:	c9                   	leave  
   1a9ca:	c3                   	ret    
   1a9cb:	55                   	push   %ebp
   1a9cc:	89 e5                	mov    %esp,%ebp
   1a9ce:	8b 45 08             	mov    0x8(%ebp),%eax
   1a9d1:	0f b6 10             	movzbl (%eax),%edx
   1a9d4:	8b 45 0c             	mov    0xc(%ebp),%eax
   1a9d7:	0f b6 00             	movzbl (%eax),%eax
   1a9da:	38 c2                	cmp    %al,%dl
   1a9dc:	75 14                	jne    0x1a9f2
   1a9de:	8b 45 08             	mov    0x8(%ebp),%eax
   1a9e1:	0f b6 00             	movzbl (%eax),%eax
   1a9e4:	84 c0                	test   %al,%al
   1a9e6:	74 0a                	je     0x1a9f2
   1a9e8:	83 45 08 01          	addl   $0x1,0x8(%ebp)
   1a9ec:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
   1a9f0:	eb dc                	jmp    0x1a9ce
   1a9f2:	8b 45 08             	mov    0x8(%ebp),%eax
   1a9f5:	0f b6 00             	movzbl (%eax),%eax
   1a9f8:	0f be d0             	movsbl %al,%edx
   1a9fb:	8b 45 0c             	mov    0xc(%ebp),%eax
   1a9fe:	0f b6 00             	movzbl (%eax),%eax
   1aa01:	0f be c0             	movsbl %al,%eax
   1aa04:	89 d1                	mov    %edx,%ecx
   1aa06:	29 c1                	sub    %eax,%ecx
   1aa08:	89 c8                	mov    %ecx,%eax
   1aa0a:	5d                   	pop    %ebp
   1aa0b:	c3                   	ret    
   1aa0c:	55                   	push   %ebp
   1aa0d:	89 e5                	mov    %esp,%ebp
   1aa0f:	83 ec 14             	sub    $0x14,%esp
   1aa12:	8b 45 0c             	mov    0xc(%ebp),%eax
   1aa15:	88 45 ec             	mov    %al,0xffffffec(%ebp)
   1aa18:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
   1aa1f:	eb 11                	jmp    0x1aa32
   1aa21:	8b 55 08             	mov    0x8(%ebp),%edx
   1aa24:	0f b6 45 ec          	movzbl 0xffffffec(%ebp),%eax
   1aa28:	88 02                	mov    %al,(%edx)
   1aa2a:	83 45 08 01          	addl   $0x1,0x8(%ebp)
   1aa2e:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
   1aa32:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
   1aa35:	3b 45 10             	cmp    0x10(%ebp),%eax
   1aa38:	7c e7                	jl     0x1aa21
   1aa3a:	c9                   	leave  
   1aa3b:	c3                   	ret    
   1aa3c:	55                   	push   %ebp
   1aa3d:	89 e5                	mov    %esp,%ebp
   1aa3f:	57                   	push   %edi
   1aa40:	56                   	push   %esi
   1aa41:	53                   	push   %ebx
   1aa42:	83 ec 34             	sub    $0x34,%esp
   1aa45:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
   1aa4c:	eb 00                	jmp    0x1aa4e
   1aa4e:	8b 45 0c             	mov    0xc(%ebp),%eax
   1aa51:	0f b6 00             	movzbl (%eax),%eax
   1aa54:	84 c0                	test   %al,%al
   1aa56:	75 11                	jne    0x1aa69
   1aa58:	8b 45 08             	mov    0x8(%ebp),%eax
   1aa5b:	c6 00 00             	movb   $0x0,(%eax)
   1aa5e:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
   1aa61:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
   1aa64:	e9 62 02 00 00       	jmp    0x1accb
   1aa69:	8b 45 0c             	mov    0xc(%ebp),%eax
   1aa6c:	0f b6 00             	movzbl (%eax),%eax
   1aa6f:	3c 25                	cmp    $0x25,%al
   1aa71:	74 19                	je     0x1aa8c
   1aa73:	8b 45 0c             	mov    0xc(%ebp),%eax
   1aa76:	0f b6 10             	movzbl (%eax),%edx
   1aa79:	8b 45 08             	mov    0x8(%ebp),%eax
   1aa7c:	88 10                	mov    %dl,(%eax)
   1aa7e:	83 45 08 01          	addl   $0x1,0x8(%ebp)
   1aa82:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
   1aa86:	83 45 e0 01          	addl   $0x1,0xffffffe0(%ebp)
   1aa8a:	eb c2                	jmp    0x1aa4e
   1aa8c:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
   1aa90:	8b 45 0c             	mov    0xc(%ebp),%eax
   1aa93:	0f b6 00             	movzbl (%eax),%eax
   1aa96:	0f be c0             	movsbl %al,%eax
   1aa99:	83 e8 43             	sub    $0x43,%eax
   1aa9c:	89 45 c8             	mov    %eax,0xffffffc8(%ebp)
   1aa9f:	83 7d c8 35          	cmpl   $0x35,0xffffffc8(%ebp)
   1aaa3:	0f 87 fc 01 00 00    	ja     0x1aca5
   1aaa9:	8b 55 c8             	mov    0xffffffc8(%ebp),%edx
   1aaac:	8b 04 95 20 c5 01 00 	mov    0x1c520(,%edx,4),%eax
   1aab3:	ff e0                	jmp    *%eax
   1aab5:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
   1aab9:	8b 45 10             	mov    0x10(%ebp),%eax
   1aabc:	8b 00                	mov    (%eax),%eax
   1aabe:	89 04 24             	mov    %eax,(%esp)
   1aac1:	e8 da fe ff ff       	call   0x1a9a0
   1aac6:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   1aac9:	8b 45 10             	mov    0x10(%ebp),%eax
   1aacc:	8b 30                	mov    (%eax),%esi
   1aace:	8b 7d 08             	mov    0x8(%ebp),%edi
   1aad1:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
   1aad4:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   1aad6:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1aad9:	01 45 08             	add    %eax,0x8(%ebp)
   1aadc:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
   1aadf:	01 45 e0             	add    %eax,0xffffffe0(%ebp)
   1aae2:	8b 45 10             	mov    0x10(%ebp),%eax
   1aae5:	83 c0 04             	add    $0x4,%eax
   1aae8:	89 45 10             	mov    %eax,0x10(%ebp)
   1aaeb:	e9 5e ff ff ff       	jmp    0x1aa4e
   1aaf0:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
   1aaf4:	8b 45 10             	mov    0x10(%ebp),%eax
   1aaf7:	0f b6 10             	movzbl (%eax),%edx
   1aafa:	8b 45 08             	mov    0x8(%ebp),%eax
   1aafd:	88 10                	mov    %dl,(%eax)
   1aaff:	83 45 08 01          	addl   $0x1,0x8(%ebp)
   1ab03:	83 45 e0 01          	addl   $0x1,0xffffffe0(%ebp)
   1ab07:	8b 45 10             	mov    0x10(%ebp),%eax
   1ab0a:	83 c0 04             	add    $0x4,%eax
   1ab0d:	89 45 10             	mov    %eax,0x10(%ebp)
   1ab10:	e9 39 ff ff ff       	jmp    0x1aa4e
   1ab15:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
   1ab19:	8b 45 08             	mov    0x8(%ebp),%eax
   1ab1c:	c6 00 30             	movb   $0x30,(%eax)
   1ab1f:	83 45 08 01          	addl   $0x1,0x8(%ebp)
   1ab23:	8b 45 08             	mov    0x8(%ebp),%eax
   1ab26:	c6 00 78             	movb   $0x78,(%eax)
   1ab29:	83 45 08 01          	addl   $0x1,0x8(%ebp)
   1ab2d:	c7 45 e4 1c 00 00 00 	movl   $0x1c,0xffffffe4(%ebp)
   1ab34:	eb 39                	jmp    0x1ab6f
   1ab36:	8b 45 10             	mov    0x10(%ebp),%eax
   1ab39:	8b 00                	mov    (%eax),%eax
   1ab3b:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
   1ab3e:	d3 f8                	sar    %cl,%eax
   1ab40:	83 e0 0f             	and    $0xf,%eax
   1ab43:	83 c0 30             	add    $0x30,%eax
   1ab46:	89 c2                	mov    %eax,%edx
   1ab48:	8b 45 08             	mov    0x8(%ebp),%eax
   1ab4b:	88 10                	mov    %dl,(%eax)
   1ab4d:	8b 45 08             	mov    0x8(%ebp),%eax
   1ab50:	0f b6 00             	movzbl (%eax),%eax
   1ab53:	3c 39                	cmp    $0x39,%al
   1ab55:	7e 10                	jle    0x1ab67
   1ab57:	8b 45 08             	mov    0x8(%ebp),%eax
   1ab5a:	0f b6 00             	movzbl (%eax),%eax
   1ab5d:	83 c0 07             	add    $0x7,%eax
   1ab60:	89 c2                	mov    %eax,%edx
   1ab62:	8b 45 08             	mov    0x8(%ebp),%eax
   1ab65:	88 10                	mov    %dl,(%eax)
   1ab67:	83 45 08 01          	addl   $0x1,0x8(%ebp)
   1ab6b:	83 6d e4 04          	subl   $0x4,0xffffffe4(%ebp)
   1ab6f:	83 7d e4 00          	cmpl   $0x0,0xffffffe4(%ebp)
   1ab73:	79 c1                	jns    0x1ab36
   1ab75:	83 45 e0 0a          	addl   $0xa,0xffffffe0(%ebp)
   1ab79:	8b 45 10             	mov    0x10(%ebp),%eax
   1ab7c:	83 c0 04             	add    $0x4,%eax
   1ab7f:	89 45 10             	mov    %eax,0x10(%ebp)
   1ab82:	e9 c7 fe ff ff       	jmp    0x1aa4e
   1ab87:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
   1ab8b:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
   1ab92:	8b 45 10             	mov    0x10(%ebp),%eax
   1ab95:	8b 00                	mov    (%eax),%eax
   1ab97:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
   1ab9a:	c7 45 f0 00 00 00 00 	movl   $0x0,0xfffffff0(%ebp)
   1aba1:	83 7d ec 00          	cmpl   $0x0,0xffffffec(%ebp)
   1aba5:	79 0d                	jns    0x1abb4
   1aba7:	f7 5d ec             	negl   0xffffffec(%ebp)
   1abaa:	8b 45 08             	mov    0x8(%ebp),%eax
   1abad:	c6 00 2d             	movb   $0x2d,(%eax)
   1abb0:	83 45 08 01          	addl   $0x1,0x8(%ebp)
   1abb4:	c7 45 e4 00 e1 f5 05 	movl   $0x5f5e100,0xffffffe4(%ebp)
   1abbb:	e9 87 00 00 00       	jmp    0x1ac47
   1abc0:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
   1abc3:	89 d0                	mov    %edx,%eax
   1abc5:	c1 fa 1f             	sar    $0x1f,%edx
   1abc8:	f7 7d e4             	idivl  0xffffffe4(%ebp)
   1abcb:	89 c1                	mov    %eax,%ecx
   1abcd:	c7 45 c4 67 66 66 66 	movl   $0x66666667,0xffffffc4(%ebp)
   1abd4:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
   1abd7:	f7 e9                	imul   %ecx
   1abd9:	c1 fa 02             	sar    $0x2,%edx
   1abdc:	89 c8                	mov    %ecx,%eax
   1abde:	c1 f8 1f             	sar    $0x1f,%eax
   1abe1:	89 d3                	mov    %edx,%ebx
   1abe3:	29 c3                	sub    %eax,%ebx
   1abe5:	89 d8                	mov    %ebx,%eax
   1abe7:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   1abea:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
   1abed:	89 d0                	mov    %edx,%eax
   1abef:	c1 e0 02             	shl    $0x2,%eax
   1abf2:	01 d0                	add    %edx,%eax
   1abf4:	01 c0                	add    %eax,%eax
   1abf6:	89 ca                	mov    %ecx,%edx
   1abf8:	29 c2                	sub    %eax,%edx
   1abfa:	89 d0                	mov    %edx,%eax
   1abfc:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
   1abff:	83 7d e8 00          	cmpl   $0x0,0xffffffe8(%ebp)
   1ac03:	75 06                	jne    0x1ac0b
   1ac05:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
   1ac09:	74 1c                	je     0x1ac27
   1ac0b:	c7 45 e8 01 00 00 00 	movl   $0x1,0xffffffe8(%ebp)
   1ac12:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
   1ac15:	83 c0 30             	add    $0x30,%eax
   1ac18:	89 c2                	mov    %eax,%edx
   1ac1a:	8b 45 08             	mov    0x8(%ebp),%eax
   1ac1d:	88 10                	mov    %dl,(%eax)
   1ac1f:	83 45 08 01          	addl   $0x1,0x8(%ebp)
   1ac23:	83 45 e0 01          	addl   $0x1,0xffffffe0(%ebp)
   1ac27:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
   1ac2a:	c7 45 c4 67 66 66 66 	movl   $0x66666667,0xffffffc4(%ebp)
   1ac31:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
   1ac34:	f7 e9                	imul   %ecx
   1ac36:	c1 fa 02             	sar    $0x2,%edx
   1ac39:	89 c8                	mov    %ecx,%eax
   1ac3b:	c1 f8 1f             	sar    $0x1f,%eax
   1ac3e:	89 d1                	mov    %edx,%ecx
   1ac40:	29 c1                	sub    %eax,%ecx
   1ac42:	89 c8                	mov    %ecx,%eax
   1ac44:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
   1ac47:	83 7d e4 09          	cmpl   $0x9,0xffffffe4(%ebp)
   1ac4b:	0f 8f 6f ff ff ff    	jg     0x1abc0
   1ac51:	8b 4d ec             	mov    0xffffffec(%ebp),%ecx
   1ac54:	c7 45 c4 67 66 66 66 	movl   $0x66666667,0xffffffc4(%ebp)
   1ac5b:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
   1ac5e:	f7 e9                	imul   %ecx
   1ac60:	c1 fa 02             	sar    $0x2,%edx
   1ac63:	89 c8                	mov    %ecx,%eax
   1ac65:	c1 f8 1f             	sar    $0x1f,%eax
   1ac68:	89 d3                	mov    %edx,%ebx
   1ac6a:	29 c3                	sub    %eax,%ebx
   1ac6c:	89 5d d0             	mov    %ebx,0xffffffd0(%ebp)
   1ac6f:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
   1ac72:	c1 e0 02             	shl    $0x2,%eax
   1ac75:	03 45 d0             	add    0xffffffd0(%ebp),%eax
   1ac78:	01 c0                	add    %eax,%eax
   1ac7a:	89 ca                	mov    %ecx,%edx
   1ac7c:	29 c2                	sub    %eax,%edx
   1ac7e:	89 55 d0             	mov    %edx,0xffffffd0(%ebp)
   1ac81:	0f b6 45 d0          	movzbl 0xffffffd0(%ebp),%eax
   1ac85:	83 c0 30             	add    $0x30,%eax
   1ac88:	89 c2                	mov    %eax,%edx
   1ac8a:	8b 45 08             	mov    0x8(%ebp),%eax
   1ac8d:	88 10                	mov    %dl,(%eax)
   1ac8f:	83 45 08 01          	addl   $0x1,0x8(%ebp)
   1ac93:	83 45 e0 01          	addl   $0x1,0xffffffe0(%ebp)
   1ac97:	8b 45 10             	mov    0x10(%ebp),%eax
   1ac9a:	83 c0 04             	add    $0x4,%eax
   1ac9d:	89 45 10             	mov    %eax,0x10(%ebp)
   1aca0:	e9 a9 fd ff ff       	jmp    0x1aa4e
   1aca5:	8b 45 08             	mov    0x8(%ebp),%eax
   1aca8:	c6 00 25             	movb   $0x25,(%eax)
   1acab:	83 45 08 01          	addl   $0x1,0x8(%ebp)
   1acaf:	8b 45 0c             	mov    0xc(%ebp),%eax
   1acb2:	0f b6 10             	movzbl (%eax),%edx
   1acb5:	8b 45 08             	mov    0x8(%ebp),%eax
   1acb8:	88 10                	mov    %dl,(%eax)
   1acba:	83 45 08 01          	addl   $0x1,0x8(%ebp)
   1acbe:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
   1acc2:	83 45 e0 02          	addl   $0x2,0xffffffe0(%ebp)
   1acc6:	e9 83 fd ff ff       	jmp    0x1aa4e
   1accb:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
   1acce:	83 c4 34             	add    $0x34,%esp
   1acd1:	5b                   	pop    %ebx
   1acd2:	5e                   	pop    %esi
   1acd3:	5f                   	pop    %edi
   1acd4:	5d                   	pop    %ebp
   1acd5:	c3                   	ret    
   1acd6:	55                   	push   %ebp
   1acd7:	89 e5                	mov    %esp,%ebp
   1acd9:	53                   	push   %ebx
   1acda:	8b 5d 08             	mov    0x8(%ebp),%ebx
   1acdd:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   1ace0:	89 c8                	mov    %ecx,%eax
   1ace2:	c1 e8 14             	shr    $0x14,%eax
   1ace5:	25 fc 0f 00 00       	and    $0xffc,%eax
   1acea:	01 c3                	add    %eax,%ebx
   1acec:	8b 1b                	mov    (%ebx),%ebx
   1acee:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
   1acf4:	89 c8                	mov    %ecx,%eax
   1acf6:	c1 e8 0a             	shr    $0xa,%eax
   1acf9:	25 fc 0f 00 00       	and    $0xffc,%eax
   1acfe:	01 c3                	add    %eax,%ebx
   1ad00:	8b 1b                	mov    (%ebx),%ebx
   1ad02:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
   1ad08:	89 c8                	mov    %ecx,%eax
   1ad0a:	25 ff 0f 00 00       	and    $0xfff,%eax
   1ad0f:	01 d8                	add    %ebx,%eax
   1ad11:	5b                   	pop    %ebx
   1ad12:	5d                   	pop    %ebp
   1ad13:	c3                   	ret    
   1ad14:	55                   	push   %ebp
   1ad15:	89 e5                	mov    %esp,%ebp
   1ad17:	53                   	push   %ebx
   1ad18:	8b 5d 08             	mov    0x8(%ebp),%ebx
   1ad1b:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   1ad1e:	89 c8                	mov    %ecx,%eax
   1ad20:	c1 e8 14             	shr    $0x14,%eax
   1ad23:	25 fc 0f 00 00       	and    $0xffc,%eax
   1ad28:	01 c3                	add    %eax,%ebx
   1ad2a:	8b 1b                	mov    (%ebx),%ebx
   1ad2c:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
   1ad32:	89 c8                	mov    %ecx,%eax
   1ad34:	c1 e8 0a             	shr    $0xa,%eax
   1ad37:	25 fc 0f 00 00       	and    $0xffc,%eax
   1ad3c:	01 c3                	add    %eax,%ebx
   1ad3e:	8b 1b                	mov    (%ebx),%ebx
   1ad40:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
   1ad46:	5b                   	pop    %ebx
   1ad47:	5d                   	pop    %ebp
   1ad48:	c3                   	ret    
   1ad49:	00 00                	add    %al,(%eax)
   1ad4b:	00 55 89             	add    %dl,0xffffff89(%ebp)
   1ad4e:	e5 81                	in     $0x81,%eax
   1ad50:	ec                   	in     (%dx),%al
   1ad51:	28 01                	sub    %al,(%ecx)
   1ad53:	00 00                	add    %al,(%eax)
   1ad55:	8d 45 0c             	lea    0xc(%ebp),%eax
   1ad58:	89 85 fc fe ff ff    	mov    %eax,0xfffffefc(%ebp)
   1ad5e:	8b 85 fc fe ff ff    	mov    0xfffffefc(%ebp),%eax
   1ad64:	89 44 24 08          	mov    %eax,0x8(%esp)
   1ad68:	8b 45 08             	mov    0x8(%ebp),%eax
   1ad6b:	89 44 24 04          	mov    %eax,0x4(%esp)
   1ad6f:	8d 85 00 ff ff ff    	lea    0xffffff00(%ebp),%eax
   1ad75:	89 04 24             	mov    %eax,(%esp)
   1ad78:	e8 bf fc ff ff       	call   0x1aa3c
   1ad7d:	8d 85 00 ff ff ff    	lea    0xffffff00(%ebp),%eax
   1ad83:	89 04 24             	mov    %eax,(%esp)
   1ad86:	e8 79 ee ff ff       	call   0x19c04
   1ad8b:	c9                   	leave  
   1ad8c:	c3                   	ret    
   1ad8d:	55                   	push   %ebp
   1ad8e:	89 e5                	mov    %esp,%ebp
   1ad90:	81 ec 28 01 00 00    	sub    $0x128,%esp
   1ad96:	8d 45 0c             	lea    0xc(%ebp),%eax
   1ad99:	89 85 fc fe ff ff    	mov    %eax,0xfffffefc(%ebp)
   1ad9f:	8b 85 fc fe ff ff    	mov    0xfffffefc(%ebp),%eax
   1ada5:	89 44 24 08          	mov    %eax,0x8(%esp)
   1ada9:	8b 45 08             	mov    0x8(%ebp),%eax
   1adac:	89 44 24 04          	mov    %eax,0x4(%esp)
   1adb0:	8d 85 00 ff ff ff    	lea    0xffffff00(%ebp),%eax
   1adb6:	89 04 24             	mov    %eax,(%esp)
   1adb9:	e8 7e fc ff ff       	call   0x1aa3c
   1adbe:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   1adc5:	00 
   1adc6:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
   1adcd:	00 
   1adce:	8d 85 00 ff ff ff    	lea    0xffffff00(%ebp),%eax
   1add4:	89 44 24 04          	mov    %eax,0x4(%esp)
   1add8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
   1addf:	e8 e5 ee ff ff       	call   0x19cc9
   1ade4:	83 f8 ff             	cmp    $0xffffffff,%eax
   1ade7:	74 d5                	je     0x1adbe
   1ade9:	c9                   	leave  
   1adea:	c3                   	ret    
   1adeb:	00 66 69             	add    %ah,0x69(%esi)
   1adee:	6c                   	insb   (%dx),%es:(%edi)
   1adef:	65 62 75 66          	bound  %esi,%gs:0x66(%ebp)
   1adf3:	66                   	data16
   1adf4:	2e 63 00             	arpl   %ax,%cs:(%eax)
   1adf7:	70 5f                	jo     0x1ae58
   1adf9:	62 68 20             	bound  %ebp,0x20(%eax)
   1adfc:	3d 3d 20 62 68       	cmp    $0x6862203d,%eax
   1ae01:	5f                   	pop    %edi
   1ae02:	74 61                	je     0x1ae65
   1ae04:	62 6c 65 20          	bound  %ebp,0x20(%ebp)
   1ae08:	2b 20                	sub    (%eax),%esp
   1ae0a:	4e                   	dec    %esi
   1ae0b:	52                   	push   %edx
   1ae0c:	5f                   	pop    %edi
   1ae0d:	42                   	inc    %edx
   1ae0e:	55                   	push   %ebp
   1ae0f:	46                   	inc    %esi
   1ae10:	46                   	inc    %esi
   1ae11:	00 62 75             	add    %ah,0x75(%edx)
   1ae14:	66 66 5f             	pop    %di
   1ae17:	62 61 73             	bound  %esp,0x73(%ecx)
   1ae1a:	65 20 3d 3d 20 42 55 	and    %bh,%gs:0x5542203d
   1ae21:	46                   	inc    %esi
   1ae22:	46                   	inc    %esi
   1ae23:	5f                   	pop    %edi
   1ae24:	4c                   	dec    %esp
   1ae25:	49                   	dec    %ecx
   1ae26:	4d                   	dec    %ebp
   1ae27:	49                   	dec    %ecx
   1ae28:	54                   	push   %esp
   1ae29:	00 62 76             	add    %ah,0x76(%edx)
   1ae2c:	61                   	popa   
   1ae2d:	6c                   	insb   (%dx),%es:(%edi)
   1ae2e:	69 64 5f 74 61 69 6c 	imul   $0x206c6961,0x74(%edi,%ebx,2),%esp
   1ae35:	20 
   1ae36:	3d 3d 20 4e 55       	cmp    $0x554e203d,%eax
   1ae3b:	4c                   	dec    %esp
   1ae3c:	4c                   	dec    %esp
   1ae3d:	00 70 5f             	add    %dh,0x5f(%eax)
   1ae40:	77 6f                	ja     0x1aeb1
   1ae42:	72 6b                	jb     0x1aeaf
   1ae44:	20 3d 3d 20 70 5f    	and    %bh,0x5f70203d
   1ae4a:	62 68 00             	bound  %ebp,0x0(%eax)
   1ae4d:	62 66 72             	bound  %esp,0x72(%esi)
   1ae50:	65                   	gs
   1ae51:	65                   	gs
   1ae52:	5f                   	pop    %edi
   1ae53:	74 61                	je     0x1aeb6
   1ae55:	69 6c 20 3d 3d 20 4e 	imul   $0x554e203d,0x3d(%eax),%ebp
   1ae5c:	55 
   1ae5d:	4c                   	dec    %esp
   1ae5e:	4c                   	dec    %esp
   1ae5f:	00 70 5f             	add    %dh,0x5f(%eax)
   1ae62:	69 6e 6f 64 65 20 3c 	imul   $0x3c206564,0x6f(%esi),%ebp
   1ae69:	20 69 6e             	and    %ch,0x6e(%ecx)
   1ae6c:	6f                   	outsl  %ds:(%esi),(%dx)
   1ae6d:	64                   	fs
   1ae6e:	65                   	gs
   1ae6f:	5f                   	pop    %edi
   1ae70:	74 61                	je     0x1aed3
   1ae72:	62 6c 65 20          	bound  %ebp,0x20(%ebp)
   1ae76:	2b 20                	sub    (%eax),%esp
   1ae78:	4d                   	dec    %ebp
   1ae79:	41                   	inc    %ecx
   1ae7a:	58                   	pop    %eax
   1ae7b:	5f                   	pop    %edi
   1ae7c:	41                   	inc    %ecx
   1ae7d:	4c                   	dec    %esp
   1ae7e:	4c                   	dec    %esp
   1ae7f:	5f                   	pop    %edi
   1ae80:	49                   	dec    %ecx
   1ae81:	4e                   	dec    %esi
   1ae82:	4f                   	dec    %edi
   1ae83:	44                   	inc    %esp
   1ae84:	45                   	inc    %ebp
   1ae85:	00 77 72             	add    %dh,0x72(%edi)
   1ae88:	69 74 65 20 70 6f 73 	imul   $0x20736f70,0x20(%ebp),%esi
   1ae8f:	20 
   1ae90:	6f                   	outsl  %ds:(%esi),(%dx)
   1ae91:	75 74                	jne    0x1af07
   1ae93:	20 6f 66             	and    %ch,0x66(%edi)
   1ae96:	20 66 69             	and    %ah,0x69(%esi)
   1ae99:	6c                   	insb   (%dx),%es:(%edi)
   1ae9a:	65 0a 00             	or     %gs:(%eax),%al
   1ae9d:	00 00                	add    %al,(%eax)
   1ae9f:	00 77 72             	add    %dh,0x72(%edi)
   1aea2:	69 74 65 20 73 65 63 	imul   $0x74636573,0x20(%ebp),%esi
   1aea9:	74 
   1aeaa:	20 6f 75             	and    %ch,0x75(%edi)
   1aead:	74 20                	je     0x1aecf
   1aeaf:	6f                   	outsl  %ds:(%esi),(%dx)
   1aeb0:	66                   	data16
   1aeb1:	20 66 69             	and    %ah,0x69(%esi)
   1aeb4:	6c                   	insb   (%dx),%es:(%edi)
   1aeb5:	65 2e 20 73 65       	and    %dh,%cs:%gs:0x65(%ebx)
   1aeba:	63 74 20 3a          	arpl   %si,0x3a(%eax)
   1aebe:	20 25 64 20 2c 73    	and    %ah,0x732c2064
   1aec4:	74 61                	je     0x1af27
   1aec6:	72 74                	jb     0x1af3c
   1aec8:	3a 20                	cmp    (%eax),%ah
   1aeca:	25 64 2c 73 65       	and    $0x65732c64,%eax
   1aecf:	63 74 73 3a          	arpl   %si,0x3a(%ebx,%esi,2)
   1aed3:	20 25 64 0a 00 6f    	and    %ah,0x6f000a64
   1aed9:	66                   	data16
   1aeda:	66                   	data16
   1aedb:	73 65                	jae    0x1af42
   1aedd:	74 20                	je     0x1aeff
   1aedf:	3e                   	ds
   1aee0:	3d 20 30 20 26       	cmp    $0x26203020,%eax
   1aee5:	26 20 6f 66          	and    %ch,%es:0x66(%edi)
   1aee9:	66                   	data16
   1aeea:	73 65                	jae    0x1af51
   1aeec:	74 20                	je     0x1af0e
   1aeee:	3c 20                	cmp    $0x20,%al
   1aef0:	46                   	inc    %esi
   1aef1:	49                   	dec    %ecx
   1aef2:	4c                   	dec    %esp
   1aef3:	45                   	inc    %ebp
   1aef4:	5f                   	pop    %edi
   1aef5:	4d                   	dec    %ebp
   1aef6:	41                   	inc    %ecx
   1aef7:	58                   	pop    %eax
   1aef8:	5f                   	pop    %edi
   1aef9:	53                   	push   %ebx
   1aefa:	49                   	dec    %ecx
   1aefb:	5a                   	pop    %edx
   1aefc:	45                   	inc    %ebp
   1aefd:	00 00                	add    %al,(%eax)
   1aeff:	00 72 65             	add    %dh,0x65(%edx)
   1af02:	61                   	popa   
   1af03:	64 20 73 65          	and    %dh,%fs:0x65(%ebx)
   1af07:	63 74 20 6f          	arpl   %si,0x6f(%eax)
   1af0b:	75 74                	jne    0x1af81
   1af0d:	20 6f 66             	and    %ch,0x66(%edi)
   1af10:	20 66 69             	and    %ah,0x69(%esi)
   1af13:	6c                   	insb   (%dx),%es:(%edi)
   1af14:	65 2e 20 73 65       	and    %dh,%cs:%gs:0x65(%ebx)
   1af19:	63 74 20 3a          	arpl   %si,0x3a(%eax)
   1af1d:	20 25 64 20 2c 73    	and    %ah,0x732c2064
   1af23:	74 61                	je     0x1af86
   1af25:	72 74                	jb     0x1af9b
   1af27:	3a 20                	cmp    (%eax),%ah
   1af29:	25 64 2c 73 65       	and    $0x65732c64,%eax
   1af2e:	63 74 73 3a          	arpl   %si,0x3a(%ebx,%esi,2)
   1af32:	20 25 64 0a 00 00    	and    %ah,0xa64
   1af38:	66                   	data16
   1af39:	73 2e                	jae    0x1af69
   1af3b:	63 00                	arpl   %ax,(%eax)
   1af3d:	72 65                	jb     0x1afa4
   1af3f:	63 76 28             	arpl   %si,0x28(%esi)
   1af42:	41                   	inc    %ecx
   1af43:	4e                   	dec    %esi
   1af44:	59                   	pop    %ecx
   1af45:	2c 26                	sub    $0x26,%al
   1af47:	6d                   	insl   (%dx),%es:(%edi)
   1af48:	73 67                	jae    0x1afb1
   1af4a:	29 20                	sub    %esp,(%eax)
   1af4c:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1af51:	6d                   	insl   (%dx),%es:(%edi)
   1af52:	73 67                	jae    0x1afbb
   1af54:	2e 74 79             	je,pn  0x1afd0
   1af57:	70 65                	jo     0x1afbe
   1af59:	20 3d 3d 20 46 53    	and    %bh,0x5346203d
   1af5f:	5f                   	pop    %edi
   1af60:	4d                   	dec    %ebp
   1af61:	53                   	push   %ebx
   1af62:	47                   	inc    %edi
   1af63:	5f                   	pop    %edi
   1af64:	55                   	push   %ebp
   1af65:	4e                   	dec    %esi
   1af66:	49                   	dec    %ecx
   1af67:	4f                   	dec    %edi
   1af68:	4e                   	dec    %esi
   1af69:	00 30                	add    %dh,(%eax)
   1af6b:	20 3c 3d 20 73 72 63 	and    %bh,0x63727320(,%edi,1)
   1af72:	20 26                	and    %ah,(%esi)
   1af74:	26 20 73 72          	and    %dh,%es:0x72(%ebx)
   1af78:	63 20                	arpl   %sp,(%eax)
   1af7a:	3c 20                	cmp    $0x20,%al
   1af7c:	4e                   	dec    %esi
   1af7d:	52                   	push   %edx
   1af7e:	5f                   	pop    %edi
   1af7f:	54                   	push   %esp
   1af80:	4f                   	dec    %edi
   1af81:	54                   	push   %esp
   1af82:	41                   	inc    %ecx
   1af83:	4c                   	dec    %esp
   1af84:	00 00                	add    %al,(%eax)
   1af86:	00 00                	add    %al,(%eax)
   1af88:	2f                   	das    
   1af89:	14 01                	adc    $0x1,%al
   1af8b:	00 11                	add    %dl,(%ecx)
   1af8d:	15 01 00 6d 14       	adc    $0x146d0001,%eax
   1af92:	01 00                	add    %eax,(%eax)
   1af94:	bf 14 01 00 44       	mov    $0x44000114,%edi
   1af99:	15 01 00 8b 15       	adc    $0x158b0001,%eax
   1af9e:	01 00                	add    %eax,(%eax)
   1afa0:	cd 15                	int    $0x15
   1afa2:	01 00                	add    %eax,(%eax)
   1afa4:	e4 15                	in     $0x15,%al
   1afa6:	01 00                	add    %eax,(%eax)
   1afa8:	f4                   	hlt    
   1afa9:	15 01 00 73 75       	adc    $0x75730001,%eax
   1afae:	70 65                	jo     0x1b015
   1afb0:	72 20                	jb     0x1afd2
   1afb2:	62 6c 6f 63          	bound  %ebp,0x63(%edi,%ebp,2)
   1afb6:	6b 20 20             	imul   $0x20,(%eax),%esp
   1afb9:	6c                   	insb   (%dx),%es:(%edi)
   1afba:	62 61 3a             	bound  %esp,0x3a(%ecx)
   1afbd:	20 25 78 2c 73 65    	and    %ah,0x65732c78
   1afc3:	63 74 73 3a          	arpl   %si,0x3a(%ebx,%esi,2)
   1afc7:	20 25 78 0a 00 69    	and    %ah,0x69000a78
   1afcd:	5f                   	pop    %edi
   1afce:	6e                   	outsb  %ds:(%esi),(%dx)
   1afcf:	6f                   	outsl  %ds:(%esi),(%dx)
   1afd0:	64 65 20 6d 61       	and    %ch,%fs:%gs:0x61(%ebp)
   1afd5:	70 20                	jo     0x1aff7
   1afd7:	20 20                	and    %ah,(%eax)
   1afd9:	6c                   	insb   (%dx),%es:(%edi)
   1afda:	62 61 3a             	bound  %esp,0x3a(%ecx)
   1afdd:	20 25 78 2c 73 65    	and    %ah,0x65732c78
   1afe3:	63 74 73 3a          	arpl   %si,0x3a(%ebx,%esi,2)
   1afe7:	20 25 78 0a 00 73    	and    %ah,0x73000a78
   1afed:	65 63 74 6f 72       	arpl   %si,%gs:0x72(%edi,%ebp,2)
   1aff2:	20 6d 61             	and    %ch,0x61(%ebp)
   1aff5:	70 20                	jo     0x1b017
   1aff7:	20 20                	and    %ah,(%eax)
   1aff9:	6c                   	insb   (%dx),%es:(%edi)
   1affa:	62 61 3a             	bound  %esp,0x3a(%ecx)
   1affd:	20 25 78 2c 73 65    	and    %ah,0x65732c78
   1b003:	63 74 73 3a          	arpl   %si,0x3a(%ebx,%esi,2)
   1b007:	20 25 78 0a 00 69    	and    %ah,0x69000a78
   1b00d:	6e                   	outsb  %ds:(%esi),(%dx)
   1b00e:	6f                   	outsl  %ds:(%esi),(%dx)
   1b00f:	64                   	fs
   1b010:	65                   	gs
   1b011:	5f                   	pop    %edi
   1b012:	61                   	popa   
   1b013:	72 72                	jb     0x1b087
   1b015:	61                   	popa   
   1b016:	79 20                	jns    0x1b038
   1b018:	20 6c 62 61          	and    %ch,0x61(%edx)
   1b01c:	3a 20                	cmp    (%eax),%ah
   1b01e:	25 78 2c 73 65       	and    $0x65732c78,%eax
   1b023:	63 74 73 3a          	arpl   %si,0x3a(%ebx,%esi,2)
   1b027:	20 25 78 0a 00 64    	and    %ah,0x64000a78
   1b02d:	61                   	popa   
   1b02e:	74 61                	je     0x1b091
   1b030:	5f                   	pop    %edi
   1b031:	72 6f                	jb     0x1b0a2
   1b033:	6f                   	outsl  %ds:(%esi),(%dx)
   1b034:	74 20                	je     0x1b056
   1b036:	20 20                	and    %ah,(%eax)
   1b038:	20 6c 62 61          	and    %ch,0x61(%edx)
   1b03c:	3a 20                	cmp    (%eax),%ah
   1b03e:	25 78 2c 73 65       	and    $0x65732c78,%eax
   1b043:	63 74 73 3a          	arpl   %si,0x3a(%ebx,%esi,2)
   1b047:	20 25 78 0a 00 2e    	and    %ah,0x2e000a78
   1b04d:	00 74 74 79          	add    %dh,0x79(%esp,%esi,2)
   1b051:	30 00                	xor    %al,(%eax)
   1b053:	69 6d 61 70 20 66 75 	imul   $0x75662070,0x61(%ebp),%ebp
   1b05a:	6c                   	insb   (%dx),%es:(%edi)
   1b05b:	6c                   	insb   (%dx),%es:(%edi)
   1b05c:	2d 2d 2d 2d 00       	sub    $0x2d2d2d,%eax
   1b061:	69 3a 25 64 20 6a    	imul   $0x6a206425,(%edx),%edi
   1b067:	3a 25 64 20 6b 3a    	cmp    0x3a6b2064,%ah
   1b06d:	25 64 0a 00 4f       	and    $0x4f000a64,%eax
   1b072:	4d                   	dec    %ebp
   1b073:	47                   	inc    %edi
   1b074:	20 72 65             	and    %dh,0x65(%edx)
   1b077:	74 72                	je     0x1b0eb
   1b079:	79 31                	jns    0x1b0ac
   1b07b:	21 0a                	and    %ecx,(%edx)
   1b07d:	00 4f 4d             	add    %cl,0x4d(%edi)
   1b080:	47                   	inc    %edi
   1b081:	20 72 65             	and    %dh,0x65(%edx)
   1b084:	74 72                	je     0x1b0f8
   1b086:	79 32                	jns    0x1b0ba
   1b088:	21 0a                	and    %ecx,(%edx)
   1b08a:	00 4f 4d             	add    %cl,0x4d(%edi)
   1b08d:	47                   	inc    %edi
   1b08e:	20 72 65             	and    %dh,0x65(%edx)
   1b091:	74 72                	je     0x1b105
   1b093:	79 33                	jns    0x1b0c8
   1b095:	21 0a                	and    %ecx,(%edx)
   1b097:	00 73 6d             	add    %dh,0x6d(%ebx)
   1b09a:	61                   	popa   
   1b09b:	70 20                	jo     0x1b0bd
   1b09d:	66                   	data16
   1b09e:	75 6c                	jne    0x1b10c
   1b0a0:	6c                   	insb   (%dx),%es:(%edi)
   1b0a1:	32 2d 2d 2d 2d 00    	xor    0x2d2d2d,%ch
   1b0a7:	00 6e 65             	add    %ch,0x65(%esi)
   1b0aa:	77 20                	ja     0x1b0cc
   1b0ac:	66 69 6c 65 20 25 73 	imul   $0x7325,0x20(%ebp),%bp
   1b0b3:	20 20                	and    %ah,(%eax)
   1b0b5:	73 74                	jae    0x1b12b
   1b0b7:	61                   	popa   
   1b0b8:	72 74                	jb     0x1b12e
   1b0ba:	5f                   	pop    %edi
   1b0bb:	73 65                	jae    0x1b122
   1b0bd:	63 74 20 3a          	arpl   %si,0x3a(%eax)
   1b0c1:	25 64 20 20 73       	and    $0x73202064,%eax
   1b0c6:	65 63 74 73 3a       	arpl   %si,%gs:0x3a(%ebx,%esi,2)
   1b0cb:	20 25 64 0a 00 63    	and    %ah,0x63000a64
   1b0d1:	72 65                	jb     0x1b138
   1b0d3:	61                   	popa   
   1b0d4:	74 65                	je     0x1b13b
   1b0d6:	20 66 69             	and    %ah,0x69(%esi)
   1b0d9:	6c                   	insb   (%dx),%es:(%edi)
   1b0da:	65 20 73 75          	and    %dh,%gs:0x75(%ebx)
   1b0de:	63 63 65             	arpl   %sp,0x65(%ebx)
   1b0e1:	73 73                	jae    0x1b156
   1b0e3:	3a 20                	cmp    (%eax),%ah
   1b0e5:	25 73 0a 00 44       	and    $0x44000a73,%eax
   1b0ea:	69 72 5f 45 6e 74 72 	imul   $0x72746e45,0x5f(%edx),%esi
   1b0f1:	79 20                	jns    0x1b113
   1b0f3:	65                   	gs
   1b0f4:	6d                   	insl   (%dx),%es:(%edi)
   1b0f5:	70 74                	jo     0x1b16b
   1b0f7:	79 0a                	jns    0x1b103
   1b0f9:	00 63 72             	add    %ah,0x72(%ebx)
   1b0fc:	65                   	gs
   1b0fd:	61                   	popa   
   1b0fe:	74 65                	je     0x1b165
   1b100:	5f                   	pop    %edi
   1b101:	66 69 6c 65 20 65 72 	imul   $0x7265,0x20(%ebp),%bp
   1b108:	72 6f                	jb     0x1b179
   1b10a:	72 21                	jb     0x1b12d
   1b10c:	20 25 73 0a 00 6e    	and    %ah,0x6e000a73
   1b112:	6f                   	outsl  %ds:(%esi),(%dx)
   1b113:	20 66 69             	and    %ah,0x69(%esi)
   1b116:	6c                   	insb   (%dx),%es:(%edi)
   1b117:	65 20 3a             	and    %bh,%gs:(%edx)
   1b11a:	20 25 73 0a 00 69    	and    %ah,0x69000a73
   1b120:	6e                   	outsb  %ds:(%esi),(%dx)
   1b121:	6f                   	outsl  %ds:(%esi),(%dx)
   1b122:	64                   	fs
   1b123:	65                   	gs
   1b124:	5f                   	pop    %edi
   1b125:	74 61                	je     0x1b188
   1b127:	62 6c 65 20          	bound  %ebp,0x20(%ebp)
   1b12b:	66                   	data16
   1b12c:	75 6c                	jne    0x1b19a
   1b12e:	6c                   	insb   (%dx),%es:(%edi)
   1b12f:	20 3a                	and    %bh,(%edx)
   1b131:	20 25 73 2d 2d 2d    	and    %ah,0x2d2d2d73
   1b137:	2d 00 66 69 6c       	sub    $0x6c696600,%eax
   1b13c:	65                   	gs
   1b13d:	5f                   	pop    %edi
   1b13e:	74 61                	je     0x1b1a1
   1b140:	62 6c 65 20          	bound  %ebp,0x20(%ebp)
   1b144:	66                   	data16
   1b145:	75 6c                	jne    0x1b1b3
   1b147:	6c                   	insb   (%dx),%es:(%edi)
   1b148:	20 3a                	and    %bh,(%edx)
   1b14a:	20 25 73 2d 2d 2d    	and    %ah,0x2d2d2d73
   1b150:	2d 00 66 69 6c       	sub    $0x6c696600,%eax
   1b155:	70 20                	jo     0x1b177
   1b157:	66                   	data16
   1b158:	75 6c                	jne    0x1b1c6
   1b15a:	6c                   	insb   (%dx),%es:(%edi)
   1b15b:	20 3a                	and    %bh,(%edx)
   1b15d:	20 25 73 2d 2d 2d    	and    %ah,0x2d2d2d73
   1b163:	2d 00 00 00 00       	sub    $0x0,%eax
   1b168:	73 65                	jae    0x1b1cf
   1b16a:	6e                   	outsb  %ds:(%esi),(%dx)
   1b16b:	64                   	fs
   1b16c:	72 65                	jb     0x1b1d3
   1b16e:	63 76 28             	arpl   %si,0x28(%esi)
   1b171:	42                   	inc    %edx
   1b172:	4f                   	dec    %edi
   1b173:	54                   	push   %esp
   1b174:	48                   	dec    %eax
   1b175:	2c 64                	sub    $0x64,%al
   1b177:	64                   	fs
   1b178:	5f                   	pop    %edi
   1b179:	6d                   	insl   (%dx),%es:(%edi)
   1b17a:	61                   	popa   
   1b17b:	70 5b                	jo     0x1b1d8
   1b17d:	4d                   	dec    %ebp
   1b17e:	41                   	inc    %ecx
   1b17f:	4a                   	dec    %edx
   1b180:	41                   	inc    %ecx
   1b181:	52                   	push   %edx
   1b182:	28 70 5f             	sub    %dh,0x5f(%eax)
   1b185:	69 6e 6f 64 65 2d 3e 	imul   $0x3e2d6564,0x6f(%esi),%ebp
   1b18c:	69 5f 73 74 61 72 74 	imul   $0x74726174,0x73(%edi),%ebx
   1b193:	5f                   	pop    %edi
   1b194:	73 65                	jae    0x1b1fb
   1b196:	63 74 29 5d          	arpl   %si,0x5d(%ecx,%ebp,1)
   1b19a:	2c 26                	sub    $0x26,%al
   1b19c:	6d                   	insl   (%dx),%es:(%edi)
   1b19d:	73 67                	jae    0x1b206
   1b19f:	29 20                	sub    %esp,(%eax)
   1b1a1:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1b1a6:	63 6e 74             	arpl   %bp,0x74(%esi)
   1b1a9:	20 21                	and    %ah,(%ecx)
   1b1ab:	3d 20 2d 31 00       	cmp    $0x312d20,%eax
   1b1b0:	77 72                	ja     0x1b224
   1b1b2:	69 74 65 20 70 6f 73 	imul   $0x20736f70,0x20(%ebp),%esi
   1b1b9:	20 
   1b1ba:	6f                   	outsl  %ds:(%esi),(%dx)
   1b1bb:	75 74                	jne    0x1b231
   1b1bd:	20 6f 66             	and    %ch,0x66(%edi)
   1b1c0:	20 66 69             	and    %ah,0x69(%esi)
   1b1c3:	6c                   	insb   (%dx),%es:(%edi)
   1b1c4:	65 20 6f 66          	and    %ch,%gs:0x66(%edi)
   1b1c8:	66                   	data16
   1b1c9:	73 65                	jae    0x1b230
   1b1cb:	74 20                	je     0x1b1ed
   1b1cd:	3a 20                	cmp    (%eax),%ah
   1b1cf:	25 78 0a 00 00       	and    $0xa78,%eax
   1b1d4:	72 65                	jb     0x1b23b
   1b1d6:	61                   	popa   
   1b1d7:	64 20 70 6f          	and    %dh,%fs:0x6f(%eax)
   1b1db:	73 20                	jae    0x1b1fd
   1b1dd:	6f                   	outsl  %ds:(%esi),(%dx)
   1b1de:	75 74                	jne    0x1b254
   1b1e0:	20 6f 66             	and    %ch,0x66(%edi)
   1b1e3:	20 66 69             	and    %ah,0x69(%esi)
   1b1e6:	6c                   	insb   (%dx),%es:(%edi)
   1b1e7:	65 20 6f 66          	and    %ch,%gs:0x66(%edi)
   1b1eb:	66                   	data16
   1b1ec:	73 65                	jae    0x1b253
   1b1ee:	74 20                	je     0x1b210
   1b1f0:	3a 20                	cmp    (%eax),%ah
   1b1f2:	25 78 0a 00 00       	and    $0xa78,%eax
   1b1f7:	00 65 72             	add    %ah,0x72(%ebp)
   1b1fa:	72 6f                	jb     0x1b26b
   1b1fc:	72 21                	jb     0x1b21f
   1b1fe:	20 74 68 65          	and    %dh,0x65(%eax,%ebp,2)
   1b202:	20 66 69             	and    %ah,0x69(%esi)
   1b205:	6c                   	insb   (%dx),%es:(%edi)
   1b206:	65 20 68 61          	and    %ch,%gs:0x61(%eax)
   1b20a:	73 20                	jae    0x1b22c
   1b20c:	6e                   	outsb  %ds:(%esi),(%dx)
   1b20d:	6f                   	outsl  %ds:(%esi),(%dx)
   1b20e:	74 20                	je     0x1b230
   1b210:	62 65 69             	bound  %esp,0x69(%ebp)
   1b213:	6e                   	outsb  %ds:(%esi),(%dx)
   1b214:	67 20 6f 70          	addr16 and %ch,112(%bx)
   1b218:	65 6e                	outsb  %gs:(%esi),(%dx)
   1b21a:	2e 20 66 64          	and    %ah,%cs:0x64(%esi)
   1b21e:	3a 20                	cmp    (%eax),%ah
   1b220:	25 64 0a 00 73       	and    $0x73000a64,%eax
   1b225:	65 6e                	outsb  %gs:(%esi),(%dx)
   1b227:	64                   	fs
   1b228:	72 65                	jb     0x1b28f
   1b22a:	63 76 28             	arpl   %si,0x28(%esi)
   1b22d:	42                   	inc    %edx
   1b22e:	4f                   	dec    %edi
   1b22f:	54                   	push   %esp
   1b230:	48                   	dec    %eax
   1b231:	2c 64                	sub    $0x64,%al
   1b233:	64                   	fs
   1b234:	5f                   	pop    %edi
   1b235:	6d                   	insl   (%dx),%es:(%edi)
   1b236:	61                   	popa   
   1b237:	70 5b                	jo     0x1b294
   1b239:	4d                   	dec    %ebp
   1b23a:	41                   	inc    %ecx
   1b23b:	4a                   	dec    %edx
   1b23c:	41                   	inc    %ecx
   1b23d:	52                   	push   %edx
   1b23e:	28 70 5f             	sub    %dh,0x5f(%eax)
   1b241:	74 63                	je     0x1b2a6
   1b243:	62 2d 3e 66 69 6c    	bound  %ebp,0x6c69663e
   1b249:	70 5b                	jo     0x1b2a6
   1b24b:	66                   	data16
   1b24c:	64                   	fs
   1b24d:	5d                   	pop    %ebp
   1b24e:	2d 3e 66 64 5f       	sub    $0x5f64663e,%eax
   1b253:	69 6e 6f 64 65 2d 3e 	imul   $0x3e2d6564,0x6f(%esi),%ebp
   1b25a:	69 5f 73 74 61 72 74 	imul   $0x74726174,0x73(%edi),%ebx
   1b261:	5f                   	pop    %edi
   1b262:	73 65                	jae    0x1b2c9
   1b264:	63 74 29 5d          	arpl   %si,0x5d(%ecx,%ebp,1)
   1b268:	2c 26                	sub    $0x26,%al
   1b26a:	6d                   	insl   (%dx),%es:(%edi)
   1b26b:	73 67                	jae    0x1b2d4
   1b26d:	29 20                	sub    %esp,(%eax)
   1b26f:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1b274:	63 61 6e             	arpl   %sp,0x6e(%ecx)
   1b277:	20 6e 6f             	and    %ch,0x6f(%esi)
   1b27a:	74 20                	je     0x1b29c
   1b27c:	66 69 6e 64 20 74    	imul   $0x7420,0x64(%esi),%bp
   1b282:	68 65 20 66 69       	push   $0x69662065
   1b287:	6c                   	insb   (%dx),%es:(%edi)
   1b288:	65 20 66 6f          	and    %ah,%gs:0x6f(%esi)
   1b28c:	72 20                	jb     0x1b2ae
   1b28e:	64                   	fs
   1b28f:	65                   	gs
   1b290:	6c                   	insb   (%dx),%es:(%edi)
   1b291:	65                   	gs
   1b292:	74 65                	je     0x1b2f9
   1b294:	20 21                	and    %ah,(%ecx)
   1b296:	20 25 73 0a 00 63    	and    %ah,0x63000a73
   1b29c:	61                   	popa   
   1b29d:	6e                   	outsb  %ds:(%esi),(%dx)
   1b29e:	20 6e 6f             	and    %ch,0x6f(%esi)
   1b2a1:	74 20                	je     0x1b2c3
   1b2a3:	64                   	fs
   1b2a4:	65                   	gs
   1b2a5:	6c                   	insb   (%dx),%es:(%edi)
   1b2a6:	65                   	gs
   1b2a7:	74 65                	je     0x1b30e
   1b2a9:	20 74 68 69          	and    %dh,0x69(%eax,%ebp,2)
   1b2ad:	73 20                	jae    0x1b2cf
   1b2af:	66 69 6c 65 21 20 25 	imul   $0x2520,0x21(%ebp),%bp
   1b2b6:	73 0a                	jae    0x1b2c2
   1b2b8:	00 63 61             	add    %ah,0x61(%ebx)
   1b2bb:	6e                   	outsb  %ds:(%esi),(%dx)
   1b2bc:	20 6e 6f             	and    %ch,0x6f(%esi)
   1b2bf:	74 20                	je     0x1b2e1
   1b2c1:	64                   	fs
   1b2c2:	65                   	gs
   1b2c3:	6c                   	insb   (%dx),%es:(%edi)
   1b2c4:	65                   	gs
   1b2c5:	74 65                	je     0x1b32c
   1b2c7:	20 74 68 65          	and    %dh,0x65(%eax,%ebp,2)
   1b2cb:	20 66 69             	and    %ah,0x69(%esi)
   1b2ce:	6c                   	insb   (%dx),%es:(%edi)
   1b2cf:	65 20 21             	and    %ah,%gs:(%ecx)
   1b2d2:	20 25 73 0a 00 70    	and    %ah,0x70000a73
   1b2d8:	5f                   	pop    %edi
   1b2d9:	74 63                	je     0x1b33e
   1b2db:	62 2d 3e 66 69 6c    	bound  %ebp,0x6c69663e
   1b2e1:	70 5b                	jo     0x1b33e
   1b2e3:	66                   	data16
   1b2e4:	64                   	fs
   1b2e5:	5d                   	pop    %ebp
   1b2e6:	20 21                	and    %ah,(%ecx)
   1b2e8:	3d 20 30 00 70       	cmp    $0x70003020,%eax
   1b2ed:	5f                   	pop    %edi
   1b2ee:	74 63                	je     0x1b353
   1b2f0:	62 2d 3e 66 69 6c    	bound  %ebp,0x6c69663e
   1b2f6:	70 5b                	jo     0x1b353
   1b2f8:	66                   	data16
   1b2f9:	64                   	fs
   1b2fa:	5d                   	pop    %ebp
   1b2fb:	2d 3e 66 64 5f       	sub    $0x5f64663e,%eax
   1b300:	69 6e 6f 64 65 2d 3e 	imul   $0x3e2d6564,0x6f(%esi),%ebp
   1b307:	69 5f 73 69 7a 65 20 	imul   $0x20657a69,0x73(%edi),%ebx
   1b30e:	3e 20 6f 66          	and    %ch,%ds:0x66(%edi)
   1b312:	66                   	data16
   1b313:	73 65                	jae    0x1b37a
   1b315:	74 00                	je     0x1b317
   1b317:	00 70 5f             	add    %dh,0x5f(%eax)
   1b31a:	74 63                	je     0x1b37f
   1b31c:	62 2d 3e 66 69 6c    	bound  %ebp,0x6c69663e
   1b322:	70 5b                	jo     0x1b37f
   1b324:	66                   	data16
   1b325:	64                   	fs
   1b326:	5d                   	pop    %ebp
   1b327:	2d 3e 66 64 5f       	sub    $0x5f64663e,%eax
   1b32c:	69 6e 6f 64 65 2d 3e 	imul   $0x3e2d6564,0x6f(%esi),%ebp
   1b333:	69 5f 63 6e 74 20 3e 	imul   $0x3e20746e,0x63(%edi),%ebx
   1b33a:	20 30                	and    %dh,(%eax)
   1b33c:	00 00                	add    %al,(%eax)
   1b33e:	00 00                	add    %al,(%eax)
   1b340:	68 64 2e 63 00       	push   $0x632e64
   1b345:	73 65                	jae    0x1b3ac
   1b347:	6e                   	outsb  %ds:(%esi),(%dx)
   1b348:	64                   	fs
   1b349:	72 65                	jb     0x1b3b0
   1b34b:	63 76 28             	arpl   %si,0x28(%esi)
   1b34e:	52                   	push   %edx
   1b34f:	45                   	inc    %ebp
   1b350:	43                   	inc    %ebx
   1b351:	56                   	push   %esi
   1b352:	2c 41                	sub    $0x41,%al
   1b354:	4e                   	dec    %esi
   1b355:	59                   	pop    %ecx
   1b356:	2c 26                	sub    $0x26,%al
   1b358:	6d                   	insl   (%dx),%es:(%edi)
   1b359:	73 67                	jae    0x1b3c2
   1b35b:	29 20                	sub    %esp,(%eax)
   1b35d:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1b362:	6d                   	insl   (%dx),%es:(%edi)
   1b363:	73 67                	jae    0x1b3cc
   1b365:	2e 74 79             	je,pn  0x1b3e1
   1b368:	70 65                	jo     0x1b3cf
   1b36a:	20 3d 3d 20 48 44    	and    %bh,0x4448203d
   1b370:	5f                   	pop    %edi
   1b371:	4d                   	dec    %ebp
   1b372:	53                   	push   %ebx
   1b373:	47                   	inc    %edi
   1b374:	5f                   	pop    %edi
   1b375:	55                   	push   %ebp
   1b376:	4e                   	dec    %esi
   1b377:	49                   	dec    %ecx
   1b378:	4f                   	dec    %edi
   1b379:	4e                   	dec    %esi
   1b37a:	00 00                	add    %al,(%eax)
   1b37c:	74 61                	je     0x1b3df
   1b37e:	73 6b                	jae    0x1b3eb
   1b380:	5f                   	pop    %edi
   1b381:	74 61                	je     0x1b3e4
   1b383:	62 6c 65 5b          	bound  %ebp,0x5b(%ebp)
   1b387:	6d                   	insl   (%dx),%es:(%edi)
   1b388:	73 67                	jae    0x1b3f1
   1b38a:	2e 73 65             	jae,pn 0x1b3f2
   1b38d:	6e                   	outsb  %ds:(%esi),(%dx)
   1b38e:	64                   	fs
   1b38f:	65                   	gs
   1b390:	72 5d                	jb     0x1b3ef
   1b392:	2e 74 5f             	je,pn  0x1b3f4
   1b395:	73 74                	jae    0x1b40b
   1b397:	61                   	popa   
   1b398:	74 20                	je     0x1b3ba
   1b39a:	3d 3d 20 52 45       	cmp    $0x4552203d,%eax
   1b39f:	43                   	inc    %ebx
   1b3a0:	56                   	push   %esi
   1b3a1:	49                   	dec    %ecx
   1b3a2:	4e                   	dec    %esi
   1b3a3:	47                   	inc    %edi
   1b3a4:	00 00                	add    %al,(%eax)
   1b3a6:	00 00                	add    %al,(%eax)
   1b3a8:	74 61                	je     0x1b40b
   1b3aa:	73 6b                	jae    0x1b417
   1b3ac:	5f                   	pop    %edi
   1b3ad:	74 61                	je     0x1b410
   1b3af:	62 6c 65 5b          	bound  %ebp,0x5b(%ebp)
   1b3b3:	6d                   	insl   (%dx),%es:(%edi)
   1b3b4:	73 67                	jae    0x1b41d
   1b3b6:	2e 73 65             	jae,pn 0x1b41e
   1b3b9:	6e                   	outsb  %ds:(%esi),(%dx)
   1b3ba:	64                   	fs
   1b3bb:	65                   	gs
   1b3bc:	72 5d                	jb     0x1b41b
   1b3be:	2e 72 65             	jb,pn  0x1b426
   1b3c1:	63 76 66             	arpl   %si,0x66(%esi)
   1b3c4:	72 6f                	jb     0x1b435
   1b3c6:	6d                   	insl   (%dx),%es:(%edi)
   1b3c7:	20 3d 3d 20 54 41    	and    %bh,0x4154203d
   1b3cd:	53                   	push   %ebx
   1b3ce:	4b                   	dec    %ebx
   1b3cf:	5f                   	pop    %edi
   1b3d0:	48                   	dec    %eax
   1b3d1:	44                   	inc    %esp
   1b3d2:	5f                   	pop    %edi
   1b3d3:	50                   	push   %eax
   1b3d4:	49                   	dec    %ecx
   1b3d5:	44                   	inc    %esp
   1b3d6:	00 00                	add    %al,(%eax)
   1b3d8:	73 65                	jae    0x1b43f
   1b3da:	6e                   	outsb  %ds:(%esi),(%dx)
   1b3db:	64                   	fs
   1b3dc:	72 65                	jb     0x1b443
   1b3de:	63 76 28             	arpl   %si,0x28(%esi)
   1b3e1:	53                   	push   %ebx
   1b3e2:	45                   	inc    %ebp
   1b3e3:	4e                   	dec    %esi
   1b3e4:	44                   	inc    %esp
   1b3e5:	2c 6d                	sub    $0x6d,%al
   1b3e7:	73 67                	jae    0x1b450
   1b3e9:	2e 73 65             	jae,pn 0x1b451
   1b3ec:	6e                   	outsb  %ds:(%esi),(%dx)
   1b3ed:	64                   	fs
   1b3ee:	65                   	gs
   1b3ef:	72 2c                	jb     0x1b41d
   1b3f1:	26                   	es
   1b3f2:	6d                   	insl   (%dx),%es:(%edi)
   1b3f3:	73 67                	jae    0x1b45c
   1b3f5:	29 20                	sub    %esp,(%eax)
   1b3f7:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1b3fc:	bf 35 01 00 d6       	mov    $0xd6000135,%edi
   1b401:	35 01 00 ed 35       	xor    $0x35ed0001,%eax
   1b406:	01 00                	add    %eax,(%eax)
   1b408:	34 36                	xor    $0x36,%al
   1b40a:	01 00                	add    %eax,(%eax)
   1b40c:	7b 36                	jnp    0x1b444
   1b40e:	01 00                	add    %eax,(%eax)
   1b410:	4f                   	dec    %edi
   1b411:	70 65                	jo     0x1b478
   1b413:	6e                   	outsb  %ds:(%esi),(%dx)
   1b414:	20 64 65 76          	and    %ah,0x76(%ebp)
   1b418:	69 63 65 3a 20 25 78 	imul   $0x7825203a,0x65(%ebx),%esp
   1b41f:	0a 00                	or     (%eax),%al
   1b421:	00 00                	add    %al,(%eax)
   1b423:	00 73 65             	add    %dh,0x65(%ebx)
   1b426:	6e                   	outsb  %ds:(%esi),(%dx)
   1b427:	64                   	fs
   1b428:	72 65                	jb     0x1b48f
   1b42a:	63 76 28             	arpl   %si,0x28(%esi)
   1b42d:	42                   	inc    %edx
   1b42e:	4f                   	dec    %edi
   1b42f:	54                   	push   %esp
   1b430:	48                   	dec    %eax
   1b431:	2c 54                	sub    $0x54,%al
   1b433:	41                   	inc    %ecx
   1b434:	53                   	push   %ebx
   1b435:	4b                   	dec    %ebx
   1b436:	5f                   	pop    %edi
   1b437:	48                   	dec    %eax
   1b438:	44                   	inc    %esp
   1b439:	5f                   	pop    %edi
   1b43a:	50                   	push   %eax
   1b43b:	49                   	dec    %ecx
   1b43c:	44                   	inc    %esp
   1b43d:	2c 26                	sub    $0x26,%al
   1b43f:	6d                   	insl   (%dx),%es:(%edi)
   1b440:	73 67                	jae    0x1b4a9
   1b442:	29 20                	sub    %esp,(%eax)
   1b444:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1b449:	43                   	inc    %ebx
   1b44a:	6c                   	insb   (%dx),%es:(%edi)
   1b44b:	6f                   	outsl  %ds:(%esi),(%dx)
   1b44c:	73 65                	jae    0x1b4b3
   1b44e:	20 64 65 76          	and    %ah,0x76(%ebp)
   1b452:	69 63 65 3a 20 25 78 	imul   $0x7825203a,0x65(%ebx),%esp
   1b459:	0a 00                	or     (%eax),%al
   1b45b:	49                   	dec    %ecx
   1b45c:	4f                   	dec    %edi
   1b45d:	20 63 74             	and    %ah,0x74(%ebx)
   1b460:	6c                   	insb   (%dx),%es:(%edi)
   1b461:	20 64 65 76          	and    %ah,0x76(%ebp)
   1b465:	69 63 65 3a 20 25 78 	imul   $0x7825203a,0x65(%ebx),%esp
   1b46c:	0a 00                	or     (%eax),%al
   1b46e:	00 00                	add    %al,(%eax)
   1b470:	0a 2d 2d 2d 2d 2d    	or     0x2d2d2d2d,%ch
   1b476:	2d 2d 2d 2d 2d       	sub    $0x2d2d2d2d,%eax
   1b47b:	68 64 20 65 72       	push   $0x72652064
   1b480:	72 6f                	jb     0x1b4f1
   1b482:	72 21                	jb     0x1b4a5
   1b484:	2d 2d 2d 2d 2d       	sub    $0x2d2d2d2d,%eax
   1b489:	2d 2d 2d 2d 2d       	sub    $0x2d2d2d2d,%eax
   1b48e:	2d 0a 00 48 44       	sub    $0x4448000a,%eax
   1b493:	20 53 4e             	and    %dl,0x4e(%ebx)
   1b496:	00 48 44             	add    %cl,0x44(%eax)
   1b499:	20 4d 6f             	and    %cl,0x6f(%ebp)
   1b49c:	64                   	fs
   1b49d:	65                   	gs
   1b49e:	6c                   	insb   (%dx),%es:(%edi)
   1b49f:	00 25 73 3a 20 25    	add    %ah,0x25203a73
   1b4a5:	73 0a                	jae    0x1b4b1
   1b4a7:	00 59 65             	add    %bl,0x65(%ecx)
   1b4aa:	73 00                	jae    0x1b4ac
   1b4ac:	4e                   	dec    %esi
   1b4ad:	6f                   	outsl  %ds:(%esi),(%dx)
   1b4ae:	00 4c 42 41          	add    %cl,0x41(%edx,%eax,2)
   1b4b2:	20 73 75             	and    %dh,0x75(%ebx)
   1b4b5:	70 70                	jo     0x1b527
   1b4b7:	6f                   	outsl  %ds:(%esi),(%dx)
   1b4b8:	72 74                	jb     0x1b52e
   1b4ba:	65 64 3a 20          	cmp    %fs:%gs:(%eax),%ah
   1b4be:	25 73 0a 00 4c       	and    $0x4c000a73,%eax
   1b4c3:	42                   	inc    %edx
   1b4c4:	41                   	inc    %ecx
   1b4c5:	34 38                	xor    $0x38,%al
   1b4c7:	20 73 75             	and    %dh,0x75(%ebx)
   1b4ca:	70 70                	jo     0x1b53c
   1b4cc:	6f                   	outsl  %ds:(%esi),(%dx)
   1b4cd:	72 74                	jb     0x1b543
   1b4cf:	65 64 3a 20          	cmp    %fs:%gs:(%eax),%ah
   1b4d3:	25 73 0a 00 48       	and    $0x48000a73,%eax
   1b4d8:	44                   	inc    %esp
   1b4d9:	20 73 69             	and    %dh,0x69(%ebx)
   1b4dc:	7a 65                	jp     0x1b543
   1b4de:	3a 20                	cmp    (%eax),%ah
   1b4e0:	25 64 4d 42 0a       	and    $0xa424d64,%eax
   1b4e5:	00 50 72             	add    %dl,0x72(%eax)
   1b4e8:	69 6d 61 72 79 20 50 	imul   $0x50207972,0x61(%ebp),%ebp
   1b4ef:	61                   	popa   
   1b4f0:	74 69                	je     0x1b55b
   1b4f2:	6f                   	outsl  %ds:(%esi),(%dx)
   1b4f3:	6e                   	outsb  %ds:(%esi),(%dx)
   1b4f4:	00 45 78             	add    %al,0x78(%ebp)
   1b4f7:	74 65                	je     0x1b55e
   1b4f9:	72 6e                	jb     0x1b569
   1b4fb:	20 20                	and    %ah,(%eax)
   1b4fd:	50                   	push   %eax
   1b4fe:	61                   	popa   
   1b4ff:	74 69                	je     0x1b56a
   1b501:	6f                   	outsl  %ds:(%esi),(%dx)
   1b502:	6e                   	outsb  %ds:(%esi),(%dx)
   1b503:	00 68 64             	add    %ch,0x64(%eax)
   1b506:	25 64 20 25 73       	and    $0x73252064,%eax
   1b50b:	20 6c 62 61          	and    %ch,0x61(%edx)
   1b50f:	3a 20                	cmp    (%eax),%ah
   1b511:	25 78 20 62 61       	and    $0x61622078,%eax
   1b516:	73 65                	jae    0x1b57d
   1b518:	3a 20                	cmp    (%eax),%ah
   1b51a:	25 78 20 73 69       	and    $0x69732078,%eax
   1b51f:	7a 65                	jp     0x1b586
   1b521:	3a 20                	cmp    (%eax),%ah
   1b523:	25 78 0a 00 4c       	and    $0x4c000a78,%eax
   1b528:	6f                   	outsl  %ds:(%esi),(%dx)
   1b529:	67 69 63 20 20 20 50 	addr16 imul $0x61502020,32(%bp,%di),%esp
   1b530:	61 
   1b531:	74 69                	je     0x1b59c
   1b533:	6f                   	outsl  %ds:(%esi),(%dx)
   1b534:	6e                   	outsb  %ds:(%esi),(%dx)
   1b535:	00 00                	add    %al,(%eax)
   1b537:	00 54 68 65          	add    %dl,0x65(%eax,%ebp,2)
   1b53b:	20 64 72 69          	and    %ah,0x69(%edx,%esi,2)
   1b53f:	76 65                	jbe    0x1b5a6
   1b541:	72 20                	jb     0x1b563
   1b543:	66 6f                	outsw  %ds:(%esi),(%dx)
   1b545:	72 20                	jb     0x1b567
   1b547:	64                   	fs
   1b548:	65                   	gs
   1b549:	76 69                	jbe    0x1b5b4
   1b54b:	63 65 20             	arpl   %sp,0x20(%ebp)
   1b54e:	68 61 73 20 61       	push   $0x61207361
   1b553:	6c                   	insb   (%dx),%es:(%edi)
   1b554:	6c                   	insb   (%dx),%es:(%edi)
   1b555:	72 65                	jb     0x1b5bc
   1b557:	61                   	popa   
   1b558:	64                   	fs
   1b559:	79 20                	jns    0x1b57b
   1b55b:	6f                   	outsl  %ds:(%esi),(%dx)
   1b55c:	70 65                	jo     0x1b5c3
   1b55e:	6e                   	outsb  %ds:(%esi),(%dx)
   1b55f:	21 0a                	and    %ecx,(%edx)
   1b561:	00 00                	add    %al,(%eax)
   1b563:	00 54 68 65          	add    %dl,0x65(%eax,%ebp,2)
   1b567:	20 64 72 69          	and    %ah,0x69(%edx,%esi,2)
   1b56b:	76 65                	jbe    0x1b5d2
   1b56d:	72 20                	jb     0x1b58f
   1b56f:	66 6f                	outsw  %ds:(%esi),(%dx)
   1b571:	72 20                	jb     0x1b593
   1b573:	64                   	fs
   1b574:	65                   	gs
   1b575:	76 69                	jbe    0x1b5e0
   1b577:	63 65 20             	arpl   %sp,0x20(%ebp)
   1b57a:	68 61 73 20 61       	push   $0x61207361
   1b57f:	6c                   	insb   (%dx),%es:(%edi)
   1b580:	6c                   	insb   (%dx),%es:(%edi)
   1b581:	72 65                	jb     0x1b5e8
   1b583:	61                   	popa   
   1b584:	64                   	fs
   1b585:	79 20                	jns    0x1b5a7
   1b587:	63 6c 6f 73          	arpl   %bp,0x73(%edi,%ebp,2)
   1b58b:	65 21 0a             	and    %ecx,%gs:(%edx)
   1b58e:	00 0a                	add    %cl,(%edx)
   1b590:	48                   	dec    %eax
   1b591:	61                   	popa   
   1b592:	72 64                	jb     0x1b5f8
   1b594:	20 64 69 73          	and    %ah,0x73(%ecx,%ebp,2)
   1b598:	6b 20 72             	imul   $0x72,(%eax),%esp
   1b59b:	64                   	fs
   1b59c:	5f                   	pop    %edi
   1b59d:	77 72                	ja     0x1b611
   1b59f:	20 65 72             	and    %ah,0x72(%ebp)
   1b5a2:	72 6f                	jb     0x1b613
   1b5a4:	72 21                	jb     0x1b5c7
   1b5a6:	0a 00                	or     (%eax),%al
   1b5a8:	68 77 69 6e 74       	push   $0x746e6977
   1b5ad:	2e 63 00             	arpl   %ax,%cs:(%eax)
   1b5b0:	74 61                	je     0x1b613
   1b5b2:	73 6b                	jae    0x1b61f
   1b5b4:	5f                   	pop    %edi
   1b5b5:	63 75 72             	arpl   %si,0x72(%ebp)
   1b5b8:	72 65                	jb     0x1b61f
   1b5ba:	6e                   	outsb  %ds:(%esi),(%dx)
   1b5bb:	74 2d                	je     0x1b5ea
   1b5bd:	3e 74 69             	je,pt  0x1b629
   1b5c0:	63 6b 20             	arpl   %bp,0x20(%ebx)
   1b5c3:	3e 20 30             	and    %dh,%ds:(%eax)
   1b5c6:	00 68 77             	add    %ch,0x77(%eax)
   1b5c9:	69 6e 74 30 32 00 68 	imul   $0x68003230,0x74(%esi),%ebp
   1b5d0:	77 69                	ja     0x1b63b
   1b5d2:	6e                   	outsb  %ds:(%esi),(%dx)
   1b5d3:	74 30                	je     0x1b605
   1b5d5:	33 00                	xor    (%eax),%eax
   1b5d7:	68 77 69 6e 74       	push   $0x746e6977
   1b5dc:	30 34 00             	xor    %dh,(%eax,%eax,1)
   1b5df:	68 77 69 6e 74       	push   $0x746e6977
   1b5e4:	30 35 00 68 77 69    	xor    %dh,0x69776800
   1b5ea:	6e                   	outsb  %ds:(%esi),(%dx)
   1b5eb:	74 30                	je     0x1b61d
   1b5ed:	36 00 68 77          	add    %ch,%ss:0x77(%eax)
   1b5f1:	69 6e 74 30 37 00 68 	imul   $0x68003730,0x74(%esi),%ebp
   1b5f8:	77 69                	ja     0x1b663
   1b5fa:	6e                   	outsb  %ds:(%esi),(%dx)
   1b5fb:	74 30                	je     0x1b62d
   1b5fd:	38 00                	cmp    %al,(%eax)
   1b5ff:	68 77 69 6e 74       	push   $0x746e6977
   1b604:	30 39                	xor    %bh,(%ecx)
   1b606:	00 68 77             	add    %ch,0x77(%eax)
   1b609:	69 6e 74 31 30 00 68 	imul   $0x68003031,0x74(%esi),%ebp
   1b610:	77 69                	ja     0x1b67b
   1b612:	6e                   	outsb  %ds:(%esi),(%dx)
   1b613:	74 31                	je     0x1b646
   1b615:	31 00                	xor    %eax,(%eax)
   1b617:	68 77 69 6e 74       	push   $0x746e6977
   1b61c:	31 32                	xor    %esi,(%edx)
   1b61e:	00 68 77             	add    %ch,0x77(%eax)
   1b621:	69 6e 74 31 33 00 68 	imul   $0x68003331,0x74(%esi),%ebp
   1b628:	77 69                	ja     0x1b693
   1b62a:	6e                   	outsb  %ds:(%esi),(%dx)
   1b62b:	74 31                	je     0x1b65e
   1b62d:	35 00 00 69 70       	xor    $0x70690000,%eax
   1b632:	63 2e                	arpl   %bp,(%esi)
   1b634:	63 00                	arpl   %ax,(%eax)
   1b636:	69 66 5f 6f 66 66 00 	imul   $0x66666f,0x5f(%esi),%esp
   1b63d:	64                   	fs
   1b63e:	65                   	gs
   1b63f:	61                   	popa   
   1b640:	64                   	fs
   1b641:	6c                   	insb   (%dx),%es:(%edi)
   1b642:	6f                   	outsl  %ds:(%esi),(%dx)
   1b643:	63 64 3a 20          	arpl   %sp,0x20(%edx,%edi,1)
   1b647:	00 25 64 3c 2d 00    	add    %ah,0x2d3c64
   1b64d:	0a 00                	or     (%eax),%al
   1b64f:	73 72                	jae    0x1b6c3
   1b651:	63 20                	arpl   %sp,(%eax)
   1b653:	25 64 20 2c 64       	and    $0x642c2064,%eax
   1b658:	65 63 20             	arpl   %sp,%gs:(%eax)
   1b65b:	25 64 20 00 25       	and    $0x25002064,%eax
   1b660:	64                   	fs
   1b661:	2d 3e 00 69 66       	sub    $0x6669003e,%eax
   1b666:	5f                   	pop    %edi
   1b667:	6f                   	outsl  %ds:(%esi),(%dx)
   1b668:	6e                   	outsb  %ds:(%esi),(%dx)
   1b669:	00 64 65 61          	add    %ah,0x61(%ebp)
   1b66d:	64                   	fs
   1b66e:	6c                   	insb   (%dx),%es:(%edi)
   1b66f:	6f                   	outsl  %ds:(%esi),(%dx)
   1b670:	63 6b 28             	arpl   %bp,0x28(%ebx)
   1b673:	64 65 63 2c 73       	arpl   %bp,%fs:%gs:(%ebx,%esi,2)
   1b678:	72 63                	jb     0x1b6dd
   1b67a:	29 20                	sub    %esp,(%eax)
   1b67c:	3d 3d 20 2d 31       	cmp    $0x312d203d,%eax
   1b681:	00 64 65 61          	add    %ah,0x61(%ebp)
   1b685:	64                   	fs
   1b686:	6c                   	insb   (%dx),%es:(%edi)
   1b687:	6f                   	outsl  %ds:(%esi),(%dx)
   1b688:	63 6b 20             	arpl   %bp,0x20(%ebx)
   1b68b:	30 00                	xor    %al,(%eax)
   1b68d:	30 00                	xor    %al,(%eax)
   1b68f:	64                   	fs
   1b690:	65                   	gs
   1b691:	61                   	popa   
   1b692:	64                   	fs
   1b693:	6c                   	insb   (%dx),%es:(%edi)
   1b694:	6f                   	outsl  %ds:(%esi),(%dx)
   1b695:	63 6b 28             	arpl   %bp,0x28(%ebx)
   1b698:	73 72                	jae    0x1b70c
   1b69a:	63 2c 64             	arpl   %bp,(%esp)
   1b69d:	65 63 29             	arpl   %bp,%gs:(%ecx)
   1b6a0:	20 3d 3d 20 2d 31    	and    %bh,0x312d203d
   1b6a6:	00 00                	add    %al,(%eax)
   1b6a8:	28 70 5f             	sub    %dh,0x5f(%eax)
   1b6ab:	64 65 63 2d 3e 70 5f 	arpl   %bp,%fs:%gs:0x6d5f703e
   1b6b2:	6d 
   1b6b3:	79 6d                	jns    0x1b722
   1b6b5:	73 67                	jae    0x1b71e
   1b6b7:	20 2d 20 74 61 73    	and    %ch,0x73617420
   1b6bd:	6b 5f 74 61          	imul   $0x61,0x74(%edi),%ebx
   1b6c1:	62 6c 65 20          	bound  %ebp,0x20(%ebp)
   1b6c5:	3c 20                	cmp    $0x20,%al
   1b6c7:	4e                   	dec    %esi
   1b6c8:	52                   	push   %edx
   1b6c9:	5f                   	pop    %edi
   1b6ca:	54                   	push   %esp
   1b6cb:	4f                   	dec    %edi
   1b6cc:	54                   	push   %esp
   1b6cd:	41                   	inc    %ecx
   1b6ce:	4c                   	dec    %esp
   1b6cf:	29 20                	sub    %esp,(%eax)
   1b6d1:	26 26 20 28          	and    %ch,%es:(%eax)
   1b6d5:	70 5f                	jo     0x1b736
   1b6d7:	64 65 63 2d 3e 70 5f 	arpl   %bp,%fs:%gs:0x6d5f703e
   1b6de:	6d 
   1b6df:	79 6d                	jns    0x1b74e
   1b6e1:	73 67                	jae    0x1b74a
   1b6e3:	20 2d 20 74 61 73    	and    %ch,0x73617420
   1b6e9:	6b 5f 74 61          	imul   $0x61,0x74(%edi),%ebx
   1b6ed:	62 6c 65 20          	bound  %ebp,0x20(%ebp)
   1b6f1:	3e                   	ds
   1b6f2:	3d 20 30 29 00       	cmp    $0x293020,%eax
   1b6f7:	00 64 65 61          	add    %ah,0x61(%ebp)
   1b6fb:	64                   	fs
   1b6fc:	6c                   	insb   (%dx),%es:(%edi)
   1b6fd:	6f                   	outsl  %ds:(%esi),(%dx)
   1b6fe:	63 6b 28             	arpl   %bp,0x28(%ebx)
   1b701:	64 65 63 2c 70       	arpl   %bp,%fs:%gs:(%eax,%esi,2)
   1b706:	5f                   	pop    %edi
   1b707:	73 72                	jae    0x1b77b
   1b709:	63 20                	arpl   %sp,(%eax)
   1b70b:	2d 20 74 61 73       	sub    $0x73617420,%eax
   1b710:	6b 5f 74 61          	imul   $0x61,0x74(%edi),%ebx
   1b714:	62 6c 65 29          	bound  %ebp,0x29(%ebp)
   1b718:	20 3d 3d 20 2d 31    	and    %bh,0x312d203d
   1b71e:	00 64 65 61          	add    %ah,0x61(%ebp)
   1b722:	64                   	fs
   1b723:	6c                   	insb   (%dx),%es:(%edi)
   1b724:	6f                   	outsl  %ds:(%esi),(%dx)
   1b725:	63 6b 20             	arpl   %bp,0x20(%ebx)
   1b728:	31 00                	xor    %eax,(%eax)
   1b72a:	70 5f                	jo     0x1b78b
   1b72c:	73 72                	jae    0x1b7a0
   1b72e:	63 2d 3e 70 5f 6e    	arpl   %bp,0x6e5f703e
   1b734:	65                   	gs
   1b735:	78 74                	js     0x1b7ab
   1b737:	73 65                	jae    0x1b79e
   1b739:	6e                   	outsb  %ds:(%esi),(%dx)
   1b73a:	64 69 6e 67 20 3d 3d 	imul   $0x203d3d20,%fs:0x67(%esi),%ebp
   1b741:	20 
   1b742:	30 00                	xor    %al,(%eax)
   1b744:	64                   	fs
   1b745:	65                   	gs
   1b746:	61                   	popa   
   1b747:	64                   	fs
   1b748:	6c                   	insb   (%dx),%es:(%edi)
   1b749:	6f                   	outsl  %ds:(%esi),(%dx)
   1b74a:	63 6b 20             	arpl   %bp,0x20(%ebx)
   1b74d:	32 00                	xor    (%eax),%al
   1b74f:	48                   	dec    %eax
   1b750:	65                   	gs
   1b751:	6c                   	insb   (%dx),%es:(%edi)
   1b752:	6c                   	insb   (%dx),%es:(%edi)
   1b753:	6f                   	outsl  %ds:(%esi),(%dx)
   1b754:	20 57 6f             	and    %dl,0x6f(%edi)
   1b757:	72 6c                	jb     0x1b7c5
   1b759:	64 20 21             	and    %ah,%fs:(%ecx)
   1b75c:	0a 00                	or     (%eax),%al
   1b75e:	0a 0a                	or     (%edx),%cl
   1b760:	0a 0a                	or     (%edx),%cl
   1b762:	0a 0a                	or     (%edx),%cl
   1b764:	00 48 65             	add    %cl,0x65(%eax)
   1b767:	6c                   	insb   (%dx),%es:(%edi)
   1b768:	6c                   	insb   (%dx),%es:(%edi)
   1b769:	6f                   	outsl  %ds:(%esi),(%dx)
   1b76a:	20 4d 79             	and    %cl,0x79(%ebp)
   1b76d:	20 4d 69             	and    %cl,0x69(%ebp)
   1b770:	6e                   	outsb  %ds:(%esi),(%dx)
   1b771:	69 20 4f 53 20 21    	imul   $0x2120534f,(%eax),%esp
   1b777:	0a 00                	or     (%eax),%al
   1b779:	54                   	push   %esp
   1b77a:	68 69 73 20 69       	push   $0x69207369
   1b77f:	73 20                	jae    0x1b7a1
   1b781:	6d                   	insl   (%dx),%es:(%edi)
   1b782:	79 20                	jns    0x1b7a4
   1b784:	70 72                	jo     0x1b7f8
   1b786:	69 6e 74 6b 20 21 00 	imul   $0x21206b,0x74(%esi),%ebp
   1b78d:	25 73 20 20 20       	and    $0x20202073,%eax
   1b792:	25 58 20 37 38       	and    $0x38372058,%eax
   1b797:	39 20                	cmp    %esp,(%eax)
   1b799:	25 25 25 25 20       	and    $0x20252525,%eax
   1b79e:	0a 00                	or     (%eax),%al
   1b7a0:	4d                   	dec    %ebp
   1b7a1:	61                   	popa   
   1b7a2:	6b 65 20 46          	imul   $0x46,0x20(%ebp),%esp
   1b7a6:	69 6c 65 0a 00 4d 61 	imul   $0x6b614d00,0xa(%ebp),%ebp
   1b7ad:	6b 
   1b7ae:	65 20 46 69          	and    %al,%gs:0x69(%esi)
   1b7b2:	6c                   	insb   (%dx),%es:(%edi)
   1b7b3:	65 31 0a             	xor    %ecx,%gs:(%edx)
   1b7b6:	00 73 74             	add    %dh,0x74(%ebx)
   1b7b9:	72 75                	jb     0x1b830
   1b7bb:	63 74 20 47          	arpl   %si,0x47(%eax)
   1b7bf:	61                   	popa   
   1b7c0:	74 65                	je     0x1b827
   1b7c2:	20 73 69             	and    %dh,0x69(%ebx)
   1b7c5:	7a 65                	jp     0x1b82c
   1b7c7:	20 20                	and    %ah,(%eax)
   1b7c9:	20 20                	and    %ah,(%eax)
   1b7cb:	20 20                	and    %ah,(%eax)
   1b7cd:	20 3a                	and    %bh,(%edx)
   1b7cf:	25 78 0a 00 73       	and    $0x73000a78,%eax
   1b7d4:	74 72                	je     0x1b848
   1b7d6:	75 63                	jne    0x1b83b
   1b7d8:	74 20                	je     0x1b7fa
   1b7da:	44                   	inc    %esp
   1b7db:	65                   	gs
   1b7dc:	73 63                	jae    0x1b841
   1b7de:	72 69                	jb     0x1b849
   1b7e0:	70 74                	jo     0x1b856
   1b7e2:	6f                   	outsl  %ds:(%esi),(%dx)
   1b7e3:	72 20                	jb     0x1b805
   1b7e5:	73 69                	jae    0x1b850
   1b7e7:	7a 65                	jp     0x1b84e
   1b7e9:	20 3a                	and    %bh,(%edx)
   1b7eb:	25 78 0a 00 25       	and    $0x25000a78,%eax
   1b7f0:	64 0a 00             	or     %fs:(%eax),%al
   1b7f3:	25 64 23 3e 00       	and    $0x3e2364,%eax
   1b7f8:	6d                   	insl   (%dx),%es:(%edi)
   1b7f9:	6d                   	insl   (%dx),%es:(%edi)
   1b7fa:	2e 63 00             	arpl   %ax,%cs:(%eax)
   1b7fd:	72 65                	jb     0x1b864
   1b7ff:	63 76 28             	arpl   %si,0x28(%esi)
   1b802:	41                   	inc    %ecx
   1b803:	4e                   	dec    %esi
   1b804:	59                   	pop    %ecx
   1b805:	2c 26                	sub    $0x26,%al
   1b807:	6d                   	insl   (%dx),%es:(%edi)
   1b808:	73 67                	jae    0x1b871
   1b80a:	29 20                	sub    %esp,(%eax)
   1b80c:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1b811:	6d                   	insl   (%dx),%es:(%edi)
   1b812:	73 67                	jae    0x1b87b
   1b814:	2e 74 79             	je,pn  0x1b890
   1b817:	70 65                	jo     0x1b87e
   1b819:	20 3d 3d 20 4d 4d    	and    %bh,0x4d4d203d
   1b81f:	5f                   	pop    %edi
   1b820:	4d                   	dec    %ebp
   1b821:	53                   	push   %ebx
   1b822:	47                   	inc    %edi
   1b823:	5f                   	pop    %edi
   1b824:	55                   	push   %ebp
   1b825:	4e                   	dec    %esi
   1b826:	49                   	dec    %ecx
   1b827:	4f                   	dec    %edi
   1b828:	4e                   	dec    %esi
   1b829:	00 00                	add    %al,(%eax)
   1b82b:	00 74 61 73          	add    %dh,0x73(%ecx)
   1b82f:	6b 5f 74 61          	imul   $0x61,0x74(%edi),%ebx
   1b833:	62 6c 65 5b          	bound  %ebp,0x5b(%ebp)
   1b837:	6d                   	insl   (%dx),%es:(%edi)
   1b838:	73 67                	jae    0x1b8a1
   1b83a:	2e 73 65             	jae,pn 0x1b8a2
   1b83d:	6e                   	outsb  %ds:(%esi),(%dx)
   1b83e:	64                   	fs
   1b83f:	65                   	gs
   1b840:	72 5d                	jb     0x1b89f
   1b842:	2e 74 5f             	je,pn  0x1b8a4
   1b845:	73 74                	jae    0x1b8bb
   1b847:	61                   	popa   
   1b848:	74 20                	je     0x1b86a
   1b84a:	3d 3d 20 52 45       	cmp    $0x4552203d,%eax
   1b84f:	43                   	inc    %ebx
   1b850:	56                   	push   %esi
   1b851:	49                   	dec    %ecx
   1b852:	4e                   	dec    %esi
   1b853:	47                   	inc    %edi
   1b854:	00 00                	add    %al,(%eax)
   1b856:	00 00                	add    %al,(%eax)
   1b858:	74 61                	je     0x1b8bb
   1b85a:	73 6b                	jae    0x1b8c7
   1b85c:	5f                   	pop    %edi
   1b85d:	74 61                	je     0x1b8c0
   1b85f:	62 6c 65 5b          	bound  %ebp,0x5b(%ebp)
   1b863:	6d                   	insl   (%dx),%es:(%edi)
   1b864:	73 67                	jae    0x1b8cd
   1b866:	2e 73 65             	jae,pn 0x1b8ce
   1b869:	6e                   	outsb  %ds:(%esi),(%dx)
   1b86a:	64                   	fs
   1b86b:	65                   	gs
   1b86c:	72 5d                	jb     0x1b8cb
   1b86e:	2e 72 65             	jb,pn  0x1b8d6
   1b871:	63 76 66             	arpl   %si,0x66(%esi)
   1b874:	72 6f                	jb     0x1b8e5
   1b876:	6d                   	insl   (%dx),%es:(%edi)
   1b877:	20 3d 3d 20 54 41    	and    %bh,0x4154203d
   1b87d:	53                   	push   %ebx
   1b87e:	4b                   	dec    %ebx
   1b87f:	5f                   	pop    %edi
   1b880:	4d                   	dec    %ebp
   1b881:	4d                   	dec    %ebp
   1b882:	5f                   	pop    %edi
   1b883:	50                   	push   %eax
   1b884:	49                   	dec    %ecx
   1b885:	44                   	inc    %esp
   1b886:	00 73 65             	add    %dh,0x65(%ebx)
   1b889:	6e                   	outsb  %ds:(%esi),(%dx)
   1b88a:	64 28 6d 73          	sub    %ch,%fs:0x73(%ebp)
   1b88e:	67 2e 73 65          	addr16 jae,pn 0x1b8f7
   1b892:	6e                   	outsb  %ds:(%esi),(%dx)
   1b893:	64                   	fs
   1b894:	65                   	gs
   1b895:	72 2c                	jb     0x1b8c3
   1b897:	26                   	es
   1b898:	6d                   	insl   (%dx),%es:(%edi)
   1b899:	73 67                	jae    0x1b902
   1b89b:	29 20                	sub    %esp,(%eax)
   1b89d:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1b8a2:	00 00                	add    %al,(%eax)
   1b8a4:	d6                   	(bad)  
   1b8a5:	5d                   	pop    %ebp
   1b8a6:	01 00                	add    %eax,(%eax)
   1b8a8:	d7                   	xlat   %ds:(%ebx)
   1b8a9:	5c                   	pop    %esp
   1b8aa:	01 00                	add    %eax,(%eax)
   1b8ac:	ee                   	out    %al,(%dx)
   1b8ad:	5c                   	pop    %esp
   1b8ae:	01 00                	add    %eax,(%eax)
   1b8b0:	08 5d 01             	or     %bl,0x1(%ebp)
   1b8b3:	00 29                	add    %ch,(%ecx)
   1b8b5:	5d                   	pop    %ebp
   1b8b6:	01 00                	add    %eax,(%eax)
   1b8b8:	40                   	inc    %eax
   1b8b9:	5d                   	pop    %ebp
   1b8ba:	01 00                	add    %eax,(%eax)
   1b8bc:	74 61                	je     0x1b91f
   1b8be:	73 6b                	jae    0x1b92b
   1b8c0:	5f                   	pop    %edi
   1b8c1:	74 61                	je     0x1b924
   1b8c3:	62 6c 65 20          	bound  %ebp,0x20(%ebp)
   1b8c7:	66                   	data16
   1b8c8:	75 6c                	jne    0x1b936
   1b8ca:	6c                   	insb   (%dx),%es:(%edi)
   1b8cb:	20 3a                	and    %bh,(%edx)
   1b8cd:	20 66 6f             	and    %ah,0x6f(%esi)
   1b8d0:	72 6b                	jb     0x1b93d
   1b8d2:	0a 00                	or     (%eax),%al
   1b8d4:	70 5f                	jo     0x1b935
   1b8d6:	74 63                	je     0x1b93b
   1b8d8:	62 2d 3e 70 5f 65    	bound  %ebp,0x655f703e
   1b8de:	6d                   	insl   (%dx),%es:(%edi)
   1b8df:	70 74                	jo     0x1b955
   1b8e1:	79 20                	jns    0x1b903
   1b8e3:	3d 3d 20 31 00       	cmp    $0x31203d,%eax
   1b8e8:	70 5f                	jo     0x1b949
   1b8ea:	74 63                	je     0x1b94f
   1b8ec:	62 2d 3e 74 5f 73    	bound  %ebp,0x735f743e
   1b8f2:	74 61                	je     0x1b955
   1b8f4:	74 20                	je     0x1b916
   1b8f6:	3d 3d 20 52 45       	cmp    $0x4552203d,%eax
   1b8fb:	43                   	inc    %ebx
   1b8fc:	56                   	push   %esi
   1b8fd:	49                   	dec    %ecx
   1b8fe:	4e                   	dec    %esi
   1b8ff:	47                   	inc    %edi
   1b900:	00 00                	add    %al,(%eax)
   1b902:	00 00                	add    %al,(%eax)
   1b904:	70 5f                	jo     0x1b965
   1b906:	74 63                	je     0x1b96b
   1b908:	62 2d 3e 72 65 63    	bound  %ebp,0x6365723e
   1b90e:	76 66                	jbe    0x1b976
   1b910:	72 6f                	jb     0x1b981
   1b912:	6d                   	insl   (%dx),%es:(%edi)
   1b913:	20 3d 3d 20 54 41    	and    %bh,0x4154203d
   1b919:	53                   	push   %ebx
   1b91a:	4b                   	dec    %ebx
   1b91b:	5f                   	pop    %edi
   1b91c:	4d                   	dec    %ebp
   1b91d:	4d                   	dec    %ebp
   1b91e:	5f                   	pop    %edi
   1b91f:	50                   	push   %eax
   1b920:	49                   	dec    %ecx
   1b921:	44                   	inc    %esp
   1b922:	00 49 73             	add    %cl,0x73(%ecx)
   1b925:	53                   	push   %ebx
   1b926:	68 61 72 65 64       	push   $0x64657261
   1b92b:	28 28                	sub    %ch,(%eax)
   1b92d:	76 6f                	jbe    0x1b99e
   1b92f:	69 64 2a 29 65 73 70 	imul   $0x5f707365,0x29(%edx,%ebp,1),%esp
   1b936:	5f 
   1b937:	70 61                	jo     0x1b99a
   1b939:	29 20                	sub    %esp,(%eax)
   1b93b:	3e 20 30             	and    %dh,%ds:(%eax)
   1b93e:	00 00                	add    %al,(%eax)
   1b940:	73 65                	jae    0x1b9a7
   1b942:	6e                   	outsb  %ds:(%esi),(%dx)
   1b943:	64                   	fs
   1b944:	72 65                	jb     0x1b9ab
   1b946:	63 76 28             	arpl   %si,0x28(%esi)
   1b949:	42                   	inc    %edx
   1b94a:	4f                   	dec    %edi
   1b94b:	54                   	push   %esp
   1b94c:	48                   	dec    %eax
   1b94d:	2c 54                	sub    $0x54,%al
   1b94f:	41                   	inc    %ecx
   1b950:	53                   	push   %ebx
   1b951:	4b                   	dec    %ebx
   1b952:	5f                   	pop    %edi
   1b953:	46                   	inc    %esi
   1b954:	53                   	push   %ebx
   1b955:	5f                   	pop    %edi
   1b956:	50                   	push   %eax
   1b957:	49                   	dec    %ecx
   1b958:	44                   	inc    %esp
   1b959:	2c 26                	sub    $0x26,%al
   1b95b:	6d                   	insl   (%dx),%es:(%edi)
   1b95c:	73 67                	jae    0x1b9c5
   1b95e:	29 20                	sub    %esp,(%eax)
   1b960:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1b965:	63 68 69             	arpl   %bp,0x69(%eax)
   1b968:	6c                   	insb   (%dx),%es:(%edi)
   1b969:	64                   	fs
   1b96a:	27                   	daa    
   1b96b:	73 20                	jae    0x1b98d
   1b96d:	66 69 6c 70 20 66 75 	imul   $0x7566,0x20(%eax,%esi,2),%bp
   1b974:	6c                   	insb   (%dx),%es:(%edi)
   1b975:	6c                   	insb   (%dx),%es:(%edi)
   1b976:	20 3a                	and    %bh,(%edx)
   1b978:	20 66 6f             	and    %ah,0x6f(%esi)
   1b97b:	72 6b                	jb     0x1b9e8
   1b97d:	0a 00                	or     (%eax),%al
   1b97f:	73 65                	jae    0x1b9e6
   1b981:	6e                   	outsb  %ds:(%esi),(%dx)
   1b982:	64                   	fs
   1b983:	72 65                	jb     0x1b9ea
   1b985:	63 76 28             	arpl   %si,0x28(%esi)
   1b988:	53                   	push   %ebx
   1b989:	45                   	inc    %ebp
   1b98a:	4e                   	dec    %esi
   1b98b:	44                   	inc    %esp
   1b98c:	2c 63                	sub    $0x63,%al
   1b98e:	70 69                	jo     0x1b9f9
   1b990:	64                   	fs
   1b991:	2c 26                	sub    $0x26,%al
   1b993:	6d                   	insl   (%dx),%es:(%edi)
   1b994:	73 67                	jae    0x1b9fd
   1b996:	29 20                	sub    %esp,(%eax)
   1b998:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1b99d:	70 5f                	jo     0x1b9fe
   1b99f:	74 63                	je     0x1ba04
   1b9a1:	62 2d 3e 70 5f 65    	bound  %ebp,0x655f703e
   1b9a7:	6d                   	insl   (%dx),%es:(%edi)
   1b9a8:	70 74                	jo     0x1ba1e
   1b9aa:	79 20                	jns    0x1b9cc
   1b9ac:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1b9b1:	00 00                	add    %al,(%eax)
   1b9b3:	00 74 61 73          	add    %dh,0x73(%ecx)
   1b9b7:	6b 5f 74 61          	imul   $0x61,0x74(%edi),%ebx
   1b9bb:	62 6c 65 5b          	bound  %ebp,0x5b(%ebp)
   1b9bf:	70 5f                	jo     0x1ba20
   1b9c1:	74 63                	je     0x1ba26
   1b9c3:	62 2d 3e 70 61 72    	bound  %ebp,0x7261703e
   1b9c9:	65 6e                	outsb  %gs:(%esi),(%dx)
   1b9cb:	74 5d                	je     0x1ba2a
   1b9cd:	2e 72 65             	jb,pn  0x1ba35
   1b9d0:	63 76 66             	arpl   %si,0x66(%esi)
   1b9d3:	72 6f                	jb     0x1ba44
   1b9d5:	6d                   	insl   (%dx),%es:(%edi)
   1b9d6:	20 3d 3d 20 54 41    	and    %bh,0x4154203d
   1b9dc:	53                   	push   %ebx
   1b9dd:	4b                   	dec    %ebx
   1b9de:	5f                   	pop    %edi
   1b9df:	4d                   	dec    %ebp
   1b9e0:	4d                   	dec    %ebp
   1b9e1:	5f                   	pop    %edi
   1b9e2:	50                   	push   %eax
   1b9e3:	49                   	dec    %ecx
   1b9e4:	44                   	inc    %esp
   1b9e5:	00 00                	add    %al,(%eax)
   1b9e7:	00 73 65             	add    %dh,0x65(%ebx)
   1b9ea:	6e                   	outsb  %ds:(%esi),(%dx)
   1b9eb:	64                   	fs
   1b9ec:	72 65                	jb     0x1ba53
   1b9ee:	63 76 28             	arpl   %si,0x28(%esi)
   1b9f1:	53                   	push   %ebx
   1b9f2:	45                   	inc    %ebp
   1b9f3:	4e                   	dec    %esi
   1b9f4:	44                   	inc    %esp
   1b9f5:	2c 70                	sub    $0x70,%al
   1b9f7:	5f                   	pop    %edi
   1b9f8:	74 63                	je     0x1ba5d
   1b9fa:	62 2d 3e 70 61 72    	bound  %ebp,0x7261703e
   1ba00:	65 6e                	outsb  %gs:(%esi),(%dx)
   1ba02:	74 2c                	je     0x1ba30
   1ba04:	26                   	es
   1ba05:	6d                   	insl   (%dx),%es:(%edi)
   1ba06:	73 67                	jae    0x1ba6f
   1ba08:	29 20                	sub    %esp,(%eax)
   1ba0a:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1ba0f:	28 20                	sub    %ah,(%eax)
   1ba11:	28 55 33             	sub    %dl,0x33(%ebp)
   1ba14:	32 29                	xor    (%ecx),%ch
   1ba16:	70 61                	jo     0x1ba79
   1ba18:	20 26                	and    %ah,(%esi)
   1ba1a:	20 30                	and    %dh,(%eax)
   1ba1c:	78 66                	js     0x1ba84
   1ba1e:	66                   	data16
   1ba1f:	66                   	data16
   1ba20:	20 29                	and    %ch,(%ecx)
   1ba22:	20 3d 3d 20 30 00    	and    %bh,0x30203d
   1ba28:	28 20                	sub    %ah,(%eax)
   1ba2a:	28 55 33             	sub    %dl,0x33(%ebp)
   1ba2d:	32 29                	xor    (%ecx),%ch
   1ba2f:	76 61                	jbe    0x1ba92
   1ba31:	20 26                	and    %ah,(%esi)
   1ba33:	20 30                	and    %dh,(%eax)
   1ba35:	78 66                	js     0x1ba9d
   1ba37:	66                   	data16
   1ba38:	66                   	data16
   1ba39:	20 29                	and    %ch,(%ecx)
   1ba3b:	20 3d 3d 20 30 00    	and    %bh,0x30203d
   1ba41:	00 00                	add    %al,(%eax)
   1ba43:	00 70 61             	add    %dh,0x61(%eax)
   1ba46:	67 69 6e 67 2e 63 00 	addr16 imul $0x7000632e,103(%bp),%ebp
   1ba4d:	70 
   1ba4e:	5f                   	pop    %edi
   1ba4f:	70 68                	jo     0x1bab9
   1ba51:	20 3d 3d 20 70 68    	and    %bh,0x6870203d
   1ba57:	5f                   	pop    %edi
   1ba58:	74 61                	je     0x1babb
   1ba5a:	62 6c 65 20          	bound  %ebp,0x20(%ebp)
   1ba5e:	2b 20                	sub    (%eax),%esp
   1ba60:	4e                   	dec    %esi
   1ba61:	52                   	push   %edx
   1ba62:	5f                   	pop    %edi
   1ba63:	50                   	push   %eax
   1ba64:	41                   	inc    %ecx
   1ba65:	47                   	inc    %edi
   1ba66:	45                   	inc    %ebp
   1ba67:	00 70 61             	add    %dh,0x61(%eax)
   1ba6a:	67                   	addr16
   1ba6b:	65                   	gs
   1ba6c:	5f                   	pop    %edi
   1ba6d:	62 61 73             	bound  %esp,0x73(%ecx)
   1ba70:	65 20 3d 3d 20 50 41 	and    %bh,%gs:0x4150203d
   1ba77:	47                   	inc    %edi
   1ba78:	45                   	inc    %ebp
   1ba79:	5f                   	pop    %edi
   1ba7a:	4c                   	dec    %esp
   1ba7b:	49                   	dec    %ecx
   1ba7c:	4d                   	dec    %ebp
   1ba7d:	49                   	dec    %ecx
   1ba7e:	54                   	push   %esp
   1ba7f:	00 0a                	add    %cl,(%edx)
   1ba81:	6e                   	outsb  %ds:(%esi),(%dx)
   1ba82:	6f                   	outsl  %ds:(%esi),(%dx)
   1ba83:	20 66 72             	and    %ah,0x72(%esi)
   1ba86:	65 65 20 70 61       	and    %dh,%gs:0x61(%eax)
   1ba8b:	67 65 0a 00          	addr16 or %gs:(%bx,%si),%al
   1ba8f:	30 00                	xor    %al,(%eax)
   1ba91:	70 5f                	jo     0x1baf2
   1ba93:	62 68 2d             	bound  %ebp,0x2d(%eax)
   1ba96:	3e 73 68             	jae,pt 0x1bb01
   1ba99:	61                   	popa   
   1ba9a:	72 65                	jb     0x1bb01
   1ba9c:	20 3d 3d 20 30 00    	and    %bh,0x30203d
   1baa2:	70 66                	jo     0x1bb0a
   1baa4:	72 65                	jb     0x1bb0b
   1baa6:	65                   	gs
   1baa7:	5f                   	pop    %edi
   1baa8:	74 61                	je     0x1bb0b
   1baaa:	69 6c 20 3d 3d 20 4e 	imul   $0x554e203d,0x3d(%eax),%ebp
   1bab1:	55 
   1bab2:	4c                   	dec    %esp
   1bab3:	4c                   	dec    %esp
   1bab4:	00 00                	add    %al,(%eax)
   1bab6:	00 00                	add    %al,(%eax)
   1bab8:	28 55 33             	sub    %dl,0x33(%ebp)
   1babb:	32 29                	xor    (%ecx),%ch
   1babd:	70 61                	jo     0x1bb20
   1babf:	20 3e                	and    %bh,(%esi)
   1bac1:	3d 20 50 41 47       	cmp    $0x47415020,%eax
   1bac6:	45                   	inc    %ebp
   1bac7:	5f                   	pop    %edi
   1bac8:	42                   	inc    %edx
   1bac9:	41                   	inc    %ecx
   1baca:	53                   	push   %ebx
   1bacb:	45                   	inc    %ebp
   1bacc:	20 26                	and    %ah,(%esi)
   1bace:	26 20 28             	and    %ch,%es:(%eax)
   1bad1:	55                   	push   %ebp
   1bad2:	33 32                	xor    (%edx),%esi
   1bad4:	29 70 61             	sub    %esi,0x61(%eax)
   1bad7:	20 3c 20             	and    %bh,(%eax)
   1bada:	50                   	push   %eax
   1badb:	41                   	inc    %ecx
   1badc:	47                   	inc    %edi
   1badd:	45                   	inc    %ebp
   1bade:	5f                   	pop    %edi
   1badf:	4c                   	dec    %esp
   1bae0:	49                   	dec    %ecx
   1bae1:	4d                   	dec    %ebp
   1bae2:	49                   	dec    %ecx
   1bae3:	54                   	push   %esp
   1bae4:	00 70 5f             	add    %dh,0x5f(%eax)
   1bae7:	70 68                	jo     0x1bb51
   1bae9:	2d 3e 73 68 61       	sub    $0x6168733e,%eax
   1baee:	72 65                	jb     0x1bb55
   1baf0:	20 3e                	and    %bh,(%esi)
   1baf2:	20 30                	and    %dh,(%eax)
   1baf4:	00 00                	add    %al,(%eax)
   1baf6:	00 00                	add    %al,(%eax)
   1baf8:	23 44 45 20          	and    0x20(%ebp,%eax,2),%eax
   1bafc:	44                   	inc    %esp
   1bafd:	69 76 69 64 65 20 45 	imul   $0x45206564,0x69(%esi),%esi
   1bb04:	72 72                	jb     0x1bb78
   1bb06:	6f                   	outsl  %ds:(%esi),(%dx)
   1bb07:	72 00                	jb     0x1bb09
   1bb09:	23 44 42 20          	and    0x20(%edx,%eax,2),%eax
   1bb0d:	52                   	push   %edx
   1bb0e:	45                   	inc    %ebp
   1bb0f:	53                   	push   %ebx
   1bb10:	45                   	inc    %ebp
   1bb11:	52                   	push   %edx
   1bb12:	56                   	push   %esi
   1bb13:	45                   	inc    %ebp
   1bb14:	44                   	inc    %esp
   1bb15:	00 2d 2d 20 20 4e    	add    %ch,0x4e20202d
   1bb1b:	4d                   	dec    %ebp
   1bb1c:	49                   	dec    %ecx
   1bb1d:	20 49 6e             	and    %cl,0x6e(%ecx)
   1bb20:	74 65                	je     0x1bb87
   1bb22:	72 72                	jb     0x1bb96
   1bb24:	75 70                	jne    0x1bb96
   1bb26:	00 23                	add    %ah,(%ebx)
   1bb28:	42                   	inc    %edx
   1bb29:	50                   	push   %eax
   1bb2a:	20 42 72             	and    %al,0x72(%edx)
   1bb2d:	65                   	gs
   1bb2e:	61                   	popa   
   1bb2f:	70 6f                	jo     0x1bba0
   1bb31:	69 6e 74 00 23 4f 46 	imul   $0x464f2300,0x74(%esi),%ebp
   1bb38:	20 4f 76             	and    %cl,0x76(%edi)
   1bb3b:	65                   	gs
   1bb3c:	72 66                	jb     0x1bba4
   1bb3e:	6c                   	insb   (%dx),%es:(%edi)
   1bb3f:	6f                   	outsl  %ds:(%esi),(%dx)
   1bb40:	77 00                	ja     0x1bb42
   1bb42:	23 42 52             	and    0x52(%edx),%eax
   1bb45:	20 42 4f             	and    %al,0x4f(%edx)
   1bb48:	55                   	push   %ebp
   1bb49:	4e                   	dec    %esi
   1bb4a:	44                   	inc    %esp
   1bb4b:	20 52 61             	and    %dl,0x61(%edx)
   1bb4e:	6e                   	outsb  %ds:(%esi),(%dx)
   1bb4f:	67 65 20 45 78       	addr16 and %al,%gs:120(%di)
   1bb54:	63 65 65             	arpl   %sp,0x65(%ebp)
   1bb57:	64 65 64 00 00       	add    %al,%fs:%gs:(%eax)
   1bb5c:	23 55 44             	and    0x44(%ebp),%edx
   1bb5f:	20 49 6e             	and    %cl,0x6e(%ecx)
   1bb62:	76 61                	jbe    0x1bbc5
   1bb64:	6c                   	insb   (%dx),%es:(%edi)
   1bb65:	69 64 20 4f 70 63 6f 	imul   $0x646f6370,0x4f(%eax),%esp
   1bb6c:	64 
   1bb6d:	65 20 28             	and    %ch,%gs:(%eax)
   1bb70:	55                   	push   %ebp
   1bb71:	6e                   	outsb  %ds:(%esi),(%dx)
   1bb72:	64 65 66 69 6e 65 64 	imul   $0x2064,%fs:%gs:0x65(%esi),%bp
   1bb79:	20 
   1bb7a:	4f                   	dec    %edi
   1bb7b:	70 63                	jo     0x1bbe0
   1bb7d:	6f                   	outsl  %ds:(%esi),(%dx)
   1bb7e:	64 65 29 00          	sub    %eax,%fs:%gs:(%eax)
   1bb82:	00 00                	add    %al,(%eax)
   1bb84:	4e                   	dec    %esi
   1bb85:	4d                   	dec    %ebp
   1bb86:	20 44 65 76          	and    %al,0x76(%ebp)
   1bb8a:	69 63 65 20 4e 6f 74 	imul   $0x746f4e20,0x65(%ebx),%esp
   1bb91:	20 41 76             	and    %al,0x76(%ecx)
   1bb94:	61                   	popa   
   1bb95:	69 6c 61 62 6c 65 20 	imul   $0x2820656c,0x62(%ecx),%ebp
   1bb9c:	28 
   1bb9d:	4e                   	dec    %esi
   1bb9e:	6f                   	outsl  %ds:(%esi),(%dx)
   1bb9f:	20 4d 61             	and    %cl,0x61(%ebp)
   1bba2:	74 68                	je     0x1bc0c
   1bba4:	20 43 6f             	and    %al,0x6f(%ebx)
   1bba7:	70 72                	jo     0x1bc1b
   1bba9:	6f                   	outsl  %ds:(%esi),(%dx)
   1bbaa:	63 65 73             	arpl   %sp,0x73(%ebp)
   1bbad:	73 6f                	jae    0x1bc1e
   1bbaf:	72 29                	jb     0x1bbda
   1bbb1:	00 23                	add    %ah,(%ebx)
   1bbb3:	44                   	inc    %esp
   1bbb4:	46                   	inc    %esi
   1bbb5:	20 44 6f 75          	and    %al,0x75(%edi,%ebp,2)
   1bbb9:	62 6c 65 20          	bound  %ebp,0x20(%ebp)
   1bbbd:	46                   	inc    %esi
   1bbbe:	61                   	popa   
   1bbbf:	75 6c                	jne    0x1bc2d
   1bbc1:	74 00                	je     0x1bbc3
   1bbc3:	00 20                	add    %ah,(%eax)
   1bbc5:	20 20                	and    %ah,(%eax)
   1bbc7:	20 43 6f             	and    %al,0x6f(%ebx)
   1bbca:	70 72                	jo     0x1bc3e
   1bbcc:	6f                   	outsl  %ds:(%esi),(%dx)
   1bbcd:	63 65 73             	arpl   %sp,0x73(%ebp)
   1bbd0:	73 6f                	jae    0x1bc41
   1bbd2:	72 20                	jb     0x1bbf4
   1bbd4:	53                   	push   %ebx
   1bbd5:	65                   	gs
   1bbd6:	67 6d                	addr16 insl (%dx),%es:(%di)
   1bbd8:	65 6e                	outsb  %gs:(%esi),(%dx)
   1bbda:	74 20                	je     0x1bbfc
   1bbdc:	4f                   	dec    %edi
   1bbdd:	76 65                	jbe    0x1bc44
   1bbdf:	72 72                	jb     0x1bc53
   1bbe1:	75 6e                	jne    0x1bc51
   1bbe3:	20 28                	and    %ch,(%eax)
   1bbe5:	72 65                	jb     0x1bc4c
   1bbe7:	73 65                	jae    0x1bc4e
   1bbe9:	72 76                	jb     0x1bc61
   1bbeb:	65 64 29 00          	sub    %eax,%fs:%gs:(%eax)
   1bbef:	23 54 53 20          	and    0x20(%ebx,%edx,2),%edx
   1bbf3:	49                   	dec    %ecx
   1bbf4:	6e                   	outsb  %ds:(%esi),(%dx)
   1bbf5:	76 61                	jbe    0x1bc58
   1bbf7:	6c                   	insb   (%dx),%es:(%edi)
   1bbf8:	69 64 20 54 53 53 00 	imul   $0x23005353,0x54(%eax),%esp
   1bbff:	23 
   1bc00:	4e                   	dec    %esi
   1bc01:	50                   	push   %eax
   1bc02:	20 53 65             	and    %dl,0x65(%ebx)
   1bc05:	67 6d                	addr16 insl (%dx),%es:(%di)
   1bc07:	65 6e                	outsb  %gs:(%esi),(%dx)
   1bc09:	74 20                	je     0x1bc2b
   1bc0b:	4e                   	dec    %esi
   1bc0c:	6f                   	outsl  %ds:(%esi),(%dx)
   1bc0d:	74 20                	je     0x1bc2f
   1bc0f:	50                   	push   %eax
   1bc10:	72 65                	jb     0x1bc77
   1bc12:	73 65                	jae    0x1bc79
   1bc14:	6e                   	outsb  %ds:(%esi),(%dx)
   1bc15:	74 00                	je     0x1bc17
   1bc17:	23 53 53             	and    0x53(%ebx),%edx
   1bc1a:	20 53 74             	and    %dl,0x74(%ebx)
   1bc1d:	61                   	popa   
   1bc1e:	63 6b 2d             	arpl   %bp,0x2d(%ebx)
   1bc21:	53                   	push   %ebx
   1bc22:	65                   	gs
   1bc23:	67 6d                	addr16 insl (%dx),%es:(%di)
   1bc25:	65 6e                	outsb  %gs:(%esi),(%dx)
   1bc27:	74 20                	je     0x1bc49
   1bc29:	46                   	inc    %esi
   1bc2a:	61                   	popa   
   1bc2b:	75 6c                	jne    0x1bc99
   1bc2d:	74 00                	je     0x1bc2f
   1bc2f:	23 47 50             	and    0x50(%edi),%eax
   1bc32:	20 47 65             	and    %al,0x65(%edi)
   1bc35:	6e                   	outsb  %ds:(%esi),(%dx)
   1bc36:	65                   	gs
   1bc37:	72 61                	jb     0x1bc9a
   1bc39:	6c                   	insb   (%dx),%es:(%edi)
   1bc3a:	20 50 72             	and    %dl,0x72(%eax)
   1bc3d:	6f                   	outsl  %ds:(%esi),(%dx)
   1bc3e:	74 65                	je     0x1bca5
   1bc40:	63 74 69 6f          	arpl   %si,0x6f(%ecx,%ebp,2)
   1bc44:	6e                   	outsb  %ds:(%esi),(%dx)
   1bc45:	00 23                	add    %ah,(%ebx)
   1bc47:	50                   	push   %eax
   1bc48:	46                   	inc    %esi
   1bc49:	20 50 61             	and    %dl,0x61(%eax)
   1bc4c:	67 65 20 46 61       	addr16 and %al,%gs:97(%bp)
   1bc51:	75 6c                	jne    0x1bcbf
   1bc53:	74 00                	je     0x1bc55
   1bc55:	00 00                	add    %al,(%eax)
   1bc57:	00 2d 2d 20 20 28    	add    %ch,0x2820202d
   1bc5d:	49                   	dec    %ecx
   1bc5e:	6e                   	outsb  %ds:(%esi),(%dx)
   1bc5f:	74 65                	je     0x1bcc6
   1bc61:	6c                   	insb   (%dx),%es:(%edi)
   1bc62:	20 72 65             	and    %dh,0x65(%edx)
   1bc65:	73 65                	jae    0x1bccc
   1bc67:	72 76                	jb     0x1bcdf
   1bc69:	65 64 2e 20 44 6f 20 	and    %al,%cs:%fs:%gs:0x20(%edi,%ebp,2)
   1bc70:	6e                   	outsb  %ds:(%esi),(%dx)
   1bc71:	6f                   	outsl  %ds:(%esi),(%dx)
   1bc72:	74 20                	je     0x1bc94
   1bc74:	75 73                	jne    0x1bce9
   1bc76:	65 2e 29 00          	sub    %eax,%cs:%gs:(%eax)
   1bc7a:	00 00                	add    %al,(%eax)
   1bc7c:	23 4d 46             	and    0x46(%ebp),%ecx
   1bc7f:	20 78 38             	and    %bh,0x38(%eax)
   1bc82:	37                   	aaa    
   1bc83:	20 46 50             	and    %al,0x50(%esi)
   1bc86:	55                   	push   %ebp
   1bc87:	20 46 6c             	and    %al,0x6c(%esi)
   1bc8a:	6f                   	outsl  %ds:(%esi),(%dx)
   1bc8b:	61                   	popa   
   1bc8c:	74 69                	je     0x1bcf7
   1bc8e:	6e                   	outsb  %ds:(%esi),(%dx)
   1bc8f:	67 2d 50 6f 69 6e    	addr16 sub $0x6e696f50,%eax
   1bc95:	74 20                	je     0x1bcb7
   1bc97:	45                   	inc    %ebp
   1bc98:	72 72                	jb     0x1bd0c
   1bc9a:	6f                   	outsl  %ds:(%esi),(%dx)
   1bc9b:	72 20                	jb     0x1bcbd
   1bc9d:	28 4d 61             	sub    %cl,0x61(%ebp)
   1bca0:	74 63                	je     0x1bd05
   1bca2:	68 20 46 61 75       	push   $0x75614620
   1bca7:	6c                   	insb   (%dx),%es:(%edi)
   1bca8:	74 29                	je     0x1bcd3
   1bcaa:	00 23                	add    %ah,(%ebx)
   1bcac:	41                   	inc    %ecx
   1bcad:	43                   	inc    %ebx
   1bcae:	20 41 6c             	and    %al,0x6c(%ecx)
   1bcb1:	69 67 6e 6d 65 6e 74 	imul   $0x746e656d,0x6e(%edi),%esp
   1bcb8:	20 43 68             	and    %al,0x68(%ebx)
   1bcbb:	65 63 6b 00          	arpl   %bp,%gs:0x0(%ebx)
   1bcbf:	23 4d 43             	and    0x43(%ebp),%ecx
   1bcc2:	20 4d 61             	and    %cl,0x61(%ebp)
   1bcc5:	63 68 69             	arpl   %bp,0x69(%eax)
   1bcc8:	6e                   	outsb  %ds:(%esi),(%dx)
   1bcc9:	65 20 43 68          	and    %al,%gs:0x68(%ebx)
   1bccd:	65 63 6b 00          	arpl   %bp,%gs:0x0(%ebx)
   1bcd1:	00 00                	add    %al,(%eax)
   1bcd3:	00 23                	add    %ah,(%ebx)
   1bcd5:	58                   	pop    %eax
   1bcd6:	46                   	inc    %esi
   1bcd7:	20 53 49             	and    %dl,0x49(%ebx)
   1bcda:	4d                   	dec    %ebp
   1bcdb:	44                   	inc    %esp
   1bcdc:	20 46 6c             	and    %al,0x6c(%esi)
   1bcdf:	6f                   	outsl  %ds:(%esi),(%dx)
   1bce0:	61                   	popa   
   1bce1:	74 69                	je     0x1bd4c
   1bce3:	6e                   	outsb  %ds:(%esi),(%dx)
   1bce4:	67 2d 50 6f 69 6e    	addr16 sub $0x6e696f50,%eax
   1bcea:	74 20                	je     0x1bd0c
   1bcec:	45                   	inc    %ebp
   1bced:	78 63                	js     0x1bd52
   1bcef:	65                   	gs
   1bcf0:	70 74                	jo     0x1bd66
   1bcf2:	69 6f 6e 00 2d 2d 2d 	imul   $0x2d2d2d00,0x6e(%edi),%ebp
   1bcf9:	2d 6f 74 68 65       	sub    $0x6568746f,%eax
   1bcfe:	72 20                	jb     0x1bd20
   1bd00:	70 61                	jo     0x1bd63
   1bd02:	67 65 20 66 61       	addr16 and %ah,%gs:97(%bp)
   1bd07:	75 6c                	jne    0x1bd75
   1bd09:	74 0a                	je     0x1bd15
   1bd0b:	00 20                	add    %ah,(%eax)
   1bd0d:	00 25 73 00 65 72    	add    %ah,0x72650073
   1bd13:	72 5f                	jb     0x1bd74
   1bd15:	63 6f 64             	arpl   %bp,0x64(%edi)
   1bd18:	65 3a 20             	cmp    %gs:(%eax),%ah
   1bd1b:	25 78 00 00 00       	and    $0x78,%eax
   1bd20:	74 74                	je     0x1bd96
   1bd22:	79 32                	jns    0x1bd56
   1bd24:	00 70 72             	add    %dh,0x72(%eax)
   1bd27:	6f                   	outsl  %ds:(%esi),(%dx)
   1bd28:	63 2e                	arpl   %bp,(%esi)
   1bd2a:	63 00                	arpl   %ax,(%eax)
   1bd2c:	73 74                	jae    0x1bda2
   1bd2e:	64 69 6e 20 3d 3d 20 	imul   $0x30203d3d,%fs:0x20(%esi),%ebp
   1bd35:	30 
   1bd36:	00 73 74             	add    %dh,0x74(%ebx)
   1bd39:	64 6f                	outsl  %fs:(%esi),(%dx)
   1bd3b:	75 74                	jne    0x1bdb1
   1bd3d:	20 3d 3d 20 31 00    	and    %bh,0x31203d
   1bd43:	72 65                	jb     0x1bdaa
   1bd45:	63 76 28             	arpl   %si,0x28(%esi)
   1bd48:	41                   	inc    %ecx
   1bd49:	4e                   	dec    %esi
   1bd4a:	59                   	pop    %ecx
   1bd4b:	2c 26                	sub    $0x26,%al
   1bd4d:	6d                   	insl   (%dx),%es:(%edi)
   1bd4e:	73 67                	jae    0x1bdb7
   1bd50:	29 20                	sub    %esp,(%eax)
   1bd52:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1bd57:	00 52 65             	add    %dl,0x65(%edx)
   1bd5a:	63 65 76             	arpl   %sp,0x76(%ebp)
   1bd5d:	65 64 20 6d 65       	and    %ch,%fs:%gs:0x65(%ebp)
   1bd62:	73 73                	jae    0x1bdd7
   1bd64:	61                   	popa   
   1bd65:	67 65 20 66 72       	addr16 and %ah,%gs:114(%bp)
   1bd6a:	6f                   	outsl  %ds:(%esi),(%dx)
   1bd6b:	6d                   	insl   (%dx),%es:(%edi)
   1bd6c:	20 70 72             	and    %dh,0x72(%eax)
   1bd6f:	6f                   	outsl  %ds:(%esi),(%dx)
   1bd70:	63 65 73             	arpl   %sp,0x73(%ebp)
   1bd73:	73 20                	jae    0x1bd95
   1bd75:	25 64 0a 00 73       	and    $0x73000a64,%eax
   1bd7a:	65 6e                	outsb  %gs:(%esi),(%dx)
   1bd7c:	64 28 6d 73          	sub    %ch,%fs:0x73(%ebp)
   1bd80:	67 2e 73 65          	addr16 jae,pn 0x1bde9
   1bd84:	6e                   	outsb  %ds:(%esi),(%dx)
   1bd85:	64                   	fs
   1bd86:	65                   	gs
   1bd87:	72 2c                	jb     0x1bdb5
   1bd89:	26                   	es
   1bd8a:	6d                   	insl   (%dx),%es:(%edi)
   1bd8b:	73 67                	jae    0x1bdf4
   1bd8d:	29 20                	sub    %esp,(%eax)
   1bd8f:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1bd94:	74 74                	je     0x1be0a
   1bd96:	79 31                	jns    0x1bdc9
   1bd98:	00 00                	add    %al,(%eax)
   1bd9a:	00 00                	add    %al,(%eax)
   1bd9c:	20 20                	and    %ah,(%eax)
   1bd9e:	20 20                	and    %ah,(%eax)
   1bda0:	20 20                	and    %ah,(%eax)
   1bda2:	20 20                	and    %ah,(%eax)
   1bda4:	20 20                	and    %ah,(%eax)
   1bda6:	20 20                	and    %ah,(%eax)
   1bda8:	20 2d 70 72 6f 63    	and    %ch,0x636f7270
   1bdae:	32 2d 2d 2d 2d 74    	xor    0x742d2d2d,%ch
   1bdb4:	69 63 6b 3a 25 64 2d 	imul   $0x2d64253a,0x6b(%ebx),%esp
   1bdbb:	2d 2d 2d 0a 00       	sub    $0xa2d2d,%eax
   1bdc0:	73 65                	jae    0x1be27
   1bdc2:	6e                   	outsb  %ds:(%esi),(%dx)
   1bdc3:	64                   	fs
   1bdc4:	72 65                	jb     0x1be2b
   1bdc6:	63 76 28             	arpl   %si,0x28(%esi)
   1bdc9:	42                   	inc    %edx
   1bdca:	4f                   	dec    %edi
   1bdcb:	54                   	push   %esp
   1bdcc:	48                   	dec    %eax
   1bdcd:	2c 50                	sub    $0x50,%al
   1bdcf:	52                   	push   %edx
   1bdd0:	4f                   	dec    %edi
   1bdd1:	43                   	inc    %ebx
   1bdd2:	5f                   	pop    %edi
   1bdd3:	31 5f 50             	xor    %ebx,0x50(%edi)
   1bdd6:	49                   	dec    %ecx
   1bdd7:	44                   	inc    %esp
   1bdd8:	2c 26                	sub    $0x26,%al
   1bdda:	6d                   	insl   (%dx),%es:(%edi)
   1bddb:	73 67                	jae    0x1be44
   1bddd:	29 20                	sub    %esp,(%eax)
   1bddf:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1bde4:	20 20                	and    %ah,(%eax)
   1bde6:	20 20                	and    %ah,(%eax)
   1bde8:	20 20                	and    %ah,(%eax)
   1bdea:	20 20                	and    %ah,(%eax)
   1bdec:	20 20                	and    %ah,(%eax)
   1bdee:	20 20                	and    %ah,(%eax)
   1bdf0:	20 2d 70 72 6f 63    	and    %ch,0x636f7270
   1bdf6:	33 2d 76 33 3d 25    	xor    0x253d3376,%ebp
   1bdfc:	64                   	fs
   1bdfd:	2d 2d 2d 2d 74       	sub    $0x742d2d2d,%eax
   1be02:	69 63 6b 3a 25 64 2d 	imul   $0x2d64253a,0x6b(%ebx),%esp
   1be09:	2d 2d 2d 00 69       	sub    $0x69002d2d,%eax
   1be0e:	64                   	fs
   1be0f:	6c                   	insb   (%dx),%es:(%edi)
   1be10:	65                   	gs
   1be11:	5f                   	pop    %edi
   1be12:	63 6f 75             	arpl   %bp,0x75(%edi)
   1be15:	6e                   	outsb  %ds:(%esi),(%dx)
   1be16:	74 20                	je     0x1be38
   1be18:	70 6c                	jo     0x1be86
   1be1a:	75 73                	jne    0x1be8f
   1be1c:	20 3a                	and    %bh,(%edx)
   1be1e:	25 64 0a 00 73       	and    $0x73000a64,%eax
   1be23:	79 73                	jns    0x1be98
   1be25:	5f                   	pop    %edi
   1be26:	63 61 6c             	arpl   %sp,0x6c(%ecx)
   1be29:	6c                   	insb   (%dx),%es:(%edi)
   1be2a:	2e 63 00             	arpl   %ax,%cs:(%eax)
   1be2d:	69 66 5f 6f 66 66 00 	imul   $0x66666f,0x5f(%esi),%esp
   1be34:	30 00                	xor    %al,(%eax)
   1be36:	00 00                	add    %al,(%eax)
   1be38:	73 79                	jae    0x1beb3
   1be3a:	73 5f                	jae    0x1be9b
   1be3c:	74 61                	je     0x1be9f
   1be3e:	73 6b                	jae    0x1beab
   1be40:	2e 63 00             	arpl   %ax,%cs:(%eax)
   1be43:	73 65                	jae    0x1beaa
   1be45:	6e                   	outsb  %ds:(%esi),(%dx)
   1be46:	64                   	fs
   1be47:	72 65                	jb     0x1beae
   1be49:	63 76 28             	arpl   %si,0x28(%esi)
   1be4c:	52                   	push   %edx
   1be4d:	45                   	inc    %ebp
   1be4e:	43                   	inc    %ebx
   1be4f:	56                   	push   %esi
   1be50:	2c 41                	sub    $0x41,%al
   1be52:	4e                   	dec    %esi
   1be53:	59                   	pop    %ecx
   1be54:	2c 26                	sub    $0x26,%al
   1be56:	6d                   	insl   (%dx),%es:(%edi)
   1be57:	73 67                	jae    0x1bec0
   1be59:	29 20                	sub    %esp,(%eax)
   1be5b:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1be60:	6d                   	insl   (%dx),%es:(%edi)
   1be61:	73 67                	jae    0x1beca
   1be63:	2e 74 79             	je,pn  0x1bedf
   1be66:	70 65                	jo     0x1becd
   1be68:	20 3d 3d 20 53 59    	and    %bh,0x5953203d
   1be6e:	53                   	push   %ebx
   1be6f:	5f                   	pop    %edi
   1be70:	4d                   	dec    %ebp
   1be71:	53                   	push   %ebx
   1be72:	47                   	inc    %edi
   1be73:	5f                   	pop    %edi
   1be74:	55                   	push   %ebp
   1be75:	4e                   	dec    %esi
   1be76:	49                   	dec    %ecx
   1be77:	4f                   	dec    %edi
   1be78:	4e                   	dec    %esi
   1be79:	00 00                	add    %al,(%eax)
   1be7b:	00 73 65             	add    %dh,0x65(%ebx)
   1be7e:	6e                   	outsb  %ds:(%esi),(%dx)
   1be7f:	64                   	fs
   1be80:	72 65                	jb     0x1bee7
   1be82:	63 76 28             	arpl   %si,0x28(%esi)
   1be85:	53                   	push   %ebx
   1be86:	45                   	inc    %ebp
   1be87:	4e                   	dec    %esi
   1be88:	44                   	inc    %esp
   1be89:	2c 6d                	sub    $0x6d,%al
   1be8b:	73 67                	jae    0x1bef4
   1be8d:	2e 73 65             	jae,pn 0x1bef5
   1be90:	6e                   	outsb  %ds:(%esi),(%dx)
   1be91:	64                   	fs
   1be92:	65                   	gs
   1be93:	72 2c                	jb     0x1bec1
   1be95:	26                   	es
   1be96:	6d                   	insl   (%dx),%es:(%edi)
   1be97:	73 67                	jae    0x1bf00
   1be99:	29 20                	sub    %esp,(%eax)
   1be9b:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1bea0:	ee                   	out    %al,(%dx)
   1bea1:	80 01 00             	addb   $0x0,(%ecx)
   1bea4:	09 81 01 00 23 81    	or     %eax,0x81230001(%ecx)
   1beaa:	01 00                	add    %eax,(%eax)
   1beac:	33 81 01 00 60 81    	xor    0x81600001(%ecx),%eax
   1beb2:	01 00                	add    %eax,(%eax)
   1beb4:	88 81 01 00 74 61    	mov    %al,0x61740001(%ecx)
   1beba:	73 6b                	jae    0x1bf27
   1bebc:	5f                   	pop    %edi
   1bebd:	74 74                	je     0x1bf33
   1bebf:	79 00                	jns    0x1bec1
   1bec1:	74 61                	je     0x1bf24
   1bec3:	73 6b                	jae    0x1bf30
   1bec5:	5f                   	pop    %edi
   1bec6:	73 79                	jae    0x1bf41
   1bec8:	73 00                	jae    0x1beca
   1beca:	74 61                	je     0x1bf2d
   1becc:	73 6b                	jae    0x1bf39
   1bece:	5f                   	pop    %edi
   1becf:	68 64 00 74 61       	push   $0x61740064
   1bed4:	73 6b                	jae    0x1bf41
   1bed6:	5f                   	pop    %edi
   1bed7:	66                   	data16
   1bed8:	73 00                	jae    0x1beda
   1beda:	74 61                	je     0x1bf3d
   1bedc:	73 6b                	jae    0x1bf49
   1bede:	5f                   	pop    %edi
   1bedf:	69 64 6c 65 00 74 61 	imul   $0x73617400,0x65(%esp,%ebp,2),%esp
   1bee6:	73 
   1bee7:	6b 5f 6d 6d          	imul   $0x6d,0x6d(%edi),%ebx
   1beeb:	00 70 72             	add    %dh,0x72(%eax)
   1beee:	6f                   	outsl  %ds:(%esi),(%dx)
   1beef:	63 5f 69             	arpl   %bx,0x69(%edi)
   1bef2:	6e                   	outsb  %ds:(%esi),(%dx)
   1bef3:	69 74 00 70 72 6f 63 	imul   $0x31636f72,0x70(%eax,%eax,1),%esi
   1befa:	31 
   1befb:	00 70 72             	add    %dh,0x72(%eax)
   1befe:	6f                   	outsl  %ds:(%esi),(%dx)
   1beff:	63 32                	arpl   %si,(%edx)
   1bf01:	00 70 72             	add    %dh,0x72(%eax)
   1bf04:	6f                   	outsl  %ds:(%esi),(%dx)
   1bf05:	63 33                	arpl   %si,(%ebx)
   1bf07:	00 70 72             	add    %dh,0x72(%eax)
   1bf0a:	6f                   	outsl  %ds:(%esi),(%dx)
   1bf0b:	63 34 00             	arpl   %si,(%eax,%eax,1)
   1bf0e:	74 61                	je     0x1bf71
   1bf10:	73 6b                	jae    0x1bf7d
   1bf12:	2e 63 00             	arpl   %ax,%cs:(%eax)
   1bf15:	74 66                	je     0x1bf7d
   1bf17:	72 65                	jb     0x1bf7e
   1bf19:	65                   	gs
   1bf1a:	5f                   	pop    %edi
   1bf1b:	68 65 61 64 20       	push   $0x20646165
   1bf20:	21 3d 20 4e 55 4c    	and    %edi,0x4c554e20
   1bf26:	4c                   	dec    %esp
   1bf27:	00 74 66 72          	add    %dh,0x72(%esi)
   1bf2b:	65                   	gs
   1bf2c:	65                   	gs
   1bf2d:	5f                   	pop    %edi
   1bf2e:	74 61                	je     0x1bf91
   1bf30:	69 6c 20 21 3d 20 4e 	imul   $0x554e203d,0x21(%eax),%ebp
   1bf37:	55 
   1bf38:	4c                   	dec    %esp
   1bf39:	4c                   	dec    %esp
   1bf3a:	00 74 76 61          	add    %dh,0x61(%esi,%esi,2)
   1bf3e:	6c                   	insb   (%dx),%es:(%edi)
   1bf3f:	69 64 5f 68 65 61 64 	imul   $0x20646165,0x68(%edi,%ebx,2),%esp
   1bf46:	20 
   1bf47:	21 3d 20 4e 55 4c    	and    %edi,0x4c554e20
   1bf4d:	4c                   	dec    %esp
   1bf4e:	00 74 76 61          	add    %dh,0x61(%esi,%esi,2)
   1bf52:	6c                   	insb   (%dx),%es:(%edi)
   1bf53:	69 64 5f 74 61 69 6c 	imul   $0x206c6961,0x74(%edi,%ebx,2),%esp
   1bf5a:	20 
   1bf5b:	21 3d 20 4e 55 4c    	and    %edi,0x4c554e20
   1bf61:	4c                   	dec    %esp
   1bf62:	00 69 66             	add    %ch,0x66(%ecx)
   1bf65:	5f                   	pop    %edi
   1bf66:	6f                   	outsl  %ds:(%esi),(%dx)
   1bf67:	66                   	data16
   1bf68:	66                   	data16
   1bf69:	00 00                	add    %al,(%eax)
   1bf6b:	00 28                	add    %ch,(%eax)
   1bf6d:	74 61                	je     0x1bfd0
   1bf6f:	73 6b                	jae    0x1bfdc
   1bf71:	5f                   	pop    %edi
   1bf72:	74 61                	je     0x1bfd5
   1bf74:	62 6c 65 20          	bound  %ebp,0x20(%ebp)
   1bf78:	2b 20                	sub    (%eax),%esp
   1bf7a:	54                   	push   %esp
   1bf7b:	41                   	inc    %ecx
   1bf7c:	53                   	push   %ebx
   1bf7d:	4b                   	dec    %ebx
   1bf7e:	5f                   	pop    %edi
   1bf7f:	49                   	dec    %ecx
   1bf80:	44                   	inc    %esp
   1bf81:	4c                   	dec    %esp
   1bf82:	45                   	inc    %ebp
   1bf83:	5f                   	pop    %edi
   1bf84:	50                   	push   %eax
   1bf85:	49                   	dec    %ecx
   1bf86:	44                   	inc    %esp
   1bf87:	29 2d 3e 74 5f 73    	sub    %ebp,0x735f743e
   1bf8d:	74 61                	je     0x1bff0
   1bf8f:	74 20                	je     0x1bfb1
   1bf91:	3d 3d 20 52 45       	cmp    $0x4552203d,%eax
   1bf96:	41                   	inc    %ecx
   1bf97:	44                   	inc    %esp
   1bf98:	59                   	pop    %ecx
   1bf99:	00 70 5f             	add    %dh,0x5f(%eax)
   1bf9c:	74 63                	je     0x1c001
   1bf9e:	62 2d 3e 70 5f 65    	bound  %ebp,0x655f703e
   1bfa4:	6d                   	insl   (%dx),%es:(%edi)
   1bfa5:	70 74                	jo     0x1c01b
   1bfa7:	79 20                	jns    0x1bfc9
   1bfa9:	3d 3d 20 31 00       	cmp    $0x31203d,%eax
   1bfae:	74 76                	je     0x1c026
   1bfb0:	61                   	popa   
   1bfb1:	6c                   	insb   (%dx),%es:(%edi)
   1bfb2:	69 64 5f 74 61 69 6c 	imul   $0x206c6961,0x74(%edi,%ebx,2),%esp
   1bfb9:	20 
   1bfba:	3d 3d 20 4e 55       	cmp    $0x554e203d,%eax
   1bfbf:	4c                   	dec    %esp
   1bfc0:	4c                   	dec    %esp
   1bfc1:	00 70 5f             	add    %dh,0x5f(%eax)
   1bfc4:	74 63                	je     0x1c029
   1bfc6:	62 2d 3e 70 5f 65    	bound  %ebp,0x655f703e
   1bfcc:	6d                   	insl   (%dx),%es:(%edi)
   1bfcd:	70 74                	jo     0x1c043
   1bfcf:	79 20                	jns    0x1bff1
   1bfd1:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1bfd6:	00 00                	add    %al,(%eax)
   1bfd8:	70 5f                	jo     0x1c039
   1bfda:	74 63                	je     0x1c03f
   1bfdc:	62 2d 3e 70 69 64    	bound  %ebp,0x6469703e
   1bfe2:	20 3e                	and    %bh,(%esi)
   1bfe4:	3d 20 52 50 4c       	cmp    $0x4c505220,%eax
   1bfe9:	5f                   	pop    %edi
   1bfea:	54                   	push   %esp
   1bfeb:	41                   	inc    %ecx
   1bfec:	53                   	push   %ebx
   1bfed:	4b                   	dec    %ebx
   1bfee:	20 2b                	and    %ch,(%ebx)
   1bff0:	20 52 50             	and    %dl,0x50(%edx)
   1bff3:	4c                   	dec    %esp
   1bff4:	5f                   	pop    %edi
   1bff5:	50                   	push   %eax
   1bff6:	52                   	push   %edx
   1bff7:	4f                   	dec    %edi
   1bff8:	43                   	inc    %ebx
   1bff9:	00 74 66 72          	add    %dh,0x72(%esi)
   1bffd:	65                   	gs
   1bffe:	65                   	gs
   1bfff:	5f                   	pop    %edi
   1c000:	74 61                	je     0x1c063
   1c002:	69 6c 20 3d 3d 20 4e 	imul   $0x554e203d,0x3d(%eax),%ebp
   1c009:	55 
   1c00a:	4c                   	dec    %esp
   1c00b:	4c                   	dec    %esp
   1c00c:	00 00                	add    %al,(%eax)
   1c00e:	00 00                	add    %al,(%eax)
   1c010:	74 74                	je     0x1c086
   1c012:	79 2e                	jns    0x1c042
   1c014:	63 00                	arpl   %ax,(%eax)
   1c016:	00 00                	add    %al,(%eax)
   1c018:	73 72                	jae    0x1c08c
   1c01a:	63 20                	arpl   %sp,(%eax)
   1c01c:	3d 3d 20 49 4e       	cmp    $0x4e49203d,%eax
   1c021:	54                   	push   %esp
   1c022:	45                   	inc    %ebp
   1c023:	52                   	push   %edx
   1c024:	52                   	push   %edx
   1c025:	55                   	push   %ebp
   1c026:	50                   	push   %eax
   1c027:	54                   	push   %esp
   1c028:	20 7c 7c 20          	and    %bh,0x20(%esp,%edi,2)
   1c02c:	28 30                	sub    %dh,(%eax)
   1c02e:	20 3c 3d 20 73 72 63 	and    %bh,0x63727320(,%edi,1)
   1c035:	20 26                	and    %ah,(%esi)
   1c037:	26 20 73 72          	and    %dh,%es:0x72(%ebx)
   1c03b:	63 20                	arpl   %sp,(%eax)
   1c03d:	3c 20                	cmp    $0x20,%al
   1c03f:	4e                   	dec    %esi
   1c040:	52                   	push   %edx
   1c041:	5f                   	pop    %edi
   1c042:	54                   	push   %esp
   1c043:	41                   	inc    %ecx
   1c044:	53                   	push   %ebx
   1c045:	4b                   	dec    %ebx
   1c046:	20 2b                	and    %ch,(%ebx)
   1c048:	20 4e 52             	and    %cl,0x52(%esi)
   1c04b:	5f                   	pop    %edi
   1c04c:	50                   	push   %eax
   1c04d:	52                   	push   %edx
   1c04e:	4f                   	dec    %edi
   1c04f:	43                   	inc    %ebx
   1c050:	29 00                	sub    %eax,(%eax)
   1c052:	00 00                	add    %al,(%eax)
   1c054:	6d                   	insl   (%dx),%es:(%edi)
   1c055:	73 67                	jae    0x1c0be
   1c057:	2e 74 79             	je,pn  0x1c0d3
   1c05a:	70 65                	jo     0x1c0c1
   1c05c:	20 3d 3d 20 54 54    	and    %bh,0x5454203d
   1c062:	59                   	pop    %ecx
   1c063:	5f                   	pop    %edi
   1c064:	4d                   	dec    %ebp
   1c065:	53                   	push   %ebx
   1c066:	47                   	inc    %edi
   1c067:	5f                   	pop    %edi
   1c068:	55                   	push   %ebp
   1c069:	4e                   	dec    %esi
   1c06a:	49                   	dec    %ecx
   1c06b:	4f                   	dec    %edi
   1c06c:	4e                   	dec    %esi
   1c06d:	20 7c 7c 20          	and    %bh,0x20(%esp,%edi,2)
   1c071:	6d                   	insl   (%dx),%es:(%edi)
   1c072:	73 67                	jae    0x1c0db
   1c074:	2e 74 79             	je,pn  0x1c0f0
   1c077:	70 65                	jo     0x1c0de
   1c079:	20 3d 3d 20 48 41    	and    %bh,0x4148203d
   1c07f:	52                   	push   %edx
   1c080:	44                   	inc    %esp
   1c081:	5f                   	pop    %edi
   1c082:	49                   	dec    %ecx
   1c083:	4e                   	dec    %esi
   1c084:	54                   	push   %esp
   1c085:	00 00                	add    %al,(%eax)
   1c087:	00 28                	add    %ch,(%eax)
   1c089:	30 20                	xor    %ah,(%eax)
   1c08b:	3c 3d                	cmp    $0x3d,%al
   1c08d:	20 70 5f             	and    %dh,0x5f(%eax)
   1c090:	74 74                	je     0x1c106
   1c092:	79 5f                	jns    0x1c0f3
   1c094:	6d                   	insl   (%dx),%es:(%edi)
   1c095:	73 67                	jae    0x1c0fe
   1c097:	2d 3e 73 75 62       	sub    $0x6275733e,%eax
   1c09c:	5f                   	pop    %edi
   1c09d:	64                   	fs
   1c09e:	65                   	gs
   1c09f:	76 69                	jbe    0x1c10a
   1c0a1:	63 65 29             	arpl   %sp,0x29(%ebp)
   1c0a4:	20 26                	and    %ah,(%esi)
   1c0a6:	26 20 28             	and    %ch,%es:(%eax)
   1c0a9:	70 5f                	jo     0x1c10a
   1c0ab:	74 74                	je     0x1c121
   1c0ad:	79 5f                	jns    0x1c10e
   1c0af:	6d                   	insl   (%dx),%es:(%edi)
   1c0b0:	73 67                	jae    0x1c119
   1c0b2:	2d 3e 73 75 62       	sub    $0x6275733e,%eax
   1c0b7:	5f                   	pop    %edi
   1c0b8:	64                   	fs
   1c0b9:	65                   	gs
   1c0ba:	76 69                	jbe    0x1c125
   1c0bc:	63 65 20             	arpl   %sp,0x20(%ebp)
   1c0bf:	3c 20                	cmp    $0x20,%al
   1c0c1:	4e                   	dec    %esi
   1c0c2:	52                   	push   %edx
   1c0c3:	5f                   	pop    %edi
   1c0c4:	54                   	push   %esp
   1c0c5:	54                   	push   %esp
   1c0c6:	59                   	pop    %ecx
   1c0c7:	29 00                	sub    %eax,(%eax)
   1c0c9:	73 72                	jae    0x1c13d
   1c0cb:	63 20                	arpl   %sp,(%eax)
   1c0cd:	3d 3d 20 54 41       	cmp    $0x4154203d,%eax
   1c0d2:	53                   	push   %ebx
   1c0d3:	4b                   	dec    %ebx
   1c0d4:	5f                   	pop    %edi
   1c0d5:	46                   	inc    %esi
   1c0d6:	53                   	push   %ebx
   1c0d7:	5f                   	pop    %edi
   1c0d8:	50                   	push   %eax
   1c0d9:	49                   	dec    %ecx
   1c0da:	44                   	inc    %esp
   1c0db:	00 28                	add    %ch,(%eax)
   1c0dd:	20 28                	and    %ch,(%eax)
   1c0df:	30 20                	xor    %ah,(%eax)
   1c0e1:	3c 3d                	cmp    $0x3d,%al
   1c0e3:	20 73 72             	and    %dh,0x72(%ebx)
   1c0e6:	63 29                	arpl   %bp,(%ecx)
   1c0e8:	20 26                	and    %ah,(%esi)
   1c0ea:	26 20 28             	and    %ch,%es:(%eax)
   1c0ed:	73 72                	jae    0x1c161
   1c0ef:	63 20                	arpl   %sp,(%eax)
   1c0f1:	3c 3d                	cmp    $0x3d,%al
   1c0f3:	20 4e 52             	and    %cl,0x52(%esi)
   1c0f6:	5f                   	pop    %edi
   1c0f7:	54                   	push   %esp
   1c0f8:	41                   	inc    %ecx
   1c0f9:	53                   	push   %ebx
   1c0fa:	4b                   	dec    %ebx
   1c0fb:	20 2b                	and    %ch,(%ebx)
   1c0fd:	20 4e 52             	and    %cl,0x52(%esi)
   1c100:	5f                   	pop    %edi
   1c101:	50                   	push   %eax
   1c102:	52                   	push   %edx
   1c103:	4f                   	dec    %edi
   1c104:	43                   	inc    %ebx
   1c105:	29 20                	sub    %esp,(%eax)
   1c107:	29 20                	sub    %esp,(%eax)
   1c109:	7c 7c                	jl     0x1c187
   1c10b:	20 28                	and    %ch,(%eax)
   1c10d:	73 72                	jae    0x1c181
   1c10f:	63 20                	arpl   %sp,(%eax)
   1c111:	3d 3d 20 49 4e       	cmp    $0x4e49203d,%eax
   1c116:	54                   	push   %esp
   1c117:	45                   	inc    %ebp
   1c118:	52                   	push   %edx
   1c119:	52                   	push   %edx
   1c11a:	55                   	push   %ebp
   1c11b:	50                   	push   %eax
   1c11c:	54                   	push   %esp
   1c11d:	29 00                	sub    %eax,(%eax)
   1c11f:	68 61 73 5f 63       	push   $0x635f7361
   1c124:	6f                   	outsl  %ds:(%esi),(%dx)
   1c125:	6d                   	insl   (%dx),%es:(%edi)
   1c126:	6d                   	insl   (%dx),%es:(%edi)
   1c127:	5f                   	pop    %edi
   1c128:	74 6d                	je     0x1c197
   1c12a:	70 20                	jo     0x1c14c
   1c12c:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1c131:	54                   	push   %esp
   1c132:	68 69 73 20 69       	push   $0x69207369
   1c137:	73 20                	jae    0x1c159
   1c139:	74 74                	je     0x1c1af
   1c13b:	79 25                	jns    0x1c162
   1c13d:	64 0a 00             	or     %fs:(%eax),%al
   1c140:	25 64 23 3e 00       	and    $0x3e2364,%eax
   1c145:	68 61 73 5f 72       	push   $0x725f7361
   1c14a:	65                   	gs
   1c14b:	61                   	popa   
   1c14c:	64                   	fs
   1c14d:	5f                   	pop    %edi
   1c14e:	74 6d                	je     0x1c1bd
   1c150:	70 20                	jo     0x1c172
   1c152:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1c157:	00 67 95             	add    %ah,0xffffff95(%edi)
   1c15a:	01 00                	add    %eax,(%eax)
   1c15c:	67 95                	addr16 xchg %eax,%ebp
   1c15e:	01 00                	add    %eax,(%eax)
   1c160:	67 95                	addr16 xchg %eax,%ebp
   1c162:	01 00                	add    %eax,(%eax)
   1c164:	67 95                	addr16 xchg %eax,%ebp
   1c166:	01 00                	add    %eax,(%eax)
   1c168:	67 95                	addr16 xchg %eax,%ebp
   1c16a:	01 00                	add    %eax,(%eax)
   1c16c:	85 92 01 00 ba 92    	test   %edx,0x92ba0001(%edx)
   1c172:	01 00                	add    %eax,(%eax)
   1c174:	ef                   	out    %eax,(%dx)
   1c175:	92                   	xchg   %eax,%edx
   1c176:	01 00                	add    %eax,(%eax)
   1c178:	24 93                	and    $0x93,%al
   1c17a:	01 00                	add    %eax,(%eax)
   1c17c:	67 95                	addr16 xchg %eax,%ebp
   1c17e:	01 00                	add    %eax,(%eax)
   1c180:	59                   	pop    %ecx
   1c181:	93                   	xchg   %eax,%ebx
   1c182:	01 00                	add    %eax,(%eax)
   1c184:	8e 93 01 00 c3 93    	movw   0x93c30001(%ebx),%ss
   1c18a:	01 00                	add    %eax,(%eax)
   1c18c:	eb 93                	jmp    0x1c121
   1c18e:	01 00                	add    %eax,(%eax)
   1c190:	0b 94 01 00 2b 94 01 	or     0x1942b00(%ecx,%eax,1),%edx
   1c197:	00 67 95             	add    %ah,0xffffff95(%edi)
   1c19a:	01 00                	add    %eax,(%eax)
   1c19c:	67 95                	addr16 xchg %eax,%ebp
   1c19e:	01 00                	add    %eax,(%eax)
   1c1a0:	67 95                	addr16 xchg %eax,%ebp
   1c1a2:	01 00                	add    %eax,(%eax)
   1c1a4:	67 95                	addr16 xchg %eax,%ebp
   1c1a6:	01 00                	add    %eax,(%eax)
   1c1a8:	67 95                	addr16 xchg %eax,%ebp
   1c1aa:	01 00                	add    %eax,(%eax)
   1c1ac:	67 95                	addr16 xchg %eax,%ebp
   1c1ae:	01 00                	add    %eax,(%eax)
   1c1b0:	67 95                	addr16 xchg %eax,%ebp
   1c1b2:	01 00                	add    %eax,(%eax)
   1c1b4:	67 95                	addr16 xchg %eax,%ebp
   1c1b6:	01 00                	add    %eax,(%eax)
   1c1b8:	67 95                	addr16 xchg %eax,%ebp
   1c1ba:	01 00                	add    %eax,(%eax)
   1c1bc:	4b                   	dec    %ebx
   1c1bd:	94                   	xchg   %eax,%esp
   1c1be:	01 00                	add    %eax,(%eax)
   1c1c0:	73 94                	jae    0x1c156
   1c1c2:	01 00                	add    %eax,(%eax)
   1c1c4:	67 95                	addr16 xchg %eax,%ebp
   1c1c6:	01 00                	add    %eax,(%eax)
   1c1c8:	67 95                	addr16 xchg %eax,%ebp
   1c1ca:	01 00                	add    %eax,(%eax)
   1c1cc:	67 95                	addr16 xchg %eax,%ebp
   1c1ce:	01 00                	add    %eax,(%eax)
   1c1d0:	67 95                	addr16 xchg %eax,%ebp
   1c1d2:	01 00                	add    %eax,(%eax)
   1c1d4:	67 95                	addr16 xchg %eax,%ebp
   1c1d6:	01 00                	add    %eax,(%eax)
   1c1d8:	67 95                	addr16 xchg %eax,%ebp
   1c1da:	01 00                	add    %eax,(%eax)
   1c1dc:	67 95                	addr16 xchg %eax,%ebp
   1c1de:	01 00                	add    %eax,(%eax)
   1c1e0:	67 95                	addr16 xchg %eax,%ebp
   1c1e2:	01 00                	add    %eax,(%eax)
   1c1e4:	67 95                	addr16 xchg %eax,%ebp
   1c1e6:	01 00                	add    %eax,(%eax)
   1c1e8:	67 95                	addr16 xchg %eax,%ebp
   1c1ea:	01 00                	add    %eax,(%eax)
   1c1ec:	67 95                	addr16 xchg %eax,%ebp
   1c1ee:	01 00                	add    %eax,(%eax)
   1c1f0:	67 95                	addr16 xchg %eax,%ebp
   1c1f2:	01 00                	add    %eax,(%eax)
   1c1f4:	67 95                	addr16 xchg %eax,%ebp
   1c1f6:	01 00                	add    %eax,(%eax)
   1c1f8:	67 95                	addr16 xchg %eax,%ebp
   1c1fa:	01 00                	add    %eax,(%eax)
   1c1fc:	9b                   	fwait
   1c1fd:	94                   	xchg   %eax,%esp
   1c1fe:	01 00                	add    %eax,(%eax)
   1c200:	d5 94                	aad    $0xffffff94
   1c202:	01 00                	add    %eax,(%eax)
   1c204:	f2 94                	repnz xchg %eax,%esp
   1c206:	01 00                	add    %eax,(%eax)
   1c208:	09 95 01 00 67 95    	or     %edx,0x95670001(%ebp)
   1c20e:	01 00                	add    %eax,(%eax)
   1c210:	20 95 01 00 50 95    	and    %dl,0x95500001(%ebp)
   1c216:	01 00                	add    %eax,(%eax)
   1c218:	70 5f                	jo     0x1c279
   1c21a:	74 74                	je     0x1c290
   1c21c:	79 2d                	jns    0x1c24b
   1c21e:	3e 72 65             	jb,pt  0x1c286
   1c221:	71 5f                	jno    0x1c282
   1c223:	63 6f 75             	arpl   %bp,0x75(%edi)
   1c226:	6e                   	outsb  %ds:(%esi),(%dx)
   1c227:	74 20                	je     0x1c249
   1c229:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1c22e:	70 5f                	jo     0x1c28f
   1c230:	74 74                	je     0x1c2a6
   1c232:	79 2d                	jns    0x1c261
   1c234:	3e 72 65             	jb,pt  0x1c29c
   1c237:	71 5f                	jno    0x1c298
   1c239:	63 6f 75             	arpl   %bp,0x75(%edi)
   1c23c:	6e                   	outsb  %ds:(%esi),(%dx)
   1c23d:	74 20                	je     0x1c25f
   1c23f:	3e 20 30             	and    %dh,%ds:(%eax)
   1c242:	00 00                	add    %al,(%eax)
   1c244:	61                   	popa   
   1c245:	73 73                	jae    0x1c2ba
   1c247:	65                   	gs
   1c248:	72 74                	jb     0x1c2be
   1c24a:	20 66 61             	and    %ah,0x61(%esi)
   1c24d:	69 6c 3a 20 22 25 73 	imul   $0x22732522,0x20(%edx,%edi,1),%ebp
   1c254:	22 
   1c255:	20 66 69             	and    %ah,0x69(%esi)
   1c258:	6c                   	insb   (%dx),%es:(%edi)
   1c259:	65 3a 25 73 20 6c 69 	cmp    %gs:0x696c2073,%ah
   1c260:	6e                   	outsb  %ds:(%esi),(%dx)
   1c261:	65 3a 25 64 0a 00 00 	cmp    %gs:0xa64,%ah
   1c268:	75 73                	jne    0x1c2dd
   1c26a:	65                   	gs
   1c26b:	72 2f                	jb     0x1c29c
   1c26d:	66                   	data16
   1c26e:	73 5f                	jae    0x1c2cf
   1c270:	75 73                	jne    0x1c2e5
   1c272:	65                   	gs
   1c273:	72 2e                	jb     0x1c2a3
   1c275:	63 00                	arpl   %ax,(%eax)
   1c277:	00 73 65             	add    %dh,0x65(%ebx)
   1c27a:	6e                   	outsb  %ds:(%esi),(%dx)
   1c27b:	64                   	fs
   1c27c:	72 65                	jb     0x1c2e3
   1c27e:	63 76 28             	arpl   %si,0x28(%esi)
   1c281:	42                   	inc    %edx
   1c282:	4f                   	dec    %edi
   1c283:	54                   	push   %esp
   1c284:	48                   	dec    %eax
   1c285:	2c 54                	sub    $0x54,%al
   1c287:	41                   	inc    %ecx
   1c288:	53                   	push   %ebx
   1c289:	4b                   	dec    %ebx
   1c28a:	5f                   	pop    %edi
   1c28b:	46                   	inc    %esi
   1c28c:	53                   	push   %ebx
   1c28d:	5f                   	pop    %edi
   1c28e:	50                   	push   %eax
   1c28f:	49                   	dec    %ecx
   1c290:	44                   	inc    %esp
   1c291:	2c 26                	sub    $0x26,%al
   1c293:	6d                   	insl   (%dx),%es:(%edi)
   1c294:	73 67                	jae    0x1c2fd
   1c296:	29 20                	sub    %esp,(%eax)
   1c298:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1c29d:	00 00                	add    %al,(%eax)
   1c29f:	00 75 73             	add    %dh,0x73(%ebp)
   1c2a2:	65                   	gs
   1c2a3:	72 2f                	jb     0x1c2d4
   1c2a5:	6d                   	insl   (%dx),%es:(%edi)
   1c2a6:	6d                   	insl   (%dx),%es:(%edi)
   1c2a7:	5f                   	pop    %edi
   1c2a8:	75 73                	jne    0x1c31d
   1c2aa:	65                   	gs
   1c2ab:	72 2e                	jb     0x1c2db
   1c2ad:	63 00                	arpl   %ax,(%eax)
   1c2af:	00 73 65             	add    %dh,0x65(%ebx)
   1c2b2:	6e                   	outsb  %ds:(%esi),(%dx)
   1c2b3:	64                   	fs
   1c2b4:	72 65                	jb     0x1c31b
   1c2b6:	63 76 28             	arpl   %si,0x28(%esi)
   1c2b9:	42                   	inc    %edx
   1c2ba:	4f                   	dec    %edi
   1c2bb:	54                   	push   %esp
   1c2bc:	48                   	dec    %eax
   1c2bd:	2c 54                	sub    $0x54,%al
   1c2bf:	41                   	inc    %ecx
   1c2c0:	53                   	push   %ebx
   1c2c1:	4b                   	dec    %ebx
   1c2c2:	5f                   	pop    %edi
   1c2c3:	4d                   	dec    %ebp
   1c2c4:	4d                   	dec    %ebp
   1c2c5:	5f                   	pop    %edi
   1c2c6:	50                   	push   %eax
   1c2c7:	49                   	dec    %ecx
   1c2c8:	44                   	inc    %esp
   1c2c9:	2c 26                	sub    $0x26,%al
   1c2cb:	6d                   	insl   (%dx),%es:(%edi)
   1c2cc:	73 67                	jae    0x1c335
   1c2ce:	29 20                	sub    %esp,(%eax)
   1c2d0:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1c2d5:	75 73                	jne    0x1c34a
   1c2d7:	65                   	gs
   1c2d8:	72 2f                	jb     0x1c309
   1c2da:	74 61                	je     0x1c33d
   1c2dc:	72 2e                	jb     0x1c30c
   1c2de:	63 00                	arpl   %ax,(%eax)
   1c2e0:	66                   	data16
   1c2e1:	64 20 21             	and    %ah,%fs:(%ecx)
   1c2e4:	3d 20 2d 31 00       	cmp    $0x312d20,%eax
   1c2e9:	6e                   	outsb  %ds:(%esi),(%dx)
   1c2ea:	65                   	gs
   1c2eb:	77 5f                	ja     0x1c34c
   1c2ed:	66                   	data16
   1c2ee:	64 20 21             	and    %ah,%fs:(%ecx)
   1c2f1:	3d 20 2d 31 00       	cmp    $0x312d20,%eax
   1c2f6:	00 00                	add    %al,(%eax)
   1c2f8:	75 73                	jne    0x1c36d
   1c2fa:	65                   	gs
   1c2fb:	72 2f                	jb     0x1c32c
   1c2fd:	75 73                	jne    0x1c372
   1c2ff:	65                   	gs
   1c300:	72 5f                	jb     0x1c361
   1c302:	66                   	data16
   1c303:	75 6e                	jne    0x1c373
   1c305:	2e 63 00             	arpl   %ax,%cs:(%eax)
   1c308:	73 65                	jae    0x1c36f
   1c30a:	6e                   	outsb  %ds:(%esi),(%dx)
   1c30b:	64                   	fs
   1c30c:	72 65                	jb     0x1c373
   1c30e:	63 76 28             	arpl   %si,0x28(%esi)
   1c311:	42                   	inc    %edx
   1c312:	4f                   	dec    %edi
   1c313:	54                   	push   %esp
   1c314:	48                   	dec    %eax
   1c315:	2c 54                	sub    $0x54,%al
   1c317:	41                   	inc    %ecx
   1c318:	53                   	push   %ebx
   1c319:	4b                   	dec    %ebx
   1c31a:	5f                   	pop    %edi
   1c31b:	53                   	push   %ebx
   1c31c:	59                   	pop    %ecx
   1c31d:	53                   	push   %ebx
   1c31e:	5f                   	pop    %edi
   1c31f:	50                   	push   %eax
   1c320:	49                   	dec    %ecx
   1c321:	44                   	inc    %esp
   1c322:	2c 26                	sub    $0x26,%al
   1c324:	6d                   	insl   (%dx),%es:(%edi)
   1c325:	73 67                	jae    0x1c38e
   1c327:	29 20                	sub    %esp,(%eax)
   1c329:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
   1c32e:	0a 00                	or     (%eax),%al
   1c330:	67 73 20             	addr16 jae 0x1c353
   1c333:	20 20                	and    %ah,(%eax)
   1c335:	20 20                	and    %ah,(%eax)
   1c337:	20 20                	and    %ah,(%eax)
   1c339:	20 3a                	and    %bh,(%edx)
   1c33b:	20 25 78 20 20 20    	and    %ah,0x20202078
   1c341:	20 00                	and    %al,(%eax)
   1c343:	66                   	data16
   1c344:	73 20                	jae    0x1c366
   1c346:	20 20                	and    %ah,(%eax)
   1c348:	20 20                	and    %ah,(%eax)
   1c34a:	20 20                	and    %ah,(%eax)
   1c34c:	20 3a                	and    %bh,(%edx)
   1c34e:	20 25 78 20 20 20    	and    %ah,0x20202078
   1c354:	20 00                	and    %al,(%eax)
   1c356:	65                   	gs
   1c357:	73 20                	jae    0x1c379
   1c359:	20 20                	and    %ah,(%eax)
   1c35b:	20 20                	and    %ah,(%eax)
   1c35d:	20 20                	and    %ah,(%eax)
   1c35f:	20 3a                	and    %bh,(%edx)
   1c361:	20 25 78 0a 00 64    	and    %ah,0x64000a78
   1c367:	73 20                	jae    0x1c389
   1c369:	20 20                	and    %ah,(%eax)
   1c36b:	20 20                	and    %ah,(%eax)
   1c36d:	20 20                	and    %ah,(%eax)
   1c36f:	20 3a                	and    %bh,(%edx)
   1c371:	20 25 78 20 20 20    	and    %ah,0x20202078
   1c377:	20 00                	and    %al,(%eax)
   1c379:	65 64 69 20 20 20 20 	imul   $0x20202020,%fs:%gs:(%eax),%esp
   1c380:	20 
   1c381:	20 20                	and    %ah,(%eax)
   1c383:	3a 20                	cmp    (%eax),%ah
   1c385:	25 78 20 20 20       	and    $0x20202078,%eax
   1c38a:	20 00                	and    %al,(%eax)
   1c38c:	65                   	gs
   1c38d:	73 69                	jae    0x1c3f8
   1c38f:	20 20                	and    %ah,(%eax)
   1c391:	20 20                	and    %ah,(%eax)
   1c393:	20 20                	and    %ah,(%eax)
   1c395:	20 3a                	and    %bh,(%edx)
   1c397:	20 25 78 0a 00 65    	and    %ah,0x65000a78
   1c39d:	62 70 20             	bound  %esi,0x20(%eax)
   1c3a0:	20 20                	and    %ah,(%eax)
   1c3a2:	20 20                	and    %ah,(%eax)
   1c3a4:	20 20                	and    %ah,(%eax)
   1c3a6:	3a 20                	cmp    (%eax),%ah
   1c3a8:	25 78 20 20 20       	and    $0x20202078,%eax
   1c3ad:	20 00                	and    %al,(%eax)
   1c3af:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
   1c3b3:	65                   	gs
   1c3b4:	6c                   	insb   (%dx),%es:(%edi)
   1c3b5:	5f                   	pop    %edi
   1c3b6:	65                   	gs
   1c3b7:	73 70                	jae    0x1c429
   1c3b9:	3a 20                	cmp    (%eax),%ah
   1c3bb:	25 78 20 20 20       	and    $0x20202078,%eax
   1c3c0:	20 00                	and    %al,(%eax)
   1c3c2:	65 62 78 20          	bound  %edi,%gs:0x20(%eax)
   1c3c6:	20 20                	and    %ah,(%eax)
   1c3c8:	20 20                	and    %ah,(%eax)
   1c3ca:	20 20                	and    %ah,(%eax)
   1c3cc:	3a 20                	cmp    (%eax),%ah
   1c3ce:	25 78 0a 00 65       	and    $0x65000a78,%eax
   1c3d3:	64                   	fs
   1c3d4:	78 20                	js     0x1c3f6
   1c3d6:	20 20                	and    %ah,(%eax)
   1c3d8:	20 20                	and    %ah,(%eax)
   1c3da:	20 20                	and    %ah,(%eax)
   1c3dc:	3a 20                	cmp    (%eax),%ah
   1c3de:	25 78 20 20 20       	and    $0x20202078,%eax
   1c3e3:	20 00                	and    %al,(%eax)
   1c3e5:	65 63 78 20          	arpl   %di,%gs:0x20(%eax)
   1c3e9:	20 20                	and    %ah,(%eax)
   1c3eb:	20 20                	and    %ah,(%eax)
   1c3ed:	20 20                	and    %ah,(%eax)
   1c3ef:	3a 20                	cmp    (%eax),%ah
   1c3f1:	25 78 20 20 20       	and    $0x20202078,%eax
   1c3f6:	20 00                	and    %al,(%eax)
   1c3f8:	65                   	gs
   1c3f9:	61                   	popa   
   1c3fa:	78 20                	js     0x1c41c
   1c3fc:	20 20                	and    %ah,(%eax)
   1c3fe:	20 20                	and    %ah,(%eax)
   1c400:	20 20                	and    %ah,(%eax)
   1c402:	3a 20                	cmp    (%eax),%ah
   1c404:	25 78 0a 00 65       	and    $0x65000a78,%eax
   1c409:	69 70 20 20 20 20 20 	imul   $0x20202020,0x20(%eax),%esi
   1c410:	20 20                	and    %ah,(%eax)
   1c412:	3a 20                	cmp    (%eax),%ah
   1c414:	25 78 20 20 20       	and    $0x20202078,%eax
   1c419:	20 00                	and    %al,(%eax)
   1c41b:	63 73 20             	arpl   %si,0x20(%ebx)
   1c41e:	20 20                	and    %ah,(%eax)
   1c420:	20 20                	and    %ah,(%eax)
   1c422:	20 20                	and    %ah,(%eax)
   1c424:	20 3a                	and    %bh,(%edx)
   1c426:	20 25 78 20 20 20    	and    %ah,0x20202078
   1c42c:	20 00                	and    %al,(%eax)
   1c42e:	65                   	gs
   1c42f:	66                   	data16
   1c430:	6c                   	insb   (%dx),%es:(%edi)
   1c431:	61                   	popa   
   1c432:	67 73 20             	addr16 jae 0x1c455
   1c435:	20 20                	and    %ah,(%eax)
   1c437:	20 3a                	and    %bh,(%edx)
   1c439:	20 25 78 0a 00 65    	and    %ah,0x65000a78
   1c43f:	73 70                	jae    0x1c4b1
   1c441:	20 20                	and    %ah,(%eax)
   1c443:	20 20                	and    %ah,(%eax)
   1c445:	20 20                	and    %ah,(%eax)
   1c447:	20 3a                	and    %bh,(%edx)
   1c449:	20 25 78 20 20 20    	and    %ah,0x20202078
   1c44f:	20 00                	and    %al,(%eax)
   1c451:	73 73                	jae    0x1c4c6
   1c453:	20 20                	and    %ah,(%eax)
   1c455:	20 20                	and    %ah,(%eax)
   1c457:	20 20                	and    %ah,(%eax)
   1c459:	20 20                	and    %ah,(%eax)
   1c45b:	3a 20                	cmp    (%eax),%ah
   1c45d:	25 78 0a 00 70       	and    $0x70000a78,%eax
   1c462:	69 64 20 20 20 20 20 	imul   $0x20202020,0x20(%eax),%esp
   1c469:	20 
   1c46a:	20 20                	and    %ah,(%eax)
   1c46c:	20 20                	and    %ah,(%eax)
   1c46e:	20 20                	and    %ah,(%eax)
   1c470:	20 3a                	and    %bh,(%edx)
   1c472:	20 25 78 0a 00 70    	and    %ah,0x70000a78
   1c478:	5f                   	pop    %edi
   1c479:	65                   	gs
   1c47a:	6d                   	insl   (%dx),%es:(%edi)
   1c47b:	70 74                	jo     0x1c4f1
   1c47d:	79 20                	jns    0x1c49f
   1c47f:	20 20                	and    %ah,(%eax)
   1c481:	20 20                	and    %ah,(%eax)
   1c483:	20 20                	and    %ah,(%eax)
   1c485:	20 20                	and    %ah,(%eax)
   1c487:	3a 20                	cmp    (%eax),%ah
   1c489:	25 78 20 20 20       	and    $0x20202078,%eax
   1c48e:	20 00                	and    %al,(%eax)
   1c490:	74 5f                	je     0x1c4f1
   1c492:	73 74                	jae    0x1c508
   1c494:	61                   	popa   
   1c495:	74 20                	je     0x1c4b7
   1c497:	20 20                	and    %ah,(%eax)
   1c499:	20 20                	and    %ah,(%eax)
   1c49b:	20 20                	and    %ah,(%eax)
   1c49d:	20 20                	and    %ah,(%eax)
   1c49f:	20 3a                	and    %bh,(%edx)
   1c4a1:	20 25 78 0a 00 73    	and    %ah,0x73000a78
   1c4a7:	65 6e                	outsb  %gs:(%esi),(%dx)
   1c4a9:	64                   	fs
   1c4aa:	74 6f                	je     0x1c51b
   1c4ac:	20 20                	and    %ah,(%eax)
   1c4ae:	20 20                	and    %ah,(%eax)
   1c4b0:	20 20                	and    %ah,(%eax)
   1c4b2:	20 20                	and    %ah,(%eax)
   1c4b4:	20 20                	and    %ah,(%eax)
   1c4b6:	3a 20                	cmp    (%eax),%ah
   1c4b8:	25 78 20 20 20       	and    $0x20202078,%eax
   1c4bd:	20 00                	and    %al,(%eax)
   1c4bf:	72 65                	jb     0x1c526
   1c4c1:	63 76 66             	arpl   %si,0x66(%esi)
   1c4c4:	72 6f                	jb     0x1c535
   1c4c6:	6d                   	insl   (%dx),%es:(%edi)
   1c4c7:	20 20                	and    %ah,(%eax)
   1c4c9:	20 20                	and    %ah,(%eax)
   1c4cb:	20 20                	and    %ah,(%eax)
   1c4cd:	20 20                	and    %ah,(%eax)
   1c4cf:	3a 20                	cmp    (%eax),%ah
   1c4d1:	25 78 0a 00 70       	and    $0x70000a78,%eax
   1c4d6:	64 62 20             	bound  %esp,%fs:(%eax)
   1c4d9:	20 3a                	and    %bh,(%edx)
   1c4db:	20 25 78 20 20 00    	and    %ah,0x202078
   1c4e1:	70 61                	jo     0x1c544
   1c4e3:	72 65                	jb     0x1c54a
   1c4e5:	6e                   	outsb  %ds:(%esi),(%dx)
   1c4e6:	74 20                	je     0x1c508
   1c4e8:	3a 20                	cmp    (%eax),%ah
   1c4ea:	25 64 20 20 00       	and    $0x202064,%eax
   1c4ef:	66 69 6c 70 5b 25 64 	imul   $0x6425,0x5b(%eax,%esi,2),%bp
   1c4f6:	5d                   	pop    %ebp
   1c4f7:	20 20                	and    %ah,(%eax)
   1c4f9:	20 20                	and    %ah,(%eax)
   1c4fb:	20 20                	and    %ah,(%eax)
   1c4fd:	20 20                	and    %ah,(%eax)
   1c4ff:	3a 20                	cmp    (%eax),%ah
   1c501:	25 78 0a 00 74       	and    $0x74000a78,%eax
   1c506:	5f                   	pop    %edi
   1c507:	6e                   	outsb  %ds:(%esi),(%dx)
   1c508:	61                   	popa   
   1c509:	6d                   	insl   (%dx),%es:(%edi)
   1c50a:	65 20 20             	and    %ah,%gs:(%eax)
   1c50d:	20 20                	and    %ah,(%eax)
   1c50f:	20 20                	and    %ah,(%eax)
   1c511:	20 20                	and    %ah,(%eax)
   1c513:	20 20                	and    %ah,(%eax)
   1c515:	3a 20                	cmp    (%eax),%ah
   1c517:	25 73 20 20 20       	and    $0x20202073,%eax
   1c51c:	20 00                	and    %al,(%eax)
   1c51e:	00 00                	add    %al,(%eax)
   1c520:	f0 aa                	lock stos %al,%es:(%edi)
   1c522:	01 00                	add    %eax,(%eax)
   1c524:	87 ab 01 00 a5 ac    	xchg   %ebp,0xaca50001(%ebx)
   1c52a:	01 00                	add    %eax,(%eax)
   1c52c:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c52d:	ac                   	lods   %ds:(%esi),%al
   1c52e:	01 00                	add    %eax,(%eax)
   1c530:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c531:	ac                   	lods   %ds:(%esi),%al
   1c532:	01 00                	add    %eax,(%eax)
   1c534:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c535:	ac                   	lods   %ds:(%esi),%al
   1c536:	01 00                	add    %eax,(%eax)
   1c538:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c539:	ac                   	lods   %ds:(%esi),%al
   1c53a:	01 00                	add    %eax,(%eax)
   1c53c:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c53d:	ac                   	lods   %ds:(%esi),%al
   1c53e:	01 00                	add    %eax,(%eax)
   1c540:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c541:	ac                   	lods   %ds:(%esi),%al
   1c542:	01 00                	add    %eax,(%eax)
   1c544:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c545:	ac                   	lods   %ds:(%esi),%al
   1c546:	01 00                	add    %eax,(%eax)
   1c548:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c549:	ac                   	lods   %ds:(%esi),%al
   1c54a:	01 00                	add    %eax,(%eax)
   1c54c:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c54d:	ac                   	lods   %ds:(%esi),%al
   1c54e:	01 00                	add    %eax,(%eax)
   1c550:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c551:	ac                   	lods   %ds:(%esi),%al
   1c552:	01 00                	add    %eax,(%eax)
   1c554:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c555:	ac                   	lods   %ds:(%esi),%al
   1c556:	01 00                	add    %eax,(%eax)
   1c558:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c559:	ac                   	lods   %ds:(%esi),%al
   1c55a:	01 00                	add    %eax,(%eax)
   1c55c:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c55d:	ac                   	lods   %ds:(%esi),%al
   1c55e:	01 00                	add    %eax,(%eax)
   1c560:	b5 aa                	mov    $0xaa,%ch
   1c562:	01 00                	add    %eax,(%eax)
   1c564:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c565:	ac                   	lods   %ds:(%esi),%al
   1c566:	01 00                	add    %eax,(%eax)
   1c568:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c569:	ac                   	lods   %ds:(%esi),%al
   1c56a:	01 00                	add    %eax,(%eax)
   1c56c:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c56d:	ac                   	lods   %ds:(%esi),%al
   1c56e:	01 00                	add    %eax,(%eax)
   1c570:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c571:	ac                   	lods   %ds:(%esi),%al
   1c572:	01 00                	add    %eax,(%eax)
   1c574:	15 ab 01 00 a5       	adc    $0xa50001ab,%eax
   1c579:	ac                   	lods   %ds:(%esi),%al
   1c57a:	01 00                	add    %eax,(%eax)
   1c57c:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c57d:	ac                   	lods   %ds:(%esi),%al
   1c57e:	01 00                	add    %eax,(%eax)
   1c580:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c581:	ac                   	lods   %ds:(%esi),%al
   1c582:	01 00                	add    %eax,(%eax)
   1c584:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c585:	ac                   	lods   %ds:(%esi),%al
   1c586:	01 00                	add    %eax,(%eax)
   1c588:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c589:	ac                   	lods   %ds:(%esi),%al
   1c58a:	01 00                	add    %eax,(%eax)
   1c58c:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c58d:	ac                   	lods   %ds:(%esi),%al
   1c58e:	01 00                	add    %eax,(%eax)
   1c590:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c591:	ac                   	lods   %ds:(%esi),%al
   1c592:	01 00                	add    %eax,(%eax)
   1c594:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c595:	ac                   	lods   %ds:(%esi),%al
   1c596:	01 00                	add    %eax,(%eax)
   1c598:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c599:	ac                   	lods   %ds:(%esi),%al
   1c59a:	01 00                	add    %eax,(%eax)
   1c59c:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c59d:	ac                   	lods   %ds:(%esi),%al
   1c59e:	01 00                	add    %eax,(%eax)
   1c5a0:	f0 aa                	lock stos %al,%es:(%edi)
   1c5a2:	01 00                	add    %eax,(%eax)
   1c5a4:	87 ab 01 00 a5 ac    	xchg   %ebp,0xaca50001(%ebx)
   1c5aa:	01 00                	add    %eax,(%eax)
   1c5ac:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5ad:	ac                   	lods   %ds:(%esi),%al
   1c5ae:	01 00                	add    %eax,(%eax)
   1c5b0:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5b1:	ac                   	lods   %ds:(%esi),%al
   1c5b2:	01 00                	add    %eax,(%eax)
   1c5b4:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5b5:	ac                   	lods   %ds:(%esi),%al
   1c5b6:	01 00                	add    %eax,(%eax)
   1c5b8:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5b9:	ac                   	lods   %ds:(%esi),%al
   1c5ba:	01 00                	add    %eax,(%eax)
   1c5bc:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5bd:	ac                   	lods   %ds:(%esi),%al
   1c5be:	01 00                	add    %eax,(%eax)
   1c5c0:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5c1:	ac                   	lods   %ds:(%esi),%al
   1c5c2:	01 00                	add    %eax,(%eax)
   1c5c4:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5c5:	ac                   	lods   %ds:(%esi),%al
   1c5c6:	01 00                	add    %eax,(%eax)
   1c5c8:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5c9:	ac                   	lods   %ds:(%esi),%al
   1c5ca:	01 00                	add    %eax,(%eax)
   1c5cc:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5cd:	ac                   	lods   %ds:(%esi),%al
   1c5ce:	01 00                	add    %eax,(%eax)
   1c5d0:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5d1:	ac                   	lods   %ds:(%esi),%al
   1c5d2:	01 00                	add    %eax,(%eax)
   1c5d4:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5d5:	ac                   	lods   %ds:(%esi),%al
   1c5d6:	01 00                	add    %eax,(%eax)
   1c5d8:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5d9:	ac                   	lods   %ds:(%esi),%al
   1c5da:	01 00                	add    %eax,(%eax)
   1c5dc:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5dd:	ac                   	lods   %ds:(%esi),%al
   1c5de:	01 00                	add    %eax,(%eax)
   1c5e0:	b5 aa                	mov    $0xaa,%ch
   1c5e2:	01 00                	add    %eax,(%eax)
   1c5e4:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5e5:	ac                   	lods   %ds:(%esi),%al
   1c5e6:	01 00                	add    %eax,(%eax)
   1c5e8:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5e9:	ac                   	lods   %ds:(%esi),%al
   1c5ea:	01 00                	add    %eax,(%eax)
   1c5ec:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5ed:	ac                   	lods   %ds:(%esi),%al
   1c5ee:	01 00                	add    %eax,(%eax)
   1c5f0:	a5                   	movsl  %ds:(%esi),%es:(%edi)
   1c5f1:	ac                   	lods   %ds:(%esi),%al
   1c5f2:	01 00                	add    %eax,(%eax)
   1c5f4:	15 ab 01 00 00       	adc    $0x1ab,%eax
   1c5f9:	00 00                	add    %al,(%eax)
   1c5fb:	00 00                	add    %al,(%eax)
   1c5fd:	00 00                	add    %al,(%eax)
   1c5ff:	00 ff                	add    %bh,%bh
   1c601:	ff 00                	incl   (%eax)
   1c603:	00 00                	add    %al,(%eax)
   1c605:	93                   	xchg   %eax,%ebx
   1c606:	cf                   	iret   
   1c607:	00 ff                	add    %bh,%bh
   1c609:	ff 00                	incl   (%eax)
   1c60b:	00 00                	add    %al,(%eax)
   1c60d:	9b                   	fwait
   1c60e:	cf                   	iret   
   1c60f:	00 ff                	add    %bh,%bh
   1c611:	ff 00                	incl   (%eax)
   1c613:	00 00                	add    %al,(%eax)
   1c615:	f3 cf                	repz iret 
   1c617:	00 ff                	add    %bh,%bh
   1c619:	ff 00                	incl   (%eax)
   1c61b:	00 00                	add    %al,(%eax)
   1c61d:	fb                   	sti    
   1c61e:	cf                   	iret   
   1c61f:	00 00                	add    %al,(%eax)
   1c621:	00 00                	add    %al,(%eax)
   1c623:	00 00                	add    %al,(%eax)
   1c625:	89 00                	mov    %eax,(%eax)
	...
   1c633:	00 02                	add    %al,(%edx)
	...
   1c63d:	00 00                	add    %al,(%eax)
   1c63f:	00 c0                	add    %al,%al
   1c641:	48                   	dec    %eax
   1c642:	01 00                	add    %eax,(%eax)
   1c644:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
   1c645:	49                   	dec    %ecx
   1c646:	01 00                	add    %eax,(%eax)
   1c648:	b3 49                	mov    $0x49,%bl
   1c64a:	01 00                	add    %eax,(%eax)
   1c64c:	c7                   	(bad)  
   1c64d:	49                   	dec    %ecx
   1c64e:	01 00                	add    %eax,(%eax)
   1c650:	db 49 01             	fisttpl 0x1(%ecx)
   1c653:	00 ef                	add    %ch,%bh
   1c655:	49                   	dec    %ecx
   1c656:	01 00                	add    %eax,(%eax)
   1c658:	03 4a 01             	add    0x1(%edx),%ecx
   1c65b:	00 17                	add    %dl,(%edi)
   1c65d:	4a                   	dec    %edx
   1c65e:	01 00                	add    %eax,(%eax)
   1c660:	2b 4a 01             	sub    0x1(%edx),%ecx
   1c663:	00 3f                	add    %bh,(%edi)
   1c665:	4a                   	dec    %edx
   1c666:	01 00                	add    %eax,(%eax)
   1c668:	53                   	push   %ebx
   1c669:	4a                   	dec    %edx
   1c66a:	01 00                	add    %eax,(%eax)
   1c66c:	67 4a                	addr16 dec %edx
   1c66e:	01 00                	add    %eax,(%eax)
   1c670:	7b 4a                	jnp    0x1c6bc
   1c672:	01 00                	add    %eax,(%eax)
   1c674:	8f 4a 01             	popl   0x1(%edx)
   1c677:	00 a3 4a 01 00 b0    	add    %ah,0xb000014a(%ebx)
   1c67d:	4a                   	dec    %edx
   1c67e:	01 00                	add    %eax,(%eax)
	...
   1c68c:	00 00                	add    %al,(%eax)
   1c68e:	00 80 00 00 00 80    	add    %al,0x80000000(%eax)
   1c694:	00 00                	add    %al,(%eax)
   1c696:	00 00                	add    %al,(%eax)
   1c698:	31 00                	xor    %eax,(%eax)
   1c69a:	00 00                	add    %al,(%eax)
   1c69c:	21 00                	and    %eax,(%eax)
   1c69e:	00 00                	add    %al,(%eax)
   1c6a0:	00 00                	add    %al,(%eax)
   1c6a2:	00 00                	add    %al,(%eax)
   1c6a4:	32 00                	xor    (%eax),%al
   1c6a6:	00 00                	add    %al,(%eax)
   1c6a8:	40                   	inc    %eax
   1c6a9:	00 00                	add    %al,(%eax)
   1c6ab:	00 00                	add    %al,(%eax)
   1c6ad:	00 00                	add    %al,(%eax)
   1c6af:	00 33                	add    %dh,(%ebx)
   1c6b1:	00 00                	add    %al,(%eax)
   1c6b3:	00 23                	add    %ah,(%ebx)
   1c6b5:	00 00                	add    %al,(%eax)
   1c6b7:	00 00                	add    %al,(%eax)
   1c6b9:	00 00                	add    %al,(%eax)
   1c6bb:	00 34 00             	add    %dh,(%eax,%eax,1)
   1c6be:	00 00                	add    %al,(%eax)
   1c6c0:	24 00                	and    $0x0,%al
   1c6c2:	00 00                	add    %al,(%eax)
   1c6c4:	00 00                	add    %al,(%eax)
   1c6c6:	00 00                	add    %al,(%eax)
   1c6c8:	35 00 00 00 25       	xor    $0x25000000,%eax
   1c6cd:	00 00                	add    %al,(%eax)
   1c6cf:	00 00                	add    %al,(%eax)
   1c6d1:	00 00                	add    %al,(%eax)
   1c6d3:	00 36                	add    %dh,(%esi)
   1c6d5:	00 00                	add    %al,(%eax)
   1c6d7:	00 5e 00             	add    %bl,0x0(%esi)
   1c6da:	00 00                	add    %al,(%eax)
   1c6dc:	00 00                	add    %al,(%eax)
   1c6de:	00 00                	add    %al,(%eax)
   1c6e0:	37                   	aaa    
   1c6e1:	00 00                	add    %al,(%eax)
   1c6e3:	00 26                	add    %ah,(%esi)
   1c6e5:	00 00                	add    %al,(%eax)
   1c6e7:	00 00                	add    %al,(%eax)
   1c6e9:	00 00                	add    %al,(%eax)
   1c6eb:	00 38                	add    %bh,(%eax)
   1c6ed:	00 00                	add    %al,(%eax)
   1c6ef:	00 2a                	add    %ch,(%edx)
   1c6f1:	00 00                	add    %al,(%eax)
   1c6f3:	00 00                	add    %al,(%eax)
   1c6f5:	00 00                	add    %al,(%eax)
   1c6f7:	00 39                	add    %bh,(%ecx)
   1c6f9:	00 00                	add    %al,(%eax)
   1c6fb:	00 28                	add    %ch,(%eax)
   1c6fd:	00 00                	add    %al,(%eax)
   1c6ff:	00 00                	add    %al,(%eax)
   1c701:	00 00                	add    %al,(%eax)
   1c703:	00 30                	add    %dh,(%eax)
   1c705:	00 00                	add    %al,(%eax)
   1c707:	00 29                	add    %ch,(%ecx)
   1c709:	00 00                	add    %al,(%eax)
   1c70b:	00 00                	add    %al,(%eax)
   1c70d:	00 00                	add    %al,(%eax)
   1c70f:	00 2d 00 00 00 5f    	add    %ch,0x5f000000
   1c715:	00 00                	add    %al,(%eax)
   1c717:	00 00                	add    %al,(%eax)
   1c719:	00 00                	add    %al,(%eax)
   1c71b:	00 3d 00 00 00 2b    	add    %bh,0x2b000000
   1c721:	00 00                	add    %al,(%eax)
   1c723:	00 00                	add    %al,(%eax)
   1c725:	00 00                	add    %al,(%eax)
   1c727:	00 01                	add    %al,(%ecx)
   1c729:	00 00                	add    %al,(%eax)
   1c72b:	80 01 00             	addb   $0x0,(%ecx)
   1c72e:	00 80 00 00 00 00    	add    %al,0x0(%eax)
   1c734:	02 00                	add    (%eax),%al
   1c736:	00 80 02 00 00 80    	add    %al,0x80000002(%eax)
   1c73c:	00 00                	add    %al,(%eax)
   1c73e:	00 00                	add    %al,(%eax)
   1c740:	71 00                	jno    0x1c742
   1c742:	00 00                	add    %al,(%eax)
   1c744:	51                   	push   %ecx
   1c745:	00 00                	add    %al,(%eax)
   1c747:	00 00                	add    %al,(%eax)
   1c749:	00 00                	add    %al,(%eax)
   1c74b:	00 77 00             	add    %dh,0x0(%edi)
   1c74e:	00 00                	add    %al,(%eax)
   1c750:	57                   	push   %edi
   1c751:	00 00                	add    %al,(%eax)
   1c753:	00 00                	add    %al,(%eax)
   1c755:	00 00                	add    %al,(%eax)
   1c757:	00 65 00             	add    %ah,0x0(%ebp)
   1c75a:	00 00                	add    %al,(%eax)
   1c75c:	45                   	inc    %ebp
   1c75d:	00 00                	add    %al,(%eax)
   1c75f:	00 00                	add    %al,(%eax)
   1c761:	00 00                	add    %al,(%eax)
   1c763:	00 72 00             	add    %dh,0x0(%edx)
   1c766:	00 00                	add    %al,(%eax)
   1c768:	52                   	push   %edx
   1c769:	00 00                	add    %al,(%eax)
   1c76b:	00 00                	add    %al,(%eax)
   1c76d:	00 00                	add    %al,(%eax)
   1c76f:	00 74 00 00          	add    %dh,0x0(%eax,%eax,1)
   1c773:	00 54 00 00          	add    %dl,0x0(%eax,%eax,1)
   1c777:	00 00                	add    %al,(%eax)
   1c779:	00 00                	add    %al,(%eax)
   1c77b:	00 79 00             	add    %bh,0x0(%ecx)
   1c77e:	00 00                	add    %al,(%eax)
   1c780:	59                   	pop    %ecx
   1c781:	00 00                	add    %al,(%eax)
   1c783:	00 00                	add    %al,(%eax)
   1c785:	00 00                	add    %al,(%eax)
   1c787:	00 75 00             	add    %dh,0x0(%ebp)
   1c78a:	00 00                	add    %al,(%eax)
   1c78c:	55                   	push   %ebp
   1c78d:	00 00                	add    %al,(%eax)
   1c78f:	00 00                	add    %al,(%eax)
   1c791:	00 00                	add    %al,(%eax)
   1c793:	00 69 00             	add    %ch,0x0(%ecx)
   1c796:	00 00                	add    %al,(%eax)
   1c798:	49                   	dec    %ecx
   1c799:	00 00                	add    %al,(%eax)
   1c79b:	00 00                	add    %al,(%eax)
   1c79d:	00 00                	add    %al,(%eax)
   1c79f:	00 6f 00             	add    %ch,0x0(%edi)
   1c7a2:	00 00                	add    %al,(%eax)
   1c7a4:	4f                   	dec    %edi
   1c7a5:	00 00                	add    %al,(%eax)
   1c7a7:	00 00                	add    %al,(%eax)
   1c7a9:	00 00                	add    %al,(%eax)
   1c7ab:	00 70 00             	add    %dh,0x0(%eax)
   1c7ae:	00 00                	add    %al,(%eax)
   1c7b0:	50                   	push   %eax
   1c7b1:	00 00                	add    %al,(%eax)
   1c7b3:	00 00                	add    %al,(%eax)
   1c7b5:	00 00                	add    %al,(%eax)
   1c7b7:	00 5b 00             	add    %bl,0x0(%ebx)
   1c7ba:	00 00                	add    %al,(%eax)
   1c7bc:	7b 00                	jnp    0x1c7be
   1c7be:	00 00                	add    %al,(%eax)
   1c7c0:	00 00                	add    %al,(%eax)
   1c7c2:	00 00                	add    %al,(%eax)
   1c7c4:	5d                   	pop    %ebp
   1c7c5:	00 00                	add    %al,(%eax)
   1c7c7:	00 7d 00             	add    %bh,0x0(%ebp)
   1c7ca:	00 00                	add    %al,(%eax)
   1c7cc:	00 00                	add    %al,(%eax)
   1c7ce:	00 00                	add    %al,(%eax)
   1c7d0:	03 00                	add    (%eax),%eax
   1c7d2:	00 80 03 00 00 80    	add    %al,0x80000003(%eax)
   1c7d8:	04 00                	add    $0x0,%al
   1c7da:	00 80 05 00 00 80    	add    %al,0x80000005(%eax)
   1c7e0:	05 00 00 80 06       	add    $0x6800000,%eax
   1c7e5:	00 00                	add    %al,(%eax)
   1c7e7:	80 61 00 00          	andb   $0x0,0x0(%ecx)
   1c7eb:	00 41 00             	add    %al,0x0(%ecx)
   1c7ee:	00 00                	add    %al,(%eax)
   1c7f0:	00 00                	add    %al,(%eax)
   1c7f2:	00 00                	add    %al,(%eax)
   1c7f4:	73 00                	jae    0x1c7f6
   1c7f6:	00 00                	add    %al,(%eax)
   1c7f8:	53                   	push   %ebx
   1c7f9:	00 00                	add    %al,(%eax)
   1c7fb:	00 00                	add    %al,(%eax)
   1c7fd:	00 00                	add    %al,(%eax)
   1c7ff:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
   1c803:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
   1c807:	00 00                	add    %al,(%eax)
   1c809:	00 00                	add    %al,(%eax)
   1c80b:	00 66 00             	add    %ah,0x0(%esi)
   1c80e:	00 00                	add    %al,(%eax)
   1c810:	46                   	inc    %esi
   1c811:	00 00                	add    %al,(%eax)
   1c813:	00 00                	add    %al,(%eax)
   1c815:	00 00                	add    %al,(%eax)
   1c817:	00 67 00             	add    %ah,0x0(%edi)
   1c81a:	00 00                	add    %al,(%eax)
   1c81c:	47                   	inc    %edi
   1c81d:	00 00                	add    %al,(%eax)
   1c81f:	00 00                	add    %al,(%eax)
   1c821:	00 00                	add    %al,(%eax)
   1c823:	00 68 00             	add    %ch,0x0(%eax)
   1c826:	00 00                	add    %al,(%eax)
   1c828:	48                   	dec    %eax
   1c829:	00 00                	add    %al,(%eax)
   1c82b:	00 00                	add    %al,(%eax)
   1c82d:	00 00                	add    %al,(%eax)
   1c82f:	00 6a 00             	add    %ch,0x0(%edx)
   1c832:	00 00                	add    %al,(%eax)
   1c834:	4a                   	dec    %edx
   1c835:	00 00                	add    %al,(%eax)
   1c837:	00 00                	add    %al,(%eax)
   1c839:	00 00                	add    %al,(%eax)
   1c83b:	00 6b 00             	add    %ch,0x0(%ebx)
   1c83e:	00 00                	add    %al,(%eax)
   1c840:	4b                   	dec    %ebx
   1c841:	00 00                	add    %al,(%eax)
   1c843:	00 00                	add    %al,(%eax)
   1c845:	00 00                	add    %al,(%eax)
   1c847:	00 6c 00 00          	add    %ch,0x0(%eax,%eax,1)
   1c84b:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
   1c84f:	00 00                	add    %al,(%eax)
   1c851:	00 00                	add    %al,(%eax)
   1c853:	00 3b                	add    %bh,(%ebx)
   1c855:	00 00                	add    %al,(%eax)
   1c857:	00 3a                	add    %bh,(%edx)
   1c859:	00 00                	add    %al,(%eax)
   1c85b:	00 00                	add    %al,(%eax)
   1c85d:	00 00                	add    %al,(%eax)
   1c85f:	00 27                	add    %ah,(%edi)
   1c861:	00 00                	add    %al,(%eax)
   1c863:	00 22                	add    %ah,(%edx)
   1c865:	00 00                	add    %al,(%eax)
   1c867:	00 00                	add    %al,(%eax)
   1c869:	00 00                	add    %al,(%eax)
   1c86b:	00 60 00             	add    %ah,0x0(%eax)
   1c86e:	00 00                	add    %al,(%eax)
   1c870:	7e 00                	jle    0x1c872
   1c872:	00 00                	add    %al,(%eax)
   1c874:	00 00                	add    %al,(%eax)
   1c876:	00 00                	add    %al,(%eax)
   1c878:	07                   	pop    %es
   1c879:	00 00                	add    %al,(%eax)
   1c87b:	80 07 00             	addb   $0x0,(%edi)
   1c87e:	00 80 00 00 00 00    	add    %al,0x0(%eax)
   1c884:	5c                   	pop    %esp
   1c885:	00 00                	add    %al,(%eax)
   1c887:	00 7c 00 00          	add    %bh,0x0(%eax,%eax,1)
   1c88b:	00 00                	add    %al,(%eax)
   1c88d:	00 00                	add    %al,(%eax)
   1c88f:	00 7a 00             	add    %bh,0x0(%edx)
   1c892:	00 00                	add    %al,(%eax)
   1c894:	5a                   	pop    %edx
   1c895:	00 00                	add    %al,(%eax)
   1c897:	00 00                	add    %al,(%eax)
   1c899:	00 00                	add    %al,(%eax)
   1c89b:	00 78 00             	add    %bh,0x0(%eax)
   1c89e:	00 00                	add    %al,(%eax)
   1c8a0:	58                   	pop    %eax
   1c8a1:	00 00                	add    %al,(%eax)
   1c8a3:	00 00                	add    %al,(%eax)
   1c8a5:	00 00                	add    %al,(%eax)
   1c8a7:	00 63 00             	add    %ah,0x0(%ebx)
   1c8aa:	00 00                	add    %al,(%eax)
   1c8ac:	43                   	inc    %ebx
   1c8ad:	00 00                	add    %al,(%eax)
   1c8af:	00 00                	add    %al,(%eax)
   1c8b1:	00 00                	add    %al,(%eax)
   1c8b3:	00 76 00             	add    %dh,0x0(%esi)
   1c8b6:	00 00                	add    %al,(%eax)
   1c8b8:	56                   	push   %esi
   1c8b9:	00 00                	add    %al,(%eax)
   1c8bb:	00 00                	add    %al,(%eax)
   1c8bd:	00 00                	add    %al,(%eax)
   1c8bf:	00 62 00             	add    %ah,0x0(%edx)
   1c8c2:	00 00                	add    %al,(%eax)
   1c8c4:	42                   	inc    %edx
   1c8c5:	00 00                	add    %al,(%eax)
   1c8c7:	00 00                	add    %al,(%eax)
   1c8c9:	00 00                	add    %al,(%eax)
   1c8cb:	00 6e 00             	add    %ch,0x0(%esi)
   1c8ce:	00 00                	add    %al,(%eax)
   1c8d0:	4e                   	dec    %esi
   1c8d1:	00 00                	add    %al,(%eax)
   1c8d3:	00 00                	add    %al,(%eax)
   1c8d5:	00 00                	add    %al,(%eax)
   1c8d7:	00 6d 00             	add    %ch,0x0(%ebp)
   1c8da:	00 00                	add    %al,(%eax)
   1c8dc:	4d                   	dec    %ebp
   1c8dd:	00 00                	add    %al,(%eax)
   1c8df:	00 00                	add    %al,(%eax)
   1c8e1:	00 00                	add    %al,(%eax)
   1c8e3:	00 2c 00             	add    %ch,(%eax,%eax,1)
   1c8e6:	00 00                	add    %al,(%eax)
   1c8e8:	3c 00                	cmp    $0x0,%al
   1c8ea:	00 00                	add    %al,(%eax)
   1c8ec:	00 00                	add    %al,(%eax)
   1c8ee:	00 00                	add    %al,(%eax)
   1c8f0:	2e 00 00             	add    %al,%cs:(%eax)
   1c8f3:	00 3e                	add    %bh,(%esi)
   1c8f5:	00 00                	add    %al,(%eax)
   1c8f7:	00 00                	add    %al,(%eax)
   1c8f9:	00 00                	add    %al,(%eax)
   1c8fb:	00 2f                	add    %ch,(%edi)
   1c8fd:	00 00                	add    %al,(%eax)
   1c8ff:	00 3f                	add    %bh,(%edi)
   1c901:	00 00                	add    %al,(%eax)
   1c903:	00 09                	add    %cl,(%ecx)
   1c905:	00 00                	add    %al,(%eax)
   1c907:	80 08 00             	orb    $0x0,(%eax)
   1c90a:	00 80 08 00 00 80    	add    %al,0x80000008(%eax)
   1c910:	00 00                	add    %al,(%eax)
   1c912:	00 00                	add    %al,(%eax)
   1c914:	2a 00                	sub    (%eax),%al
   1c916:	00 00                	add    %al,(%eax)
   1c918:	2a 00                	sub    (%eax),%al
   1c91a:	00 00                	add    %al,(%eax)
   1c91c:	00 00                	add    %al,(%eax)
   1c91e:	00 00                	add    %al,(%eax)
   1c920:	0a 00                	or     (%eax),%al
   1c922:	00 80 0a 00 00 80    	add    %al,0x8000000a(%eax)
   1c928:	0b 00                	or     (%eax),%eax
   1c92a:	00 80 20 00 00 00    	add    %al,0x20(%eax)
   1c930:	20 00                	and    %al,(%eax)
   1c932:	00 00                	add    %al,(%eax)
   1c934:	00 00                	add    %al,(%eax)
   1c936:	00 00                	add    %al,(%eax)
   1c938:	0c 00                	or     $0x0,%al
   1c93a:	00 80 0c 00 00 80    	add    %al,0x8000000c(%eax)
   1c940:	00 00                	add    %al,(%eax)
   1c942:	00 00                	add    %al,(%eax)
   1c944:	0d 00 00 80 0d       	or     $0xd800000,%eax
   1c949:	00 00                	add    %al,(%eax)
   1c94b:	80 00 00             	addb   $0x0,(%eax)
   1c94e:	00 00                	add    %al,(%eax)
   1c950:	0e                   	push   %cs
   1c951:	00 00                	add    %al,(%eax)
   1c953:	80 0e 00             	orb    $0x0,(%esi)
   1c956:	00 80 00 00 00 00    	add    %al,0x0(%eax)
   1c95c:	0f 00 00             	sldt   (%eax)
   1c95f:	80 0f 00             	orb    $0x0,(%edi)
   1c962:	00 80 00 00 00 00    	add    %al,0x0(%eax)
   1c968:	10 00                	adc    %al,(%eax)
   1c96a:	00 80 10 00 00 80    	add    %al,0x80000010(%eax)
   1c970:	00 00                	add    %al,(%eax)
   1c972:	00 00                	add    %al,(%eax)
   1c974:	11 00                	adc    %eax,(%eax)
   1c976:	00 80 11 00 00 80    	add    %al,0x80000011(%eax)
   1c97c:	00 00                	add    %al,(%eax)
   1c97e:	00 00                	add    %al,(%eax)
   1c980:	12 00                	adc    (%eax),%al
   1c982:	00 80 12 00 00 80    	add    %al,0x80000012(%eax)
   1c988:	00 00                	add    %al,(%eax)
   1c98a:	00 00                	add    %al,(%eax)
   1c98c:	13 00                	adc    (%eax),%eax
   1c98e:	00 80 13 00 00 80    	add    %al,0x80000013(%eax)
   1c994:	00 00                	add    %al,(%eax)
   1c996:	00 00                	add    %al,(%eax)
   1c998:	14 00                	adc    $0x0,%al
   1c99a:	00 80 14 00 00 80    	add    %al,0x80000014(%eax)
   1c9a0:	00 00                	add    %al,(%eax)
   1c9a2:	00 00                	add    %al,(%eax)
   1c9a4:	15 00 00 80 15       	adc    $0x15800000,%eax
   1c9a9:	00 00                	add    %al,(%eax)
   1c9ab:	80 00 00             	addb   $0x0,(%eax)
   1c9ae:	00 00                	add    %al,(%eax)
   1c9b0:	16                   	push   %ss
   1c9b1:	00 00                	add    %al,(%eax)
   1c9b3:	80 16 00             	adcb   $0x0,(%esi)
   1c9b6:	00 80 00 00 00 00    	add    %al,0x0(%eax)
   1c9bc:	19 00                	sbb    %eax,(%eax)
   1c9be:	00 80 19 00 00 80    	add    %al,0x80000019(%eax)
   1c9c4:	00 00                	add    %al,(%eax)
   1c9c6:	00 00                	add    %al,(%eax)
   1c9c8:	1a 00                	sbb    (%eax),%al
   1c9ca:	00 80 1a 00 00 80    	add    %al,0x8000001a(%eax)
   1c9d0:	00 00                	add    %al,(%eax)
   1c9d2:	00 00                	add    %al,(%eax)
   1c9d4:	1b 00                	sbb    (%eax),%eax
   1c9d6:	00 80 37 00 00 00    	add    %al,0x37(%eax)
   1c9dc:	28 00                	sub    %al,(%eax)
   1c9de:	00 80 1c 00 00 80    	add    %al,0x8000001c(%eax)
   1c9e4:	38 00                	cmp    %al,(%eax)
   1c9e6:	00 00                	add    %al,(%eax)
   1c9e8:	29 00                	sub    %eax,(%eax)
   1c9ea:	00 80 1d 00 00 80    	add    %al,0x8000001d(%eax)
   1c9f0:	39 00                	cmp    %eax,(%eax)
   1c9f2:	00 00                	add    %al,(%eax)
   1c9f4:	2a 00                	sub    (%eax),%al
   1c9f6:	00 80 1e 00 00 80    	add    %al,0x8000001e(%eax)
   1c9fc:	2d 00 00 00 00       	sub    $0x0,%eax
   1ca01:	00 00                	add    %al,(%eax)
   1ca03:	00 1f                	add    %bl,(%edi)
   1ca05:	00 00                	add    %al,(%eax)
   1ca07:	80 34 00 00          	xorb   $0x0,(%eax,%eax,1)
   1ca0b:	00 2b                	add    %ch,(%ebx)
   1ca0d:	00 00                	add    %al,(%eax)
   1ca0f:	80 20 00             	andb   $0x0,(%eax)
   1ca12:	00 80 35 00 00 00    	add    %al,0x35(%eax)
   1ca18:	00 00                	add    %al,(%eax)
   1ca1a:	00 00                	add    %al,(%eax)
   1ca1c:	21 00                	and    %eax,(%eax)
   1ca1e:	00 80 36 00 00 00    	add    %al,0x36(%eax)
   1ca24:	2c 00                	sub    $0x0,%al
   1ca26:	00 80 22 00 00 80    	add    %al,0x80000022(%eax)
   1ca2c:	2b 00                	sub    (%eax),%eax
   1ca2e:	00 00                	add    %al,(%eax)
   1ca30:	00 00                	add    %al,(%eax)
   1ca32:	00 00                	add    %al,(%eax)
   1ca34:	23 00                	and    (%eax),%eax
   1ca36:	00 80 31 00 00 00    	add    %al,0x31(%eax)
   1ca3c:	2d 00 00 80 24       	sub    $0x24800000,%eax
   1ca41:	00 00                	add    %al,(%eax)
   1ca43:	80 32 00             	xorb   $0x0,(%edx)
   1ca46:	00 00                	add    %al,(%eax)
   1ca48:	2e 00 00             	add    %al,%cs:(%eax)
   1ca4b:	80 25 00 00 80 33 00 	andb   $0x0,0x33800000
   1ca52:	00 00                	add    %al,(%eax)
   1ca54:	2f                   	das    
   1ca55:	00 00                	add    %al,(%eax)
   1ca57:	80 26 00             	andb   $0x0,(%esi)
   1ca5a:	00 80 30 00 00 00    	add    %al,0x30(%eax)
   1ca60:	30 00                	xor    %al,(%eax)
   1ca62:	00 80 27 00 00 80    	add    %al,0x80000027(%eax)
   1ca68:	2e 00 00             	add    %al,%cs:(%eax)
   1ca6b:	00 31                	add    %dh,(%ecx)
   1ca6d:	00 00                	add    %al,(%eax)
   1ca6f:	80 00 00             	addb   $0x0,(%eax)
	...
   1ca92:	00 00                	add    %al,(%eax)
   1ca94:	17                   	pop    %ss
   1ca95:	00 00                	add    %al,(%eax)
   1ca97:	80 17 00             	adcb   $0x0,(%edi)
   1ca9a:	00 80 00 00 00 00    	add    %al,0x0(%eax)
   1caa0:	18 00                	sbb    %al,(%eax)
   1caa2:	00 80 18 00 00 80    	add    %al,0x80000018(%eax)
	...
   1cacc:	32 00                	xor    (%eax),%al
   1cace:	00 80 00 00 00 00    	add    %al,0x0(%eax)
   1cad4:	00 00                	add    %al,(%eax)
   1cad6:	00 00                	add    %al,(%eax)
   1cad8:	33 00                	xor    (%eax),%eax
   1cada:	00 80 00 00 00 00    	add    %al,0x0(%eax)
   1cae0:	00 00                	add    %al,(%eax)
   1cae2:	00 00                	add    %al,(%eax)
   1cae4:	34 00                	xor    $0x0,%al
   1cae6:	00 80 00 00 00 00    	add    %al,0x0(%eax)
	...
   1caf4:	4f                   	dec    %edi
   1caf5:	b7 01                	mov    $0x1,%bh
	...
   1caff:	00 f8                	add    %bh,%al
   1cb01:	ba 01 00 09 bb       	mov    $0xbb090001,%edx
   1cb06:	01 00                	add    %eax,(%eax)
   1cb08:	16                   	push   %ss
   1cb09:	bb 01 00 27 bb       	mov    $0xbb270001,%ebx
   1cb0e:	01 00                	add    %eax,(%eax)
   1cb10:	35 bb 01 00 42       	xor    $0x420001bb,%eax
   1cb15:	bb 01 00 5c bb       	mov    $0xbb5c0001,%ebx
   1cb1a:	01 00                	add    %eax,(%eax)
   1cb1c:	84 bb 01 00 b2 bb    	test   %bh,0xbbb20001(%ebx)
   1cb22:	01 00                	add    %eax,(%eax)
   1cb24:	c4 bb 01 00 ef bb    	les    0xbbef0001(%ebx),%edi
   1cb2a:	01 00                	add    %eax,(%eax)
   1cb2c:	ff                   	(bad)  
   1cb2d:	bb 01 00 17 bc       	mov    $0xbc170001,%ebx
   1cb32:	01 00                	add    %eax,(%eax)
   1cb34:	2f                   	das    
   1cb35:	bc 01 00 46 bc       	mov    $0xbc460001,%esp
   1cb3a:	01 00                	add    %eax,(%eax)
   1cb3c:	58                   	pop    %eax
   1cb3d:	bc 01 00 7c bc       	mov    $0xbc7c0001,%esp
   1cb42:	01 00                	add    %eax,(%eax)
   1cb44:	ab                   	stos   %eax,%es:(%edi)
   1cb45:	bc 01 00 bf bc       	mov    $0xbcbf0001,%esp
   1cb4a:	01 00                	add    %eax,(%eax)
   1cb4c:	d4 bc                	aam    $0xffffffbc
   1cb4e:	01 00                	add    %eax,(%eax)
   1cb50:	38 7e 01             	cmp    %bh,0x1(%esi)
   1cb53:	00 61 7f             	add    %ah,0x7f(%ecx)
   1cb56:	01 00                	add    %eax,(%eax)
   1cb58:	0d 80 01 00 ea       	or     $0xea000180,%eax
   1cb5d:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
   1cb5e:	01 00                	add    %eax,(%eax)
   1cb60:	dc 8b 01 00 b8 be    	fmull  0xbeb80001(%ebx)
   1cb66:	01 00                	add    %eax,(%eax)
   1cb68:	04 00                	add    $0x0,%al
   1cb6a:	00 00                	add    %al,(%eax)
   1cb6c:	50                   	push   %eax
   1cb6d:	80 01 00             	addb   $0x0,(%ecx)
   1cb70:	c1 be 01 00 04 00 00 	sarl   $0x0,0x40001(%esi)
   1cb77:	00 90 34 01 00 ca    	add    %dl,0xca000134(%eax)
   1cb7d:	be 01 00 04 00       	mov    $0x40001,%esi
   1cb82:	00 00                	add    %al,(%eax)
   1cb84:	84 13                	test   %dl,(%ebx)
   1cb86:	01 00                	add    %eax,(%eax)
   1cb88:	d2 be 01 00 04 00    	sarb   %cl,0x40001(%esi)
   1cb8e:	00 00                	add    %al,(%eax)
   1cb90:	c0 8b 01 00 da be 01 	rorb   $0x1,0xbeda0001(%ebx)
   1cb97:	00 01                	add    %al,(%ecx)
   1cb99:	00 00                	add    %al,(%eax)
   1cb9b:	00 a4 5b 01 00 e4 be 	add    %ah,0xbee40001(%ebx,%ebx,2)
   1cba2:	01 00                	add    %eax,(%eax)
   1cba4:	04 00                	add    $0x0,%al
   1cba6:	00 00                	add    %al,(%eax)
   1cba8:	00 00                	add    %al,(%eax)
   1cbaa:	11 00                	adc    %eax,(%eax)
   1cbac:	ec                   	in     (%dx),%al
   1cbad:	be 01 00 02 00       	mov    $0x20001,%esi
   1cbb2:	00 00                	add    %al,(%eax)
   1cbb4:	e8 78 01 00 f6       	call   0xf601cd31
   1cbb9:	be 01 00 02 00       	mov    $0x20001,%esi
   1cbbe:	00 00                	add    %al,(%eax)
   1cbc0:	0f 7a                	(bad)  
   1cbc2:	01 00                	add    %eax,(%eax)
   1cbc4:	fc                   	cld    
   1cbc5:	be 01 00 02 00       	mov    $0x20001,%esi
   1cbca:	00 00                	add    %al,(%eax)
   1cbcc:	fd                   	std    
   1cbcd:	7a 01                	jp     0x1cbd0
   1cbcf:	00 02                	add    %al,(%edx)
   1cbd1:	bf 01 00 02 00       	mov    $0x20001,%edi
   1cbd6:	00 00                	add    %al,(%eax)
   1cbd8:	27                   	daa    
   1cbd9:	7c 01                	jl     0x1cbdc
   1cbdb:	00 08                	add    %cl,(%eax)
   1cbdd:	bf 01 00 02 00       	mov    $0x20001,%edi
	...
Disassembly of section Init:

00110000 <Init>:
  110000:	55                   	push   %ebp
  110001:	89 e5                	mov    %esp,%ebp
  110003:	83 ec 38             	sub    $0x38,%esp
  110006:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  11000d:	00 
  11000e:	c7 04 24 c8 01 11 00 	movl   $0x1101c8,(%esp)
  110015:	e8 3e 9c f0 ff       	call   0x19c58
  11001a:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
  11001d:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
  110021:	74 24                	je     0x110047
  110023:	c7 44 24 0c 10 00 00 	movl   $0x10,0xc(%esp)
  11002a:	00 
  11002b:	c7 44 24 08 cd 01 11 	movl   $0x1101cd,0x8(%esp)
  110032:	00 
  110033:	c7 44 24 04 cd 01 11 	movl   $0x1101cd,0x4(%esp)
  11003a:	00 
  11003b:	c7 04 24 d4 01 11 00 	movl   $0x1101d4,(%esp)
  110042:	e8 e1 9b f0 ff       	call   0x19c28
  110047:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  11004e:	00 
  11004f:	c7 04 24 c8 01 11 00 	movl   $0x1101c8,(%esp)
  110056:	e8 fd 9b f0 ff       	call   0x19c58
  11005b:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
  11005e:	83 7d f4 01          	cmpl   $0x1,0xfffffff4(%ebp)
  110062:	74 24                	je     0x110088
  110064:	c7 44 24 0c 12 00 00 	movl   $0x12,0xc(%esp)
  11006b:	00 
  11006c:	c7 44 24 08 cd 01 11 	movl   $0x1101cd,0x8(%esp)
  110073:	00 
  110074:	c7 44 24 04 cd 01 11 	movl   $0x1101cd,0x4(%esp)
  11007b:	00 
  11007c:	c7 04 24 df 01 11 00 	movl   $0x1101df,(%esp)
  110083:	e8 a0 9b f0 ff       	call   0x19c28
  110088:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  11008f:	00 
  110090:	c7 04 24 eb 01 11 00 	movl   $0x1101eb,(%esp)
  110097:	e8 bc 9b f0 ff       	call   0x19c58
  11009c:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
  11009f:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
  1100a6:	00 
  1100a7:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  1100ae:	00 
  1100af:	8d 45 ef             	lea    0xffffffef(%ebp),%eax
  1100b2:	89 44 24 04          	mov    %eax,0x4(%esp)
  1100b6:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  1100b9:	89 04 24             	mov    %eax,(%esp)
  1100bc:	e8 7c 9c f0 ff       	call   0x19d3d
  1100c1:	0f b6 45 ef          	movzbl 0xffffffef(%ebp),%eax
  1100c5:	84 c0                	test   %al,%al
  1100c7:	74 5a                	je     0x110123
  1100c9:	c7 04 24 eb 01 11 00 	movl   $0x1101eb,(%esp)
  1100d0:	e8 cf a0 f0 ff       	call   0x1a1a4
  1100d5:	85 c0                	test   %eax,%eax
  1100d7:	74 24                	je     0x1100fd
  1100d9:	c7 44 24 0c 1a 00 00 	movl   $0x1a,0xc(%esp)
  1100e0:	00 
  1100e1:	c7 44 24 08 cd 01 11 	movl   $0x1101cd,0x8(%esp)
  1100e8:	00 
  1100e9:	c7 44 24 04 cd 01 11 	movl   $0x1101cd,0x4(%esp)
  1100f0:	00 
  1100f1:	c7 04 24 f3 01 11 00 	movl   $0x1101f3,(%esp)
  1100f8:	e8 2b 9b f0 ff       	call   0x19c28
  1100fd:	c6 45 ef 00          	movb   $0x0,0xffffffef(%ebp)
  110101:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
  110108:	00 
  110109:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  110110:	ff 
  110111:	8d 45 ef             	lea    0xffffffef(%ebp),%eax
  110114:	89 44 24 04          	mov    %eax,0x4(%esp)
  110118:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  11011b:	89 04 24             	mov    %eax,(%esp)
  11011e:	e8 a6 9b f0 ff       	call   0x19cc9
  110123:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  110126:	89 04 24             	mov    %eax,(%esp)
  110129:	e8 83 9c f0 ff       	call   0x19db1
  11012e:	c7 45 e8 11 11 11 11 	movl   $0x11111111,0xffffffe8(%ebp)
  110135:	e8 fe 9d f0 ff       	call   0x19f38
  11013a:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  11013d:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
  110141:	74 36                	je     0x110179
  110143:	c7 04 24 0b 02 11 00 	movl   $0x11020b,(%esp)
  11014a:	e8 3e ac f0 ff       	call   0x1ad8d
  11014f:	8d 45 e8             	lea    0xffffffe8(%ebp),%eax
  110152:	89 04 24             	mov    %eax,(%esp)
  110155:	e8 ca 9e f0 ff       	call   0x1a024
  11015a:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  11015d:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
  110160:	89 44 24 08          	mov    %eax,0x8(%esp)
  110164:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  110167:	89 44 24 04          	mov    %eax,0x4(%esp)
  11016b:	c7 04 24 14 02 11 00 	movl   $0x110214,(%esp)
  110172:	e8 16 ac f0 ff       	call   0x1ad8d
  110177:	eb ca                	jmp    0x110143
  110179:	e8 ba a3 f0 ff       	call   0x1a538
  11017e:	89 44 24 04          	mov    %eax,0x4(%esp)
  110182:	c7 04 24 45 02 11 00 	movl   $0x110245,(%esp)
  110189:	e8 ff ab f0 ff       	call   0x1ad8d
  11018e:	c7 45 e0 55 02 11 00 	movl   $0x110255,0xffffffe0(%ebp)
  110195:	c7 45 e4 5b 02 11 00 	movl   $0x11025b,0xffffffe4(%ebp)
  11019c:	8d 45 e0             	lea    0xffffffe0(%ebp),%eax
  11019f:	89 44 24 08          	mov    %eax,0x8(%esp)
  1101a3:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
  1101aa:	00 
  1101ab:	c7 04 24 55 02 11 00 	movl   $0x110255,(%esp)
  1101b2:	e8 d8 9e f0 ff       	call   0x1a08f
  1101b7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
  1101be:	e8 02 9e f0 ff       	call   0x19fc5
  1101c3:	eb b4                	jmp    0x110179
  1101c5:	00 00                	add    %al,(%eax)
  1101c7:	00 74 74 79          	add    %dh,0x79(%esp,%esi,2)
  1101cb:	32 00                	xor    (%eax),%al
  1101cd:	69 6e 69 74 2e 63 00 	imul   $0x632e74,0x69(%esi),%ebp
  1101d4:	73 74                	jae    0x11024a
  1101d6:	64 69 6e 20 3d 3d 20 	imul   $0x30203d3d,%fs:0x20(%esi),%ebp
  1101dd:	30 
  1101de:	00 73 74             	add    %dh,0x74(%ebx)
  1101e1:	64 6f                	outsl  %fs:(%esi),(%dx)
  1101e3:	75 74                	jne    0x110259
  1101e5:	20 3d 3d 20 31 00    	and    %bh,0x31203d
  1101eb:	63 6d 64             	arpl   %bp,0x64(%ebp)
  1101ee:	2e 74 61             	je,pn  0x110252
  1101f1:	72 00                	jb     0x1101f3
  1101f3:	65                   	gs
  1101f4:	78 74                	js     0x11026a
  1101f6:	72 61                	jb     0x110259
  1101f8:	63 74 28 22          	arpl   %si,0x22(%eax,%ebp,1)
  1101fc:	63 6d 64             	arpl   %bp,0x64(%ebp)
  1101ff:	2e 74 61             	je,pn  0x110263
  110202:	72 22                	jb     0x110226
  110204:	29 20                	sub    %esp,(%eax)
  110206:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
  11020b:	77 61                	ja     0x11026e
  11020d:	69 74 2e 2e 0a 00 00 	imul   $0x7300000a,0x2e(%esi,%ebp,1),%esi
  110214:	73 
  110215:	6f                   	outsl  %ds:(%esi),(%dx)
  110216:	6d                   	insl   (%dx),%es:(%edi)
  110217:	65 20 63 68          	and    %ah,%gs:0x68(%ebx)
  11021b:	69 6c 64 20 70 72 6f 	imul   $0x636f7270,0x20(%esp),%ebp
  110222:	63 
  110223:	65                   	gs
  110224:	73 73                	jae    0x110299
  110226:	20 65 78             	and    %ah,0x78(%ebp)
  110229:	69 74 2e 63 70 69 64 	imul   $0x20646970,0x63(%esi,%ebp,1),%esi
  110230:	20 
  110231:	3a 20                	cmp    (%eax),%ah
  110233:	25 64 20 20 73       	and    $0x73202064,%eax
  110238:	74 61                	je     0x11029b
  11023a:	74 63                	je     0x11029f
  11023c:	6f                   	outsl  %ds:(%esi),(%dx)
  11023d:	64 65 3a 20          	cmp    %fs:%gs:(%eax),%ah
  110241:	25 64 0a 00 63       	and    $0x63000a64,%eax
  110246:	68 69 6c 64 20       	push   $0x20646c69
  11024b:	70 69                	jo     0x1102b6
  11024d:	64 20 3a             	and    %bh,%fs:(%edx)
  110250:	20 25 64 0a 00 73    	and    %ah,0x73000a64
  110256:	68 65 6c 6c 00       	push   $0x6c6c65
  11025b:	74 74                	je     0x1102d1
  11025d:	79 30                	jns    0x11028f
	...

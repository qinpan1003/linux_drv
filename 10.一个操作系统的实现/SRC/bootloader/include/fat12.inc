;---------------------------------------------------------------------------------------------------
; FAT12引导扇区格式
; 以下内容从偏移3开始存放
%define	BS_OEMName	'12345678'	;  8字节 厂商名
%define	BPB_BytsPerSec	512		;  2字节 每扇区字节数
%define	BPB_SecPerClus	1		;  1字节 每簇扇区数
%define	BPB_RsvdSecCnt	1		;  2字节 Boot记录占用多少扇区
%define	BPB_NumFATs	2		;  1字节 共有多少FAT表
%define	BPB_RootEntCnt	224		;  2字节 根目录文件数最大值
%define	BPB_TotSec16	2880		;  2字节 扇区总数
%define	BPB_Media		0xf0		;  1字节 介质描述符
%define	BPB_FATSz16	9		;  2字节 每FAT扇区数
%define	BPB_SecPerTrk	18		;  2字节 每磁道扇区数
%define	BPB_NumHeads	2		;  2字节 磁头数
%define	BPB_HiddSec	0		;  4字节 隐藏扇区数
%define	BPB_TotSec32	0		;  4字节 如果BPB_TotSec16是0，由这个值记录扇区数
%define	BS_DrvNum		0		;  1字节 中断13的驱动器号
%define	BS_Reserved1	0		;  1字节 未使用
%define	BS_BootSig	0x29		;  1字节 扩展引导标记
%define	BS_VolID		0		;  4字节 卷序号
%define	BS_VolLab		'12345678900'	; 11字节 卷标
%define	BS_FileSysType	'FAT12   '	;  8字节 文件系统类型
;---------------------------------------------------------------------------------------------------
; 几个常量
; 分区信息
%define	Fat1FstSec	BPB_RsvdSecCnt		; 第一个FAT表的开始扇区号
%define	Fat2FstSec	(Fat1FstSec + BPB_FATSz16)	; 第二个FAT表的开始扇区号
%define	RootFstSec	(Fat2FstSec + BPB_FATSz16)	; 根目录区的开始扇区号
%define	DatFstSec		(RootFstSec + (BPB_RootEntCnt * 32 + BPB_BytsPerSec - 1)/BPB_BytsPerSec)	; 数据区的开始扇区号
; 根目录项格式	即：文件属性
%define	DIR_Name		0	; 文件名8字节，扩展名3字节
%define	DIR_Attr		0xb	; 文件属性
%define	DIR_Res		0xc	; 保留位
%define	DIR_WrtTime	0x16	; 最后一次写入时间
%define	DIR_WrtDate	0x18	; 最后一次写入日期
%define	DIR_FstClus	0x1a	; 此条目对应的开始簇号
%define	DIR_FileSize	0x1c	; 文件大小
; FAT项格式
; 数据区的第一个簇号是2
; FAT表中的第0、1项始终不用
; FAT表每12位表示下一个簇
; 如果值大于或等于0xff8，则表示当前簇已经是本文件的最后一个簇
; 如果值为0xff7，表示它是一个坏簇
%define	ClusEnd	0xff8
%define	ClusBad	0xff7

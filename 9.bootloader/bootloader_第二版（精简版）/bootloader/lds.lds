ENTRY(_start)
SECTIONS
{
 . = 0x00000000;
 .text :
 {
  *(.__image_copy_start)
   objs/head.o (.text*)
  *(.text*)
 }
 .data :
 {
	*(*)
 }
 . = ALIGN(4);

 .image_copy_end :
 {
  *(.__image_copy_end)
 }
}

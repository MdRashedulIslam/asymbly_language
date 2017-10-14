.model small
.stack 100h
.data
     msg db "1st element:$" 
      msg2 db 10,13,"1st element:$"
       msg3 db 10,13,"1st element:$"
       
  a db 0
  b db 0
  c db 0

.code 
 
 mov ax,@data
 mov ds,ax
 
 mov ah,9
 lea dx,msg
 int 21h
 
  mov ah,1
 int 21h 
 mov a,al   ;mov ah,1

 
 
 
     mov ah,9
 lea dx,msg2
 int 21h 
 
   mov ah,1
 int 21h 
 mov b,al 
 
 
 
  mov ah,9
 lea dx,msg3
 int 21h 
 

  mov al,a
  add al,b
  mov c,al
  sub c,48

      mov ah,2
      mov dl,c
      int 21h
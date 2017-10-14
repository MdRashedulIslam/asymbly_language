.model small
.stack 100h
.data
msg db "enter the 1st value:$"
msg2 db 10,13,"enter the 2nd value:$"
msg3 db 10,13,"total value:$" 

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
 mov a,al
  
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


 
 
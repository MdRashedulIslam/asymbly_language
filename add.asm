
org 100h
.model small
.stack 100h
.data    
x db 0  
 y db 0
 z db 0
msg db 10,13,"total $"
.code 

mov ah,1      ;inoput
int 21h
mov x,al

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h   

mov ah,1      ;inoput
int 21h
mov y,al 

mov al,x
add al,y
mov z,al     
 

   mov ah,9 ;output string
   mov dl,msg
   int 21h


mov ah,2 
sub z,48
mov dl,z
int 21h





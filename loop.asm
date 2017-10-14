.model small
.stack 100h
.data  

a db 1,2,3,4  

d db 0

.code 
mov ax,@data
mov ds,ax

mov cx,4
mov di,0 

  sum:
mov al,a[di]
add al,a[di+1]  
add al,48

mov ah,2
mov dl,al
int 21h 

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

   

inc di 
dec cx

cmp cx,0
jne sum

 
 






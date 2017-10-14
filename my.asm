.model small
.stack 100h
.data  
a db 1,2,3,4
b db 0

.code 
main proc
    mov al,0
    mov cx,4
    mov di,0
    
    mov al,al[di]
    mov dl,al 
    
    mov ah,2
    mov dl
    
    inc di
    
    
    




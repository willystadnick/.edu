.model small
.stack 100h
.data
   frase db 'alô mundo!',13,10,'$'
 
.code
   inicio:
      mov ax,@data
      mov ds,ax
      
      mov ah,9
      mov dx, offset frase
      int 21h

      mov ah,4ch
      int 21h
  
 end inicio
;academicos:
; Willy Stadnick / willynho@gmail.com
; Gabriel Freitas / gabriel_gfreitas@hotmail.com

;considere a declaração de uma área de memória: senha db '1234'
;codificar um programa que receba 4 caracteres, compare com a senha
;se for diferente, mostre na tela a frase 'senha invalida'
;caso contrario mostre a frase 'ok!'

;desenvolvimento:

.model small

.stack 100h

.data
	senha db '1234'
	tentativa db 4 dup (?)
	enunc db 'digite sua senha',13,10,'$'
	invalida db 'senha invalida',13,10,'$'
	valida db 'ok!',13,10,'$'

.code
inicio:
	mov ax,@data
	mov ds,ax
	
	mov ah,9
	mov dx, offset enunc
	int 21h

le1:	
	mov ah, 1 ;espera o usuario digitar 1º caractere
	int 21h
	
	cmp al, '1' ;compara al com o primeiro digito de senha
	je le2
	jne falha
	
le2:
	mov ah, 1 ;espera o usuario digitar 2º caractere
	int 21h
	
	cmp al, '2'
	je le3
	jne falha

le3:
	mov ah, 1 ;espera o usuario digitar 3º caractere
	int 21h
	
	cmp al, '3'
	je le4
	jne falha
	
le4:
	mov ah, 1 ;espera o usuario digitar 4º caractere
	int 21h
	
	cmp al, '4'
	je sucesso
	jne falha

sucesso:
	mov ah, 9
	mov dx, offset valida
	int 21h
	jmp fim
	
falha:
	mov ah,9
	mov dx, offset invalida
	int 21h
	jmp fim

fim:
	mov ah,4ch
	int 21h
	
end inicio
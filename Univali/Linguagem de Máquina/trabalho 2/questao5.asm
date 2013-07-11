.model small
.stack 100h
.data
	unid db '&'
	deze db '&'
	cent db '&'
	bin db '&'
	pergunta db 'digite uma tecla! ', '$'

.code
	inicio:
		mov ax, @data
		mov ds, ax
		
	exibe:
		mov ah, 9
		mov dx, offset pergunta
		int 21h
		
	lerTecla:
		mov ah, 1
		int 21h
		
		;espaço
		;mov dl, 20h
		;mov ah, 2
		;int 21h
		
		mov cl, al
		mov bl, al
		
		mov [unid], 0
		mov [deze], 0
		mov [cent], 0
		mov [bin], 0
		
	centena:
		cmp al, 100
		jb decimal
		inc [cent]
		sub al, 100
		jmp centena

	decimal:
		cmp al, 10
		jb unidade
		inc [deze]
		sub al, 10
		jmp decimal

	unidade:
		cmp al, 1
		jb transforma
		inc [unid]
		sub al, 1
		jmp unidade

	transforma:
		add [cent], 30h
		add [deze], 30h
		add [unid], 30h

	escreve:
		mov ah, 2
		mov dl, [cent]
		int 21h

		mov ah, 2
		mov dl, [deze]
		int 21h

		mov ah, 2
		mov dl, [unid]
		int 21h

	binario1:
		cmp cl, 128
		jb escreve01
		sub cl, 128
		jmp escreve11

		escreve01:
			mov dl, 30h
			mov ah, 2
			int 21h
			jmp binario2

		escreve11:
			mov dl, 31h
			mov ah, 2
			int 21h
			jmp binario2

	binario2:
		cmp cl, 64
		jb escreve02
		sub cl, 64
		jmp escreve12

		escreve02:
			mov dl, 30h
			mov ah, 2
			int 21h
			jmp binario3

		escreve12:
			mov dl, 31h
			mov ah, 2
			int 21h
			jmp binario3

	binario3:
		cmp cl, 32
		jb escreve03
		sub cl, 32
		jmp escreve13

		escreve03:
			mov dl, 30h
			mov ah, 2
			int 21h
			jmp binario4

		escreve13:
			mov dl, 31h
			mov ah, 2
			int 21h
			jmp binario4

	binario4:
		cmp cl, 16
		jb escreve04
		sub cl, 16
		jmp escreve14

		escreve04:
			mov dl, 30h
			mov ah, 2
			int 21h
			jmp binario5

		escreve14:
			mov dl, 31h
			mov ah, 2
			int 21h
			jmp binario5

	binario5:
		cmp cl, 8
		jb escreve05
		sub cl, 8
		jmp escreve15

		escreve05:
			mov dl, 30h
			mov ah, 2
			int 21h
			jmp binario6

		escreve15:
			mov dl, 31h
			mov ah, 2
			int 21h
			jmp binario6

	binario6:
		cmp cl, 4
		jb escreve06
		sub cl, 4
		jmp escreve16

		escreve06:
			mov dl, 30h
			mov ah, 2
			int 21h
			jmp binario7

		escreve16:
			mov dl, 31h
			mov ah, 2
			int 21h
			jmp binario7

	binario7:
		cmp cl, 2
		jb escreve07
		sub cl, 2
		jmp escreve17

		escreve07:
			mov dl, 30h
			mov ah, 2
			int 21h
			jmp binario8

		escreve17:
			mov dl, 31h
			mov ah, 2
			int 21h
			jmp binario8

	binario8:
		cmp cl, 1
		jb escreve08
		sub cl,1
		jmp escreve18

		escreve08:
			mov dl, 30h
			mov ah, 2
			int 21h
			jmp hexa

		escreve18:
			mov dl, 31h
			mov ah, 2
			int 21h
			jmp hexa

	hexa:
		mov al, 0

	teste1:
		cmp bl, 16
		jb digito2
		sub bl, 16
		inc al
		jmp teste1

             		;al = 1º dig
		        ;bl = 2º dig
                            ;transforma primeiro digito
         digito1:
		cmp al, 9
		jbe menorigual9al

		add al, 55h       <--- acho que eh 55h mesmo..mas testa aí

		mov ah, 2
		mov al, al    ;  <----- dah uma olhada nessas variáveis aqui cara, nao sei 
como fazer..
		int 21h
		fim:


	menorigual9al:
		add bl, 30h

		mov ah, 2
		mov al, bl    ;  <----- dah uma olhada nessas variáveis aqui cara, nao sei 
como fazer..
		int 21h
		fim:
                            ; transforma segundo dígito
	digito2:
		cmp bl, 9
		jbe menorigual9

		add bl, 55h

		mov ah, 2
		mov al, bl
		int 21h
		jmp digito1

	menorigual9:
		add bl, 30h

		mov ah, 2
		mov al, bl
		int 21h
		jmp digito1


	fim:
		mov ah, 1
		int 21h

		mov ah, 1
		int 21h

		mov ah, 4ch
		int 21h

end inicio


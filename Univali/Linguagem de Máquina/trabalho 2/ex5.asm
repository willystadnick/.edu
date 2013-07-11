.model small
.stack 100h
.data
	enunc db 'pressione qualquer tecla ou <esc> para terminar:', '$'
	tecla db '?', '$'
	ctn db '?', '$'
	dzn db '?', '$'
	und db '?', '$'
 
.code
	inicio:
		mov ax, @data
		mov ds, ax
		
	exibe:      
		mov ah, 9
		mov dx, offset enunc
		int 21h

	zera:
		mov dl, 13	 ;pula	
		mov ah, 2
		int 21h

		mov dl, 10	 ;volta	
		mov ah, 2
		int 21h

		mov [ctn], 0
		mov [dzn], 0
		mov [und], 0

	letecla:
		mov ah, 1
		int 21h

		mov [tecla], al	;salva a tecla digitada em [tecla]
		cmp [tecla], 1bh	 ;verifica se a tecla é <esc>
		jne decimal

		mov ah, 4ch
		int 21h

;***** conversão para decimal *****

;***

exibe3: jmp zera

;***

decimal:
	mov bl, [tecla]

	mov dl, 20h	 ;espaco	
	mov ah, 2
	int 21h

	centena:
		cmp bl, 100
		jb dezena
		inc [ctn]
		sub bl, 100
		jmp centena

	dezena:
		cmp bl, 10
		jb unidade
		inc [dzn]
		sub bl, 10
		jmp dezena

	unidade:
		cmp bl, 1
		jb transforma
		inc [und]
		sub bl, 1
		jmp unidade

	transforma:
		add [ctn], 30h
		add [dzn], 30h
		add [und], 30h

	mov ah, 2
	mov dl, [ctn]
	int 21h

	mov ah, 2
	mov dl, [dzn]
	int 21h

	mov ah, 2
	mov dl, [und]
	int 21h

;***** conversão para binario *****

	mov bl, [tecla]

	mov dl, 20h	 ;espaco	
	mov ah, 2
	int 21h

	binario1:
		cmp bl, 128
		jb escreve01
		sub bl, 128
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
		cmp bl, 64
		jb escreve02
		sub bl, 64
		jmp escreve12

		escreve02:
			mov dl, 30h
			mov ah, 2
			int 21h
			jmp binario3

;***

exibe2: jmp exibe3

;***

		escreve12:
			mov dl, 31h
			mov ah, 2
			int 21h
			jmp binario3

	binario3:
		cmp bl, 32
		jb escreve03
		sub bl, 32
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
		cmp bl, 16
		jb escreve04
		sub bl, 16
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
		cmp bl, 8
		jb escreve05
		sub bl, 8
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
		cmp bl, 4
		jb escreve06
		sub bl, 4
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
		cmp bl, 2
		jb escreve07
		sub bl, 2
		jmp escreve17

;***

exibe1: jmp exibe2

;***

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
		cmp bl, 1
		jb escreve08
		sub bl, 1
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

;***** conversão para hexa *****

	hexa:
		mov bl, [tecla]

		mov dl, 20h	 ;espaco	
		mov ah, 2
		int 21h

		mov al, 0

	teste1:
		cmp bl, 16
		jb digito1
		sub bl, 16
		inc al
		jmp teste1

;al = 1º dig
;bl = 2º dig
;transforma primeiro digito

	digito1:
		cmp al, 9
		jbe menorigual9al

		add al, 37h

		mov dl, al
		mov ah, 2
		int 21h

		jmp digito2

	menorigual9al:
		add al, 30h

		mov dl, al
		mov ah, 2
		int 21h

	digito2:	;transforma segundo dígito
		cmp bl, 9
		jbe menorigual9

		add bl, 37h

		mov dl, bl
		mov ah, 2
		int 21h

		jmp exibe1

	menorigual9:
		add bl, 30h

		mov dl, bl
		mov ah, 2
		int 21h

		jmp exibe1

end inicio
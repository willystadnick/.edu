.model small
.stack 100h
.data
	arquivo db 'teste.txt', 0
	FileHandle dw ?
	buffer db 10 dup (?)
	msgA db 'abrindo arquivo...', 13, 10, '$'
	erroA db 'erro ao abrir o arquivo', 13, 10, '$'
	erroL db 'erro ao ler o arquivo', 13, 10, '$'
	erroF db 'erro ao fechar o arquivo', 13, 10, '$'
	
.code

;sub
escreve proc
	mov ah, 9
	mov dx, offset buffer
	int 21h
	
	ret
escreve endp

inicio:
	mov ax, @data
	mov ds, ax

	;abrir arquivo
	mov ah, 9
	mov dx, offset msgA
	int 21h

	abrir:
		mov ah, 3dh
		mov al, 0 ;somente leitura
		mov dx, offset arquivo ;arquivo escolhido
		int 21h				
		jc erroAbrir ;pula se houver erro
		mov [FileHandle], ax
		jmp ler

	erroAbrir:
		mov ah, 9
		mov dx, offset erroA
		int 21h

		jmp fim

	;ler arquivo
	ler:
		mov ah, 3fh
		mov dx, offset buffer ;buffer q armazena os dados lidos
		mov cx, 10 ;nro de bytes a serem lidos
		mov bx, [FileHandle]
		int 21h
		jc erroLer
		call escreve
		cmp ax, cx
		jne EOF ;final do arquivo
		jmp ler

	erroLer:
		mov ah, 9
		mov dx, offset erroL
		int 21h

		jmp fim

	EOF:
		jmp fechar

	;movimentação do ponteiro arquivo
	movimentar:
		mov ah, 42h
		mov al, 0 ;deslocamento a partir do inicio
		mov cx, 0 ;tamanho do deslocamento cx:dx
		mov dx, 10 ;tamanho do deslocamento cx:dx
		mov bx, [FileHandle]
		int 21h
		jc erroSeek

	erroSeek:
		cmp ax, 1 ;função inválida
		je erroFunc
		cmp ax, 6 ;file handle invalido
		je erroFile

	erroFunc:
	erroFile:

	;fechar arquivo
	fechar:
		mov ah, 3eh
		mov bx, [FileHandle]
		jc erroFechar
		jmp fim

	erroFechar:
		mov ah, 9
		mov dx, offset erroF
		int 21h

	fim:
		mov ah, 1
		int 21h

		mov ah, 4ch
		int 21h

end inicio
;trabalho final
;implementar um programa que encontre o nro de ocorrencias d uma seq d caract em um arquivo
;o usuario deve fornecer o nome do arquivo que vai ser pesquisado e a palavra a ser pesquisada (max 20 caract)
;como saída o prog deve mostrar o total d ocorrencias da palavra
;entrega 03/07

.model small
.stack 100h
.data
	pedeArquivo db 'digite o nome do arquivo: ', '$'
	pedePalavra db 'digite a palavra a ser pesquisada no arquivo: ', '$'
	achou db 'numero de ocorrencias da palavra no arquivo: ', '$'
	nAchou db 'nenhuma ocorrencia da palavra no arquivo...', 10, 13, '$'

	fileHandle dw ?
	buffer db 32 dup (?)
	indexPalavra db 0
	ocorrencias dw 0
	pulaLinha db 10, 13, '$'

	erroAbreArquivo db 'erro ao abrir o arquivo indicado...', 10, 13, '$'
	erroLerArquivo db 'erro ao ler o arquivo indicado...', 10, 13, '$'
	
	;variaveis para guardar o nome do arquivo digitado
	totalArquivo db 21
	tamanhoArquivo db ?
	arquivo db 21 dup (?)
	
	;variaveis para guardar a palavra a ser pesquisada no arquivo
	totalPalavra db 21
	tamanhoPalavra db ?
	palavra db 21 dup (?)
	
	ctn db 0, '$'
	dzn db 0, '$'
	und db 0, '$'

.code
; --- sub-rotinas ---
	escrever proc ;escreve o conteudo de dx na tela
		;Entrada:
		;dx = variavel a ser escrita
		mov ah, 9
		int 21h
		ret
	escrever endp

	ler proc ;le no maximo dx caracteres da tela, ou até receber <enter>
		;Entrada:
		;dx = total a ser lido
		mov ah, 0ah
		int 21h
		ret
	ler endp
	
	procura proc
		;Entrada
		;ax = tamanho do buffer
		push ax
		
		mov si, 0 ;indexador do buffer
		mov bh, 0
		mov bl, [indexPalavra] ;indexador da palavra
		
		comeco:
			mov cl, [palavra + bx]
			mov dl, [buffer + si]
			cmp cl, dl ;compara palavra[i] com buffer [j]
			je iguais

			mov bx, 0
			inc si

			cmp si, ax
			jne comeco
			jmp saida

		iguais:
			inc bx
			inc si

			cmp bl, [tamanhoPalavra]
			jne testa

			inc [ocorrencias]

		testa:
			cmp si, ax
			jne comeco

		saida:
			mov [indexPalavra], bl
			pop ax
			ret
	procura endp

	converte proc
		push bx
		mov bx, [ocorrencias]
		
		centena:
			cmp bx, 100
			jb dezena
			inc [ctn]
			sub bx, 100
			jmp centena
			
		dezena:
			cmp bx, 10
			jb unidade
			inc [dzn]
			sub bx, 10
			jmp dezena
			
		unidade:
			cmp bx, 1
			jb cen
			inc [und]
			sub bx, 1
			jmp unidade
		
		cen:
			cmp [ctn], 0
			jz dez

			add [ctn], 30h

			mov ah, 2
			mov dl, [ctn]
			int 21h
		
		dez:
			cmp [ctn], 0
			jnz escreveDezena

			cmp [dzn], 0
			jz uni
			
		escreveDezena:
			add [dzn], 30h
			
			mov ah, 2
			mov dl, [dzn]
			int 21h
		
		uni:
			add [und], 30h

			mov ah, 2
			mov dl, [und]
			int 21h

		pop bx			
		ret
	converte endp

; --- codigo ---
	inicio:
		mov ax, @data
		mov ds, ax

		mov dx, offset pedeArquivo
		call escrever
		
		mov dx, offset totalArquivo
		call ler
		
		mov dx, offset pulaLinha
		call escrever

	;prepara o nome do arquivo
		mov bx, 0
		mov bl, [tamanhoArquivo]
		mov [arquivo + bx], 0

		mov dx, offset pedePalavra
		call escrever

		mov dx, offset totalPalavra
		call ler
		
		mov dx, offset pulaLinha
		call escrever
		
	;abre o arquivo
		mov ah, 3dh
		mov al, 0 ;somente leitura
		mov dx, offset arquivo
		int 21h				
		jc erroAbrir ;pula se houver erro

		mov [fileHandle], ax
		jmp lerArquivo
		
	erroAbrir:
		mov dx, offset erroAbreArquivo		
		call escrever
		jmp fim

	lerArquivo:
		mov ah, 3fh
		mov dx, offset buffer ;buffer q armazena os dados lidos
		mov cx, 32 ;nro de bytes a serem lidos
		mov bx, [fileHandle]
		int 21h
		jc erroLer

		;ax conterá o nro d bytes efetivamente lidos
		call procura

		cmp ax, 20h ;32 em hexa
		jb EOF ;final do arquivo

		jmp lerArquivo
	
	erroLer:
		mov dx, offset erroLerArquivo
		call escrever
		jmp fim

	EOF:
		cmp [ocorrencias], 0
		ja axou

		;não achou / zero ocorrencias
		mov dx, offset nAchou
		call escrever
		jmp fim
	
	axou:
		mov dx, offset achou
		call escrever

		call converte

	fim:
		mov ah, 1
		int 21h
		
		mov ah, 4ch
		int 21h

end inicio
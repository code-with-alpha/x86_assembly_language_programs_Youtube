INCLUDE Irvine32.inc

.data

prompt BYTE "Enter the number of rows: ", 0
rows DWORD ?

.code
main PROC

mov edx, OFFSET prompt
call writestring

call readint
mov rows, eax

mov ecx, rows
mov ebx, 1

L1:
	mov esi, ecx

	mov ecx, rows
	printSpaces:
		mov eax, ' '
		call writechar
	Loop printSpaces

	mov ecx, ebx
	printStars:
		mov eax, '*'
		call writechar

		mov eax, ' '
		call writechar
	Loop printStars

	call CRLF
	inc ebx
	dec rows
	mov ecx, esi

Loop L1



exit
main ENDP
END main
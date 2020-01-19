INCLUDE Irvine32.inc

.data 
hel_ BYTE "HELLO ",0
wor_ BYTE "WORLD",0

start_var BYTE "var : ",0

var	 DWORD 0

.code 
main PROC
mov eax,0
mov ebx,0

while_:
call crlf
	mov eax,var
	call writeint
	mov edx,0
	mov eax,var
	mov ebx,2
	div ebx
	cmp edx,0
	jne world_
	mov edx,OFFSET hel_
	call writestring
	jmp no_wor
world_:
		mov edx,OFFSET wor_
		call writestring
		call crlf

no_wor:
	
	inc var
	cmp var,10
	jle while_







call crlf

call waitmsg
exit 
main ENDP
END main
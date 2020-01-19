INCLUDE Irvine32.inc

.data 
input BYTE "Enter 4 Values : ",0
strne BYTE "Input Integers are NOT EQUAL.",0
stre BYTE "Input Integers are EQUAL.",0
var DWORD  4 DUP(0)

.code 
main PROC
mov eax,0
mov ebx,0
mov edx,OFFSET input
mov ecx,lengthof input
call writestring
mov ecx,4
mov esi,0
l1:
	mov eax,0
	call readdec
	mov var[esi],eax
	add esi,4
	loop l1

mov ecx,3
mov esi,0
l2:
	mov eax,DWORD PTR var[esi]
	cmp eax,DWORD PTR var[esi+4]
	jne not_equal
	add esi,4
	loop l2

equal:
	call crlf
	mov edx,OFFSET stre
    mov ecx,lengthof stre
	call writestring
	jmp out_
not_equal:
	call crlf
	mov edx,OFFSET strne
	mov ecx,lengthof strne
	call writestring
out_:NOP


call crlf

call waitmsg
exit 
main ENDP
END main

INCLUDE Irvine32.inc
.data

input BYTE "Enter Number : ",0
input_base BYTE "Enter Base : ",0
is BYTE " is ",0
base DWORD 0
temp DWORD 0

.code
main PROC
mov eax,0
mov edx,OFFSET input_base
call writestring
call readdec
mov base,eax


mov edx,OFFSET input
call writestring
call readdec

call crlf
call writebin
call crlf
mov ebx,eax

level2:

mov ecx,0
mov eax,1
l1:
	mov ecx,eax
	shl ecx,1
	cmp ecx,ebx
	jg l2
	cmp eax,ebx
	jge l2
	shl eax,1
	jmp l1
l2:
	xor ebx,eax
	mov temp,eax
	mov eax,ebx
	call crlf
	call writebin
	call crlf

	mov eax,temp
	;cmp ebx,edx
	;jne level2
	
call crlf
call writebin
call crlf

add ecx,eax
shl eax,2

add ecx,eax
shl eax,2

add ecx,eax

mov edx,eax
mov eax,ecx
call writedec
call crlf
mov eax,ebx
mul ecx

call writedec
call crlf
call waitmsg

exit
main ENDP







END main
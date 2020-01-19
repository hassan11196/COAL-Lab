
INCLUDE Irvine32.inc
.data

input BYTE "Enter Number : ",0
input_base BYTE "Enter Base : ",0
arr DWORD 1,2,3,4,5

is BYTE " is ",0
base DWORD 0
temp DWORD 0

.code
main PROC
mov eax,0
mov eax,offset arr
call writehex
call crlf

push OFFSET arr
push DWORD PTR lengthof arr
call print_arr
call makearray


call crlf


call writedec
call crlf
call waitmsg

exit
main ENDP

print_arr PROC,
address:DWORD, len:DWORD

mov ecx,5
mov esi,address
mov eax,esi
call writehex
call writehex
l1:
	mov eax,esi
	call writedec
	call crlf
	loop l1

ret
print_arr endp


makeArray PROC
	push ebp
	mov	ebp, esp
	sub	esp, 32
	lea esi, [ebp - 30]
	
	mov ecx,30
L1:
	mov	BYTE PTR [esi], '*'
	inc	esi
	loop	L1
	add	esp, 32
	pop	ebp
	ret
makeArray ENDP


END main
INCLUDE Irvine32.inc
.data 
myString BYTE "Hello" ,0
stri BYTE "HU"

arr BYTE 1,2,3,4,5

.code
main PROC
mov edx, OFFSET arr
mov ecx,5
mov ebx,0
l1:
	mov eax,0
	mov al,[edx]
	add bl, al 
	call writedec
	call crlf
	inc edx
loop l1
call crlf
mov eax,ebx
call crlf
call writedec
call crlf
call waitmsg

exit
main ENDP
END main

arr BYTE 1,2,3,4,5

.code
main PROC
mov edx, OFFSET arr
mov ecx,5

l1:
	inc edx
	mov eax,[edx]
	call writedec
	call crlf
loop l1

call waitmsg

exit
main ENDP
END main
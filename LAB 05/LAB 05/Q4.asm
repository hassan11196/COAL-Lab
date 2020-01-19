INCLUDE Irvine32.inc
.data 
cnt BYTE 10
.code
main PROC
mov eax,0
call writedec
call crlf
mov eax,1
call writedec
call crlf
mov eax,0
mov edx,0
mov ebx,1
movzx ecx,cnt

l1: 
	mov eax,0
	add eax,ebx
	add eax,edx
	
	mov edx , ebx
	mov ebx,eax
	

	call writedec 
	call crlf
	loop l1

call crlf

exit
main ENDP
END main
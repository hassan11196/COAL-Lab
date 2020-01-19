INCLUDE Irvine32.inc
.data 
initial DWORD 0
terminal DWORD 0

.code

main PROC
mov eax,0
call getmseconds
mov initial,eax
mov eax,1
mov ebx,0
mov ecx,0
mov ecx,5

l1 : 
	mov ebx,ecx
	mov ecx,2
	l2 :
		mov edx,2
		mul edx
		
	loop l2
	mov ecx,ebx	
loop l1

call writedec
call crlf
call getmseconds
sub eax,initial
call writedec
call crlf 


call crlf

exit
main ENDP

	
END main

INCLUDE Irvine32.inc
.data
counter BYTE 0


.code
main PROC

mov ecx,2
outer:
	mov eax,0
	mov eax,ecx
	mov ecx,10
	inner : 
		inc counter
	loop inner	

	mov ecx,eax
loop outer
	mov eax,0
	mov al , counter

call crlf
call writedec
call crlf
call waitmsg

exit
main ENDP
END main
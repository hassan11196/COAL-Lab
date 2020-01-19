INCLUDE Irvine32.inc

.data 
non_ BYTE "FIRST NON ZERO VALUE IS : ",0
intArr SWORD 0,0,0,0,1,20,35,-12,66,4,0

var	 DWORD 0

.code 
main PROC
mov eax,0
mov ebx,var

while_:
	movsx edx,intarr[ebx]
	cmp dx,0
	jg non_zero
	jmp no_wor
non_zero:
		mov edx,OFFSET non_
		call writestring
		movsx eax,intarr[ebx]
		call writeint
		call crlf
		jmp out_
no_wor:
	inc ebx
	inc ebx
	cmp ebx,10
	jle while_

out_:NOP





call crlf

call waitmsg
exit 
main ENDP
END main
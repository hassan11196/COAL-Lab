INCLUDE Irvine32.inc

.data 
sval SBYTE -5
sval2 SBYTE -6
not_ BYTE "INT are NOT equal",0
equ_ BYTE "INT are equal",0

.code 
main PROC
mov eax,0
mov ebx,0
mov ax,15
mov bx,15
cmp bx,ax
je equal_
not_equal:
	mov edx,OFFSET not_
	call writestring
	jmp out_
equal_:
	mov edx, OFFSET equ_
	call writestring
out_:
call dumpregs

call writeint
call crlf
call dumpregs
call waitmsg
exit 
main ENDP
END main
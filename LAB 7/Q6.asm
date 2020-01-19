INCLUDE Irvine32.inc

.data 
ent_val BYTE "Enter Value to search : ",0
pre_ BYTE "Required Value is Present in list : ",0
nop_ BYTE" Required Value is NOT Present in list. ",0
intArr SWORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20

val	SWORD 0
var	 DWORD 0

.code 
main PROC
mov eax,0
mov ebx,var

mov edx,OFFSET ent_val
call writestring
call readint
mov val,ax

while_:
	mov dx,intarr[ebx]
	

	cmp dx,ax
	je equal_
	jmp no_wor
equal_:
		mov edx,OFFSET pre_
		call writestring
		movsx eax,intarr[ebx]
		call writedec
		call crlf
		jmp out_

no_wor:
	inc ebx
	inc ebx
	cmp ebx,sizeof intarr - 1
	jle while_

not_equal_:
	movsx eax,val
	call writedec
	mov edx,OFFSET nop_
	call writestring
	call crlf
out_:NOP





call crlf

call waitmsg
exit 
main ENDP
END main
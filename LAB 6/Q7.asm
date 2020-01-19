INCLUDE Irvine32.inc

.data 
input BYTE "Enter 8 Values for Array: ",0
strinp BYTE "Input Array : ",0
strsort BYTE "Sorted Array : ",0
strswap BYTE "Swap Count : ",0
TAB_ BYTE '	'
var DWORD  8 DUP(0)
swap_cnt DWORD 0
.code 
main PROC
mov eax,0
mov ebx,0
mov edx,OFFSET input
mov ecx,lengthof input
call writestring
mov ecx,8
mov esi,0
l1:
	mov eax,0
	call readdec
	mov var[esi],eax
	add esi,4
	loop l1
call crlf
mov edx,OFFSET strinp
mov ecx,lengthof strinp
call writestring
mov ecx,8
mov esi,0
l2:	
	mov al,TAB_
	call writechar
	mov eax,var[esi]
	call writedec
	add esi,4
	loop l2

mov ecx,7
mov esi,0
l3:	
	mov eax,var[esi]
	cmp eax,var[esi+4]
	jle no_swap
	mov ebx,var[esi]
	mov edx,var[esi+4]
	mov var[esi],edx
	mov var[esi+4],ebx
	inc swap_cnt
no_swap:	
	add esi,4
	loop l3

out_:NOP

call crlf
mov edx,OFFSET strsort
mov ecx,lengthof strsort
call writestring
mov ecx,8
mov esi,0
l4:	
	mov al,TAB_
	call writechar
	mov eax,var[esi]
	call writedec
	add esi,4
	loop l4
call crlf
mov edx,OFFSET strswap
mov ecx,lengthof strswap
call writestring
mov eax,swap_cnt
call writedec
call crlf

call waitmsg
exit 
main ENDP
END main
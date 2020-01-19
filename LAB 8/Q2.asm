INCLUDE Irvine32.inc

.data 
input BYTE "Enter 8 Values for Array: ",0
strinp BYTE "Input Array : ",0
str_min BYTE "Minimum : ",0
str_max BYTE "Maximum : ",0
min_var DWORD 0
max_var DWORD 0
var DWORD  8 DUP(0)

TAB_ BYTE '	'

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


push OFFSET var
call MinMaxArray

call crlf

call waitmsg
exit 
main ENDP

MinMaxArray PROC 
push EBP
mov EBP,ESP

mov ecx,8
mov esi,0
mov ebx,[ebp+8]
mov edx,[ebx]
mov min_var,edx
mov max_var,edx
l3:	
	mov eax,[ebx+esi]
	cmp eax,min_var
	jge no_swap1
	mov min_var,eax
no_swap1:	
	cmp eax,max_var
	jle no_swap2
	mov max_var,eax
no_swap2:	
	add esi,4
	loop l3

mov eax,min_var
mov edx,OFFSET str_min
mov ecx,lengthof str_min
call writestring
call writedec

mov al,TAB_
call writechar


mov eax,max_var
mov edx,OFFSET str_max
mov ecx,lengthof str_max
call writestring
call writedec
mov esp,ebp
pop EBP
RET 4
MinMaxArray ENDP

END main
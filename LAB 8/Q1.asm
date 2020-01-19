INCLUDE Irvine32.inc

.data 
input BYTE "Enter 3 Values for i,j,k: ",0
output BYTE "Product of i,j,k is : ",0
TAB_ BYTE '	'
i DWORD 0
j DWORD 0
k DWORD 0
.code 
main PROC
mov eax,0
mov ebx,0
mov edx,OFFSET input
mov ecx,lengthof input
call writestring

call readdec 
mov i,eax
call readdec 
mov j,eax
call readdec 
mov k,eax


push k
push j
push i
call ThreeProd

call crlf

call waitmsg
exit 
main ENDP

ThreeProd PROC 
push EBP
mov EBP,ESP
mov eax,1
mov ecx,3
mov ebx,8
l1:
	mov edx,DWORD PTR [ebp+ebx]
	mul edx
	add ebx,4
	loop l1

mov edx,OFFSET output
mov ecx,lengthof output
call writestring
call writedec
mov esp,ebp
pop EBP
RET 12
ThreeProd ENDP

END main
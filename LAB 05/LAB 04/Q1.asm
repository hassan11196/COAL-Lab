INCLUDE Irvine32.inc
.data 
arr DWORD 61,43,11,52,25
string BYTE "SORTED ARRAY : ",0
space BYTE ", ",0
cnt BYTE 0
.code
main PROC
mov eax,0
mov ebx,0
mov ecx,0
mov edx,0
mov ecx,arr
mov eax,[arr+8]
mov arr,eax
mov ebx,[arr+4]
mov eax,[arr+16]
mov [arr+4],eax
mov [arr+8],ebx
mov [arr+16],ecx

;This Loop is just to print the sorted Array
mov edx , OFFSET string
mov ecx , lengthof string
call writestring
mov ecx,5
l1 :movzx eax, cnt
	mov edx,type arr
	mul edx
	mov ebx , [arr + eax]
	mov eax,ebx
	call writedec
	mov edx , OFFSET space
	inc cnt
	call writestring	
	loop l1
call crlf

exit
main ENDP
END main
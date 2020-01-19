INCLUDE Irvine32.inc
.data 
array1 WORD 10,20,30,40,50,60,70
cnt BYTE 0
.code
main PROC
mov eax,0
mov ebx,0
mov esi,lengthof array1
mov eax,lengthof array1
mov edx,0
mov ecx ,2
div ecx
mov ecx,eax
mov eax,0
mov edx,0
l1:
movzx eax, array1[esi*type array1 - type array1]
movzx edx, array1[ebx*type array1]
mov array1[esi*type array1 - type array1],dx
mov array1[ebx*type array1],ax
inc ebx
dec esi
loop l1

call crlf

exit
main ENDP
END main
INCLUDE Irvine32.inc
.data 
array1 BYTE 10,20,30,40
array2 WORD 4 DUP(?)  
.code
main PROC
mov eax,0
mov ebx,0
mov ecx,4
l1:
movzx eax, [array1 + ecx -1]
mov [array2 + ebx],ax
add ebx,2
loop l1

call crlf

exit
main ENDP
END main
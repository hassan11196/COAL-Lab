INCLUDE Irvine32.inc
.data 
array1 WORD 10,20,30,40
ptr1 DWORD OFFSET array1 
ptr2 DWORD OFFSET array1 + 1
ptr3 DWORD OFFSET array1 + 2
ptr4 DWORD OFFSET array1 + 3 
cnt BYTE 0
.code
main PROC
mov eax,0
mov eax,[ptr1]
call writedec
call crlf

mov eax,0
mov eax,[ptr2]
call writedec
call crlf

mov eax,0
mov eax,[ptr3]
call writedec
call crlf

mov eax,0
mov eax,[ptr4]
call writedec
call crlf

call crlf

exit
main ENDP
END main
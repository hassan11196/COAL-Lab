INCLUDE Irvine32.inc

.data 
input BYTE "Enter a Value :  ",0
output BYTE "Square of ",0
is_ BYTE " is :",0;


TAB_ BYTE '	'

.code 
main PROC
mov eax,0
mov ebx,0
mov edx,OFFSET input
mov ecx,LENGTHOF input
call writestring
call readint
push eax
call LocalSquare


call crlf

call waitmsg
exit 
main ENDP

LocalSquare PROC 
enter 4,0
mov eax,[ebp+8]
mov [ebp-4],eax

mul DWORD PTR [ebp-4]

mov [ebp-4],eax
mov edx,OFFSET output
mov ecx,LENGTHOF output
call writestring
mov eax,[ebp+8]
call writedec
mov edx,OFFSET is_
mov ecx,LENGTHOF is_
call writestring
mov eax,[ebp-4]
call writedec
leave
RET 4
LocalSquare ENDP

END main
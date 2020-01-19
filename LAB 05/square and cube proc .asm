
INCLUDE Irvine32.inc
.data

sq BYTE "Square of ",0
cu BYTE "Cube of ",0
is BYTE " is ",0

.code
main PROC
mov eax , 0;
call readint
push eax
call square
call cube

call crlf
call waitmsg

exit
main ENDP


square proc
push ebp
mov ebp,esp

mov edx , 0
mov ecx , 0
mov edx , offset sq
mov ecx , lengthof sq
call writestring
call writedec
mov edx , offset is
mov ecx , lengthof is
call writestring
mov ebx,0
mov ebx, eax
mul ebx
call writedec
mov eax , ebx


call crlf
pop ebp
ret
square endp

cube proc
push ebp
mov ebp,esp


mov edx , 0
mov ecx , 0
mov edx , offset cu
mov ecx , lengthof cu
call writestring
call writedec
mov edx , offset is
mov ecx , lengthof is
call writestring
mov ebx,0
mov ebx, eax

mul ebx
mul ebx

call writedec
mov eax , ebx

call crlf
pop ebp
ret
cube endp





END main
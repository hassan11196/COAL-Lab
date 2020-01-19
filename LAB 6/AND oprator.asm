INCLUDE Irvine32.inc

.data 
sval SBYTE -5
sval2 SBYTE -6

.code 
main PROC
mov eax,0
mov ebx,0
mov ax,1000100010001000b
mov bx,1111111111111111b
and ax,bx
call writebin
call crlf
call writebinb
call crlf
call writeint
call crlf
call dumpregs
call waitmsg
exit 
main ENDP
END main
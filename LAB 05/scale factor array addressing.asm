
INCLUDE Irvine32.inc
.data
MYSTRING BYTE "hELLO fUNCTION CALLS",0
secSTRING BYTE "hello world",0

.code
main PROC
mov edx,offset mystring
mov ecx,lengthof mystring

call myproc

call crlf

call waitmsg

exit
main ENDP


myproc PROC
call writestring

RET
myproc ENDP

END main

INCLUDE Irvine32.inc
.data

var1 DWORD 5
var2 DWORD 10

.code
main PROC

push var1
push var2
call myproc


 
call crlf
call writedec
call crlf
call waitmsg

exit
main ENDP
pop eax
call writedec
pop eax
call writedec

myproc PROC


RET
myproc ENDP

END main
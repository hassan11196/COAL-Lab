
INCLUDE Irvine32.inc
.data

var1 DWORD 5
var2 DWORD 10

.code
main PROC
mov eax,0
push var1
push var2
call myproc


 
call crlf
call waitmsg

exit
main ENDP

myproc PROC

push ebp
mov ebp,esp
 
call crlf
mov eax,[ebp + 8]
call writedec
 
call crlf
mov eax,[ebp + 12]
call writedec

pop ebp
RET
myproc ENDP

END main
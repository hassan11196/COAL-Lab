
INCLUDE Irvine32.inc
.data
arr DWORD 61,43,11,52,25

.code
main PROC
mov eax , 0
mov eax , [DS : 8]
call writedec


call crlf
call waitmsg

exit
main ENDP
END main
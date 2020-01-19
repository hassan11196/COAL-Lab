INCLUDE Irvine32.inc

.data 
sval SBYTE -5
sval2 SBYTE -6

.code 
main PROC
mov eax,0
movsx eax,sval
add al,sval2
call writeint
call crlf
call waitmsg
exit 
main ENDP
END main
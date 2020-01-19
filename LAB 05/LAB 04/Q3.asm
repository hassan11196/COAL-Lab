INCLUDE Irvine32.inc
.data 
x SBYTE 10
y SBYTE 20
w SBYTE 30
u SBYTE 40
v SBYTE 50
z SBYTE 0
.code
main PROC
mov eax,0

add al,x
add al,y
add al,w
sub al,v
add al,u
call writedec

call crlf

exit
main ENDP
END main
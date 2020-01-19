




INCLUDE Irvine32.inc
.data 
myString BYTE "Hello" ,0
stri BYTE "HU"


.code
main PROC
mov edx, OFFSET myString
mov ecx,5


l1:
	call writeString
	call crlf
loop l1

call waitmsg

exit
main ENDP
END main
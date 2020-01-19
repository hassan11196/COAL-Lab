INCLUDE Irvine32.inc
.data 

text BYTE "This is a message box.",0
caption BYTE "This is caption",0

.code
main PROC
mov eax,0
mov ebx,0
mov ecx,0
mov edx,0
mov edx,offset text
mov ebx,offset caption
call msgbox


call crlf

exit
main ENDP

END main
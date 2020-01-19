INCLUDE Irvine32.inc
.data 

text BYTE "This is a question box.",0dh,0ah,"Would You like to EXIT ?",0 
caption BYTE "This is caption",0
ans1 BYTE "YES WAS CLICKED",0
ans2 BYTE "NO WAS CLICKED",0
.code

main PROC
mov eax,0
mov ebx,0
mov ecx,0
mov edx,0
mov edx,offset text
mov ebx,offset caption
call msgboxask
call writehex
cmp eax,7
jne yes
je no
no:	mov edx,0
	mov edx,offset ans2
	jmp bc
yes:mov edx,0
	mov edx,offset ans1

bc: call writestring
call crlf

exit
main ENDP

	
END main
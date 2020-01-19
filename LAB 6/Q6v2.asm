INCLUDE Irvine32.inc

.data 
search byte "Enter Value to search : ",0
non_ BYTE "Found  : ",0
non_2 BYTE " in Array.",0
notf BYTE " is not present in Array",0
intArr WORD 10,4,7,14,299,156,3,19,29,300,20

var	 DWORD 0

.code 
main PROC
mov eax,0
mov ebx,0
mov edx,OFFSET search
mov ecx,lengthof search
call writestring
call readint
mov ecx, lengthof intArr
mov esi,0
l1:
	cmp ax,intArr[esi]
	je found
	inc esi
	loop l1
	jmp not_found
found:
	call crlf
	mov edx,OFFSET non_
	mov ecx,lengthof non_
	call writestring
	call writedec
	mov edx,OFFSET non_2
	mov ecx,lengthof non_2
	call writestring
	jmp out_
not_found:
	call crlf
	call writedec
	mov edx,OFFSET notf
	mov ecx,lengthof notf
	call writestring

out_:NOP





call crlf

call waitmsg
exit 
main ENDP
END main
INCLUDE Irvine32.inc

.data 
arr1 BYTE 1,2,5,4,5
arr2 BYTE 1,2,3,4,5
not_ BYTE "arr are NOT equal",0
equ_ BYTE "arr are equal",0

.code 
main PROC
mov eax,0
mov ebx,0
mov ecx,lengthof arr1
mov esi,0
l1:
	mov al,arr1[esi]

	mov bl,arr2[esi]
	cmp al,bl
	jne not_equal
	inc esi
	cmp esi, lengthof arr1 - 1
	je equal_
	jmp l1
equal_:
	mov edx,OFFSET equ_
	call writestring
	jmp out_
not_equal:
	mov edx, OFFSET not_
	call writestring
out_:

call crlf
call dumpregs
call waitmsg
exit 
main ENDP
END main
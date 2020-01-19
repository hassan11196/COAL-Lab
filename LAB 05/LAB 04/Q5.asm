INCLUDE Irvine32.inc
.data 
myarray BYTE 15,10,25,20,30
string BYTE "SORTED ARRAY : ",0
space BYTE ", ",0
cnt BYTE 0
outer BYTE 0
.code
main PROC
mov eax,0
mov ebx,0
mov ecx,0
mov edx,10
mov ecx,lengthof myarray - 1

l1: 
	mov outer,cl
	mov ecx ,lengthof myarray - 1
	l2:
		movzx ebx ,myarray[ecx]
		movzx edx ,myarray[ecx - 1]
		cmp ebx,edx
		jle back
			mov eax , ebx
			mov ebx , edx
			mov edx , eax


	back:
		loop l2
	movsx ecx,outer
	loop l1


call crlf
;This Loop is just to print the sorted Array
mov edx , OFFSET string
mov ecx , lengthof string
call writestring
mov ecx,5
l3 :movzx eax, cnt
	mov edx,type myarray
	mul edx
	movzx ebx , [myarray + eax]
	mov eax,ebx
	call writedec
	mov edx , OFFSET space
	inc cnt
	call writestring	
	loop l3
call crlf

exit
main ENDP

END main
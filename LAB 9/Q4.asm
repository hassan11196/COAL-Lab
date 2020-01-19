INCLUDE Irvine32.inc
.data
	n dword ?
	input BYTE "Enter Number : ",0
	msg byte "The factorial is : ",0
.code
	main PROC
	mov eax,0
	mov eax,n
	mov edx,OFFSET input
	mov ecx,LENGTHOF input
	call writestring
	call readdec
	mov edx,offset msg
	mov ecx,LENGTHOF msg
	call writestring
		push eax
		call fact
		call writedec
		call crlf
	exit
	main ENDP
		fact PROC
			push ebp
			mov ebp,esp
				mov eax,[ebp+8]
				cmp eax,0
				ja l1
				mov eax,1
				jmp l2
			l1:
				dec eax
				push eax
				call fact
			returnFact:
				mov ebx,[ebp+8]
				mul ebx
			l2:
				pop ebp
				ret 4
		fact ENDP

	END main

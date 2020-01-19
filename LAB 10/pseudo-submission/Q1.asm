INCLUDE Irvine32.inc
.data
	
	str1 BYTE "127&j~3#^&*#*#45^",0
	index_ BYTE "# is at Index : ",0
	X DWORD 0
.code
	main PROC
	mov eax,0
	push Lengthof str1
	push OFFSET str1
	
	mov edx,OFFSET index_
	mov ecx,LENGTHOF index_
	call writestring
	call scan_string
	mov eax,X
	call writedec
		call crlf
	exit
	main ENDP
	scan_string PROC; saves index to eax
	enter 0,0
	mov edx,[ebp+8]
	mov ecx,[ebp+12]
	mov bl,'#'
	mov eax,0
	l1:
		cmp eax,ecx
		je no_index
		cmp bl,BYTE PTR [edx + eax]
		
		je out_
	
		inc eax
	loop l1
	no_index:
		mov X,-1
	out_:
		mov X,eax
	leave
	ret 8
	scan_string ENDP
	END main

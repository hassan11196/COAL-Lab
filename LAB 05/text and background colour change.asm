INCLUDE Irvine32.inc
.data 

str1 BYTE "Sample string in color", 0dh, 0ah, 0
.code
main PROC
mov eax,0
mov ebx,0
mov ecx,0
mov edx,0
mov	eax,  white +  (red * 16)
call SetTextColor
mov	edx, OFFSET str1
call WriteString
call DumpRegs

exit
main ENDP

END main
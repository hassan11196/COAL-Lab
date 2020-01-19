INCLUDE Irvine32.inc

.data 
arr1 BYTE 1,2,5,4,5
arr2 BYTE 1,2,3,4,5
not_ BYTE "arr are NOT equal",0
equ_ BYTE "arr are equal",0
ent_var BYTE "ENTER var : ",0
ent_ecx BYTE "ENTER ECX : ",0
ent_edx BYTE "ENTER EDX : ",0
out_d BYTE "X = ",0
var	 DWORD 5d
x DWORD 0d
.code 
main PROC
mov eax,0
mov ebx,0

mov edx,OFFSET ent_var
call writestring
call readint
mov var,eax

mov edx,OFFSET ent_ecx
call writestring
call readint
mov ecx,eax
mov edx,OFFSET ent_edx
call writestring
call readint
mov edx,eax

cmp var,ecx
jl check2_
jmp else_
check2_:
	cmp ecx,edx
	jge true_
	jmp else_
true_:
	mov x,0
	jmp out_
else_:
	mov x,1
out_ : 
	mov edx,offset out_d
	call writestring
	mov eax,x
	call writedec





call crlf

call waitmsg
exit 
main ENDP
END main
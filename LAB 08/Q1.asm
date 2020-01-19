INCLUDE Irvine32.inc
.data 
var1 DWORD 0
var2 DWORD 0
var3 DWORD 0
var4 DWORD 0
inp_var BYTE "Enter Var",0
out_put BYTE "var4 = (var1 * 5) / (var2 - 3) = ",0
space BYTE "	",

; var4 = (var1 * 5) / (var2 - 3)

.code

main PROC
mov eax,0
mov edx,0
mov esi,0
mov edx,OFFSET inp_var
call writestring
mov eax,1
call writedec
mov al,space
call writechar
call readint
mov var1,eax
call crlf

mov edx,OFFSET inp_var
call writestring
mov eax,2
call writedec
mov al,space
call writechar
call readint
mov var2,eax
call crlf

mov eax,5
mul var1
mov var1,eax
sub var2,3
mov eax,var1
mov ebx,var2
div var2
mov var1,eax

mov edx,OFFSET out_put
call writestring
mov eax,var1
call writedec





call crlf

exit
main ENDP

	
END main
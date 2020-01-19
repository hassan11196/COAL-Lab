INCLUDE Irvine32.inc
.data 
val1 SDWORD 1
val2 SDWORD 1
val3 SDWORD 1
var1 SDWORD 1
var2 SDWORD 1
var3 SDWORD 1
var4 SDWORD 1
inp_var BYTE "Enter Var",0
inp_val BYTE "Enter Val",0
out_put1 BYTE "val1 = (val2 / val3) * (val1 % val2) = ",0
out_put2 BYTE "var4 = (var1 * -5) / (-var2 % var3) = ",0
space BYTE "	",


.code

main PROC
mov eax,0
mov edx,0
mov esi,0

push OFFSET inp_val
push OFFSET val1
push 1
call inp
push OFFSET inp_val
push OFFSET val2
push 2
call inp
push OFFSET inp_val
push OFFSET val3
push 3
call inp
push OFFSET inp_var
push OFFSET var1
push 1
call inp
push OFFSET inp_var
push OFFSET var2
push 2
call inp
push OFFSET inp_var
push OFFSET var3
push 3
call inp

;val1 = (val2 / val3) * (val1 % val2) 
mov edx,0
mov eax,val2
mov ebp,val3
div ebp
mul edx
mov val1,eax

;var4 = (var1 * -5) / (-var2 % var3)
mov eax,var2
mov ecx,-1
imul ecx
idiv var3
add edx,var3
mov var2,edx

mov eax,var1
mov ecx,-5
imul ecx
idiv var2
mov var4,eax

mov edx,OFFSET out_put1
call writestring
mov eax,val1A
call writedec

call crlf
mov edx,OFFSET out_put2
call writestring
mov eax,var4
call writeint



call crlf


exit
main ENDP
inp PROC
push ebp
mov ebp,esp

mov edx,[ebp + 16]
call writestring
mov eax,[ebp + 8]
call writedec
mov al,space
call writechar
call readint
mov edx,eax
mov esi,[ebp+12]
mov [esi],edx
call crlf

pop ebp
ret 12
inp ENDP
	
END main
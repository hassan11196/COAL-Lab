INCLUDE Irvine32.inc
.data
arr DWORD 3 dup(3 dup(0))

msg1 BYTE "Enter Elements (one by one) : ",0
l BYTE "You Loose",0
w BYTE "You Win",0
.code
main PROC

call crlf
mov esi,OFFSET arr
mov ecx,LENGTHOF arr
l1:
mov edx,OFFSET msg1
call writestring
call readint
mov [esi],eax
add esi,TYPE arr
call crlf
loop l1

mov ecx,3
mov esi,OFFSET arr
l2:
push ecx
mov ecx,2
l3:
mov eax,[esi]
inc eax
cmp eax,[esi+4]
je loose
add esi,TYPE arr
loop l3
add esi,TYPE arr
pop ecx
loop l2
mov ecx,3
mov esi,OFFSET arr
l4:
push ecx
mov ecx,2
l5:
mov eax,[esi]
add eax,1
cmp eax,[esi+12]
je loose
add esi,TYPE arr
loop l5
add esi,TYPE arr
pop ecx
loop l4
jmp win
loose:
mov edx,OFFSET l
jmp common
win:
mov edx,OFFSET w
common:
call writestring
call crlf

exit
main endp
END main
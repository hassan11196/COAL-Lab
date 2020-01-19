INCLUDE Irvine32.inc
.data 
arrayB BYTE 5,6,2
arrayW WORD 15,5,10
arrayD DWORD 60,12,18
PROD1 DWORD 0
PROD2 DWORD 0
PROD3 DWORD 0
.code
main PROC
mov eax,0
mov ebx,0
mov ecx,0
mov edx,0

movsx eax,[arrayb + 0]
mul WORD PTR [arrayw + 0]
mul [arrayd + 0]
call writedec
call crlf
mov PROD1, eax

movsx eax,[arrayb + 1]
mul WORD PTR [arrayw + 2]
mul [arrayd + 4]
call writedec
call crlf
mov PROD1, eax

movsx eax,[arrayb + 2]
mul WORD PTR [arrayw + 4]
mul [arrayd + 8]
call writedec
call crlf
mov PROD2, eax

call crlf

exit
main ENDP
END main
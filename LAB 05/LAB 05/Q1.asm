INCLUDE Irvine32.inc
.data 
arrayB	BYTE 	60, 70, 80
arrayW 	WORD 	150, 250, 350
arrayD 	DWORD 	600, 1200, 1800
  
.code
main PROC
mov eax,0
movzx eax,arrayB[0*type arrayB]
add al,arrayB[2*type arrayB]
call writedec
call crlf

mov eax,0
movzx eax,arrayW[0*type arrayW]
add ax,arrayW[2*type arrayW]
call writedec
call crlf

mov eax,0
mov eax,arrayD[0*type arrayD]
add eax,arrayD[2*type arrayD]
call writedec
call crlf
exit
main ENDP
END main
	org 7c00h
	call Out
	jmp $
Out:
	mov ax,message
	mov bp,ax
	mov cx,5
	mov ax,01301h
	mov bx,000ch
	mov dl,0
	int 10h
	ret
message:
	db "Hello"
times 510-($-$$) db 0
dw 0xaa55

%nasm boot.asm -o boot.bin

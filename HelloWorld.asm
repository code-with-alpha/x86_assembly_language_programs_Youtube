INCLUDE Irvine32.inc

.data
myStr BYTE "Hello World", 0

.code
main PROC

mov edx, OFFSET myStr
call WriteString


exit
main ENDP
END main
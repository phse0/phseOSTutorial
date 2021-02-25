global header_start

section .text
bits 32

start:
  ; print 'OK'
  mov dword [0xb8000], 0x2f4b2f4f ;write into the video memory which starts at 0xb8000
  hlt ;cpu freeze instruction

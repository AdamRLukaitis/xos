
; struct directory_t
; {
;	u8 name[32];	// 0x00
;	u32 lba;	// 0x20
;	u32 size_sects;	// 0x24
;	u32 size_bytes;	// 0x28
;	u8 time[2];	// 0x2C
;	u8 date[2];	// 0x2E
;	u16 year;	// 0x30
;	u8 flags;	// 0x32
;	u8 reserved[13];// 0x33
; }

kernel:
	.name		db "kernel32.sys",0
			times 32 - ($-.name) db 0

	.lba		dd 200
	.size_sects	dd 400
	.size_bytes	dd 400*512
	.time		db 10+12
			db 48
	.date		db 2, 2
	.year		dw 2017
	.flags		db 0x01		; file present
	.reserved:	times 13 db 0

shell:
	.name		db "shell.exe",0
			times 32 - ($-.name) db 0

	.lba		dd 1000
	.size_sects	dd 20
	.size_bytes	dd 20*512
	.time		db 10+12
			db 48
	.date		db 2, 2
	.year		dw 2017
	.flags		db 0x01		; file present
	.reserved:	times 13 db 0

shellcfg:
	.name		db "shell.cfg",0
			times 32 - ($-.name) db 0

	.lba		dd 1020
	.size_sects	dd 1
	.size_bytes	dd 1*512
	.time		db 10+12
			db 48
	.date		db 2, 2
	.year		dw 2017
	.flags		db 0x01		; file present
	.reserved:	times 13 db 0

wp1:
	.name		db "wp1.bmp",0
			times 32 - ($-.name) db 0

	.lba		dd 8000
	.size_sects	dd 2813
	.size_bytes	dd 1440138
	.time		db 10+12
			db 48
	.date		db 2, 2
	.year		dw 2017
	.flags		db 0x01		; file present
	.reserved:	times 13 db 0

hello:
	.name		db "hello.exe",0
			times 32 - ($-.name) db 0

	.lba		dd 1021
	.size_sects	dd 1
	.size_bytes	dd 1*512
	.time		db 10+12
			db 48
	.date		db 2, 2
	.year		dw 2017
	.flags		db 0x01		; file present
	.reserved:	times 13 db 0

draw:
	.name		db "draw.exe",0
			times 32 - ($-.name) db 0

	.lba		dd 1022
	.size_sects	dd 20
	.size_bytes	dd 20*512
	.time		db 10+12
			db 48
	.date		db 2, 2
	.year		dw 2017
	.flags		db 0x01		; file present
	.reserved:	times 13 db 0

buttontest:
	.name		db "buttontest.exe",0
			times 32 - ($-.name) db 0

	.lba		dd 1042
	.size_sects	dd 20
	.size_bytes	dd 20*512
	.time		db 10+12
			db 48
	.date		db 2, 2
	.year		dw 2017
	.flags		db 0x01		; file present
	.reserved:	times 13 db 0

calc:
	.name		db "calc.exe",0
			times 32 - ($-.name) db 0

	.lba		dd 1062
	.size_sects	dd 20
	.size_bytes	dd 20*512
	.time		db 10+12
			db 48
	.date		db 2, 2
	.year		dw 2017
	.flags		db 0x01		; file present
	.reserved:	times 13 db 0

game2048:
	.name		db "2048.exe",0
			times 32 - ($-.name) db 0

	.lba		dd 1200
	.size_sects	dd 20
	.size_bytes	dd 20*512
	.time		db 10+12
			db 48
	.date		db 2, 2
	.year		dw 2017
	.flags		db 0x01		; file present
	.reserved:	times 13 db 0

sysmonitor:
	.name		db "monitor.exe",0
			times 32 - ($-.name) db 0

	.lba		dd 1221
	.size_sects	dd 50
	.size_bytes	dd 50*512
	.time		db 10+12
			db 48
	.date		db 2, 2
	.year		dw 2017
	.flags		db 0x01		; file present
	.reserved:	times 13 db 0

drivers:
	.name		db "drivers",0
			times 32 - ($-.name) db 0

	.lba		dd 1300
	.size_sects	dd 1
	.size_bytes	dd 1
	.time		db 10+12
			db 48
	.date		db 2, 2
	.year		dw 2017
	.flags		db 0x03		; file present
	.reserved:	times 13 db 0




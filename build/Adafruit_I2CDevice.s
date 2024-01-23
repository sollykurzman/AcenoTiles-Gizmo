	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-a8
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute	23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.eabi_attribute	68, 1	@ Tag_Virtualization_use
	.file	"/root/Bela/projects/board_6/build/Adafruit_I2CDevice.bc"
	.file	1 "./include" "I2c.h"
	.globl	_ZN18Adafruit_I2CDeviceC2EhP7TwoWire
	.p2align	2
	.type	_ZN18Adafruit_I2CDeviceC2EhP7TwoWire,%function
_ZN18Adafruit_I2CDeviceC2EhP7TwoWire:   @ @_ZN18Adafruit_I2CDeviceC2EhP7TwoWire
.Lfunc_begin0:
	.file	2 "/root/Bela/projects/board_6" "Adafruit_I2CDevice.cpp"
	.loc	2 4 0                   @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:4:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: Adafruit_I2CDevice:this <- %R0
	@DEBUG_VALUE: Adafruit_I2CDevice:address <- %R1
	@DEBUG_VALUE: Adafruit_I2CDevice:wire <- %R2
	.loc	2 4 1 prologue_end      @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:4:1
	movw	r3, :lower16:_ZTV18Adafruit_I2CDevice
.Ltmp0:
	.loc	2 5 13                  @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:5:13
	movw	r12, :lower16:Wire
.Ltmp1:
	.loc	2 4 1                   @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:4:1
	movt	r3, :upper16:_ZTV18Adafruit_I2CDevice
.Ltmp2:
	.loc	2 5 13                  @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:5:13
	movt	r12, :upper16:Wire
.Ltmp3:
	.loc	2 4 1                   @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:4:1
	add	r3, r3, #8
	str	r3, [r0]
.Ltmp4:
	.loc	2 5 8                   @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:5:8
	mov	r3, #2
	cmp	r2, r12
	movweq	r3, #1
	.loc	2 5 6 is_stmt 0         @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:5:6
	str	r3, [r0, #16]
	.loc	2 6 7 is_stmt 1         @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:6:7
	str	r1, [r0, #20]
.Ltmp5:
	.loc	2 7 1                   @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:7:1
	bx	lr
.Ltmp6:
.Lfunc_end0:
	.size	_ZN18Adafruit_I2CDeviceC2EhP7TwoWire, .Lfunc_end0-_ZN18Adafruit_I2CDeviceC2EhP7TwoWire
	.cfi_endproc
	.file	3 "/usr/include/arm-linux-gnueabihf/bits" "types.h"
	.file	4 "/usr/include" "stdio.h"
	.file	5 "/usr/lib/llvm-3.9/bin/../lib/clang/3.9.1/include" "stddef.h"
	.file	6 "/root/Bela/projects/board_6" "Adafruit_I2CDevice.h"
	.file	7 "/usr/include" "stdint.h"
	.fnend

	.globl	_ZN18Adafruit_I2CDeviceD2Ev
	.p2align	2
	.type	_ZN18Adafruit_I2CDeviceD2Ev,%function
_ZN18Adafruit_I2CDeviceD2Ev:            @ @_ZN18Adafruit_I2CDeviceD2Ev
.Lfunc_begin1:
	.loc	2 10 0                  @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:10:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: ~Adafruit_I2CDevice:this <- %R0
	.loc	2 11 1 prologue_end     @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:11:1
	bx	lr
.Ltmp7:
.Lfunc_end1:
	.size	_ZN18Adafruit_I2CDeviceD2Ev, .Lfunc_end1-_ZN18Adafruit_I2CDeviceD2Ev
	.cfi_endproc
	.fnend

	.globl	_ZN18Adafruit_I2CDeviceD0Ev
	.p2align	2
	.type	_ZN18Adafruit_I2CDeviceD0Ev,%function
_ZN18Adafruit_I2CDeviceD0Ev:            @ @_ZN18Adafruit_I2CDeviceD0Ev
.Lfunc_begin2:
	.loc	2 10 0                  @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:10:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: ~Adafruit_I2CDevice:this <- %R0
	.loc	2 10 1 prologue_end discriminator 1 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:10:1
	b	_ZdlPv
.Ltmp8:
.Lfunc_end2:
	.size	_ZN18Adafruit_I2CDeviceD0Ev, .Lfunc_end2-_ZN18Adafruit_I2CDeviceD0Ev
	.cfi_endproc
	.fnend

	.globl	_ZN18Adafruit_I2CDevice5beginEv
	.p2align	2
	.type	_ZN18Adafruit_I2CDevice5beginEv,%function
_ZN18Adafruit_I2CDevice5beginEv:        @ @_ZN18Adafruit_I2CDevice5beginEv
.Lfunc_begin3:
	.loc	2 14 0                  @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:14:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset lr, -4
.Ltmp11:
	.cfi_offset r11, -8
.Ltmp12:
	.cfi_offset r5, -12
.Ltmp13:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp14:
	.cfi_def_cfa r11, 8
	.pad	#64
	sub	sp, sp, #64
	@DEBUG_VALUE: begin:this <- %R0
	mov	r4, r0
.Ltmp15:
	@DEBUG_VALUE: initI2C_RW:address <- %R0
	@DEBUG_VALUE: initI2C_RW:fileHnd <- -1
	@DEBUG_VALUE: initI2C_RW:bus <- %R3
	@DEBUG_VALUE: begin:this <- %R4
	.loc	1 50 2 prologue_end     @ ./include/I2c.h:50:2
	movw	r2, :lower16:.L.str.1
.Ltmp16:
	.loc	2 15 25                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:15:25
	ldr	r3, [r4, #16]
.Ltmp17:
	mvn	r1, #0
	.loc	2 15 30 is_stmt 0       @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:15:30
	ldr	r0, [r4, #20]
.Ltmp18:
	mov	r5, sp
.Ltmp19:
	.loc	1 44 10 is_stmt 1       @ ./include/I2c.h:44:10
	str	r3, [r4, #4]
	.loc	1 50 2                  @ ./include/I2c.h:50:2
	movt	r2, :upper16:.L.str.1
	.loc	1 45 14                 @ ./include/I2c.h:45:14
	str	r0, [r4, #8]
	.loc	1 50 2                  @ ./include/I2c.h:50:2
	mov	r0, r5
	.loc	1 46 11                 @ ./include/I2c.h:46:11
	str	r1, [r4, #12]
	.loc	1 50 2                  @ ./include/I2c.h:50:2
	mov	r1, #64
	bl	snprintf
.Ltmp20:
	.loc	1 52 18                 @ ./include/I2c.h:52:18
	mov	r0, r5
	mov	r1, #2
	bl	open
	.loc	1 52 16 is_stmt 0       @ ./include/I2c.h:52:16
	str	r0, [r4, #12]
.Ltmp21:
	.loc	1 52 6                  @ ./include/I2c.h:52:6
	cmp	r0, #0
	blt	.LBB3_3
.Ltmp22:
@ BB#1:
	@DEBUG_VALUE: begin:this <- %R4
	.loc	1 59 30 is_stmt 1       @ ./include/I2c.h:59:30
	ldr	r2, [r4, #8]
	.loc	1 59 6 is_stmt 0        @ ./include/I2c.h:59:6
	movw	r1, #1795
	bl	ioctl
	mov	r1, r0
	mov	r0, #1
.Ltmp23:
	.loc	1 59 6                  @ ./include/I2c.h:59:6
	cmp	r1, #0
	blt	.LBB3_4
.Ltmp24:
.LBB3_2:                                @ %_ZN3I2c10initI2C_RWEiii.exit
	@DEBUG_VALUE: begin:this <- %R4
	.loc	2 15 2 is_stmt 1        @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:15:2
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Ltmp25:
.LBB3_3:
	@DEBUG_VALUE: begin:this <- %R4
	.loc	1 54 11                 @ ./include/I2c.h:54:11
	movw	r0, :lower16:stderr
	.loc	1 54 3 is_stmt 0        @ ./include/I2c.h:54:3
	movw	r1, :lower16:.L.str.2
	.loc	1 54 11                 @ ./include/I2c.h:54:11
	movt	r0, :upper16:stderr
	.loc	1 54 3                  @ ./include/I2c.h:54:3
	movt	r1, :upper16:.L.str.2
	.loc	1 54 11                 @ ./include/I2c.h:54:11
	ldr	r0, [r0]
	mov	r2, sp
	b	.LBB3_5
.Ltmp26:
.LBB3_4:
	@DEBUG_VALUE: begin:this <- %R4
	.loc	1 60 11 is_stmt 1       @ ./include/I2c.h:60:11
	movw	r0, :lower16:stderr
	.loc	1 60 54 is_stmt 0       @ ./include/I2c.h:60:54
	ldr	r2, [r4, #8]
	.loc	1 60 11                 @ ./include/I2c.h:60:11
	movt	r0, :upper16:stderr
	.loc	1 60 3                  @ ./include/I2c.h:60:3
	movw	r1, :lower16:.L.str.3
	.loc	1 60 11                 @ ./include/I2c.h:60:11
	ldr	r0, [r0]
	.loc	1 60 3                  @ ./include/I2c.h:60:3
	movt	r1, :upper16:.L.str.3
.Ltmp27:
.LBB3_5:                                @ %_ZN3I2c10initI2C_RWEiii.exit
	@DEBUG_VALUE: begin:this <- %R4
	bl	fprintf
	mov	r0, #0
	b	.LBB3_2
.Ltmp28:
.Lfunc_end3:
	.size	_ZN18Adafruit_I2CDevice5beginEv, .Lfunc_end3-_ZN18Adafruit_I2CDevice5beginEv
	.cfi_endproc
	.fnend

	.globl	_ZN18Adafruit_I2CDevice5writeEPhj
	.p2align	2
	.type	_ZN18Adafruit_I2CDevice5writeEPhj,%function
_ZN18Adafruit_I2CDevice5writeEPhj:      @ @_ZN18Adafruit_I2CDevice5writeEPhj
.Lfunc_begin4:
	.loc	2 18 0 is_stmt 1        @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:18:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset lr, -4
.Ltmp31:
	.cfi_offset r11, -8
.Ltmp32:
	.cfi_offset r10, -12
.Ltmp33:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp34:
	.cfi_def_cfa r11, 8
	@DEBUG_VALUE: write:this <- %R0
	@DEBUG_VALUE: write:bytes <- %R1
	@DEBUG_VALUE: write:len <- %R2
.Ltmp35:
	.loc	1 87 15 prologue_end    @ ./include/I2c.h:87:15
	ldr	r0, [r0, #12]
.Ltmp36:
	@DEBUG_VALUE: writeBytes:count <- %R4
	@DEBUG_VALUE: writeBytes:buf <- %R1
	mov	r4, r2
.Ltmp37:
	@DEBUG_VALUE: write:len <- %R4
	.loc	1 87 9 is_stmt 0        @ ./include/I2c.h:87:9
	bl	write
.Ltmp38:
	.loc	2 19 13 is_stmt 1       @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:19:13
	mov	r1, #0
	cmp	r0, r4
	movweq	r1, #1
	.loc	2 19 2 is_stmt 0        @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:19:2
	mov	r0, r1
	pop	{r4, r10, r11, pc}
.Ltmp39:
.Lfunc_end4:
	.size	_ZN18Adafruit_I2CDevice5writeEPhj, .Lfunc_end4-_ZN18Adafruit_I2CDevice5writeEPhj
	.cfi_endproc
	.fnend

	.globl	_ZN18Adafruit_I2CDevice4readEPhj
	.p2align	2
	.type	_ZN18Adafruit_I2CDevice4readEPhj,%function
_ZN18Adafruit_I2CDevice4readEPhj:       @ @_ZN18Adafruit_I2CDevice4readEPhj
.Lfunc_begin5:
	.loc	2 23 0 is_stmt 1        @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:23:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset lr, -4
.Ltmp42:
	.cfi_offset r11, -8
.Ltmp43:
	.cfi_offset r10, -12
.Ltmp44:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp45:
	.cfi_def_cfa r11, 8
	@DEBUG_VALUE: read:this <- %R0
	@DEBUG_VALUE: read:bytes <- %R1
	@DEBUG_VALUE: read:len <- %R2
.Ltmp46:
	.loc	1 82 14 prologue_end    @ ./include/I2c.h:82:14
	ldr	r0, [r0, #12]
.Ltmp47:
	@DEBUG_VALUE: readBytes:count <- %R4
	@DEBUG_VALUE: readBytes:buf <- %R1
	mov	r4, r2
.Ltmp48:
	@DEBUG_VALUE: read:len <- %R4
	.loc	1 82 9 is_stmt 0        @ ./include/I2c.h:82:9
	bl	read
.Ltmp49:
	.loc	2 24 13 is_stmt 1       @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:24:13
	mov	r1, #0
	cmp	r0, r4
	movweq	r1, #1
	.loc	2 24 2 is_stmt 0        @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:24:2
	mov	r0, r1
	pop	{r4, r10, r11, pc}
.Ltmp50:
.Lfunc_end5:
	.size	_ZN18Adafruit_I2CDevice4readEPhj, .Lfunc_end5-_ZN18Adafruit_I2CDevice4readEPhj
	.cfi_endproc
	.fnend

	.globl	_ZN18Adafruit_I2CDevice15write_then_readEPKhjPhjb
	.p2align	2
	.type	_ZN18Adafruit_I2CDevice15write_then_readEPKhjPhjb,%function
_ZN18Adafruit_I2CDevice15write_then_readEPKhjPhjb: @ @_ZN18Adafruit_I2CDevice15write_then_readEPKhjPhjb
.Lfunc_begin6:
	.loc	2 27 0 is_stmt 1        @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:27:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset lr, -4
.Ltmp53:
	.cfi_offset r11, -8
.Ltmp54:
	.cfi_offset r5, -12
.Ltmp55:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp56:
	.cfi_def_cfa r11, 8
	.pad	#32
	sub	sp, sp, #32
	@DEBUG_VALUE: write_then_read:this <- %R0
	@DEBUG_VALUE: write_then_read:write_buffer <- %R1
	@DEBUG_VALUE: write_then_read:write_len <- %R2
	@DEBUG_VALUE: write_then_read:read_buffer <- %R3
	@DEBUG_VALUE: write_then_read:read_len <- [%R11+8]
	ldr	lr, [r11, #12]
	mov	r5, #0
.Ltmp57:
	.loc	2 31 21 prologue_end    @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:31:21
	ldrh	r4, [r0, #20]
	.loc	2 31 19 is_stmt 0       @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:31:19
	strh	r4, [sp]
	.loc	2 38 22 is_stmt 1       @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:38:22
	cmp	lr, #0
	.loc	2 32 20                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:32:20
	strh	r5, [sp, #2]
	.loc	2 33 18                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:33:18
	strh	r2, [sp, #4]
	sub	r2, r11, #16
.Ltmp58:
	@DEBUG_VALUE: write_then_read:packets <- [%R2+0]
	.loc	2 34 18                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:34:18
	str	r1, [sp, #8]
	.loc	2 38 22                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:38:22
	movw	r1, #16385
.Ltmp59:
	movwne	r1, #1
	.loc	2 37 19                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:37:19
	strh	r4, [sp, #12]
	.loc	2 38 20                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:38:20
	strh	r1, [sp, #14]
	mov	r1, sp
.Ltmp60:
	@DEBUG_VALUE: write_then_read:messages <- [%R1+0]
	ldr	r12, [r11, #8]
	.loc	2 43 15                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:43:15
	str	r1, [r11, #-16]
	mov	r1, #2
.Ltmp61:
	.loc	2 39 18                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:39:18
	strh	r12, [sp, #16]
	.loc	2 44 16                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:44:16
	str	r1, [r11, #-12]
.Ltmp62:
	.loc	2 45 5                  @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:45:5
	movw	r1, #1799
.Ltmp63:
	.loc	2 40 18                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:40:18
	str	r3, [sp, #20]
.Ltmp64:
	.loc	2 45 11                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:45:11
	ldr	r0, [r0, #12]
.Ltmp65:
	.loc	2 45 5 is_stmt 0        @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:45:5
	bl	ioctl
.Ltmp66:
	mov	r1, r0
	mov	r0, #1
.Ltmp67:
	.loc	2 45 5                  @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:45:5
	cmp	r1, #0
	blt	.LBB6_2
.LBB6_1:
	@DEBUG_VALUE: write_then_read:read_len <- [%R11+8]
	.loc	2 52 1 is_stmt 1        @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:52:1
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.LBB6_2:
	@DEBUG_VALUE: write_then_read:read_len <- [%R11+8]
.Ltmp68:
	.loc	2 46 11                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:46:11
	movw	r0, :lower16:stderr
	.loc	2 46 3 is_stmt 0        @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:46:3
	mov	r1, #26
	.loc	2 46 11                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:46:11
	movt	r0, :upper16:stderr
	.loc	2 46 3                  @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:46:3
	mov	r2, #1
	.loc	2 46 11                 @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:46:11
	ldr	r3, [r0]
	.loc	2 46 3                  @ /root/Bela/projects/board_6/Adafruit_I2CDevice.cpp:46:3
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	bl	fwrite
	mov	r0, #0
	b	.LBB6_1
.Ltmp69:
.Lfunc_end6:
	.size	_ZN18Adafruit_I2CDevice15write_then_readEPKhjPhjb, .Lfunc_end6-_ZN18Adafruit_I2CDevice15write_then_readEPKhjPhjb
	.cfi_endproc
	.fnend

	.type	_ZTV18Adafruit_I2CDevice,%object @ @_ZTV18Adafruit_I2CDevice
	.section	.rodata,"a",%progbits
	.globl	_ZTV18Adafruit_I2CDevice
	.p2align	2
_ZTV18Adafruit_I2CDevice:
	.long	0
	.long	_ZTI18Adafruit_I2CDevice
	.long	_ZN18Adafruit_I2CDeviceD2Ev
	.long	_ZN18Adafruit_I2CDeviceD0Ev
	.size	_ZTV18Adafruit_I2CDevice, 16

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Failed to write_then_read\n"
	.size	.L.str, 27

	.type	_ZTS18Adafruit_I2CDevice,%object @ @_ZTS18Adafruit_I2CDevice
	.section	.rodata,"a",%progbits
	.globl	_ZTS18Adafruit_I2CDevice
	.p2align	4
_ZTS18Adafruit_I2CDevice:
	.asciz	"18Adafruit_I2CDevice"
	.size	_ZTS18Adafruit_I2CDevice, 21

	.type	_ZTS3I2c,%object        @ @_ZTS3I2c
	.section	.rodata._ZTS3I2c,"aG",%progbits,_ZTS3I2c,comdat
	.weak	_ZTS3I2c
_ZTS3I2c:
	.asciz	"3I2c"
	.size	_ZTS3I2c, 5

	.type	_ZTI3I2c,%object        @ @_ZTI3I2c
	.section	.rodata._ZTI3I2c,"aG",%progbits,_ZTI3I2c,comdat
	.weak	_ZTI3I2c
	.p2align	2
_ZTI3I2c:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS3I2c
	.size	_ZTI3I2c, 8

	.type	_ZTI18Adafruit_I2CDevice,%object @ @_ZTI18Adafruit_I2CDevice
	.section	.rodata,"a",%progbits
	.globl	_ZTI18Adafruit_I2CDevice
	.p2align	4
_ZTI18Adafruit_I2CDevice:
	.long	_ZTVN10__cxxabiv121__vmi_class_type_infoE+8
	.long	_ZTS18Adafruit_I2CDevice
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	_ZTI3I2c
	.long	0                       @ 0x0
	.size	_ZTI18Adafruit_I2CDevice, 24

	.type	.L.str.1,%object        @ @.str.1
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.1:
	.asciz	"/dev/i2c-%d"
	.size	.L.str.1, 12

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"Failed to open %s I2C Bus\n"
	.size	.L.str.2, 27

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"I2C_SLAVE address %#x failed..."
	.size	.L.str.3, 32

	.file	8 "/usr/include/asm-generic" "int-ll64.h"
	.file	9 "/usr/include/linux" "i2c.h"
	.file	10 "/usr/include/linux" "i2c-dev.h"
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)" @ string offset=0
.Linfo_string1:
	.asciz	"/root/Bela/projects/board_6/build/Adafruit_I2CDevice.cpp" @ string offset=45
.Linfo_string2:
	.asciz	"/root/Bela"            @ string offset=102
.Linfo_string3:
	.asciz	"unsigned char"         @ string offset=113
.Linfo_string4:
	.asciz	"i2c_char_t"            @ string offset=127
.Linfo_string5:
	.asciz	"_vptr$I2c"             @ string offset=138
.Linfo_string6:
	.asciz	"int"                   @ string offset=148
.Linfo_string7:
	.asciz	"__vtbl_ptr_type"       @ string offset=152
.Linfo_string8:
	.asciz	"i2C_bus"               @ string offset=168
.Linfo_string9:
	.asciz	"i2C_address"           @ string offset=176
.Linfo_string10:
	.asciz	"i2C_file"              @ string offset=188
.Linfo_string11:
	.asciz	"_ZN3I2c9readBytesEPvj" @ string offset=197
.Linfo_string12:
	.asciz	"readBytes"             @ string offset=219
.Linfo_string13:
	.asciz	"__ssize_t"             @ string offset=229
.Linfo_string14:
	.asciz	"ssize_t"               @ string offset=239
.Linfo_string15:
	.asciz	"unsigned int"          @ string offset=247
.Linfo_string16:
	.asciz	"size_t"                @ string offset=260
.Linfo_string17:
	.asciz	"_ZN3I2c10writeBytesEPKvj" @ string offset=267
.Linfo_string18:
	.asciz	"writeBytes"            @ string offset=292
.Linfo_string19:
	.asciz	"I2c"                   @ string offset=303
.Linfo_string20:
	.asciz	"_ZN3I2c10initI2C_RWEiii" @ string offset=307
.Linfo_string21:
	.asciz	"initI2C_RW"            @ string offset=331
.Linfo_string22:
	.asciz	"_ZN3I2c8closeI2CEv"    @ string offset=342
.Linfo_string23:
	.asciz	"closeI2C"              @ string offset=361
.Linfo_string24:
	.asciz	"~I2c"                  @ string offset=370
.Linfo_string25:
	.asciz	"bus"                   @ string offset=375
.Linfo_string26:
	.asciz	"addr"                  @ string offset=379
.Linfo_string27:
	.asciz	"Adafruit_I2CDevice"    @ string offset=384
.Linfo_string28:
	.asciz	"uint8_t"               @ string offset=403
.Linfo_string29:
	.asciz	"TwoWire"               @ string offset=411
.Linfo_string30:
	.asciz	"~Adafruit_I2CDevice"   @ string offset=419
.Linfo_string31:
	.asciz	"_ZN18Adafruit_I2CDevice5beginEv" @ string offset=439
.Linfo_string32:
	.asciz	"begin"                 @ string offset=471
.Linfo_string33:
	.asciz	"bool"                  @ string offset=477
.Linfo_string34:
	.asciz	"_ZN18Adafruit_I2CDevice5writeEPhj" @ string offset=482
.Linfo_string35:
	.asciz	"write"                 @ string offset=516
.Linfo_string36:
	.asciz	"_ZN18Adafruit_I2CDevice4readEPhj" @ string offset=522
.Linfo_string37:
	.asciz	"read"                  @ string offset=555
.Linfo_string38:
	.asciz	"_ZN18Adafruit_I2CDevice15write_then_readEPKhjPhjb" @ string offset=560
.Linfo_string39:
	.asciz	"write_then_read"       @ string offset=610
.Linfo_string40:
	.asciz	"this"                  @ string offset=626
.Linfo_string41:
	.asciz	"address"               @ string offset=631
.Linfo_string42:
	.asciz	"fileHnd"               @ string offset=639
.Linfo_string43:
	.asciz	"namebuf"               @ string offset=647
.Linfo_string44:
	.asciz	"char"                  @ string offset=655
.Linfo_string45:
	.asciz	"sizetype"              @ string offset=660
.Linfo_string46:
	.asciz	"buf"                   @ string offset=669
.Linfo_string47:
	.asciz	"count"                 @ string offset=673
.Linfo_string48:
	.asciz	"_ZN18Adafruit_I2CDeviceC2EhP7TwoWire" @ string offset=679
.Linfo_string49:
	.asciz	"_ZN18Adafruit_I2CDeviceD2Ev" @ string offset=716
.Linfo_string50:
	.asciz	"_ZN18Adafruit_I2CDeviceD0Ev" @ string offset=744
.Linfo_string51:
	.asciz	"wire"                  @ string offset=772
.Linfo_string52:
	.asciz	"bytes"                 @ string offset=777
.Linfo_string53:
	.asciz	"len"                   @ string offset=783
.Linfo_string54:
	.asciz	"messages"              @ string offset=787
.Linfo_string55:
	.asciz	"unsigned short"        @ string offset=796
.Linfo_string56:
	.asciz	"__u16"                 @ string offset=811
.Linfo_string57:
	.asciz	"flags"                 @ string offset=817
.Linfo_string58:
	.asciz	"__u8"                  @ string offset=823
.Linfo_string59:
	.asciz	"i2c_msg"               @ string offset=828
.Linfo_string60:
	.asciz	"write_buffer"          @ string offset=836
.Linfo_string61:
	.asciz	"write_len"             @ string offset=849
.Linfo_string62:
	.asciz	"read_buffer"           @ string offset=859
.Linfo_string63:
	.asciz	"read_len"              @ string offset=871
.Linfo_string64:
	.asciz	"packets"               @ string offset=880
.Linfo_string65:
	.asciz	"msgs"                  @ string offset=888
.Linfo_string66:
	.asciz	"nmsgs"                 @ string offset=893
.Linfo_string67:
	.asciz	"__u32"                 @ string offset=899
.Linfo_string68:
	.asciz	"i2c_rdwr_ioctl_data"   @ string offset=905
.Linfo_string69:
	.asciz	"stop"                  @ string offset=925
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	.Lfunc_begin3-.Lfunc_begin0
	.long	.Ltmp15-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp15-.Lfunc_begin0
	.long	.Lfunc_end3-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Ltmp15-.Lfunc_begin0
	.long	.Ltmp18-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Ltmp15-.Lfunc_begin0
	.long	.Ltmp17-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Lfunc_begin4-.Lfunc_begin0
	.long	.Ltmp36-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Lfunc_begin4-.Lfunc_begin0
	.long	.Ltmp38-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Lfunc_begin4-.Lfunc_begin0
	.long	.Ltmp37-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	.Ltmp37-.Lfunc_begin0
	.long	.Ltmp39-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Ltmp36-.Lfunc_begin0
	.long	.Ltmp37-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Ltmp36-.Lfunc_begin0
	.long	.Ltmp38-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Lfunc_begin5-.Lfunc_begin0
	.long	.Ltmp47-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Lfunc_begin5-.Lfunc_begin0
	.long	.Ltmp49-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Lfunc_begin5-.Lfunc_begin0
	.long	.Ltmp48-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	.Ltmp48-.Lfunc_begin0
	.long	.Ltmp50-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc11:
	.long	.Ltmp47-.Lfunc_begin0
	.long	.Ltmp48-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc12:
	.long	.Ltmp47-.Lfunc_begin0
	.long	.Ltmp49-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc13:
	.long	.Lfunc_begin6-.Lfunc_begin0
	.long	.Ltmp65-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc14:
	.long	.Lfunc_begin6-.Lfunc_begin0
	.long	.Ltmp59-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc15:
	.long	.Lfunc_begin6-.Lfunc_begin0
	.long	.Ltmp58-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	0
	.long	0
.Ldebug_loc16:
	.long	.Lfunc_begin6-.Lfunc_begin0
	.long	.Ltmp66-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	0
	.long	0
.Ldebug_loc17:
	.long	.Ltmp58-.Lfunc_begin0
	.long	.Ltmp66-.Lfunc_begin0
	.short	2                       @ Loc expr size
	.byte	114                     @ DW_OP_breg2
	.byte	0                       @ 0
	.long	0
	.long	0
	.section	.debug_abbrev,"",%progbits
.Lsection_abbrev:
	.byte	1                       @ Abbreviation Code
	.byte	17                      @ DW_TAG_compile_unit
	.byte	1                       @ DW_CHILDREN_yes
	.byte	37                      @ DW_AT_producer
	.byte	14                      @ DW_FORM_strp
	.byte	19                      @ DW_AT_language
	.byte	5                       @ DW_FORM_data2
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	16                      @ DW_AT_stmt_list
	.byte	23                      @ DW_FORM_sec_offset
	.byte	27                      @ DW_AT_comp_dir
	.byte	14                      @ DW_FORM_strp
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	2                       @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	3                       @ Abbreviation Code
	.byte	22                      @ DW_TAG_typedef
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	4                       @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	5                       @ Abbreviation Code
	.byte	2                       @ DW_TAG_class_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	29                      @ DW_AT_containing_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	6                       @ Abbreviation Code
	.byte	28                      @ DW_TAG_inheritance
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	7                       @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	8                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	9                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	10                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	11                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	76                      @ DW_AT_virtuality
	.byte	11                      @ DW_FORM_data1
	.byte	77                      @ DW_AT_vtable_elem_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	29                      @ DW_AT_containing_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	12                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	13                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	14                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	15                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	16                      @ Abbreviation Code
	.byte	21                      @ DW_TAG_subroutine_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	17                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	18                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	19                      @ Abbreviation Code
	.byte	66                      @ DW_TAG_rvalue_reference_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	20                      @ Abbreviation Code
	.byte	2                       @ DW_TAG_class_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	21                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	22                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	23                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	24                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	25                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	26                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	27                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	28                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	29                      @ Abbreviation Code
	.byte	1                       @ DW_TAG_array_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	30                      @ Abbreviation Code
	.byte	33                      @ DW_TAG_subrange_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	55                      @ DW_AT_count
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	31                      @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	32                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	33                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	34                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	1                       @ DW_CHILDREN_yes
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	35                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	36                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	28                      @ DW_AT_const_value
	.byte	13                      @ DW_FORM_sdata
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	37                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	38                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	39                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	1                       @ DW_CHILDREN_yes
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	40                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	41                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	42                      @ Abbreviation Code
	.byte	19                      @ DW_TAG_structure_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	0                       @ EOM(3)
	.section	.debug_info,"",%progbits
.Lsection_info:
.Lcu_begin0:
	.long	1539                    @ Length of Unit
	.short	4                       @ DWARF version number
	.long	.Lsection_abbrev        @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x5fc DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	2                       @ Abbrev [2] 0x26:0x5 DW_TAG_pointer_type
	.long	43                      @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x2b:0xb DW_TAG_typedef
	.long	54                      @ DW_AT_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x36:0x7 DW_TAG_base_type
	.long	.Linfo_string3          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	5                       @ Abbrev [5] 0x3d:0xde DW_TAG_class_type
	.long	283                     @ DW_AT_containing_type
	.long	.Linfo_string27         @ DW_AT_name
	.byte	24                      @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	6                       @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x49:0x6 DW_TAG_inheritance
	.long	283                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x4f:0xc DW_TAG_member
	.long	.Linfo_string25         @ DW_AT_name
	.long	542                     @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	18                      @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x5b:0xc DW_TAG_member
	.long	.Linfo_string26         @ DW_AT_name
	.long	542                     @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.byte	20                      @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x67:0x18 DW_TAG_subprogram
	.long	.Linfo_string27         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x6f:0x5 DW_TAG_formal_parameter
	.long	606                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	10                      @ Abbrev [10] 0x74:0x5 DW_TAG_formal_parameter
	.long	611                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x79:0x5 DW_TAG_formal_parameter
	.long	622                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0x7f:0x16 DW_TAG_subprogram
	.long	.Linfo_string30         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	61                      @ DW_AT_containing_type
	.byte	9                       @ Abbrev [9] 0x8f:0x5 DW_TAG_formal_parameter
	.long	606                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x95:0x16 DW_TAG_subprogram
	.long	.Linfo_string31         @ DW_AT_linkage_name
	.long	.Linfo_string32         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	11                      @ DW_AT_decl_line
	.long	633                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xa5:0x5 DW_TAG_formal_parameter
	.long	606                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xab:0x20 DW_TAG_subprogram
	.long	.Linfo_string34         @ DW_AT_linkage_name
	.long	.Linfo_string35         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.long	633                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xbb:0x5 DW_TAG_formal_parameter
	.long	606                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	10                      @ Abbrev [10] 0xc0:0x5 DW_TAG_formal_parameter
	.long	640                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xc5:0x5 DW_TAG_formal_parameter
	.long	577                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xcb:0x20 DW_TAG_subprogram
	.long	.Linfo_string36         @ DW_AT_linkage_name
	.long	.Linfo_string37         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	633                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xdb:0x5 DW_TAG_formal_parameter
	.long	606                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	10                      @ Abbrev [10] 0xe0:0x5 DW_TAG_formal_parameter
	.long	640                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xe5:0x5 DW_TAG_formal_parameter
	.long	577                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xeb:0x2f DW_TAG_subprogram
	.long	.Linfo_string38         @ DW_AT_linkage_name
	.long	.Linfo_string39         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	14                      @ DW_AT_decl_line
	.long	633                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xfb:0x5 DW_TAG_formal_parameter
	.long	606                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	10                      @ Abbrev [10] 0x100:0x5 DW_TAG_formal_parameter
	.long	645                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x105:0x5 DW_TAG_formal_parameter
	.long	577                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x10a:0x5 DW_TAG_formal_parameter
	.long	640                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x10f:0x5 DW_TAG_formal_parameter
	.long	577                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x114:0x5 DW_TAG_formal_parameter
	.long	633                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x11b:0xf0 DW_TAG_class_type
	.long	283                     @ DW_AT_containing_type
	.long	.Linfo_string19         @ DW_AT_name
	.byte	16                      @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	23                      @ DW_AT_decl_line
	.byte	13                      @ Abbrev [13] 0x127:0xa DW_TAG_member
	.long	.Linfo_string5          @ DW_AT_name
	.long	523                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
                                        @ DW_AT_artificial
	.byte	14                      @ Abbrev [14] 0x131:0xd DW_TAG_member
	.long	.Linfo_string8          @ DW_AT_name
	.long	542                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	27                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	2                       @ DW_AT_accessibility
                                        @ DW_ACCESS_protected
	.byte	14                      @ Abbrev [14] 0x13e:0xd DW_TAG_member
	.long	.Linfo_string9          @ DW_AT_name
	.long	542                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	28                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	2                       @ DW_AT_accessibility
                                        @ DW_ACCESS_protected
	.byte	14                      @ Abbrev [14] 0x14b:0xd DW_TAG_member
	.long	.Linfo_string10         @ DW_AT_name
	.long	542                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	29                      @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	2                       @ DW_AT_accessibility
                                        @ DW_ACCESS_protected
	.byte	12                      @ Abbrev [12] 0x158:0x20 DW_TAG_subprogram
	.long	.Linfo_string11         @ DW_AT_linkage_name
	.long	.Linfo_string12         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	31                      @ DW_AT_decl_line
	.long	549                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x168:0x5 DW_TAG_formal_parameter
	.long	571                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	10                      @ Abbrev [10] 0x16d:0x5 DW_TAG_formal_parameter
	.long	576                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x172:0x5 DW_TAG_formal_parameter
	.long	577                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x178:0x20 DW_TAG_subprogram
	.long	.Linfo_string17         @ DW_AT_linkage_name
	.long	.Linfo_string18         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	32                      @ DW_AT_decl_line
	.long	549                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x188:0x5 DW_TAG_formal_parameter
	.long	571                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	10                      @ Abbrev [10] 0x18d:0x5 DW_TAG_formal_parameter
	.long	595                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x192:0x5 DW_TAG_formal_parameter
	.long	577                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x198:0xe DW_TAG_subprogram
	.long	.Linfo_string19         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	33                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x1a0:0x5 DW_TAG_formal_parameter
	.long	571                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x1a6:0x13 DW_TAG_subprogram
	.long	.Linfo_string19         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	34                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x1ae:0x5 DW_TAG_formal_parameter
	.long	571                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	10                      @ Abbrev [10] 0x1b3:0x5 DW_TAG_formal_parameter
	.long	601                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x1b9:0x25 DW_TAG_subprogram
	.long	.Linfo_string20         @ DW_AT_linkage_name
	.long	.Linfo_string21         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	35                      @ DW_AT_decl_line
	.long	542                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x1c9:0x5 DW_TAG_formal_parameter
	.long	571                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	10                      @ Abbrev [10] 0x1ce:0x5 DW_TAG_formal_parameter
	.long	542                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x1d3:0x5 DW_TAG_formal_parameter
	.long	542                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x1d8:0x5 DW_TAG_formal_parameter
	.long	542                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x1de:0x16 DW_TAG_subprogram
	.long	.Linfo_string22         @ DW_AT_linkage_name
	.long	.Linfo_string23         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.long	542                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x1ee:0x5 DW_TAG_formal_parameter
	.long	571                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0x1f4:0x16 DW_TAG_subprogram
	.long	.Linfo_string24         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	283                     @ DW_AT_containing_type
	.byte	9                       @ Abbrev [9] 0x204:0x5 DW_TAG_formal_parameter
	.long	571                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x20b:0x5 DW_TAG_pointer_type
	.long	528                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x210:0x9 DW_TAG_pointer_type
	.long	537                     @ DW_AT_type
	.long	.Linfo_string7          @ DW_AT_name
	.byte	16                      @ Abbrev [16] 0x219:0x5 DW_TAG_subroutine_type
	.long	542                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x21e:0x7 DW_TAG_base_type
	.long	.Linfo_string6          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x225:0xb DW_TAG_typedef
	.long	560                     @ DW_AT_type
	.long	.Linfo_string14         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	104                     @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x230:0xb DW_TAG_typedef
	.long	542                     @ DW_AT_type
	.long	.Linfo_string13         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	172                     @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0x23b:0x5 DW_TAG_pointer_type
	.long	283                     @ DW_AT_type
	.byte	17                      @ Abbrev [17] 0x240:0x1 DW_TAG_pointer_type
	.byte	3                       @ Abbrev [3] 0x241:0xb DW_TAG_typedef
	.long	588                     @ DW_AT_type
	.long	.Linfo_string16         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	62                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x24c:0x7 DW_TAG_base_type
	.long	.Linfo_string15         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x253:0x5 DW_TAG_pointer_type
	.long	600                     @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x258:0x1 DW_TAG_const_type
	.byte	19                      @ Abbrev [19] 0x259:0x5 DW_TAG_rvalue_reference_type
	.long	283                     @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0x25e:0x5 DW_TAG_pointer_type
	.long	61                      @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x263:0xb DW_TAG_typedef
	.long	54                      @ DW_AT_type
	.long	.Linfo_string28         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0x26e:0x5 DW_TAG_pointer_type
	.long	627                     @ DW_AT_type
	.byte	20                      @ Abbrev [20] 0x273:0x6 DW_TAG_class_type
	.long	.Linfo_string29         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
                                        @ DW_AT_declaration
	.byte	4                       @ Abbrev [4] 0x279:0x7 DW_TAG_base_type
	.long	.Linfo_string33         @ DW_AT_name
	.byte	2                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x280:0x5 DW_TAG_pointer_type
	.long	611                     @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0x285:0x5 DW_TAG_pointer_type
	.long	650                     @ DW_AT_type
	.byte	21                      @ Abbrev [21] 0x28a:0x5 DW_TAG_const_type
	.long	611                     @ DW_AT_type
	.byte	22                      @ Abbrev [22] 0x28f:0x3f DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	680                     @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.byte	3                       @ DW_AT_decl_line
	.long	.Linfo_string48         @ DW_AT_linkage_name
	.long	103                     @ DW_AT_specification
	.byte	23                      @ Abbrev [23] 0x2a8:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string40         @ DW_AT_name
	.long	1385                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	24                      @ Abbrev [24] 0x2b3:0xd DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	81
	.long	.Linfo_string41         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	3                       @ DW_AT_decl_line
	.long	611                     @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x2c0:0xd DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	82
	.long	.Linfo_string51         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	3                       @ DW_AT_decl_line
	.long	622                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x2ce:0x25 DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	743                     @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.long	.Linfo_string49         @ DW_AT_linkage_name
	.long	127                     @ DW_AT_specification
	.byte	23                      @ Abbrev [23] 0x2e7:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string40         @ DW_AT_name
	.long	1385                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x2f3:0x25 DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	780                     @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.long	.Linfo_string50         @ DW_AT_linkage_name
	.long	127                     @ DW_AT_specification
	.byte	23                      @ Abbrev [23] 0x30c:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string40         @ DW_AT_name
	.long	1385                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x318:0x41 DW_TAG_subprogram
	.byte	42                      @ DW_AT_decl_line
	.long	441                     @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	803                     @ DW_AT_object_pointer
	.byte	26                      @ Abbrev [26] 0x323:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string40         @ DW_AT_name
	.long	857                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	27                      @ Abbrev [27] 0x32c:0xb DW_TAG_formal_parameter
	.long	.Linfo_string25         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.long	542                     @ DW_AT_type
	.byte	27                      @ Abbrev [27] 0x337:0xb DW_TAG_formal_parameter
	.long	.Linfo_string41         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.long	542                     @ DW_AT_type
	.byte	27                      @ Abbrev [27] 0x342:0xb DW_TAG_formal_parameter
	.long	.Linfo_string42         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.long	542                     @ DW_AT_type
	.byte	28                      @ Abbrev [28] 0x34d:0xb DW_TAG_variable
	.long	.Linfo_string43         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.long	862                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x359:0x5 DW_TAG_pointer_type
	.long	283                     @ DW_AT_type
	.byte	29                      @ Abbrev [29] 0x35e:0xc DW_TAG_array_type
	.long	874                     @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x363:0x6 DW_TAG_subrange_type
	.long	881                     @ DW_AT_type
	.byte	64                      @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x36a:0x7 DW_TAG_base_type
	.long	.Linfo_string44         @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	31                      @ Abbrev [31] 0x371:0x7 DW_TAG_base_type
	.long	.Linfo_string45         @ DW_AT_name
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ DW_AT_encoding
	.byte	32                      @ Abbrev [32] 0x378:0x4f DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	909                     @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	149                     @ DW_AT_specification
	.byte	33                      @ Abbrev [33] 0x38d:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc0            @ DW_AT_location
	.long	.Linfo_string40         @ DW_AT_name
	.long	1385                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	34                      @ Abbrev [34] 0x39a:0x2c DW_TAG_inlined_subroutine
	.long	792                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges0         @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	15                      @ DW_AT_call_line
	.byte	35                      @ Abbrev [35] 0x3a5:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc2            @ DW_AT_location
	.long	812                     @ DW_AT_abstract_origin
	.byte	35                      @ Abbrev [35] 0x3ae:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc1            @ DW_AT_location
	.long	823                     @ DW_AT_abstract_origin
	.byte	36                      @ Abbrev [36] 0x3b7:0x6 DW_TAG_formal_parameter
	.byte	127                     @ DW_AT_const_value
	.long	834                     @ DW_AT_abstract_origin
	.byte	37                      @ Abbrev [37] 0x3bd:0x8 DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	845                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x3c7:0x2b DW_TAG_subprogram
	.byte	85                      @ DW_AT_decl_line
	.long	376                     @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	978                     @ DW_AT_object_pointer
	.byte	26                      @ Abbrev [26] 0x3d2:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string40         @ DW_AT_name
	.long	857                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	27                      @ Abbrev [27] 0x3db:0xb DW_TAG_formal_parameter
	.long	.Linfo_string46         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	85                      @ DW_AT_decl_line
	.long	595                     @ DW_AT_type
	.byte	27                      @ Abbrev [27] 0x3e6:0xb DW_TAG_formal_parameter
	.long	.Linfo_string47         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	85                      @ DW_AT_decl_line
	.long	577                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0x3f2:0x63 DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	1031                    @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.long	171                     @ DW_AT_specification
	.byte	33                      @ Abbrev [33] 0x407:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc3            @ DW_AT_location
	.long	.Linfo_string40         @ DW_AT_name
	.long	1385                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	38                      @ Abbrev [38] 0x414:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc4            @ DW_AT_location
	.long	.Linfo_string52         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.long	640                     @ DW_AT_type
	.byte	38                      @ Abbrev [38] 0x423:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc5            @ DW_AT_location
	.long	.Linfo_string53         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.long	577                     @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x432:0x22 DW_TAG_inlined_subroutine
	.long	967                     @ DW_AT_abstract_origin
	.long	.Ltmp35                 @ DW_AT_low_pc
	.long	.Ltmp38-.Ltmp35         @ DW_AT_high_pc
	.byte	2                       @ DW_AT_call_file
	.byte	19                      @ DW_AT_call_line
	.byte	35                      @ Abbrev [35] 0x441:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc7            @ DW_AT_location
	.long	987                     @ DW_AT_abstract_origin
	.byte	35                      @ Abbrev [35] 0x44a:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc6            @ DW_AT_location
	.long	998                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x455:0x2b DW_TAG_subprogram
	.byte	80                      @ DW_AT_decl_line
	.long	344                     @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	1120                    @ DW_AT_object_pointer
	.byte	26                      @ Abbrev [26] 0x460:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string40         @ DW_AT_name
	.long	857                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	27                      @ Abbrev [27] 0x469:0xb DW_TAG_formal_parameter
	.long	.Linfo_string46         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.long	576                     @ DW_AT_type
	.byte	27                      @ Abbrev [27] 0x474:0xb DW_TAG_formal_parameter
	.long	.Linfo_string47         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.long	577                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0x480:0x63 DW_TAG_subprogram
	.long	.Lfunc_begin5           @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	1173                    @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
	.long	203                     @ DW_AT_specification
	.byte	33                      @ Abbrev [33] 0x495:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc8            @ DW_AT_location
	.long	.Linfo_string40         @ DW_AT_name
	.long	1385                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	38                      @ Abbrev [38] 0x4a2:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc9            @ DW_AT_location
	.long	.Linfo_string52         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
	.long	640                     @ DW_AT_type
	.byte	38                      @ Abbrev [38] 0x4b1:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc10           @ DW_AT_location
	.long	.Linfo_string53         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
	.long	577                     @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x4c0:0x22 DW_TAG_inlined_subroutine
	.long	1109                    @ DW_AT_abstract_origin
	.long	.Ltmp46                 @ DW_AT_low_pc
	.long	.Ltmp49-.Ltmp46         @ DW_AT_high_pc
	.byte	2                       @ DW_AT_call_file
	.byte	24                      @ DW_AT_call_line
	.byte	35                      @ Abbrev [35] 0x4cf:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc12           @ DW_AT_location
	.long	1129                    @ DW_AT_abstract_origin
	.byte	35                      @ Abbrev [35] 0x4d8:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc11           @ DW_AT_location
	.long	1140                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0x4e3:0x86 DW_TAG_subprogram
	.long	.Lfunc_begin6           @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	1272                    @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.long	235                     @ DW_AT_specification
	.byte	33                      @ Abbrev [33] 0x4f8:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc13           @ DW_AT_location
	.long	.Linfo_string40         @ DW_AT_name
	.long	1385                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	38                      @ Abbrev [38] 0x505:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc14           @ DW_AT_location
	.long	.Linfo_string60         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.long	645                     @ DW_AT_type
	.byte	38                      @ Abbrev [38] 0x514:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc15           @ DW_AT_location
	.long	.Linfo_string61         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.long	577                     @ DW_AT_type
	.byte	38                      @ Abbrev [38] 0x523:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc16           @ DW_AT_location
	.long	.Linfo_string62         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.long	640                     @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x532:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string63         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.long	577                     @ DW_AT_type
	.byte	27                      @ Abbrev [27] 0x540:0xb DW_TAG_formal_parameter
	.long	.Linfo_string69         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.long	633                     @ DW_AT_type
	.byte	40                      @ Abbrev [40] 0x54b:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string54         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	29                      @ DW_AT_decl_line
	.long	1390                    @ DW_AT_type
	.byte	41                      @ Abbrev [41] 0x559:0xf DW_TAG_variable
	.long	.Ldebug_loc17           @ DW_AT_location
	.long	.Linfo_string64         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	28                      @ DW_AT_decl_line
	.long	1493                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x569:0x5 DW_TAG_pointer_type
	.long	61                      @ DW_AT_type
	.byte	29                      @ Abbrev [29] 0x56e:0xc DW_TAG_array_type
	.long	1402                    @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x573:0x6 DW_TAG_subrange_type
	.long	881                     @ DW_AT_type
	.byte	2                       @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0x57a:0x39 DW_TAG_structure_type
	.long	.Linfo_string59         @ DW_AT_name
	.byte	12                      @ DW_AT_byte_size
	.byte	9                       @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x582:0xc DW_TAG_member
	.long	.Linfo_string26         @ DW_AT_name
	.long	1459                    @ DW_AT_type
	.byte	9                       @ DW_AT_decl_file
	.byte	69                      @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x58e:0xc DW_TAG_member
	.long	.Linfo_string57         @ DW_AT_name
	.long	1459                    @ DW_AT_type
	.byte	9                       @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x59a:0xc DW_TAG_member
	.long	.Linfo_string53         @ DW_AT_name
	.long	1459                    @ DW_AT_type
	.byte	9                       @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x5a6:0xc DW_TAG_member
	.long	.Linfo_string46         @ DW_AT_name
	.long	1477                    @ DW_AT_type
	.byte	9                       @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0x5b3:0xb DW_TAG_typedef
	.long	1470                    @ DW_AT_type
	.long	.Linfo_string56         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	23                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x5be:0x7 DW_TAG_base_type
	.long	.Linfo_string55         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x5c5:0x5 DW_TAG_pointer_type
	.long	1482                    @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x5ca:0xb DW_TAG_typedef
	.long	54                      @ DW_AT_type
	.long	.Linfo_string58         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.byte	42                      @ Abbrev [42] 0x5d5:0x21 DW_TAG_structure_type
	.long	.Linfo_string68         @ DW_AT_name
	.byte	8                       @ DW_AT_byte_size
	.byte	10                      @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x5dd:0xc DW_TAG_member
	.long	.Linfo_string65         @ DW_AT_name
	.long	1526                    @ DW_AT_type
	.byte	10                      @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x5e9:0xc DW_TAG_member
	.long	.Linfo_string66         @ DW_AT_name
	.long	1531                    @ DW_AT_type
	.byte	10                      @ DW_AT_decl_file
	.byte	66                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x5f6:0x5 DW_TAG_pointer_type
	.long	1402                    @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x5fb:0xb DW_TAG_typedef
	.long	588                     @ DW_AT_type
	.long	.Linfo_string67         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.byte	0                       @ End Of Children Mark
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
.Ldebug_ranges0:
	.long	.Ltmp15-.Lfunc_begin0
	.long	.Ltmp16-.Lfunc_begin0
	.long	.Ltmp19-.Lfunc_begin0
	.long	.Ltmp24-.Lfunc_begin0
	.long	.Ltmp25-.Lfunc_begin0
	.long	.Ltmp28-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_macinfo,"",%progbits
.Ldebug_macinfo:
.Lcu_macro_begin0:
	.byte	0                       @ End Of Macro List Mark
	.section	.debug_pubnames,"",%progbits
	.long	.LpubNames_end0-.LpubNames_begin0 @ Length of Public Names Info
.LpubNames_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	1543                    @ Compilation Unit Length
	.long	1152                    @ DIE offset
	.asciz	"Adafruit_I2CDevice::read" @ External Name
	.long	967                     @ DIE offset
	.asciz	"I2c::writeBytes"       @ External Name
	.long	1109                    @ DIE offset
	.asciz	"I2c::readBytes"        @ External Name
	.long	888                     @ DIE offset
	.asciz	"Adafruit_I2CDevice::begin" @ External Name
	.long	1251                    @ DIE offset
	.asciz	"Adafruit_I2CDevice::write_then_read" @ External Name
	.long	792                     @ DIE offset
	.asciz	"I2c::initI2C_RW"       @ External Name
	.long	755                     @ DIE offset
	.asciz	"Adafruit_I2CDevice::~Adafruit_I2CDevice" @ External Name
	.long	655                     @ DIE offset
	.asciz	"Adafruit_I2CDevice::Adafruit_I2CDevice" @ External Name
	.long	1010                    @ DIE offset
	.asciz	"Adafruit_I2CDevice::write" @ External Name
	.long	0                       @ End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 @ Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	1543                    @ Compilation Unit Length
	.long	549                     @ DIE offset
	.asciz	"ssize_t"               @ External Name
	.long	283                     @ DIE offset
	.asciz	"I2c"                   @ External Name
	.long	1402                    @ DIE offset
	.asciz	"i2c_msg"               @ External Name
	.long	588                     @ DIE offset
	.asciz	"unsigned int"          @ External Name
	.long	542                     @ DIE offset
	.asciz	"int"                   @ External Name
	.long	611                     @ DIE offset
	.asciz	"uint8_t"               @ External Name
	.long	633                     @ DIE offset
	.asciz	"bool"                  @ External Name
	.long	577                     @ DIE offset
	.asciz	"size_t"                @ External Name
	.long	528                     @ DIE offset
	.asciz	"__vtbl_ptr_type"       @ External Name
	.long	1470                    @ DIE offset
	.asciz	"unsigned short"        @ External Name
	.long	43                      @ DIE offset
	.asciz	"i2c_char_t"            @ External Name
	.long	1493                    @ DIE offset
	.asciz	"i2c_rdwr_ioctl_data"   @ External Name
	.long	1482                    @ DIE offset
	.asciz	"__u8"                  @ External Name
	.long	1531                    @ DIE offset
	.asciz	"__u32"                 @ External Name
	.long	1459                    @ DIE offset
	.asciz	"__u16"                 @ External Name
	.long	54                      @ DIE offset
	.asciz	"unsigned char"         @ External Name
	.long	61                      @ DIE offset
	.asciz	"Adafruit_I2CDevice"    @ External Name
	.long	874                     @ DIE offset
	.asciz	"char"                  @ External Name
	.long	560                     @ DIE offset
	.asciz	"__ssize_t"             @ External Name
	.long	0                       @ End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.globl	_ZN18Adafruit_I2CDeviceC1EhP7TwoWire
	.type	_ZN18Adafruit_I2CDeviceC1EhP7TwoWire,%function
_ZN18Adafruit_I2CDeviceC1EhP7TwoWire = _ZN18Adafruit_I2CDeviceC2EhP7TwoWire
	.globl	_ZN18Adafruit_I2CDeviceD1Ev
	.type	_ZN18Adafruit_I2CDeviceD1Ev,%function
_ZN18Adafruit_I2CDeviceD1Ev = _ZN18Adafruit_I2CDeviceD2Ev
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
	.section	.debug_line,"",%progbits
.Lline_table_start0:

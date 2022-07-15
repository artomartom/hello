	.text
	.intel_syntax noprefix
	.file	"range.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	lea	rdi, [rip + _ZStL8__ioinit]
	call	_ZNSt8ios_base4InitC1Ev@PLT
	mov	rdi, qword ptr [rip + _ZNSt8ios_base4InitD1Ev@GOTPCREL]
	lea	rsi, [rip + _ZStL8__ioinit]
	lea	rdx, [rip + __dso_handle]
	call	__cxa_atexit@PLT
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	dword ptr [rbp - 4], 0
	xor	edi, edi
	mov	esi, 10
	call	_ZN6Ranges8in_rangeIiJNS_8reversedEEEEDaT_S2_DpT0_
	mov	qword ptr [rbp - 24], rax
	lea	rax, [rbp - 24]
	mov	qword ptr [rbp - 16], rax
	mov	rsi, qword ptr [rbp - 16]
	lea	rdi, [rbp - 48]
	call	_ZNK6Ranges14reversed_rangeIiE5beginEv
	mov	rsi, qword ptr [rbp - 16]
	lea	rdi, [rbp - 64]
	call	_ZNK6Ranges14reversed_rangeIiE3endEv
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lea	rdi, [rbp - 48]
	lea	rsi, [rbp - 64]
	call	_ZNK6Ranges14reversed_rangeIiE8iteratorneERKS2_
	test	al, 1
	jne	.LBB1_2
	jmp	.LBB1_4
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	lea	rdi, [rbp - 48]
	call	_ZN6Ranges5rangeIiE8iteratordeEv
	mov	dword ptr [rbp - 68], eax
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	lea	rdi, [rbp - 48]
	call	_ZN6Ranges14reversed_rangeIiE8iteratorppEv
	jmp	.LBB1_1
.LBB1_4:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 80
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6Ranges8in_rangeIiJNS_8reversedEEEEDaT_S2_DpT0_,"axG",@progbits,_ZN6Ranges8in_rangeIiJNS_8reversedEEEEDaT_S2_DpT0_,comdat
	.weak	_ZN6Ranges8in_rangeIiJNS_8reversedEEEEDaT_S2_DpT0_ # -- Begin function _ZN6Ranges8in_rangeIiJNS_8reversedEEEEDaT_S2_DpT0_
	.p2align	4, 0x90
	.type	_ZN6Ranges8in_rangeIiJNS_8reversedEEEEDaT_S2_DpT0_,@function
_ZN6Ranges8in_rangeIiJNS_8reversedEEEEDaT_S2_DpT0_: # @_ZN6Ranges8in_rangeIiJNS_8reversedEEEEDaT_S2_DpT0_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 20], edi
	mov	dword ptr [rbp - 24], esi
	mov	byte ptr [rbp - 25], 0
	mov	byte ptr [rbp - 26], 1
	mov	esi, dword ptr [rbp - 20]
	mov	edx, dword ptr [rbp - 24]
	lea	rdi, [rbp - 8]
	call	_ZN6Ranges14reversed_rangeIiEC2IJNS_8reversedEEEEiiDpT_
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end2:
	.size	_ZN6Ranges8in_rangeIiJNS_8reversedEEEEDaT_S2_DpT0_, .Lfunc_end2-_ZN6Ranges8in_rangeIiJNS_8reversedEEEEDaT_S2_DpT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6Ranges14reversed_rangeIiE5beginEv,"axG",@progbits,_ZNK6Ranges14reversed_rangeIiE5beginEv,comdat
	.weak	_ZNK6Ranges14reversed_rangeIiE5beginEv # -- Begin function _ZNK6Ranges14reversed_rangeIiE5beginEv
	.p2align	4, 0x90
	.type	_ZNK6Ranges14reversed_rangeIiE5beginEv,@function
_ZNK6Ranges14reversed_rangeIiE5beginEv: # @_ZNK6Ranges14reversed_rangeIiE5beginEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	rax, rdi
	mov	qword ptr [rbp - 24], rax       # 8-byte Spill
	mov	rax, rdi
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 16]
	mov	esi, dword ptr [rax]
	call	_ZN6Ranges14reversed_rangeIiE8iteratorC2Ei
	mov	rax, qword ptr [rbp - 24]       # 8-byte Reload
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end3:
	.size	_ZNK6Ranges14reversed_rangeIiE5beginEv, .Lfunc_end3-_ZNK6Ranges14reversed_rangeIiE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6Ranges14reversed_rangeIiE3endEv,"axG",@progbits,_ZNK6Ranges14reversed_rangeIiE3endEv,comdat
	.weak	_ZNK6Ranges14reversed_rangeIiE3endEv # -- Begin function _ZNK6Ranges14reversed_rangeIiE3endEv
	.p2align	4, 0x90
	.type	_ZNK6Ranges14reversed_rangeIiE3endEv,@function
_ZNK6Ranges14reversed_rangeIiE3endEv:   # @_ZNK6Ranges14reversed_rangeIiE3endEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	rax, rdi
	mov	qword ptr [rbp - 24], rax       # 8-byte Spill
	mov	rax, rdi
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 16]
	mov	esi, dword ptr [rax + 4]
	call	_ZN6Ranges14reversed_rangeIiE8iteratorC2Ei
	mov	rax, qword ptr [rbp - 24]       # 8-byte Reload
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end4:
	.size	_ZNK6Ranges14reversed_rangeIiE3endEv, .Lfunc_end4-_ZNK6Ranges14reversed_rangeIiE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6Ranges14reversed_rangeIiE8iteratorneERKS2_,"axG",@progbits,_ZNK6Ranges14reversed_rangeIiE8iteratorneERKS2_,comdat
	.weak	_ZNK6Ranges14reversed_rangeIiE8iteratorneERKS2_ # -- Begin function _ZNK6Ranges14reversed_rangeIiE8iteratorneERKS2_
	.p2align	4, 0x90
	.type	_ZNK6Ranges14reversed_rangeIiE8iteratorneERKS2_,@function
_ZNK6Ranges14reversed_rangeIiE8iteratorneERKS2_: # @_ZNK6Ranges14reversed_rangeIiE8iteratorneERKS2_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx + 8]
	setge	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end5:
	.size	_ZNK6Ranges14reversed_rangeIiE8iteratorneERKS2_, .Lfunc_end5-_ZNK6Ranges14reversed_rangeIiE8iteratorneERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6Ranges5rangeIiE8iteratordeEv,"axG",@progbits,_ZN6Ranges5rangeIiE8iteratordeEv,comdat
	.weak	_ZN6Ranges5rangeIiE8iteratordeEv # -- Begin function _ZN6Ranges5rangeIiE8iteratordeEv
	.p2align	4, 0x90
	.type	_ZN6Ranges5rangeIiE8iteratordeEv,@function
_ZN6Ranges5rangeIiE8iteratordeEv:       # @_ZN6Ranges5rangeIiE8iteratordeEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax + 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end6:
	.size	_ZN6Ranges5rangeIiE8iteratordeEv, .Lfunc_end6-_ZN6Ranges5rangeIiE8iteratordeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6Ranges14reversed_rangeIiE8iteratorppEv,"axG",@progbits,_ZN6Ranges14reversed_rangeIiE8iteratorppEv,comdat
	.weak	_ZN6Ranges14reversed_rangeIiE8iteratorppEv # -- Begin function _ZN6Ranges14reversed_rangeIiE8iteratorppEv
	.p2align	4, 0x90
	.type	_ZN6Ranges14reversed_rangeIiE8iteratorppEv,@function
_ZN6Ranges14reversed_rangeIiE8iteratorppEv: # @_ZN6Ranges14reversed_rangeIiE8iteratorppEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, rcx
	add	rax, 8
	mov	edx, dword ptr [rcx + 8]
	add	edx, -1
	mov	dword ptr [rcx + 8], edx
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end7:
	.size	_ZN6Ranges14reversed_rangeIiE8iteratorppEv, .Lfunc_end7-_ZN6Ranges14reversed_rangeIiE8iteratorppEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6Ranges14reversed_rangeIiEC2IJNS_8reversedEEEEiiDpT_,"axG",@progbits,_ZN6Ranges14reversed_rangeIiEC2IJNS_8reversedEEEEiiDpT_,comdat
	.weak	_ZN6Ranges14reversed_rangeIiEC2IJNS_8reversedEEEEiiDpT_ # -- Begin function _ZN6Ranges14reversed_rangeIiEC2IJNS_8reversedEEEEiiDpT_
	.p2align	4, 0x90
	.type	_ZN6Ranges14reversed_rangeIiEC2IJNS_8reversedEEEEiiDpT_,@function
_ZN6Ranges14reversed_rangeIiEC2IJNS_8reversedEEEEiiDpT_: # @_ZN6Ranges14reversed_rangeIiEC2IJNS_8reversedEEEEiiDpT_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	dword ptr [rbp - 24], edx
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 24]
	sub	esi, 1
	mov	edx, dword ptr [rbp - 20]
	call	_ZN6Ranges5rangeIiEC2IJEEEiiDpT_
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end8:
	.size	_ZN6Ranges14reversed_rangeIiEC2IJNS_8reversedEEEEiiDpT_, .Lfunc_end8-_ZN6Ranges14reversed_rangeIiEC2IJNS_8reversedEEEEiiDpT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6Ranges5rangeIiEC2IJEEEiiDpT_,"axG",@progbits,_ZN6Ranges5rangeIiEC2IJEEEiiDpT_,comdat
	.weak	_ZN6Ranges5rangeIiEC2IJEEEiiDpT_ # -- Begin function _ZN6Ranges5rangeIiEC2IJEEEiiDpT_
	.p2align	4, 0x90
	.type	_ZN6Ranges5rangeIiEC2IJEEEiiDpT_,@function
_ZN6Ranges5rangeIiEC2IJEEEiiDpT_:       # @_ZN6Ranges5rangeIiEC2IJEEEiiDpT_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 16]
	mov	dword ptr [rax + 4], ecx
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end9:
	.size	_ZN6Ranges5rangeIiEC2IJEEEiiDpT_, .Lfunc_end9-_ZN6Ranges5rangeIiEC2IJEEEiiDpT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6Ranges14reversed_rangeIiE8iteratorC2Ei,"axG",@progbits,_ZN6Ranges14reversed_rangeIiE8iteratorC2Ei,comdat
	.weak	_ZN6Ranges14reversed_rangeIiE8iteratorC2Ei # -- Begin function _ZN6Ranges14reversed_rangeIiE8iteratorC2Ei
	.p2align	4, 0x90
	.type	_ZN6Ranges14reversed_rangeIiE8iteratorC2Ei,@function
_ZN6Ranges14reversed_rangeIiE8iteratorC2Ei: # @_ZN6Ranges14reversed_rangeIiE8iteratorC2Ei
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rdi       # 8-byte Spill
	mov	esi, dword ptr [rbp - 12]
.Ltmp0:
	call	_ZN6Ranges5rangeIiE8iteratorC2Ei
.Ltmp1:
	jmp	.LBB10_1
.LBB10_1:
	mov	rax, qword ptr [rbp - 24]       # 8-byte Reload
	lea	rcx, [rip + _ZTVN6Ranges14reversed_rangeIiE8iteratorE]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB10_2:
	.cfi_def_cfa rbp, 16
.Ltmp2:
	mov	rdi, rax
                                        # kill: def $eax killed $edx killed $rdx
	call	__clang_call_terminate
.Lfunc_end10:
	.size	_ZN6Ranges14reversed_rangeIiE8iteratorC2Ei, .Lfunc_end10-_ZN6Ranges14reversed_rangeIiE8iteratorC2Ei
	.cfi_endproc
	.section	.gcc_except_table._ZN6Ranges14reversed_rangeIiE8iteratorC2Ei,"aG",@progbits,_ZN6Ranges14reversed_rangeIiE8iteratorC2Ei,comdat
	.p2align	2
GCC_except_table10:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	1                               #   On action: 1
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6Ranges5rangeIiE8iteratorC2Ei,"axG",@progbits,_ZN6Ranges5rangeIiE8iteratorC2Ei,comdat
	.weak	_ZN6Ranges5rangeIiE8iteratorC2Ei # -- Begin function _ZN6Ranges5rangeIiE8iteratorC2Ei
	.p2align	4, 0x90
	.type	_ZN6Ranges5rangeIiE8iteratorC2Ei,@function
_ZN6Ranges5rangeIiE8iteratorC2Ei:       # @_ZN6Ranges5rangeIiE8iteratorC2Ei
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rax, qword ptr [rbp - 8]
	lea	rcx, [rip + _ZTVN6Ranges5rangeIiE8iteratorE]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rax + 8], ecx
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end11:
	.size	_ZN6Ranges5rangeIiE8iteratorC2Ei, .Lfunc_end11-_ZN6Ranges5rangeIiE8iteratorC2Ei
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	push	rax
	call	__cxa_begin_catch@PLT
	call	_ZSt9terminatev@PLT
.Lfunc_end12:
	.size	__clang_call_terminate, .Lfunc_end12-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN6Ranges14reversed_rangeIiE8iteratorD2Ev,"axG",@progbits,_ZN6Ranges14reversed_rangeIiE8iteratorD2Ev,comdat
	.weak	_ZN6Ranges14reversed_rangeIiE8iteratorD2Ev # -- Begin function _ZN6Ranges14reversed_rangeIiE8iteratorD2Ev
	.p2align	4, 0x90
	.type	_ZN6Ranges14reversed_rangeIiE8iteratorD2Ev,@function
_ZN6Ranges14reversed_rangeIiE8iteratorD2Ev: # @_ZN6Ranges14reversed_rangeIiE8iteratorD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	_ZN6Ranges5rangeIiE8iteratorD2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end13:
	.size	_ZN6Ranges14reversed_rangeIiE8iteratorD2Ev, .Lfunc_end13-_ZN6Ranges14reversed_rangeIiE8iteratorD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6Ranges14reversed_rangeIiE8iteratorD0Ev,"axG",@progbits,_ZN6Ranges14reversed_rangeIiE8iteratorD0Ev,comdat
	.weak	_ZN6Ranges14reversed_rangeIiE8iteratorD0Ev # -- Begin function _ZN6Ranges14reversed_rangeIiE8iteratorD0Ev
	.p2align	4, 0x90
	.type	_ZN6Ranges14reversed_rangeIiE8iteratorD0Ev,@function
_ZN6Ranges14reversed_rangeIiE8iteratorD0Ev: # @_ZN6Ranges14reversed_rangeIiE8iteratorD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	call	_ZN6Ranges14reversed_rangeIiE8iteratorD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZdlPv@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end14:
	.size	_ZN6Ranges14reversed_rangeIiE8iteratorD0Ev, .Lfunc_end14-_ZN6Ranges14reversed_rangeIiE8iteratorD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6Ranges5rangeIiE8iteratorD2Ev,"axG",@progbits,_ZN6Ranges5rangeIiE8iteratorD2Ev,comdat
	.weak	_ZN6Ranges5rangeIiE8iteratorD2Ev # -- Begin function _ZN6Ranges5rangeIiE8iteratorD2Ev
	.p2align	4, 0x90
	.type	_ZN6Ranges5rangeIiE8iteratorD2Ev,@function
_ZN6Ranges5rangeIiE8iteratorD2Ev:       # @_ZN6Ranges5rangeIiE8iteratorD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end15:
	.size	_ZN6Ranges5rangeIiE8iteratorD2Ev, .Lfunc_end15-_ZN6Ranges5rangeIiE8iteratorD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6Ranges5rangeIiE8iteratorD0Ev,"axG",@progbits,_ZN6Ranges5rangeIiE8iteratorD0Ev,comdat
	.weak	_ZN6Ranges5rangeIiE8iteratorD0Ev # -- Begin function _ZN6Ranges5rangeIiE8iteratorD0Ev
	.p2align	4, 0x90
	.type	_ZN6Ranges5rangeIiE8iteratorD0Ev,@function
_ZN6Ranges5rangeIiE8iteratorD0Ev:       # @_ZN6Ranges5rangeIiE8iteratorD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	call	_ZN6Ranges5rangeIiE8iteratorD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZdlPv@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end16:
	.size	_ZN6Ranges5rangeIiE8iteratorD0Ev, .Lfunc_end16-_ZN6Ranges5rangeIiE8iteratorD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_range.cpp
	.type	_GLOBAL__sub_I_range.cpp,@function
_GLOBAL__sub_I_range.cpp:               # @_GLOBAL__sub_I_range.cpp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	call	__cxx_global_var_init
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end17:
	.size	_GLOBAL__sub_I_range.cpp, .Lfunc_end17-_GLOBAL__sub_I_range.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	_ZTVN6Ranges14reversed_rangeIiE8iteratorE,@object # @_ZTVN6Ranges14reversed_rangeIiE8iteratorE
	.section	.data.rel.ro._ZTVN6Ranges14reversed_rangeIiE8iteratorE,"aGw",@progbits,_ZTVN6Ranges14reversed_rangeIiE8iteratorE,comdat
	.weak	_ZTVN6Ranges14reversed_rangeIiE8iteratorE
	.p2align	3
_ZTVN6Ranges14reversed_rangeIiE8iteratorE:
	.quad	0
	.quad	_ZTIN6Ranges14reversed_rangeIiE8iteratorE
	.quad	_ZN6Ranges14reversed_rangeIiE8iteratorD2Ev
	.quad	_ZN6Ranges14reversed_rangeIiE8iteratorD0Ev
	.size	_ZTVN6Ranges14reversed_rangeIiE8iteratorE, 32

	.type	_ZTSN6Ranges14reversed_rangeIiE8iteratorE,@object # @_ZTSN6Ranges14reversed_rangeIiE8iteratorE
	.section	.rodata._ZTSN6Ranges14reversed_rangeIiE8iteratorE,"aG",@progbits,_ZTSN6Ranges14reversed_rangeIiE8iteratorE,comdat
	.weak	_ZTSN6Ranges14reversed_rangeIiE8iteratorE
_ZTSN6Ranges14reversed_rangeIiE8iteratorE:
	.asciz	"N6Ranges14reversed_rangeIiE8iteratorE"
	.size	_ZTSN6Ranges14reversed_rangeIiE8iteratorE, 38

	.type	_ZTSN6Ranges5rangeIiE8iteratorE,@object # @_ZTSN6Ranges5rangeIiE8iteratorE
	.section	.rodata._ZTSN6Ranges5rangeIiE8iteratorE,"aG",@progbits,_ZTSN6Ranges5rangeIiE8iteratorE,comdat
	.weak	_ZTSN6Ranges5rangeIiE8iteratorE
_ZTSN6Ranges5rangeIiE8iteratorE:
	.asciz	"N6Ranges5rangeIiE8iteratorE"
	.size	_ZTSN6Ranges5rangeIiE8iteratorE, 28

	.type	_ZTIN6Ranges5rangeIiE8iteratorE,@object # @_ZTIN6Ranges5rangeIiE8iteratorE
	.section	.data.rel.ro._ZTIN6Ranges5rangeIiE8iteratorE,"aGw",@progbits,_ZTIN6Ranges5rangeIiE8iteratorE,comdat
	.weak	_ZTIN6Ranges5rangeIiE8iteratorE
	.p2align	3
_ZTIN6Ranges5rangeIiE8iteratorE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN6Ranges5rangeIiE8iteratorE
	.size	_ZTIN6Ranges5rangeIiE8iteratorE, 16

	.type	_ZTIN6Ranges14reversed_rangeIiE8iteratorE,@object # @_ZTIN6Ranges14reversed_rangeIiE8iteratorE
	.section	.data.rel.ro._ZTIN6Ranges14reversed_rangeIiE8iteratorE,"aGw",@progbits,_ZTIN6Ranges14reversed_rangeIiE8iteratorE,comdat
	.weak	_ZTIN6Ranges14reversed_rangeIiE8iteratorE
	.p2align	3
_ZTIN6Ranges14reversed_rangeIiE8iteratorE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN6Ranges14reversed_rangeIiE8iteratorE
	.quad	_ZTIN6Ranges5rangeIiE8iteratorE
	.size	_ZTIN6Ranges14reversed_rangeIiE8iteratorE, 24

	.type	_ZTVN6Ranges5rangeIiE8iteratorE,@object # @_ZTVN6Ranges5rangeIiE8iteratorE
	.section	.data.rel.ro._ZTVN6Ranges5rangeIiE8iteratorE,"aGw",@progbits,_ZTVN6Ranges5rangeIiE8iteratorE,comdat
	.weak	_ZTVN6Ranges5rangeIiE8iteratorE
	.p2align	3
_ZTVN6Ranges5rangeIiE8iteratorE:
	.quad	0
	.quad	_ZTIN6Ranges5rangeIiE8iteratorE
	.quad	_ZN6Ranges5rangeIiE8iteratorD2Ev
	.quad	_ZN6Ranges5rangeIiE8iteratorD0Ev
	.size	_ZTVN6Ranges5rangeIiE8iteratorE, 32

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_range.cpp
	.section	".linker-options","e",@llvm_linker_options
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _ZN6Ranges8in_rangeIiJNS_8reversedEEEEDaT_S2_DpT0_
	.addrsig_sym _ZNK6Ranges14reversed_rangeIiE5beginEv
	.addrsig_sym _ZNK6Ranges14reversed_rangeIiE3endEv
	.addrsig_sym _ZNK6Ranges14reversed_rangeIiE8iteratorneERKS2_
	.addrsig_sym _ZN6Ranges5rangeIiE8iteratordeEv
	.addrsig_sym _ZN6Ranges14reversed_rangeIiE8iteratorppEv
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZdlPv
	.addrsig_sym _GLOBAL__sub_I_range.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSN6Ranges14reversed_rangeIiE8iteratorE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSN6Ranges5rangeIiE8iteratorE
	.addrsig_sym _ZTIN6Ranges5rangeIiE8iteratorE
	.addrsig_sym _ZTIN6Ranges14reversed_rangeIiE8iteratorE

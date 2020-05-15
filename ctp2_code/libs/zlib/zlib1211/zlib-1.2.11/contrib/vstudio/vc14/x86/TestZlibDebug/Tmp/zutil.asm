; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27040.0 

	TITLE	G:\CtP2\zlib1211\zlib-1.2.11\zutil.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	_z_errmsg
_BSS	SEGMENT
$SG10907 DB	01H DUP (?)
$SG10914 DB	01H DUP (?)
_BSS	ENDS
CONST	SEGMENT
_z_errmsg DD	FLAT:$SG10905
	DD	FLAT:$SG10906
	DD	FLAT:$SG10907
	DD	FLAT:$SG10908
	DD	FLAT:$SG10909
	DD	FLAT:$SG10910
	DD	FLAT:$SG10911
	DD	FLAT:$SG10912
	DD	FLAT:$SG10913
	DD	FLAT:$SG10914
CONST	ENDS
_DATA	SEGMENT
$SG10905 DB	'need dictionary', 00H
$SG10906 DB	'stream end', 00H
	ORG $+1
$SG10908 DB	'file error', 00H
	ORG $+1
$SG10909 DB	'stream error', 00H
	ORG $+3
$SG10910 DB	'data error', 00H
	ORG $+1
$SG10911 DB	'insufficient memory', 00H
$SG10912 DB	'buffer error', 00H
	ORG $+3
$SG10913 DB	'incompatible version', 00H
_DATA	ENDS
PUBLIC	_zlibVersion
PUBLIC	_zlibCompileFlags
PUBLIC	_zError
PUBLIC	_zcalloc
PUBLIC	_zcfree
EXTRN	__imp__free:PROC
EXTRN	__imp__malloc:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
_DATA	SEGMENT
	ORG $+3
$SG10916 DB	'1.2.11', 00H
_DATA	ENDS
; Function compile flags: /Odtp /RTCsu
; File g:\ctp2\zlib1211\zlib-1.2.11\zutil.c
_TEXT	SEGMENT
_opaque$ = 8						; size = 4
_ptr$ = 12						; size = 4
_zcfree	PROC

; 318  : {

	push	ebp
	mov	ebp, esp
	push	esi

; 319  :     (void)opaque;
; 320  :     free(ptr);

	mov	esi, esp
	mov	eax, DWORD PTR _ptr$[ebp]
	push	eax
	call	DWORD PTR __imp__free
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 321  : }

	pop	esi
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
_zcfree	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File g:\ctp2\zlib1211\zlib-1.2.11\zutil.c
_TEXT	SEGMENT
_opaque$ = 8						; size = 4
_items$ = 12						; size = 4
_size$ = 16						; size = 4
_zcalloc PROC

; 309  : {

	push	ebp
	mov	ebp, esp
	push	esi

; 310  :     (void)opaque;
; 311  :     return sizeof(uInt) > 2 ? (voidpf)malloc(items * size) :

	mov	eax, DWORD PTR _items$[ebp]
	imul	eax, DWORD PTR _size$[ebp]
	mov	esi, esp
	push	eax
	call	DWORD PTR __imp__malloc
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 312  :                               (voidpf)calloc(items, size);
; 313  : }

	pop	esi
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
_zcalloc ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File g:\ctp2\zlib1211\zlib-1.2.11\zutil.c
_TEXT	SEGMENT
_err$ = 8						; size = 4
_zError	PROC

; 135  : {

	push	ebp
	mov	ebp, esp

; 136  :     return ERR_MSG(err);

	mov	eax, 2
	sub	eax, DWORD PTR _err$[ebp]
	mov	eax, DWORD PTR _z_errmsg[eax*4]

; 137  : }

	pop	ebp
	ret	0
_zError	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File g:\ctp2\zlib1211\zlib-1.2.11\zutil.c
_TEXT	SEGMENT
tv85 = -20						; size = 4
tv78 = -16						; size = 4
tv71 = -12						; size = 4
tv64 = -8						; size = 4
_flags$ = -4						; size = 4
_zlibCompileFlags PROC

; 33   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax

; 34   :     uLong flags;
; 35   : 
; 36   :     flags = 0;

	mov	DWORD PTR _flags$[ebp], 0

; 37   :     switch ((int)(sizeof(uInt))) {

	mov	DWORD PTR tv64[ebp], 4
	cmp	DWORD PTR tv64[ebp], 2
	je	SHORT $LN10@zlibCompil
	cmp	DWORD PTR tv64[ebp], 4
	je	SHORT $LN11@zlibCompil
	cmp	DWORD PTR tv64[ebp], 8
	je	SHORT $LN12@zlibCompil
	jmp	SHORT $LN13@zlibCompil
$LN10@zlibCompil:

; 38   :     case 2:     break;

	jmp	SHORT $LN2@zlibCompil
$LN11@zlibCompil:

; 39   :     case 4:     flags += 1;     break;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 1
	mov	DWORD PTR _flags$[ebp], eax
	jmp	SHORT $LN2@zlibCompil
$LN12@zlibCompil:

; 40   :     case 8:     flags += 2;     break;

	mov	ecx, DWORD PTR _flags$[ebp]
	add	ecx, 2
	mov	DWORD PTR _flags$[ebp], ecx
	jmp	SHORT $LN2@zlibCompil
$LN13@zlibCompil:

; 41   :     default:    flags += 3;

	mov	edx, DWORD PTR _flags$[ebp]
	add	edx, 3
	mov	DWORD PTR _flags$[ebp], edx
$LN2@zlibCompil:

; 42   :     }
; 43   :     switch ((int)(sizeof(uLong))) {

	mov	DWORD PTR tv71[ebp], 4
	cmp	DWORD PTR tv71[ebp], 2
	je	SHORT $LN14@zlibCompil
	cmp	DWORD PTR tv71[ebp], 4
	je	SHORT $LN15@zlibCompil
	cmp	DWORD PTR tv71[ebp], 8
	je	SHORT $LN16@zlibCompil
	jmp	SHORT $LN17@zlibCompil
$LN14@zlibCompil:

; 44   :     case 2:     break;

	jmp	SHORT $LN4@zlibCompil
$LN15@zlibCompil:

; 45   :     case 4:     flags += 1 << 2;        break;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 4
	mov	DWORD PTR _flags$[ebp], eax
	jmp	SHORT $LN4@zlibCompil
$LN16@zlibCompil:

; 46   :     case 8:     flags += 2 << 2;        break;

	mov	ecx, DWORD PTR _flags$[ebp]
	add	ecx, 8
	mov	DWORD PTR _flags$[ebp], ecx
	jmp	SHORT $LN4@zlibCompil
$LN17@zlibCompil:

; 47   :     default:    flags += 3 << 2;

	mov	edx, DWORD PTR _flags$[ebp]
	add	edx, 12					; 0000000cH
	mov	DWORD PTR _flags$[ebp], edx
$LN4@zlibCompil:

; 48   :     }
; 49   :     switch ((int)(sizeof(voidpf))) {

	mov	DWORD PTR tv78[ebp], 4
	cmp	DWORD PTR tv78[ebp], 2
	je	SHORT $LN18@zlibCompil
	cmp	DWORD PTR tv78[ebp], 4
	je	SHORT $LN19@zlibCompil
	cmp	DWORD PTR tv78[ebp], 8
	je	SHORT $LN20@zlibCompil
	jmp	SHORT $LN21@zlibCompil
$LN18@zlibCompil:

; 50   :     case 2:     break;

	jmp	SHORT $LN6@zlibCompil
$LN19@zlibCompil:

; 51   :     case 4:     flags += 1 << 4;        break;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 16					; 00000010H
	mov	DWORD PTR _flags$[ebp], eax
	jmp	SHORT $LN6@zlibCompil
$LN20@zlibCompil:

; 52   :     case 8:     flags += 2 << 4;        break;

	mov	ecx, DWORD PTR _flags$[ebp]
	add	ecx, 32					; 00000020H
	mov	DWORD PTR _flags$[ebp], ecx
	jmp	SHORT $LN6@zlibCompil
$LN21@zlibCompil:

; 53   :     default:    flags += 3 << 4;

	mov	edx, DWORD PTR _flags$[ebp]
	add	edx, 48					; 00000030H
	mov	DWORD PTR _flags$[ebp], edx
$LN6@zlibCompil:

; 54   :     }
; 55   :     switch ((int)(sizeof(z_off_t))) {

	mov	DWORD PTR tv85[ebp], 4
	cmp	DWORD PTR tv85[ebp], 2
	je	SHORT $LN22@zlibCompil
	cmp	DWORD PTR tv85[ebp], 4
	je	SHORT $LN23@zlibCompil
	cmp	DWORD PTR tv85[ebp], 8
	je	SHORT $LN24@zlibCompil
	jmp	SHORT $LN25@zlibCompil
$LN22@zlibCompil:

; 56   :     case 2:     break;

	jmp	SHORT $LN8@zlibCompil
$LN23@zlibCompil:

; 57   :     case 4:     flags += 1 << 6;        break;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 64					; 00000040H
	mov	DWORD PTR _flags$[ebp], eax
	jmp	SHORT $LN8@zlibCompil
$LN24@zlibCompil:

; 58   :     case 8:     flags += 2 << 6;        break;

	mov	ecx, DWORD PTR _flags$[ebp]
	add	ecx, 128				; 00000080H
	mov	DWORD PTR _flags$[ebp], ecx
	jmp	SHORT $LN8@zlibCompil
$LN25@zlibCompil:

; 59   :     default:    flags += 3 << 6;

	mov	edx, DWORD PTR _flags$[ebp]
	add	edx, 192				; 000000c0H
	mov	DWORD PTR _flags$[ebp], edx
$LN8@zlibCompil:

; 60   :     }
; 61   : #ifdef ZLIB_DEBUG
; 62   :     flags += 1 << 8;
; 63   : #endif
; 64   : #if defined(ASMV) || defined(ASMINF)
; 65   :     flags += 1 << 9;
; 66   : #endif
; 67   : #ifdef ZLIB_WINAPI
; 68   :     flags += 1 << 10;
; 69   : #endif
; 70   : #ifdef BUILDFIXED
; 71   :     flags += 1 << 12;
; 72   : #endif
; 73   : #ifdef DYNAMIC_CRC_TABLE
; 74   :     flags += 1 << 13;
; 75   : #endif
; 76   : #ifdef NO_GZCOMPRESS
; 77   :     flags += 1L << 16;
; 78   : #endif
; 79   : #ifdef NO_GZIP
; 80   :     flags += 1L << 17;
; 81   : #endif
; 82   : #ifdef PKZIP_BUG_WORKAROUND
; 83   :     flags += 1L << 20;
; 84   : #endif
; 85   : #ifdef FASTEST
; 86   :     flags += 1L << 21;
; 87   : #endif
; 88   : #if defined(STDC) || defined(Z_HAVE_STDARG_H)
; 89   : #  ifdef NO_vsnprintf
; 90   :     flags += 1L << 25;
; 91   : #    ifdef HAS_vsprintf_void
; 92   :     flags += 1L << 26;
; 93   : #    endif
; 94   : #  else
; 95   : #    ifdef HAS_vsnprintf_void
; 96   :     flags += 1L << 26;
; 97   : #    endif
; 98   : #  endif
; 99   : #else
; 100  :     flags += 1L << 24;
; 101  : #  ifdef NO_snprintf
; 102  :     flags += 1L << 25;
; 103  : #    ifdef HAS_sprintf_void
; 104  :     flags += 1L << 26;
; 105  : #    endif
; 106  : #  else
; 107  : #    ifdef HAS_snprintf_void
; 108  :     flags += 1L << 26;
; 109  : #    endif
; 110  : #  endif
; 111  : #endif
; 112  :     return flags;

	mov	eax, DWORD PTR _flags$[ebp]

; 113  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_zlibCompileFlags ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File g:\ctp2\zlib1211\zlib-1.2.11\zutil.c
_TEXT	SEGMENT
_zlibVersion PROC

; 28   : {

	push	ebp
	mov	ebp, esp

; 29   :     return ZLIB_VERSION;

	mov	eax, OFFSET $SG10916

; 30   : }

	pop	ebp
	ret	0
_zlibVersion ENDP
_TEXT	ENDS
END

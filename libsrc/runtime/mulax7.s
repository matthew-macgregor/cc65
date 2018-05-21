;
; Piotr Fusik, 24.10.2003
; originally by Ullrich von Bassewitz
;
; CC65 runtime: Multiply the primary register by 7
;

        .export         mulax7
        .importzp       ptr1

.proc   mulax7

        sta     ptr1
        stx     ptr1+1
        asl     a
        rol     ptr1+1                  ; * 2
        asl     a
        rol     ptr1+1                  ; * 4
        asl     a
        rol     ptr1+1                  ; * 8
        sec
        sbc     ptr1
        tay
        txa
        eor     #$ff
        adc     ptr1+1                  ; * (8 - 1)
        tax
        tya
        rts

.endproc



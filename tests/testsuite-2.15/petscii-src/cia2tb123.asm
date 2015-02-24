           *= $0801           .BYTE $4C,$14,$08,$00,$97TURBOASS   = 780           .TEXT "780"           .BYTE $2C,$30,$3A,$9E,$32,$30           .BYTE $37,$33,$00,$00,$00           LDA #1           STA TURBOASS           JMP MAINPRINT           .BLOCK           PLA           STA PRINT0+1           PLA           STA PRINT0+2           LDX #1PRINT0           LDA $1111,X           BEQ PRINT1           JSR $FFD2           INX           BNE PRINT0PRINT1           SEC           TXA           ADC PRINT0+1           STA PRINT2+1           LDA #0           ADC PRINT0+2           STA PRINT2+2PRINT2           JMP $1111           .BENDPRINTHB           .BLOCK           PHA           LSR A           LSR A           LSR A           LSR A           JSR PRINTHN           PLA           AND #$0FPRINTHN           ORA #$30           CMP #$3A           BCC PRINTHN0           ADC #6PRINTHN0           JSR $FFD2           RTS           .BENDWAITBORDER           .BLOCK           LDA $D011           BMI OKWAIT           LDA $D012           CMP #30           BCS WAITOK           RTS           .BENDWAITKEY           .BLOCK           JSR $FDA3WAIT           JSR $FFE4           BEQ WAIT           CMP #3           BEQ STOP           RTSSTOP           LDA TURBOASS           BEQ BASICBASIC           JMP $A474           .BENDNEWBRK           PLA           PLA           PLA           PLA           PLA           PLA           RTSSETBRK           SEI           LDA #$00           STA $DD0E           BIT $DD0B           STA $DD0B           STA $DD09           STA $DD08           BIT $DD0B           LDA #$7F           STA $DD0D           BIT $DD0D           LDA #<NEWBRK           STA $0316           LDA #>NEWBRK           STA $0317           RTSRESTOREBRK           PHA           LDA #$66           STA $0316           LDA #$FE           STA $0317           JSR $FDA3           PLA           CLI           RTSMAIN           JSR PRINT           .BYTE 13           .TEXT "�CIA2TB123"           .BYTE 0           .BLOCK           JMP STARTCODE           NOP           STA $DD0F           ASL A           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           JSR WAITBORDER           LDA #$01           JSR $DD02           JSR RESTOREBRK           CMP #2           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 00 01 CYCLE 1"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           STA $DD0F           LDA #$0A           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           JSR WAITBORDER           LDA #$01           JSR $DD02           JSR RESTOREBRK           CMP #$0A           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 00 01 CYCLE 2"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           STA $DD0F           NOP           .BYTE $0B           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           JSR WAITBORDER           LDA #$01           JSR $DD02           JSR RESTOREBRK           CMP #2           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 00 01 CYCLE 3"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           NOP           STA $DD0F           NOP           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           LDA #$0A           STA $DD06           JSR WAITBORDER           LDA #$10           JSR $DD02           JSR RESTOREBRK           CMP #$10           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 00 10 CYCLE 1"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           STA $DD0F           LDA #$EA           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           LDA #$0A           STA $DD06           JSR WAITBORDER           LDA #$10           JSR $DD02           JSR RESTOREBRK           CMP #$0A           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 00 10 CYCLE 2"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           STA $DD0F           NOP           NOP           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           LDA #$0A           STA $DD06           JSR WAITBORDER           LDA #$10           JSR $DD02           JSR RESTOREBRK           CMP #$20           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 00 10 CYCLE 3"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           NOP           STA $DD0F           NOP           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           LDA #$0A           STA $DD06           JSR WAITBORDER           LDA #$11           JSR $DD02           JSR RESTOREBRK           CMP #$11           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 00 11 CYCLE 1"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           STA $DD0F           LDA #$EA           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           LDA #$0A           STA $DD06           JSR WAITBORDER           LDA #$11           JSR $DD02           JSR RESTOREBRK           CMP #$0A           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 00 11 CYCLE 2"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           STA $DD0F           NOP           NOP           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           LDA #$0A           STA $DD06           JSR WAITBORDER           LDA #$11           JSR $DD02           JSR RESTOREBRK           CMP #$22           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 00 11 CYCLE 3"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           NOP           STX $DD0F           .BYTE $15           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           JSR WAITBORDER           LDA #$01           LDX #$11           STA $DD0F           JSR $DD02           JSR RESTOREBRK           CMP #$02           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 01 11 CYCLE 1"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           STX $DD0F           LDA #$0A           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           JSR WAITBORDER           LDA #$01           LDX #$11           STA $DD0F           JSR $DD02           JSR RESTOREBRK           CMP #$0A           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 01 11 CYCLE 2"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           STX $DD0F           NOP           .BYTE $0A           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           JSR WAITBORDER           LDA #$01           LDX #$11           STA $DD0F           JSR $DD02           JSR RESTOREBRK           CMP #$02           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 01 11 CYCLE 3"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           NOP           STX $DD0F           .BYTE $15           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           JSR WAITBORDER           LDA #$01           LDX #$10           STA $DD0F           JSR $DD02           JSR RESTOREBRK           CMP #$02           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 01 10 CYCLE 1"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           STX $DD0F           LDA #$0A           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           JSR WAITBORDER           LDA #$01           LDX #$10           STA $DD0F           JSR $DD02           JSR RESTOREBRK           CMP #$0A           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 01 10 CYCLE 2"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           STX $DD0F           NOP           ASL A           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           JSR WAITBORDER           LDA #$01           LDX #$10           STA $DD0F           JSR $DD02           JSR RESTOREBRK           CMP #$02           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 01 10 CYCLE 3"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           NOP           STX $DD0F           .BYTE $15           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           JSR WAITBORDER           LDA #$01           LDX #$00           STA $DD0F           JSR $DD02           JSR RESTOREBRK           CMP #$02           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 01 00 CYCLE 1"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           STX $DD0F           LDA #$0A           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           JSR WAITBORDER           LDA #$01           LDX #$00           STA $DD0F           JSR $DD02           JSR RESTOREBRK           CMP #$00           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 01 00 CYCLE 2"           .BYTE 0           JSR WAITKEYOK           .BEND           .BLOCK           JMP STARTCODE           STX $DD0F           NOP           .BYTE $14           RTSSTART           JSR SETBRK           LDX #0           STX $DD0FCOPY           LDA CODE,X           STA $DD02,X           INX           CPX #6           BCC COPY           JSR WAITBORDER           LDA #$01           LDX #$00           STA $DD0F           JSR $DD02           JSR RESTOREBRK           CMP #$02           BEQ OK           JSR PRINT           .BYTE 13,13           .TEXT "ERROR 01 00 CYCLE 3"           .BYTE 0           JSR WAITKEYOK           .BEND           JSR PRINT           .TEXT " - OK"           .BYTE 13,0           LDA TURBOASS           BEQ LOAD           JSR WAITKEY           JMP $8000LOAD           JSR PRINTNAME       .TEXT "CIA1PB6"NAMELEN    = *-NAME           .BYTE 0           LDA #0           STA $0A           STA $B9           LDA #NAMELEN           STA $B7           LDA #<NAME           STA $BB           LDA #>NAME           STA $BC           PLA           PLA           JMP $E16F
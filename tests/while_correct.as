L0:     PUSH         1         ; Declaring INT i1
        PUSH         1         ; Declaring INT i2
        PUSH         1         ; Declaring BOOL b1
        LOADL        1         ; True Boolean
        STORE(1)     2[SB]     ; Assigning b1
L1:     LOAD(1)      2[SB]     ; Loading b1
        LOADL        1         ; True Boolean
        LOADL        1
        CALL         eq
        JUMPIF(0)    L3[CB]    ; While (jump out)
        LOAD(1)      0[SB]     ; Loading i1
        LOADL        1
        CALL         add       ; Adition
        STORE(1)     0[SB]     ; Assigning i1
        LOAD(1)      0[SB]     ; Loading i1
        LOADL        4
        CALL         ge        ; Greater than or equal
        JUMPIF(0)    L2[CB]    ; If (jump to else)
        LOADL        0         ; False Boolean
        STORE(1)     2[SB]     ; Assigning b1
L2:     LOAD(1)      0[SB]     ; Loading i1
        CALL         putint    ; Print int
        CALL         puteol
        JUMP         L1[CB]    ; Looping back
L3:     POP(0)       3
        HALT                   ; Generated by the Noot Compiler (2013/07/08 20:46)

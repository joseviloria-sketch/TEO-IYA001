start:
    MOV A, 8
    MOV B, 7
    ADD A, B

    CALL print
    HLT

print:
    MOV D, 232

    MOV C, 0

hundreds:
    CMP A, 100
    JB hundreds_print
    SUB A, 100
    INC C
    JMP hundreds

hundreds_print:
    ADD C, '0'
    MOV [D], C
    INC D

    MOV C,0

dozens:
    CMP A, 10
    JB dozens_print
    SUB A, 10
    INC C
    JMP dozens

dozens_print:
    ADD C, '0'
    MOV [D], C
    INC D

units:
    ADD A, '0'
    MOV [D], A
    RET 
// SIMON OSORIO URIBE
// 000420659
// SIMON.OSORIOU@UPB.EDU.CO
(SETSCREEN)
    @SCREEN
    D=A
    @0
    M=D

(FILLSCREEN)
    @1
    D=M
    @0
    A=M
    M=D
    @0
    D=M+1
    @KBD
    D=A-D
    @0
    M=M+1
    A=M
    @FILLSCREEN
    D;JGT

(KEYCHECK)
//Tecla F = 70, Tecla C = 67
    @KBD
    D=M
    @70
    D=A-D
    @FILLCOLOR
    D;JEQ

    @KBD
    D=M
    @67
    D=A-D
    @CLEARCOLOR
    D;JEQ

    @KEYCHECK
    0;JMP

(FILLCOLOR)
    @1
    M=-1 //Black code
    @FILLSCREEN
    0;JMP

(CLEARCOLOR)
    @1
    M=0 //White code
    @FILLSCREEN
    0;JMP

@SETSCREEN
0;JMP

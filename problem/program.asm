// SIMON OSORIO URIBE
// 000420659
// SIMON.OSORIOU@UPB.EDU.CO
(RESET)
    @SCREEN
    D=A
    @0
    


(KEYCHECK)
//Tecla F = 70, Tecla C = 67
    D=M
    @

(FILLCOLOR)
    @1
    M=-1 //Black
    @FILLSCREEN
    0;JMP

(CLEARCOLOR)
    @1
    M=0 //White
    @FILLSCREEN

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

@RESET
0;JMP

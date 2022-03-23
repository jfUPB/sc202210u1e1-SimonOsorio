// SIMON OSORIO URIBE
// 000420659
// SIMON.OSORIOU@UPB.EDU.CO
(RESET)
    @SCREEN
    D=A 
    @0
    M=D //Se guarda la posicion del primer pixel a pintar

(KEYCHECK)
//Tecla F = 70, Tecla C = 67
    @KBD
    D=M
    @70
    D=A-D
    @FILLCOLOR
    D;JEQ //Si presiona F, salta a asignar el color negro

    @KBD
    D=M
    @67
    D=A-D
    @CLEARCOLOR
    D;JEQ //Si presiona C, salta a asignar el color blanco

    @KEYCHECK
    0;JMP //Si no se presiona ninguna tecla, vuelve a repetir el bucle desde el Keycheck

(FILLCOLOR)
    @1
    M=-1 //Codigo de color negro
    @FILLSCREEN
    0;JMP

(CLEARCOLOR)
    @1
    M=0 //Codigo de color blanco
    @FILLSCREEN
    0;JMP

(FILLSCREEN)
    @1
    D=M //Se asigna el color que esta en la posicion 1 de la ram
    @0
    A=M //Se selecciona el pixel
    M=D //Se pinta el pixel del color definido
    @0
    D=M+1 //Se aumenta en 1 la posicion del pixel
    @KBD //Esta posicion coincide con el final de los pixeles asignados que empizan a contar desde Screen (8192)
    D=A-D //Se resta la posicion final de los pixeles con la inicial, lo que da la cantidad de pixeles restantes por pintar
    @0
    M=M+1
    A=M
    @FILLSCREEN
    D;JGT //Repite el loop hasta que se llene la pantalla. Si ya se pintaron todos los pixeles (8192), se rompe el loop

@RESET
0;JMP //Vuelve a comenzar el codigo 
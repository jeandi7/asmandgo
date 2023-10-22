// +build amd64
// https://go.dev/doc/asm#introduction

// rappel des pointeurs  du micro-processeur

// FP: Frame pointer: arguments and locals.
// PC: Program counter: jumps and branches.
// SB: Static base pointer: global symbols.
// SP: Stack pointer: the highest address within the local stack frame.

// pour linker et obtenir le fichier .o de façon isolé
// go tool asm asmadd.s

// pour builder d'un coup go build dans le repertoire asm1

TEXT ·asmAdd1(SB), 0, $24
    MOVQ $0, CX        // Initialiser le compteur CX à 0
    MOVQ x+0(FP), AX   // prendre le premier x sur la pile FP+0 et le mettre dans AX
    ADDQ y+8(FP), AX   // prendre le 2em y sur la pile  FP+8, faire x+y dans AX
    MOVQ AX, ret+16(FP)  // mettre la valeur x+y de AX et le mettre dans le retour sur la pile FP+8
    RET  // retourner à la fonction déclarée en go 

    



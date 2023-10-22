TEXT ·myfact(SB),0,$16
    MOVQ    x+0(FP), AX       // Charge x dans AX
    MOVQ    $1, CX            // Initialise le compteur (CX) à 1
loop:
    CMPQ    AX, $1           // Compare x avec 1
    JL      done              // Si x <= 1, terminé
    IMULQ   AX, CX            // CX = AX * CX
    DECQ    AX                // Décrémente x
    JMP     loop
done:
    MOVQ    CX, ret+8(FP)     // Copie la valeur de CX (résultat) dans le retour
    RET



    
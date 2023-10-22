TEXT ·mytest(SB),0,$16
    MOVQ   x+0(FP), AX       // Charge x dans AX
    CMPQ   AX, $4            // x est-il  inferieur a 4 ?
    JL si_inf                // si oui aller au label si_inf
    IMULQ   $2, AX
si_inf : 
    MOVQ   AX, ret+8(FP)     // Copie la valeur de AX (résultat) dans le retour
    RET



    
// myprint.asm

TEXT ·myprint, 0:
    MOVQ $1, RAX            // Appel système pour write (1)
    MOVQ $1, RDI             // Descripteur de fichier (1 pour stdout)
    MOVQ RDX, RSI          // Pointeur vers la chaîne (argument)
    SYSCALL                  // Appel système
    RET


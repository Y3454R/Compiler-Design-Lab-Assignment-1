%{
    #include <stdio.h>
    
%}

%token FUNC FBR LBR


%%
prg:
    | prg EX1 
    | prg FUNC1
    ;
EX1: EX FNM; 
FUNC1: FUNC FNM FBR NUM CM NUM LBR; {$$ = $4 % $6; printf("RESULT is %d\n", $$);}
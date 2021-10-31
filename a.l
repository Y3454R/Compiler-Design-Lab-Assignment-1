%{
#include <stdio.h>
#include "a.tab.h"
%}

%%

myfunc  {return FUNC;}
run     {return EX;}
(       {return FBR;}
)       {return LBR;}
[a-zA-Z]+   {return FNM;}
,       {return CM;}
[0-9]+  {return NUM;}


%%

int main() {
    yyparse();
    return 0;
}

int yywrap() {
    return 1;
}

yyerror(char *s)
{
	fprintf(stderr, "error: %s\n", s);
}
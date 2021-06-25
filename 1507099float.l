flt [0-9]*[.][0-9]+
%%
[+|-]?{flt} {printf("valid float\n");}
[+|-]?{flt}[e][+|-]?[1-9]+ {printf("valid float\n");}
.+
\n
%%

int yywrap()
{
	return 1;
}

int main()
{
	printf("enter:\n");
	yylex();
	printf("\n");
	return 0;
}
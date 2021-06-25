%%
.+[A-Z][0-9]{2} {printf("valid string.\n");}
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
	return 0;
}
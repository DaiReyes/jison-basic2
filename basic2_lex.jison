/* description: Basic grammar that contains a nullable A nonterminal. */

%lex
%%

\s+               {/* skip whitespace */}
[a-zA-Z_]\w*      {return 'x';}
\d+               {return 'num';}

/lex

%%

A   : /* empty */  
    | A x /* ojo con el espacio, produce A seguido de espacio seguido de x */
    | A num
    ;


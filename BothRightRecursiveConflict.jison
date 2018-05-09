%lex
%%
\s+                    {}
.                      return yytext;
/lex

%token D S

%%
p:
    ds ';' ss  { $$ = [ ';', $ds, $ss]; console.log($$); }
  | ss
;

ds:
    D ';' ds    { $$ = $ds; $$.push($D); }
  | D           { $$ = [ $D ]; }
;

ss:
    S ';' ss      { $$ = $ss; $$.push($S); }
  | S             { $$ = [ $S ]; }
;

%%

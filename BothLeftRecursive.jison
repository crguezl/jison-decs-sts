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
    ds ';' D    { $$ = $ds; $$.push($D); }
  | D           { $$ = [ $D ]; }
;

ss:
    ss ';' S      { $$ = $ss; $$.push($S); }
  | S             { $$ = [ $S ]; }
;

%%

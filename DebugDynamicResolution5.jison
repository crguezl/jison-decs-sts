%lex
%%
\s+                    {}
';'(?=\s*S)            return 'SEP';
.                      return yytext;
/lex

%token D S  SEP

%%
p:
    ds SEP ss  { $$ = [ ';', $ds, $ss]; console.log($$); }
  | ss
;

ds:
    D ';' ds  { $$ = $ds; $$.push($D); }
  | D         { $$ = [ $D ]; }
;

ss:
    S SEP ss      { $$ = $ss; $$.push($S); }
  | S             { $$ = [ $S ]; }
;

%%

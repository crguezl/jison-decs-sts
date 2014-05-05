This grammar 

  %token D S

  %%
  p: ds ';' ss  | ss ;
  ds: D ';' ds    
    | D  
  ;
  ss: S ';' ss  | S  ;
  %% 

illustrates a typical LALR conflict due to a 
bad grammar design. The conflict between productions `ds -> 'D ';' ds`
and `ds -> 'D'` can be easily solved by changing the second production
to  `ds -> 'ds ';' D`. See DebugDynamicResolution4.jison

Grammar DebugDynamicResolution5.jison contains a solution modifying the lexer.

See section 2.2 "Example: Insufficient Lookahead" in file 
[ppcr:ciaa.pdf](https://code.google.com/p/grammar-repository/source/checkout) for 
more details.

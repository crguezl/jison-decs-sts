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
to  `ds -> 'ds ';' D`. See [DebugDynamicResolution4.jison](https://github.com/crguezl/jison-decs-sts/blob/master/DebugDynamicResolution4.jison)

Grammar [DebugDynamicResolution5.jison](https://github.com/crguezl/jison-decs-sts/blob/master/DebugDynamicResolution5.jison) contains a solution modifying the lexer.

Grammar [DebugDynamicResolutionValladares.y](https://github.com/crguezl/jison-decs-sts/blob/master/DebugDynamicResolutionValladares.y) contains a solution grouping together the
actions to jump over the semicolon.


See section 2.2 "Example: Insufficient Lookahead" in file 
[ppcr:ciaa.pdf](https://code.google.com/p/grammar-repository/source/checkout) in the original Google-Code subversion repo for 
more details.

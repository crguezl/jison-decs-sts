%token D S

%%
p:
    ds ';' ss  
  | ss
;

ds:
    D ';' ds    
  | D  
;

ss:
    S ';' ss      
  | S       
;

%%

// standalone Node.js 
var p = require("./Looking2Lookaheads.js").parser;

var input = "D ; D; D; S; S";
console.log(input);
r = p.parse(input);
console.log(r);

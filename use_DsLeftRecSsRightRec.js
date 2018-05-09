// standalone Node.js 
var p = require("./DsLeftRecSsRightRec.js").parser;

var input = process.argv[2] || "D ; D; D; S; S";
console.log(input);
r = p.parse(input);
console.log(r);

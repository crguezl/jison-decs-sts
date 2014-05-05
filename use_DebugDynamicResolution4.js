// standalone Node.js 
var p = require("./DebugDynamicResolution4.js").parser;

var input = process.argv[2] || "D ; D; D; S; S";
console.log(input);
r = p.parse(input);
console.log(r);

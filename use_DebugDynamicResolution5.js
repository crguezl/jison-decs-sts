// standalone Node.js 
var p = require("./DebugDynamicResolution5.js").parser;

var input = "D ; D; D; S; S";
console.log(input);
r = p.parse(input);
console.log(r);

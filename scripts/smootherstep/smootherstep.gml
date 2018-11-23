///@arg val1
///@arg val2
///@arg factor
var v = argument[2];
v = (v*v)*(3-2*v);
return (argument[0]*v)+(argument[1]*(1-v));
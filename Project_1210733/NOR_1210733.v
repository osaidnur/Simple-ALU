module NOR_1210733#(parameter n=4)(x,y,ans);
input signed [n-1:0] x,y ; // input size is n 
output reg signed[n-1:0] ans ; // output size is n 
always@(x,y)
begin
ans = ~(x|y) ;
end
endmodule 
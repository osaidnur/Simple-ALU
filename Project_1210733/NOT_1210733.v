module NOT_1210733#(parameter n=4)(x,ans);
input signed [n-1:0] x ; // input size is n
output reg signed[n-1:0] ans ; // output size is n
always@(x)
begin
ans = ~ x ;
end
endmodule 
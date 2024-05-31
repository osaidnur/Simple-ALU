module mul2_1210733#(parameter n=4)(a,b,ans);
input [n-1:0] a , b ;
output [n+1:0] ans ;
reg [n: 0] ans;
always@(a,b)
begin
ans = a*b ;
end
endmodule 
module MULTI_DIV_1210733#(parameter n=4)(a,sel,ans);
input signed [n-1:0] a ;
input sel ;
output reg signed[n+1:0] ans ;
always@(*)
begin
if (sel == 0) begin ans = a/2 ; end 
else begin ans = a*2 ; end
end
endmodule 
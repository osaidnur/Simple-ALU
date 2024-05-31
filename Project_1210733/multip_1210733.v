module multip_1210733#(parameter n=4)(a,sel,ans);
input signed [n-1:0] a ;
input sel ;
output reg signed[n+1:0] ans ;
always@(*)
begin
/*if (sel == 0) begin ans = a/2 ; end 
else begin ans = a*2 ; end*/
case (sel)
1'b0 : ans <= (a/2) ;
1'b1 : ans <= (a*2) ;
 endcase ;
end
endmodule 
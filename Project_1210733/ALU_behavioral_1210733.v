module ALU_behavioral_1210733 #(parameter n=4)(X , Y , SEL , OUT) ;
input signed [n-1:0] X ,Y ; // input size is n 
input [2:0] SEL ;
output reg signed [n+1:0] OUT ; // output size is n+2
// the output in this module depends on the selection value to do the 
// desired operation using usual sympoles without invoking any other module
always@(X,Y,SEL)
begin
	case(SEL)
		3'b000 : OUT<= (X+Y)/2;
		3'b001 : OUT<= 2*(X+Y);
		3'b010 : OUT<= (X/2)+Y;
		3'b011 : OUT<= X-(Y/2);
		3'b100 : OUT<= ~(X&Y);
		3'b101 : OUT<= ~X ;
		3'b110 : OUT<= ~(X|Y);
		3'b111 : OUT<= X^Y;
	endcase ;
end
endmodule 
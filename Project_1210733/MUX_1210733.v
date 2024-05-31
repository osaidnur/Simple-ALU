module MUX_1210733#(parameter n=4)
				(in0,in1,in2,in3 ,in4 , in5 ,in6 ,in7,SEL,res);
// the size of input to mux is different for each operation
input signed [n-1:0]in0 ,in4 , in5 ,in6 ,in7 ;
input signed [n:0] in2,in3 ;
input signed [n+1:0]in1;
input [2:0]SEL ;
// the output size is depending on the maximum size in input which is n+2
output reg signed [n+1:0] res ;
always@(*)
begin
	case(SEL)
		3'b000 : res <= in0;
		3'b001 : res <= in1;
		3'b010 : res <= in2;
		3'b011 : res <= in3;
		3'b100 : res <= in4;
		3'b101 : res <= in5;
		3'b110 : res <= in6;
		3'b111 : res <= in7;
	endcase ;
end
endmodule 
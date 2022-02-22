module Booth_Mul #(parameter n=8)(out,a,b);

output [(2*n):0]out;
input [n:0]a,b;

wire [(2*n):0]w[n:0];
wire [n+1:0]q;
assign q = {b,1'b0};
assign out=w[0]+(w[1]<<1)+(w[2]<<2)+(w[3]<<3)+(w[4]<<4)+(w[5]<<5)+(w[6]<<6)+(w[7]<<7);
genvar i;
generate
for(i=0;i<=8;i=i+1)
begin
MUX #(.n(8))m1(w[i],a,q[i+1:i]);
end
endgenerate
endmodule

module MUX #(parameter n=8) (out,a,s);
output reg [(2*n):0]out;
input [n:0]a;
input [1:0]s;

always @ (a,s)
begin
case(s)
2'b00: out<=0;
2'b01: out<= a;
2'b10: out<= ~a+1;
2'b11: out<=0;
endcase
end
endmodule

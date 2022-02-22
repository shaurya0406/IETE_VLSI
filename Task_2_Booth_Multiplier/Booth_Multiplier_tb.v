module Booth_Mul_tb();
wire [16:0]out;
reg [8:0]a,b;

Booth_Mul #(.n(8))uut(.out(out),.a(a),.b(b));

initial
begin
#5 a=8'd10;b=8'd10;
#15 $display($time," out=%d ",out);
//#200 $finish;
end
endmodule

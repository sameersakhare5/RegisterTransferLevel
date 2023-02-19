
module half_test;
reg a;
reg b;


wire sum;
wire carry;

halfadder uut(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin

#2 a=1'b0;
b=1'b0;

#2 a=1'b0;b=1'b1;

#2  a=1'b1;
b=1'b0;

#2 a=1'b1;
b=1'b1;
end
initial #20 $finish;
endmodule

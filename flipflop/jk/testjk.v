module testjk;
wire q,qn;
reg j,k,clk;
jkff j1(.j(j),.k(k),.clk(clk),.q(q),.qn(qn));
initial clk=1'b0;
always #10 clk=~clk;
initial begin
#10 j=1'b0;k=1'b0;
#20 j=1'b0;k=1'b1;
#20 j=1'b1;k=1'b0;
#20 j=1'b1;k=1'b1;
#30 $finish;
end
initial begin
$monitor($time," clk %b jk %b%b q qn %b %b",clk,j,k,q,qn);
end
endmodule

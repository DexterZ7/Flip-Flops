module dfftest;
wire q,qn;
reg d,clk;
dff d2(.d(d),.clk(clk),.q(q),.qn(qn));
initial clk=1'b0;
always #10 clk=~clk;
initial begin
#15 d=1'b1;
#30 d=1'b0;
#18 d=1'b1;
#20 d=1'b0;
#10 $finish;
end
initial begin
$monitor($time," clk %b d %b q qn %b %b",clk,d,q,qn);
end
endmodule

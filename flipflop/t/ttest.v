module ttest;
wire q,qn;
reg clk,t,qpr,qnpr;
tflip t2(.t(t),.clk(clk),.qpr(qpr),.q(q),.qn(qn));
initial clk=1'b0;
always #10 clk=~clk;
initial begin
#15 qpr=1'b1;qnpr=~qpr;
#20 qpr=1'b0;qnpr=~qpr;
#10 qpr=1'b1;qnpr=~qpr;
#10 qpr=1'b0;qnpr=~qpr;
end
initial begin
t=1'b0;
#45 t=1'b1;
#45 $finish;
end
initial begin
$monitor($time," clk %b t %b previous q qn %b%b next %b%b",clk,t,qpr,qnpr,q,qn);
end
initial begin
$dumpfile("abc.dump");
$dumpvars(0,ttest);
end
endmodule

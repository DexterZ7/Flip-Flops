module test;
wire q;
reg d,clk,reset;
dasync d1(.d(d),.clk(clk),.reset(reset),.q(q));

initial reset=1'b1;
initial clk=1'b0;
initial begin d=1'b1; #100 $finish; end

always #10 clk=~clk;
always #20 reset=~reset;
always #15 d=~d;

initial begin
$monitor($time," clk %b reset %b d %b q %b",clk,reset,d,q);
end

initial begin
$dumpfile("abd.dump");
$dumpvars(0,test);
end

endmodule

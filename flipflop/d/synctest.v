module synctest;
wire q;
reg clk,d,reset;
dsync d1(.d(d),.clk(clk),.reset(reset),.q(q));

initial clk=1'b0;
initial d=1'b1;
initial begin reset=1'b1; #100 $finish; end

always #10 clk=~clk;
always #20 reset=~reset;
always #15 d=~d;

initial begin
$monitor($time,"clk %b reset %b d %b q %b",clk,reset,d,q);
end

initial begin
$dumpfile("abc.dump");
$dumpvars(0,synctest);
end
endmodule

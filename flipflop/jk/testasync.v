module testasync;
wire q;
reg j,k,clk,reset;
jkasync j2(.j(j),.k(k),.clk(clk),.reset(reset),.q(q));

initial clk=1'b0;
initial reset=1'b1;
initial j=1'b0;
initial begin k=1'b1; #100 $finish; end

always #5 clk=~clk;
always #25 reset=~reset;
always begin #13 j=~j; #15 k=~k; end

initial $monitor($time," clk %b reset %b jk %b%b q %b",clk,reset,j,k,q);

initial begin
$dumpfile("abd.dump");
$dumpvars(0,testasync);
end

endmodule

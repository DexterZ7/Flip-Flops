module test;
wire qn;
reg t,qp,clk,reset;
tflip t1(.t(t),.qp(qp),.clk(clk),.reset(reset),.qn(qn));

initial clk=1'b0;
initial reset=1'b1;
initial t=1'b0;
initial begin qp=1'b0; #100 $finish; end

always #10 clk=~clk;
always #4 reset=~reset;
always #50 t=~t;
always #8 qp=~qp;

initial $monitor($time," clk %b reset %b t %b qp %b out qn %b",clk,reset,t,qp,qn);

initial begin
$dumpfile("abc.dump");
$dumpvars(0,test);
end

endmodule

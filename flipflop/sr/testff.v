module testff;
wire q,qn;
reg set,reset,clk;
srff s2(.set(set),.reset(reset),.clk(clk),.q(q),.qn(qn));
initial clk=1'b0;
always
#10 clk=~clk;
initial begin
#10 set=1'b0;reset=1'b1;
#20 set=1'b1;reset=1'b0;
#20 set=1'b1;reset=1'b1;
#10 set=1'b0;reset=1'b1;
#10 $finish;
end
initial begin
$monitor($time," clk %b sr %b%b q qn %b %b",clk,set,reset,q,qn);
end
endmodule

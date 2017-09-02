module dasync(input d,clk,reset,output reg q);
always @(posedge clk, posedge reset) begin
if(reset)
	q=1'b0;
else
	q=d;
end
endmodule

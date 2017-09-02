module dff(input d,clk,output reg q,qn);
always @(posedge clk) begin
	q=d;
	qn=~q;
end
endmodule

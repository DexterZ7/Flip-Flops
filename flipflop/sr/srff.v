module srff(input set,reset,clk,output reg q,qn);
always @(posedge clk) begin

	if(set!=reset) begin
	q=set;
	qn=reset;
	end
	else if(set==1'b1 && reset==1'b1) begin
	q=1'b0;qn=1'b0;
	end

end
endmodule

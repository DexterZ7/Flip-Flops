module tflip(input t,clk,qpr,output reg q,qn);
reg qnpr;
always @(posedge clk) begin
qnpr = ~qpr;

	if(t==1'b1) begin
	q=qnpr;
	qn=qpr;
	end
	else begin
	q=qpr;
	qn=qnpr;
	end

end
endmodule

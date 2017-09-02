module jkff(input j,k,clk,output reg q,qn);
reg temp;
always @(posedge clk) begin

	if(j!=k) begin
	q=j;
	qn=k;
	end
	else if(j==1'b1 && k==1'b1) begin
	temp=qn;
	qn=q;
	q=temp;
	end

end
endmodule

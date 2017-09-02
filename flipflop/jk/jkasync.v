module jkasync(input j,k,clk,reset,output reg q);

always @(posedge clk,posedge reset) begin

if(reset) q=1'b0;

else begin
	if(j!=k) q=j;
	else if(j==1'b1 && k==1'b1) q=~j;
end

end
endmodule

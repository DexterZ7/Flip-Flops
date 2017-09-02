module tflip(input t,qp,clk,reset,output reg qn);
always @(posedge clk) begin
if(reset==1'b1) qn=1'b0;
else qn=t^qp;
end
endmodule

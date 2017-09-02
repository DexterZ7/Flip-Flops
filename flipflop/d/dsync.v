module dsync(input clk,d,reset,output reg q);
always @(posedge clk) begin

if(reset==1'b1) q=1'b0;
else q=d;

end
endmodule

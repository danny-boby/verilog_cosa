// up counter for test with cosa

module counter(
out,
enable,
clk,
reset
	       );
   output [7:0] out;

   input       enable,clk,reset;

   reg [7:0]   out;
   
always @(posedge clk)
  if (reset) begin
     out <= 8'b0;
  end else if (enable) begin
     out <= out+1;
  end 

`ifdef FORMAL
   assert property (out != 256);
`endif
 
endmodule // counter

`timescale 1ns / 1ps

 module overflowCounter (
                         input wire         clk,
                         input wire         reset,
                         input wire enable,
                         output wire [15:0] led
                         );
   reg [31:0] counter;
   always @(posedge clk) begin
      counter = counter + 1;
      if (reset == 1’b1) begin
         counter = 32’d0;
      end
      else if (enable == 1'b1 ) begin
         counter = counter + 1;
      end
   end
endmodule

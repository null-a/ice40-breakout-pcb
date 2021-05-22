`default_nettype none

module fpga (input clk,
             output led);

   // Test use of a phase locked loop.
   wire clk60;

   pll pll(.clock_in(clk), .clock_out(clk60));

   // Blink the on-board LED.
   assign led = counter[23];

   reg [23:0] counter = 0;

   always @(posedge clk60) begin
      counter <= counter + 1;
   end

endmodule // fpga

module main (
  inout pin9_jtgnb,
  inout pin10_sda,
  inout pin11_scl
  );
  
  wire clk;

  OSCH #(
    .NOM_FREQ("2.08")
  ) internal_oscillator_inst (
    .STDBY(1'b0),
    .OSC(clk)
  );

  reg [23:0] led_timer;

  always @(posedge clk) begin
    led_timer <= led_timer + 1;
  end

  assign pin9_jtgnb = led_timer[23];
  assign pin10_sda = led_timer[22];
  assign pin11_scl = led_timer[21];

endmodule

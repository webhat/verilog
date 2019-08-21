module main (output  GLED,
  output RLED1,
  output RLED2,
  output RLED3,
  output RLED4,
  input  CLK_IN);

  localparam N = 26;

  reg [N-1:0] cnt;

  always @(posedge CLK_IN) begin
    cnt <= cnt+1;
  end
  assign GLED = cnt[N-1];
  assign RLED1 = cnt[N-2];
  assign RLED2 = cnt[N-3];
  assign RLED3 = cnt[N-4];
  assign RLED4 = cnt[N-5];

endmodule

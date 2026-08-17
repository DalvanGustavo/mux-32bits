`timescale 1ns/1ps

module tb_mux;
  logic [1:0] count;
  logic [31:0] muxOut;

  mux dut(.f(muxOut), .a(400), .b(300), .c(200), .d(100), .sel1(count[1]), .sel2(count[0]));

  initial begin
    $monitor($time,"a = %d | b = %d | c = %d | d = %d | sel1 = %b | sel2 = %b | muxOut = %d", 400, 300, 200, 100, count[1], count[0], muxOut);
    for(count = 0; count != 2'b11; count++) #10;     
    #10 $stop;
  end

endmodule: tb_mux
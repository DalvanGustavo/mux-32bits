module mux
  (
    output logic [31:0] f,
    input  logic [31:0] a, b, c, d,
    input  logic sel1, sel2
  ); 
  wire [31:0] f1, f2, f3, f4;
  wire n_sel1, n_sel2;
  and g1 [31:0] (f1, a, n_sel1, n_sel2),
      g2 [31:0] (f2, b, n_sel1, sel2),
      g3 [31:0] (f3, c, sel1, n_sel2),
      g4 [31:0] (f4, d, sel1, sel2);
  or  g5 [31:0] (f, f1, f2, f3, f4);
  not g6(n_sel1, sel1);
  not g7(n_sel2, sel2);

endmodule
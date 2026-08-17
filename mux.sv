module mux
  (
    output logic [31:0] f,
    input  logic [31:0] a, b, c, d,
    input  logic sel1, sel2
  ); 


  generate
  for (i = 0; i < 32; i++) begin
    and g1(f1, a, n_sel1),
        g2(f2, b, sel1);
        g3(f3, c, n_sel2),
        g4(f4, d, sel2);
    or  g5(f, f1, f2, f3, f4);
    not g6(n_sel1, sel1);
    not g7(n_sel2, sel2);
  end

endmodule
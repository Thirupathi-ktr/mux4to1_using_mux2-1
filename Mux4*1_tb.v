module tb();
  reg a,b,s;
  wire y;
  
  mux2to1 dut(.a(a),
              .b(b),
              .s(s),
              .y(y) );
  
  initial
    begin
      s =0; a = 0;b=0;
      #20;
      s=1; a = 0;b=1;
      #20
      s =0; a = 1;b=0;
      #20;
      s = 1; a = 1;b=1;
      #20;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial
    begin
      $monitor("input a = %b, b = %b, s = %b output y = %b",a,b,s,y);
    end
endmodule

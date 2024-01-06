`timescale 1ns / 1ps

module num1(
    input in1,
    input in2,
    input in3,
    output out1,
    output out2
    );
    
  wire flag1,flag2,flag3;
  
  mod1(
  .in1(in1),
  .in2(in2),
  .out(flag1)
  );
  
 mod1(
    .in1(in2),
    .in2(in3),
    .out(flag3)
    );
    
    mod2(
    .in1(flag1),
    .in2(flag2),
    .in3(flag3),
    .out(out1)
    );
    assign out2 = ~out1;
    
  

    
endmodule

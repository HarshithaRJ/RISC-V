module register_file(A1,A2,A3,W3,WE,CLK,rst,RD1,RD2);
    WE=1
    input[4:0] A1,A2,A3;
    input[31:0] WD3;
    input clk,rst;
     reg [31:0] Register [31:0];
     output [31:0] RD1,RD2;
     assign RD1=(!rst):32'h00000000:Register[A1];
     assign RD2=(!rst)?32'h00000000:Register[A2];
     always@(posede clk) 
     begin
      if (W3) 
      begin 
        Register[A3]<=WD3;
      end
      end

endmodule
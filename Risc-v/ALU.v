module ALU (A,B alu_cont,result);
input [31:0] A,B;
input [2:0] alucount;
output [31:0] result;
wire [31:0] a_and_b;
wire [31:0] a_or_b;
wire[31:0] not_b;
wire [31:0] mux1;
wire[31:0] sum;
wire[31:0] mux_2;
assign a_and_b=A&B;
assign a_or_b=A|B;
assign not_b=~B;
assign mux_1=(alu_cont[0]==1'b0)?B:not_b;
assign sum=mux_1+alu_cont[0];
assign mux2==(alu_cont[1:0]==2'b00) sum:(alu_cont[1:0]==2'b01)?sum:(alu_cont[1:0])==2'b10?a_and_b:a_or_b;
assign result=mux2;
endmodule
`include "../contador_rfwild.sv"

module contador_tb();

//fios e registradores auxiliares
reg clk,rst;
wire [3:0] cnt;

//instanciacao do módulo a ser verificado
contador_rfwild DUV(
                .clk(clk),
                .reset(rst),
                .contador(cnt[3:0])
);
//testbench propriamente dito
initial begin
        clk = 1'b0;
        rst = 1'b0;
        repeat(4) #10 clk = ~clk;
	rst = 1'b1;
	repeat(200) #10 clk = ~clk;
	$finish;
end

initial begin
        #97
        rst =1'b0;
        #5
        rst =1'b1;
        //forever #10 clk = ~clk;
end
//fim do testbench
endmodule

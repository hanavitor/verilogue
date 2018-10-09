module projetao(botao,led, clk);

input botao, clk;
output reg led;
reg estado;
reg [31:0] contador = 0;

always@(botao)begin
	if(botao == 0)begin
		led = estado;
	end else begin
		led = 0;
	end
end

always@(posedge clk)begin
	contador = contador + 1;
	estado = contador[20];
end

endmodule 

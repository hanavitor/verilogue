module jogo(botao, led1, led2, led3, led4);

    input [3:0]botao;
    output reg led1=0, led2=0, led3=0, led4=0;
    
    always @(*)
        begin
            
            case(botao)
            
            4'b1xxx : led1<=1;
            4'bx1xx : led2<=1;
            4'bxx1x : led3<=1;
            4'bxxx1 : led4<=1;
            4'b0xxx : led1<=0;
            4'bx0xx : led2<=0;
            4'bxx0x : led3<=0;
            4'bxxx0 : led4<=0;
            
            endcase
            
        end

endmodule


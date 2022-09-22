module TFF_w_oneshot_button(clk, rst, T, Q);
input clk, rst;
input T;
output reg Q;
reg T_trig, T_reg;

always @(posedge clk or negedge rst)
begin
    if(!rst) begin
        Q <= 1'b0;
        T_reg <= 1'b0;
        T_trig <= 1'b0;
    end
    else begin
        T_reg <= T;
        T_trig <= T & ~T_reg;
    if(T_trig)
        Q <= ~Q;
    end        
    
end
endmodule
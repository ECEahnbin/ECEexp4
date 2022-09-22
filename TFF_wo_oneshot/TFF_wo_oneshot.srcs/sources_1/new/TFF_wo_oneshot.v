module TFF_wo_oneshot(clk, rst, T, Q);
input clk, rst;
input T;
output reg Q;

always @(posedge clk or negedge rst)
begin
    if(!rst)
        Q <= 0;
    else if(T)
        Q <= ~Q;
end
endmodule

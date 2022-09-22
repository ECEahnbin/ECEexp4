module JKFF(clk, J, K, Q);
input clk;
input J, K;
output reg Q;

always @(posedge clk)
begin
    if({J, K} == 2'b00)
        Q <= Q;
    else if({J, K} == 2'b01)
        Q <= 0;
    else if({J, K} == 2'b10)
        Q <= 1;
    else
        Q <= !Q;
end
endmodule

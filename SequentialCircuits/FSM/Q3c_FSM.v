Given the state-assigned table shown below, implement the logic functions Y[0] and z.

Present state
y[2:0]	Next state Y[2:0]	Output z
	x=0	x=1
000	000	001		0
001	001	100		0
010	010	001		0
011	001	010		1
100	011	100		1




module top_module (
    input clk,
    input [2:0] y,
    input x,
    output Y0,
    output z
);
    
    parameter A = 3'd0, B = 3'd1, C = 3'd2, D = 3'd3, E = 3'd4;
    
    assign z = (y == D) || (y == E);
    assign Y0 = (x && ((y == A) || (y == C))) || (~x && ((y == B) || (y == D) || (y == E)));

endmodule
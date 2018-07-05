module phudim(
    output reg [6:0] HEX3,
    output reg [6:0] HEX2,
    output reg [6:0] HEX1,
    output reg [6:0] HEX0,
    input CLOCK_50,
    input [9:0] SW,
    input [3:0] KEY
   );
    
	 reg [25:0]count;
    reg lig;
    reg [25:0]control = 3;
	 
	 wire [20:0] wrap = count[20:0];
    
    always @ (posedge CLOCK_50 ) begin
       if (SW[0] == 1) begin
             HEX3 = 7'b0001001;
             HEX2 = 7'b0000110;
             HEX1 = 7'b1000111;
             HEX0 = 7'b0001100;
        end
    end
endmodule

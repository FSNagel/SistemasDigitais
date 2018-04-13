module phudim(
    output reg [6:0] HEX3,
    output reg [6:0] HEX2,
    output reg [6:0] HEX1,
    output reg [6:0] HEX0,
    output [7:0] LEDG,
    output [9:0] LEDR,
    input    KEY1,
    input KEY2,
    input CLOCK_50,
    input [3:0] KEY
   );
    
	reg [25:0]count;
	reg lig;
     reg [6:0] h = 7'b0001001;
     reg [6:0] e = 7'b0000110;
     reg [6:0] l = 7'b1000111;
     reg [6:0] p = 7'b0001100;
     reg [25:0]control = 1;
    
	always @ (posedge CLOCK_50 ) begin
   	if (KEY[0] == 1) begin
   		  HEX3 = 7'b0001001;
   		  HEX2 = 7'b0000110;
   		  HEX1 = 7'b1000111;
   		  HEX0 = 7'b0001100;
   	 end
   	else begin
   		 count <= count + control;
   		 if (count == 50000000) begin
   		   lig <= ~lig;
   		   count <= 0;
   				 HEX3 <= HEX0;
   				 HEX2 <= HEX3;
   				 HEX1 <= HEX2;
   				 HEX0 <= HEX1;    
   		 end
   	 end
   end
endmodule


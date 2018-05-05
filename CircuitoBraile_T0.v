module Braile (
	input [4:0] SW,
	input [3:0] KEY,
	output [6:0] HEX0,
	output [6:0] HEX1,
	output [6:0] HEX2,
	output [6:0] HEX3
);
	reg [4:0] TEMP1;
	reg [4:0] TEMP2;
	reg [4:0] TEMP3;
	reg [4:0] TEMP4;

select S1(TEMP1[4:0], HEX0);
select S2(TEMP2[4:0], HEX1);
select S3(TEMP3[4:0], HEX2);
select S4(TEMP4[4:0], HEX3);

always@ (KEY)
begin
		
	if(KEY[0] == 0)
	begin
		TEMP1[4:0] <= SW[4:0];
		
	end
	
	if(KEY[1] == 0)
	begin
		TEMP2[4:0] <= SW[4:0];
	end
	
	if(KEY[2] == 0)
	begin
		TEMP3[4:0] <= SW[4:0];
	end

	if(KEY[3] == 0)
	begin
		TEMP4[4:0] <= SW[4:0];
	end
end		

	

endmodule

module select (
	input [4:0] x,
	output [6:0] h
);

//assign HEX0 = 7'hff;
assign h[1] = x == 1 || x ==2 || x == 3 || x == 4 || x == 5 || x == 6 || x == 8 || x == 11 || x == 12 || x == 13 || x == 14 || x == 15 || x == 16 || x == 17 || x == 18 || x == 21 || x == 22 || x == 24 || x == 25 || x == 26;

assign h[2] = x == 1 || x == 5 || x == 6 || x == 7 || x == 8 || x == 9 || x == 11 || x == 15 || x == 16 || x == 17 || x == 18 || x == 19 || x == 21 || x == 22;

assign h[3] = x == 11 || x == 12 || x == 13 || x == 14 || x == 15 || x == 16 || x == 17 || x == 18 || x == 19 || x == 20 || x == 21 || x == 22 || x == 24 || x == 25 || x == 26;

assign h[4] = x == 3 || x == 4 || x == 6 || x == 7 || x == 9 || x == 10 || x == 13 || x == 14 || x == 16 || x == 17 || x == 19 || x == 20 || x == 23 || x == 24 || x == 25;

assign h[5] = x == 4 || x == 5 || x == 7 || x == 8 || x == 10 || x == 14 || x == 15 || x == 17 || x == 18 || x == 20 || x == 23 || x == 25 || x == 26;

assign h[6] = x == 21 || x == 22 || x == 23 || x == 24 || x == 25 || x == 26;


endmodule


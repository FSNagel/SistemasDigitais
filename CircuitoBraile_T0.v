module phudim (
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
assign h[0] = x == 3 || x == 25  || x == 19 || x == 10 || x == 5 || x == 7 || x == 23 || x == 37 || x == 39 || x == 58 || x == 45 || x == 61;

assign h[1] = x == 3 || x == 9 || x == 11  || x == 27 || x == 19 || x == 10 || x == 7 || x == 23 || x == 14 || x == 30;

assign h[2] = x == 2 || x == 9 || x == 17  || x == 11 || x == 10 || x == 29 || x == 21 || x == 15 || x == 23 || x == 30 || x == 39 || x == 53;

assign h[3] = x == 1  || x == 11 || x == 19 || x == 10 || x == 5 || x == 29 || x == 21 || x == 15 || x == 31 || x == 23 || x == 30 || x == 39 || x == 45 || x == 61;

assign h[4] = x == 2 || x == 13 || x == 29 || x == 21 || x == 31 || x == 14 || x == 39 || x == 61;

assign h[5] = x == 2 || x == 25  || x == 26 || x == 13 || x == 29 || x == 53;

assign h[6] = x == 2 || x == 9 || x == 10  || x == 26 || x == 7 || x == 30 || x == 37 || x == 45;

endmodule

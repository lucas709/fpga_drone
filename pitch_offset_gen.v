module pitch_offset_gen(motor_1_offset,motor_2_offset,motor_3_offset,motor_4_offset,pitch_rec_val);
   output reg [7:0] motor_1_offset;
   output reg [7:0] motor_2_offset;
   output reg [7:0] motor_3_offset;
   output reg [7:0] motor_4_offset;
   input [7:0] pitch_rec_val;
   
   always @(pitch_rec_val)begin
   // Case 1(0-18): Up/Forward Pitch --> Offset Motors 3 and 4
   if (pitch_rec_val >= 0 && pitch_rec_val <= 3)
	   begin 
			motor_1_offset <= 8'b000; // Motor 1 Offset = 0
			motor_2_offset <= 8'b000; // Motor 2 Offset = 0
			motor_3_offset <= 8'b110; // Motor 3 Offset = 6
			motor_4_offset <= 8'b110; // Motor 4 Offset = 6
		end
   else if (pitch_rec_val > 3 && pitch_rec_val <= 6)
	   begin 
			motor_1_offset <= 8'b000; // Motor 1 Offset = 0
			motor_2_offset <= 8'b000; // Motor 2 Offset = 0
			motor_3_offset <= 8'b101; // Motor 3 Offset = 5
			motor_4_offset <= 8'b101; // Motor 4 Offset = 5
		end
   else if (pitch_rec_val > 6 && pitch_rec_val <= 9)
	   begin 
			motor_1_offset <= 8'b000; // Motor 1 Offset = 0
			motor_2_offset <= 8'b000; // Motor 2 Offset = 0
			motor_3_offset <= 8'b100; // Motor 3 Offset = 4
			motor_4_offset <= 8'b100; // Motor 4 Offset = 4
		end
   else if (pitch_rec_val > 9 && pitch_rec_val <= 12)
	   begin 
			motor_1_offset <= 8'b000; // Motor 1 Offset = 0
			motor_2_offset <= 8'b000; // Motor 2 Offset = 0
			motor_3_offset <= 8'b011; // Motor 3 Offset = 3
			motor_4_offset <= 8'b011; // Motor 4 Offset = 3
		end
   else if (pitch_rec_val > 12 && pitch_rec_val <= 15)
	   begin 
			motor_1_offset <= 8'b000; // Motor 1 Offset = 0
			motor_2_offset <= 8'b000; // Motor 2 Offset = 0
			motor_3_offset <= 8'b010; // Motor 3 Offset = 2
			motor_4_offset <= 8'b010; // Motor 4 Offset = 2
		end
   else if (pitch_rec_val > 15 && pitch_rec_val <= 18)
	   begin 
			motor_1_offset <= 8'b000; // Motor 1 Offset = 0
			motor_2_offset <= 8'b000; // Motor 2 Offset = 0
			motor_3_offset <= 8'b001; // Motor 3 Offset = 1
			motor_4_offset <= 8'b001; // Motor 4 Offset = 1
		end
   
   // Case 2 (22-40): Down/Backward Pitch --> Offset Motors 1 and 2
   else if (pitch_rec_val > 22 && pitch_rec_val <= 25)
	   begin 
			motor_1_offset <= 8'b001; // Motor 1 Offset = 1
			motor_2_offset <= 8'b001; // Motor 2 Offset = 1
			motor_3_offset <= 8'b000; // Motor 3 Offset = 0
			motor_4_offset <= 8'b000; // Motor 4 Offset = 0
		end
   else if (pitch_rec_val > 25 && pitch_rec_val <= 28)
	   begin 
			motor_1_offset <= 8'b010; // Motor 1 Offset = 2
			motor_2_offset <= 8'b010; // Motor 2 Offset = 2
			motor_3_offset <= 8'b000; // Motor 3 Offset = 0
			motor_4_offset <= 8'b000; // Motor 4 Offset = 0
		end
   else if (pitch_rec_val > 28 && pitch_rec_val <= 31)
	   begin 
			motor_1_offset <= 8'b011; // Motor 1 Offset = 3
			motor_2_offset <= 8'b011; // Motor 2 Offset = 3
			motor_3_offset <= 8'b000; // Motor 3 Offset = 0
			motor_4_offset <= 8'b000; // Motor 4 Offset = 0
		end
   else if (pitch_rec_val > 31 && pitch_rec_val <= 34)
	   begin 
			motor_1_offset <= 8'b100; // Motor 1 Offset = 4
			motor_2_offset <= 8'b100; // Motor 2 Offset = 4
			motor_3_offset <= 8'b000; // Motor 3 Offset = 0
			motor_4_offset <= 8'b000; // Motor 4 Offset = 0
		end
   else if (pitch_rec_val > 34 && pitch_rec_val <= 37)
	   begin 
			motor_1_offset <= 8'b101; // Motor 1 Offset = 5
			motor_2_offset <= 8'b101; // Motor 2 Offset = 5
			motor_3_offset <= 8'b000; // Motor 3 Offset = 0
			motor_4_offset <= 8'b000; // Motor 4 Offset = 0
		end
   else if (pitch_rec_val > 37 && pitch_rec_val <= 40)
	   begin 
			motor_1_offset <= 8'b110; // Motor 1 Offset = 6
			motor_2_offset <= 8'b110; // Motor 2 Offset = 6
			motor_3_offset <= 8'b000; // Motor 3 Offset = 0
			motor_4_offset <= 8'b000; // Motor 4 Offset = 0
		end
	else // No Offset otherwise
		begin
			motor_1_offset <= 8'b000;
			motor_2_offset <= 8'b000;
			motor_3_offset <= 8'b000;
			motor_4_offset <= 8'b000;
		end	
	end
endmodule 
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2014 12:16:57 PM
// Design Name: 
// Module Name: clock
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clock(
	input 	wire 		clk,
	input 	wire	[1:0] 	mode,		// 00 = normal mode (can set time)
						// 01 = timer mode (push a button to start)
						// 10 = alarm_set mode (uses a switch to trigger)		
	input 	wire		incr_hh,	// button to increment hours
	input 	wire		incr_mm,	// button to increment minutes
	
	output	reg[7:0]	clock_hh,	// will output current hours
	output	reg[7:0]	clock_mm,
	output	reg[7:0]	clock_ss

	);
	
    	reg pulse_hh, pulse_mm, pulse_ss;
    	
    	initial 
    	begin
    		clock_hh = 0;
    		clock_mm = 0;
    		clock_ss = 0;
    		pulse_hh = 0;
    		pulse_mm = 0;
    		pulse_ss = 0;
    	
    	end
    	
	//*****************************
	// Implement the Mod-100M                     
	//*****************************
	wire tc_seconds;
	reg [26:0] ctr = 27'b000000000000000000000000000;
	assign tc_seconds = (ctr==100000000);
//	assign tc_seconds = (ctr==100);
	
	always @ (posedge clk)
	begin
		if (mode==2'b00)
		begin
			if (incr_hh)	
			begin
				clock_ss = 0;
				clock_hh = clock_hh + 1;
				if (clock_hh>23)
				begin
					clock_hh = 0;
				end
			end
			
			if (incr_mm)	
			begin
				clock_ss = 0;
				clock_mm = clock_mm + 1;
				if (clock_mm>59)
				begin
					clock_mm = 0;
				end
			end		
		
		end
		ctr<=ctr+1;
		
		if(tc_seconds)	
		begin
			ctr<=0;
			clock_ss <= clock_ss+1;
			if (clock_ss > 58)
			begin
				pulse_mm <= 1;
				clock_ss  <= 0;
			end
		end
		
		if(pulse_mm)
		begin
			pulse_mm <= 0;
			clock_mm <= clock_mm + 1;
			if (clock_mm > 58)
			begin
				pulse_hh <= 1;
				clock_mm  <= 0;
			end			
				
		end
		if(pulse_hh)
		begin
			pulse_hh <= 0;
			clock_hh <= clock_hh + 1;
			
			if (clock_hh >= 24)
			begin
				clock_hh  <= 0;
			end			
		end
		
		
	end    
    
endmodule
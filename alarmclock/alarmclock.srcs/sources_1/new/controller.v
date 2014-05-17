`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2014 10:51:29 PM
// Design Name: 
// Module Name: controller
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


module controller(
		input 	wire		clk,		// 100 MHz CLK
		input 	wire	[1:0] 	mode,		// 00 = normal mode (can set time)
							// 01 = timer mode (push a button to start)
							// 10 = alarm_set mode (uses a switch to trigger)		
		input 	wire		incr_hh_pulse,	// button to increment hours
		input 	wire		incr_mm_pulse,	// button to increment minutes
		input 	wire		incr_ss_pulse,	// button to increment seconds
		input 	wire	[7:0]	curr_hh,	// current hour
		input 	wire	[7:0]	curr_mm,	// current minutes
		input 	wire	[7:0]	curr_ss,	// current seconds
		
		input	wire		timer_toggle_pulse,	// button used to start/stop timer
		input	wire		alarm_sw,	// switch used to enable/disable alarm		
		
		output 	reg	[1:0]	sen,		// sound code to make noise
		output	reg 	[7:0]	alarm_hh,	// alarm hour
		output	reg 	[7:0]	alarm_mm,	// alarm minute
		output	reg 	[7:0]	timer_hh,	// timer hour
		output	reg	[7:0]	timer_mm,	// timer minute
		output	reg 	[7:0]	timer_ss	// timer seconds
	
    );

	 
	initial
	begin
		seconds_counter 	= 0;
		alarm_hh 		= 0;
		alarm_mm 		= 0;
		timer_hh		= 0;
		timer_mm		= 0;
		timer_ss		= 0;		
	end

	//******************************************************************************//
	//	Seconds Ticker								//
	//******************************************************************************//

	reg	[26:0]	seconds_counter;
	reg		seconds_pulse;

	wire	[26:0]	seconds_tc;
	 
	 // change to 100000000 when finalizing for 1 second
	assign seconds_tc = 100000000;
//	assign seconds_tc = 100;


	
	always @ (posedge clk)
	begin
		if (seconds_counter==seconds_tc)
		begin
			seconds_counter	<= 0;
			seconds_pulse 	<= 1;
		end
		else
		begin
			seconds_counter = 	seconds_counter+1;
			seconds_pulse 	<=	0;		
		end
	end
	
	//******************************************************************************//
	//	Alarm Clock	(mode = 2'b10)						//
	//******************************************************************************//
	
	always @ (posedge clk)
	begin
		if(mode==2'b10)
		begin
			if(incr_hh_pulse)
			begin
				alarm_hh <= alarm_hh + 1;
				if (alarm_hh > 22)
					alarm_hh <= 0;
			end
			else if(incr_mm_pulse)
			begin
				if (alarm_mm > 58)
					alarm_mm = 0;
				else alarm_mm = alarm_mm +1;
			end
		end
	end
	
	always @ (posedge clk)
	begin
		if(alarm_sw)
		begin
			if((curr_hh==alarm_hh)&&(curr_mm==alarm_mm)&&(curr_ss==0))
				sen <= 2'b10;
			else
				sen <= 2'b00;
		end
		else
			sen<=0;
	end
	
	
	
	//******************************************************************************//
	//	Timer Mode								//
	//******************************************************************************//
	reg timer_start = 0;
	
	always @ (posedge clk)
	begin
		if((mode==2'b01)&&(timer_start==0))
		begin
			if (incr_hh_pulse)
			begin
				timer_hh = timer_hh + 1;
				if (timer_hh > 23)
					timer_hh = 0;
			end
			else if (incr_mm_pulse)
			begin
				timer_mm = timer_mm + 1;
				if (timer_mm > 59)
					timer_mm = 0;
			end
			else if (incr_ss_pulse)
			begin
				timer_ss = timer_ss + 1;
				if (timer_ss > 59)
					timer_ss = 0;
			end
		end
		
		if(timer_toggle_pulse)
		begin
			timer_start=~timer_start;
		end
		
		if (timer_start) //if timer_start is 1, begin countdown
		begin
			if (seconds_pulse)
			begin
				if (timer_ss > 0)
					timer_ss = timer_ss - 1;
				else
				begin
					if (timer_mm > 0)
					begin
						timer_mm = timer_mm - 1;
						timer_ss <= 59;
					end
					
					else if (timer_hh > 0)
					begin
						timer_hh = timer_hh - 1;
						timer_mm <=59;
					end
					
					else	// if timer hh:mm:ss == 0, sound alarm
					begin 
						sen <= 2'b01;
						timer_start <=0;
					end						
				end		
			end
		end
		
		else	sen<=0;
	end	

endmodule

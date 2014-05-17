`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2014 11:01:59 PM
// Design Name: 
// Module Name: main_source
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


module main_source(
	input 	wire 		clk,
	input 	wire	[1:0] 	mode,		// 00 = normal mode (can set time)
						// 01 = timer mode (push a button to start)
						// 10 = alarm_set mode (uses a switch to trigger)		
	input 	wire		incr_hh,	// button to increment hours
	input 	wire		incr_mm,	// button to increment minutes
	input 	wire		incr_ss,	// button to increment seconds

	
	input	wire		timer_toggle,	// button used to start/stop timer
	input	wire  		alarm_sw,	// switch used to enable/disable alarm		
	
	output wire [7:0] an, 				//anode selector (active low)
	output wire cg, cf, ce, cd, cc, cb, ca	//these are fused across all 7 segment displays
	
    );
	//******************************************************************************//
	//	Debounce								//
	//******************************************************************************//
    reg	[23:0]	debounce_time = 0;
    wire	[23:0]	debounce_tc;
    reg		incr_hh_pulse = 0;
    reg		incr_mm_pulse = 0;
    reg		incr_ss_pulse = 0;
    reg		timer_toggle_pulse = 0;
    

//	assign debounce_tc = 4194303;
//	assign debounce_tc = 6000000;
	assign debounce_tc = 8000000; 
//	assign debounce_tc = 10;   
    always @ (posedge clk)
    begin
    	if(incr_hh)
    	begin
    		debounce_time=debounce_time+1;
    		
    		if(debounce_time==debounce_tc)
    		begin
    			incr_hh_pulse	<= 1;
    			debounce_time 	<= 0;			
    		end
    		
    		else incr_hh_pulse  <= 0;
    	end
    	
    	else if(incr_mm)
    	begin
    		debounce_time=debounce_time+1;
    		
    		if(debounce_time==debounce_tc)
    		begin
    			incr_mm_pulse	<= 1;
    			debounce_time 	<= 0;			
    		end
    		
    		else incr_mm_pulse  <= 0;
    	end
    	
    	else if(incr_ss)
    	begin
    		debounce_time=debounce_time+1;
    		
    		if(debounce_time==debounce_tc)
    		begin
    			incr_ss_pulse	<= 1;
    			debounce_time 	<= 0;			
    		end
    		
    		else incr_ss_pulse  <= 0;
    	end
    	
    	else if(timer_toggle)
    	begin
    		debounce_time=debounce_time+1;
    		
    		if(debounce_time==debounce_tc)
    		begin
    			timer_toggle_pulse	<= 1;
    			debounce_time 	<= 0;			
    		end
    		
    		else timer_toggle_pulse  <= 0;
    	end
    	else	debounce_time<=0;
    
    end

    
    
    
    
	wire	[1:0]	sen;		// sound code to make noise
	wire 	[7:0]	alarm_hh;	// alarm hour
	wire 	[7:0]	alarm_mm;	// alarm minute
	wire 	[7:0]	timer_hh;	// timer hour
	wire	[7:0]	timer_mm;	// timer minute
	wire 	[7:0]	timer_ss;	// timer seconds
	
	wire	[7:0]	curr_hh;	// current hour
	wire	[7:0]	curr_mm;	// current minutes
	wire	[7:0]	curr_ss;	// current seconds
	
	controller clock_controller ( 
		.clk(clk),
		.mode(mode),
		.incr_hh_pulse(incr_hh_pulse),
		.incr_mm_pulse(incr_mm_pulse),
		.incr_ss_pulse(incr_ss_pulse),
		.curr_hh(curr_hh),
		.curr_mm(curr_mm),
		.curr_ss(curr_ss),
		.timer_toggle_pulse(timer_toggle_pulse),
		.sen(sen),
		.alarm_sw(alarm_sw),
		.alarm_hh(alarm_hh),
		.alarm_mm(alarm_mm),  
		.timer_hh(timer_hh),
		.timer_mm(timer_mm),
		.timer_ss(timer_ss)
	); 
    
    	display clock_display (
    		.clk(clk),
    		.mode(mode),
		.curr_hh(curr_hh),
    		.curr_mm(curr_mm),
    		.curr_ss(curr_ss),
    		.alarm_hh(alarm_hh),
    		.alarm_mm(alarm_mm),  
    		.timer_hh(timer_hh),
    		.timer_mm(timer_mm),
    		.timer_ss(timer_ss),
    		.an(an),
    		.cg(cg),
    		.cf(cf),
    		.ce(ce),
    		.cd(cd),
    		.cc(cc),
    		.cb(cb),
    		.ca(ca)
    	);
    	
    	clock clock_inst(
    		.clk(clk),
    		.mode(mode),
    		.incr_hh(incr_hh_pulse),
    		.incr_mm(incr_mm_pulse),
    		.clock_hh(curr_hh),
    		.clock_mm(curr_mm),
    		.clock_ss(curr_ss)
    	);
    
    
endmodule

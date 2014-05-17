`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2014 11:29:38 PM
// Design Name: 
// Module Name: display
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


module display(
    	input 	wire 		clk,
	input	wire	[1:0]	mode,
	
	input 	wire	[7:0]	curr_hh,	// current hour
	input 	wire	[7:0]	curr_mm,	// current minutes
	input 	wire	[7:0]	curr_ss,	// current seconds
	
	input	wire 	[7:0]	alarm_hh,	// alarm hour
	input	wire 	[7:0]	alarm_mm,	// alarm minute
	
	input	wire 	[7:0]	timer_hh,	// timer hour
	input	wire	[7:0]	timer_mm,	// timer minute
	input	wire 	[7:0]	timer_ss,	// timer seconds
	

	
	output reg [7:0] an, 				//anode selector (active low)
	output wire cg, cf, ce, cd, cc, cb, ca	//these are fused across all 7 segment displays
);
	

	reg 	[3:0] val7, val6, val5, val4, val3, val2, val1, val0; //4 switches per seg  
	reg 	[3:0] 	raw;      // decimal number to be converted to display
	reg 	[6:0] 	numb;     // converted output from raw to 7seg
	
	
	initial 
	    begin
		raw = 1;  
		counter = 0; 
	    end
	    
	//******************************************************************************//
	//	Control anode switching speed						//
	//******************************************************************************//
	reg	[19:0] 	counter;  			//15 bit counter to slow 7seg switch rate
	wire 	[3:0] 	seg_select = counter[19:16]; 	//slow down seg switch rate
	
	always @ (posedge clk)
	begin
		counter <= counter +1;    
	end   
	

	//******************************************************************************//
	//	depending on seg activated, display specific valX			//
	//******************************************************************************//
	always @*
	begin
		case(seg_select)
			7:  raw = val7;
			6:  raw = val6; 
			5:  raw = val5;
			4:  raw = val4;	
			3:  raw = val3;
			2:  raw = val2;
			default: raw = 10; // forces to display blank (see block below) 
//			1:  raw = val1;
//			0:  raw = val0;
		endcase
	end	    
	
	
	//******************************************************************************//
	//	Converts Raw to numb (combination to displayed on 7seg)			//
	//******************************************************************************//
	assign cg = numb[6];
	assign cf = numb[5];
	assign ce = numb[4];
	assign cd = numb[3];
	assign cc = numb[2];
	assign cb = numb[1];
	assign ca = numb[0];
	
	always@*
	begin
		case (raw[3:0])
			0:  numb = 7'b1000000;
			1:  numb = 7'b1111001;
			2:  numb = 7'b0100100;
			3:  numb = 7'b0110000;
			4:  numb = 7'b0011001;
			5:  numb = 7'b0010010;
			6:  numb = 7'b0000010;
			7:  numb = 7'b1111000;
			8:  numb = 7'b0000000;
			9:  numb = 7'b0011000;
			default: numb =7'b1111111;	// blank display
		endcase
	end              
	
	
	//******************************************************************************//
	//	Cycles through anodes to turn on (active low)				//
	//******************************************************************************//
	always @ *
	begin
		case(seg_select)
			7:  an = ~128;  
			6:  an = ~64;
			5:  an = ~32;
			4:  an = ~16;
			3:  an = ~8;  
			2:  an = ~4;
			1:  an = ~2;
			0:  an = ~1;
			default: an = ~7;
		endcase
	end

	//******************************************************************************//
	//	Splits up 2 digit numbers and puts them to corresponding valX		//
	//******************************************************************************//
	always @ *
	begin
		if(mode==2'b01)		// timer			
		begin
			// ************ timer hours	
			if(timer_hh>9)
			begin
				val7=(timer_hh/10);	// take tens digit
				val6=(timer_hh%10);	// take ones digit
			end
			else
			begin
				val7=0;
				val6=(timer_hh);
			end
			// ************ timer minutes	
			if(timer_mm>9)
			begin
				val5=(timer_mm/10);	// take tens digit
				val4=(timer_mm%10);	// take ones digit
			end
			else
			begin
				val5=0;
				val4=(timer_mm);
			end
			// ************ timer seconds
			if(timer_ss>9)
			begin
				val3=(timer_ss/10);	// take tens digit
				val2=(timer_ss%10);	// take ones digit
			end
			else
			begin
				val3=0;
				val2=(timer_ss);
			end
		
		end
		
		else if(mode==2'b10) 	// alarm
		begin
		// ************ alarm hours	
			if(alarm_hh>9)
			begin
				val7=(alarm_hh/10);	// take tens digit
				val6=(alarm_hh%10);	// take ones digit
			end
			else
			begin
				val7=0;			// tens digit is 0
				val6=(alarm_hh);	// 0H format
			end
			// ************ alarm minutes	
			if(alarm_mm>9)
			begin
				val5=(alarm_mm/10);	// take tens digit
				val4=(alarm_mm%10);	// take ones digit
			end
			else
			begin
				val5=0;			// tens digit is 0			
				val4=(alarm_mm);	// 0M format
			end
			// ************ alarm seconds
			val3=0;				// seconds are 0
			val2=0;				// seconds are 0
		
		end
		else	// mode 2'b00 is default
		begin
		// ************ current hours (clock)	
			if(curr_hh>9)
			begin
				val7=(curr_hh/10);	// take tens digit
				val6=(curr_hh%10);	// take ones digit
			end
			else
			begin
				val7=0;
				val6=(curr_hh);
			end
			// ************ curr minutes	
			if(curr_mm>9)
			begin
				val5=(curr_mm/10);	// take tens digit
				val4=(curr_mm%10);	// take ones digit
			end
			else
			begin
				val5=0;
				val4=(curr_mm);
			end
			// ************ curr seconds
			if(curr_ss>9)
			begin
				val3=(curr_ss/10);	// take tens digit
				val2=(curr_ss%10);	// take ones digit
			end
			else
			begin
				val3=0;
				val2=(curr_ss);
			end
		end
		
	
	end
	
	

endmodule

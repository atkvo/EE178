// File: testbench.v 
// This is the top level testbench for EE178 Lab #5. 
 
// The `timescale directive specifies what the 
// simulation time units are (1 ns here) and what  
 
// the simulator timestep should be (1 ps here). 
 
`timescale 1 ns / 1 ps 
 
// Declare the module and its ports. This is 
// using Verilog-2001 syntax. 
 
module testbench_v; 
	 
	 // Generate a free running 100 MHz clock 
	 // signal to mimic what is on the board 
	 // provided for prototyping. 
	 
	 reg clk; 
	 
	 always 
	 begin 
		 clk = 1'b0; 
		 #5; 
		 clk = 1'b1; 
		 #5; 
	 end 
	 integer loopvar;
	 reg timer_toggle = 1 ; 
	 reg s_incr = 1;
	 reg m_incr = 1;
	 reg h_incr = 1;
	 reg [7:0] an;
	 wire cg, cf, ce, cd, cc, cb, ca;
	 wire [7:0] a_hh, a_mm, t_hh, t_mm, t_ss;
	 initial 
	 begin 
//		 $display("If simulation ends before the testbench"); 
//		 $display("completes, use the menu option to run all."); 
		 for (loopvar = 0; loopvar<59; loopvar=loopvar+1)
		 begin
		 	s_incr=0;
		 	#150;
		 	s_incr=1;
		 	#150;		 
		 end
		 for (loopvar = 0; loopvar<2; loopvar=loopvar+1)
		 begin
		 	m_incr=0;
		 	#150;
		 	m_incr=1;
		 	#150;		 
		 end
		 for (loopvar = 0; loopvar<2; loopvar=loopvar+1)
		 begin
		 	h_incr=0;
		 	#150;
		 	h_incr=1;
		 	#150;		 
		 end
//		 #400; // allow it to run
		 timer_toggle = 1'b0; 
		 #200
		 timer_toggle = 1'b1;
//		 $display("Simulation is over, check the waveforms."); 
//		 $stop; 
	 end 
	 
	 main_source main_inst (
	 	.clk(clk),
	 	.mode(2'b00),
		.incr_hh(h_incr),
		.incr_mm(m_incr),
		.incr_ss(s_incr),
		.timer_toggle(timer_toggle),
		.alarm_sw(2'b00)
	 );
	 
//	 controller my_controller ( 
//		.clk(clk),
//		.mode(2'b01),
//		.incr_hh(2'b00),
//		.incr_mm(m_incr),
//		.incr_ss(s_incr),
//		.curr_hh(8'h04),
//		.curr_mm(8'h05),
//		.curr_ss(8'h06),
//		.timer_toggle(timer_toggle),
//		.alarm_sw(1'b0),
//		.alarm_hh(a_hh),
//		.alarm_mm(a_mm),  
//	 	.timer_hh(t_hh),
//	 	.timer_mm(t_mm),
//	 	.timer_ss(t_ss)
//	 ); 
	 
//	display test_display (
//	 	.clk(clk),
//	 	.mode(2'b01),
//		.curr_hh(8'h04),
//	 	.curr_mm(8'h05),
//	 	.curr_ss(8'h06),
//		.alarm_hh(a_hh),
//	 	.alarm_mm(a_mm),  
//	 	.timer_hh(t_hh),
//	 	.timer_mm(t_mm),
//	 	.timer_ss(t_ss)
////	 	.an(an),
////	 	.cg(cg),
////	 	.cf(cf),
////	 	.ce(ce),
////	 	.cd(cd),
////	 	.cc(cc),
////	 	.cb(cb),
////	 	.ca(ca)
//	 );
 
endmodule


// File: fsm.v
// This is the FSM module for EE178 Lab #6.

// The `timescale directive specifies what the
// simulation time units are (1 ns here) and what
// the simulator timestep should be (1 ps here).

`timescale 1 ns / 1 ps

// Declare the module and its ports. This is
// using Verilog-2001 syntax.

module fsm (
	output wire busy,
	input  wire period_expired,
	input  wire data_arrived,
	input  wire val_match,
	output wire load_ptrs,
	output wire increment,
	output wire sample_capture,
	input  wire clk
  );

  //******************************************************************//
  // Implement the FSM.                                               //
  //******************************************************************//
 	reg [2:0] state;
 	reg [2:0] next_state;
	reg [2:0] count;

	parameter [2:0] state_idle  = 3'b000;
	parameter [2:0] state_load  = 3'b001;
	parameter [2:0] state_wait  = 3'b010;
	parameter [2:0] state_incr  = 3'b011;                            
	parameter [2:0] state_capt	= 3'b100;
	parameter [2:0] state_delay = 3'b101;

	initial 
	begin
		state <= state_idle;
		count <= 0;
	end
	
	always @(*)
	begin
		state <= next_state;
	end
	
	always @(posedge clk)
	begin
		case(state)
			state_idle:	begin
				if (data_arrived==1) next_state = state_load;
				else next_state = state_idle;
			end
			state_load: begin
				next_state = state_delay;
			end
			state_wait: begin
				if (period_expired == 1) next_state = state_incr;
				else next_state = state_wait;
			end
			state_incr: begin
				if (val_match==1) next_state = state_idle;
				else next_state = state_delay;
			end
			state_capt: begin 
				if (val_match==1) next_state = state_idle;
				else next_state = state_wait;
			end
			state_delay:begin 
				if (count == 4) next_state = state_capt;
				else next_state = state_delay;
			end
			default: next_state = state;
		endcase
	end

	always @(posedge clk)
	begin
		if (state == state_delay) begin 
			count <= count + 1;
		end
		else count <= 0;
	end

  //******************************************************************//
  // Implement the output logic.                                      //
  //******************************************************************//
	assign busy = ~(state == state_idle);
	assign load_ptrs = (state == state_load);
	assign increment = (state == state_incr);
	assign sample_capture = (state == state_capt);
  //******************************************************************//
  //                                                                  //
  //******************************************************************//
  
endmodule

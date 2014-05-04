// File: narrator.v
// This is the top level design for EE178 Lab #6.

// The `timescale directive specifies what the
// simulation time units are (1 ns here) and what
// the simulator timestep should be (1 ps here).

`timescale 1 ns / 1 ps

// Declare the module and its ports. This is
// using Verilog-2001 syntax.

module narrator (
  input  wire        clk,
  output wire        speaker,
  output wire        vcc
  );

  // The audio amplifier needs to be enabled, by
  // default it will be disabled without this:

  assign vcc = 1'b1;

  // Create a test circuit to exercise the chatter
  // module, rather than using switches and a
  // button.
  
  reg   [6:0] counter = 0;
  reg   [5:0] data;
  wire        write;
  wire        busy;

  always @(posedge clk) if (!busy) counter <= counter + 1;

  always @*
  begin
    case (counter[6:2])
      0:  data = 6'h1a; //AE
      1:  data = 6'h1a; //AE
      3:  data = 6'h0b; //NN1
      4:  data = 6'h15; //DD1
      5:  data = 6'h33; //ER1
      6:  data = 6'h1f; //UW2
	  7:  data = 6'h2e; //WW
      8:  data = 6'h00; //PA
	  9:  data = 6'h23; //VV
	  10:  data = 6'h0f; //AX
	  11:  data = 6'h35; //OW
     default: data = 6'h04;
    endcase
  end

  assign write = (counter[1:0] == 2'b00);
  
  // Instantiate the chatter module, which is
  // driven by the test circuit.

  chatter chatter_inst (
    .data(data),
    .write(write),
    .busy(busy),
    .clk(clk),
    .speaker(speaker)
  );

endmodule

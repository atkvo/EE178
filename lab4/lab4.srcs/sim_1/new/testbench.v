module testbench_v;
// Generate a free running 100 MHz clock
// signal to mimic what is on the board
// provided for prototyping.
reg clk;
always
begin
clk = 1'b1;
#5;
clk = 1'b0;
#5;
end
// In this block, include a mechanism
// to exercise the design and finally
// stop the simulation.
reg [3:0] note;
reg hush;
integer loopvar;
initial
begin
$display("If simulation ends before the testbench");
$display("completes, use the menu option to run all.");
note = 4'h0;
hush = 1'b1;
#100;
$display("Beginning note loop.");
// Loop through all 16 possible notes
// and also exercise the hush signal.
for (loopvar = 0; loopvar < 16; loopvar = loopvar + 1)
begin
hush = 1'b0; // make noise
note = loopvar[3:0]; // assign note
#10000000; // allow it to run
hush = 1'b1; // go quiet
#1000000; // allow it to run
end
// End the simulation.
$display("Simulation is over, check the waveforms.");
$stop;
end
// Now instantiate the top level design.
wire speaker;
wire vcc;piano my_piano (
.clk(clk),
.hush(hush),
.note(note),
.speaker(speaker),
.vcc(vcc)
);
endmodule
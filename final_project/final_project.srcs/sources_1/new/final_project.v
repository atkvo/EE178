`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2014 06:28:40 PM
// Design Name: 
// Module Name: final_project
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
`timescale 1ns / 1 ps


module final_project(
    input  wire        clk,
    input  wire [15:0] switches,
    output reg  [15:0] leds
    );

  //******************************************************************//
  // Instantiate Seconds Counter                                      //
  //******************************************************************//
    reg    [26:0] seconds_counter;
    reg           reset;
    reg           q;
    reg           s;
    reg           r;
    reg           int_ack;
    wire   [26:0] tc;

    assign tc = 1000000;

    initial
    begin
        seconds_counter = 0;
    end
    
    always@(posedge clk)
    begin
        if (seconds_counter == tc)
        begin
           s<=1;
           seconds_counter<=0; 
        end
        else
        begin
            seconds_counter=seconds_counter+1;
        end
    end
    
    always@(posedge clk)
    begin
        if      (s) q<=1;
        else if (int_ack) q<=0;        
        else    q=(q||1);
        
    
    end
  //******************************************************************//
  // Instantiate PicoBlaze and the Instruction ROM.                   //
  //******************************************************************//


    wire   [11:0] address;
    wire   [17:0] instruction;
    wire          bram_enable;
    wire    [7:0] port_id;
    wire    [7:0] out_port;
    reg     [7:0] in_port;
    wire          write_strobe;
    wire          k_write_strobe;
    wire          read_strobe;
    wire          interrupt_ack;

    kcpsm6 kcpsm6_inst (
        .address(address),
        .instruction(instruction),
        .bram_enable(bram_enable),
        .port_id(port_id),
        .write_strobe(write_strobe),
        .k_write_strobe(k_write_strobe),
        .out_port(out_port),
        .read_strobe(read_strobe),
        .in_port(in_port),
        .interrupt(1'b0),
        .interrupt_ack(interrupt_ack),
        .reset(1'b0),
        .sleep(1'b0),
        .clk(clk)); 

    software software_inst (
        .address(address),
        .instruction(instruction),
        .bram_enable(bram_enable),
        .clk(clk));
        
        
        
    
    //******************************************************************//
    // Implement output ports.                                          //                                    //
    //******************************************************************//
    
    always @(posedge clk)
    begin
        if (write_strobe)
        begin
          if (port_id == 8'h02) leds[7:0] <= out_port;
          if (port_id == 8'h03) leds[15:8] <= out_port;
          if (port_id == 8'h04) r<=out_port;
        end
    end
    
    //******************************************************************//
    // Implement input ports.                                           //
    //******************************************************************//
    
    always @*
    begin
        case (port_id)
          8'h00: in_port <= switches[7:0];
          8'h01: in_port <= switches[15:8];
          default: in_port <= 8'h00;
        endcase
    end
    
    //******************************************************************//
    //                                                                  //
    //******************************************************************//
endmodule

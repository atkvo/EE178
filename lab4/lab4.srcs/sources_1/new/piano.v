`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2014 01:30:23 PM
// Design Name: 
// Module Name: piano
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
    module piano (
        input wire clk,
        input wire hush,
        input wire [3:0] note,
        output wire speaker,
        output wire vcc
    );
    
    reg [16:0] freq_count = 0;
    reg tc_en;
    reg q;
    wire d;
    
    assign speaker = q;
    assign d = ~q;
    assign vcc = 1'b1;
        
    always @(posedge clk)
    begin
        if (tc_en) freq_count <= 0;
        else freq_count <= freq_count + 1;
        //if (hush==0) freq_count <= freq_count + 1;
        //else freq_count <= 0;
    end
    
    always @(posedge clk)
    begin 
        if (tc_en && (hush == 0)) q <= d;
    end   
           
    always @*
    begin
        case(note)
        0:  tc_en = (freq_count==113635);    
        1:  tc_en = (freq_count==107257);
        2:  tc_en = (freq_count==101237);   
        3:  tc_en = (freq_count==95555);    
        4:  tc_en = (freq_count==90192);
        5:  tc_en = (freq_count==85130);    // no sound    
        6:  tc_en = (freq_count==80352);
        7:  tc_en = (freq_count==75842);
        8:  tc_en = (freq_count==71585);
        9:  tc_en = (freq_count==67568);
        10:  tc_en = (freq_count==63775);   // no sound   
        11:  tc_en = (freq_count==60196);
        12:  tc_en = (freq_count==56817);   
        13:  tc_en = (freq_count==53628);
        14:  tc_en = (freq_count==50618);   
        15:  tc_en = (freq_count==47777);
        default: tc_en = (freq_count==11365);
        endcase
    end

    endmodule

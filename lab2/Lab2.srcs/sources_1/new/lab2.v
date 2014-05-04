`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2014 01:21:26 PM
// Design Name: 
// Module Name: lab2
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


module lab2(
    input wire clk,

    input wire [3:0] val3, val2, val1, val0, //4 switches per seg   
    input wire [3:0] dp_button, //1 button for each DP. Active HIGH
    output reg [3:0] an, //anode selector 
    output wire an4, an5, an6, an7, //turn off (send '1') to deactive left quad
    
    output wire cg, cf, ce, cd, cc, cb, ca, dp
    );
    reg[14:0] counter;  //15 bit counter to slow 7seg switch rate
    reg dp_en;
    reg [3:0] raw;      //outupt from mux
    reg [6:0] numb;     //converted output from raw to 7seg
    wire [1:0] seg_select = counter[14:13]; //slow down seg switch rate
            
    initial 
        begin
            raw = 1;   
        end
    
    assign dp = dp_en;
    assign cg = numb[6];
    assign cf = numb[5];
    assign ce = numb[4];
    assign cd = numb[3];
    assign cc = numb[2];
    assign cb = numb[1];
    assign ca = numb[0];
    
    //converts raw to final 
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
            default: numb =7'b1111111;
        endcase
    end              
    
    
    // 7seg switch rate controller
    // 15 bits seemed to be sweet spot
    always @ (posedge clk)
    begin
        counter <= counter +1;    
    end   

    
    //4-1 MUX - properly selects which valX goes to which 7seg 
    always @*
    begin
        case(seg_select)
            3:  raw = val3;
            2:  raw = val2; 
            1:  raw = val1;
            0:  raw = val0;
        endcase
    end
 
    //DP MUX - used to distinguist which seg has DP enabled
    always@*
    begin
        case(seg_select)
                3:  dp_en = ~dp_button[3];
                2:  dp_en = ~dp_button[2];
                1:  dp_en = ~dp_button[1];
                0:  dp_en = ~dp_button[0];
        endcase
    end
    

        
    
    // 2-4 decoder to select proper anode
    // active low to change 7 seg display
    always @ *
    begin
        case(seg_select)
            3:  an = ~8;  
            2:  an = ~4;
            1:  an = ~2;
            0:  an = ~1;
        endcase
    end
    
    assign an4 = 1'b1;
    assign an5 = 1'b1;
    assign an6 = 1'b1;
    assign an7 = 1'b1;
        
endmodule

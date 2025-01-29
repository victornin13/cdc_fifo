`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// ECE6213
// Victor Nin
// 2 flip flop synch
// 
//////////////////////////////////////////////////////////////////////////////////

module flip_flop_synch(
    input wire a_clk,            // Source clock domain
    input wire a_rst_n,          // Active-low reset for source domain
    input wire b_clk,           // Destination clock domain
    input wire b_rst_n,         // Active-low reset for destination domain
    input wire [3:0] async_data,   // Asynchronous data from the source domain
    output reg [3:0] sync_data     // Synchronized data for the destination domain
);

    // Register for capturing data in the source domain
    // reg [3:0] src_data_reg;

    // Registers for synchronization in the destination domain
    reg [3:0] stage1;
    reg [3:0] stage2;

    // Capture async_data in the source clock domain
    always @(posedge a_clk or negedge a_rst_n) begin
        if (!a_rst_n) begin
            stage1 <= 4'b0000;
        end else begin
            stage1 <= async_data;
        end
    end

    // Synchronize src_data_reg to dest_clk domain
    always @(posedge b_clk or negedge b_rst_n) begin
        if (!b_rst_n) begin
            stage2 <= 4'b0000;
            sync_data <= 4'b0000;
        end else begin
            stage2 <= stage1;  // First stage of synchronization
            sync_data <= stage2;   // Output synchronized data
        end
    end
endmodule



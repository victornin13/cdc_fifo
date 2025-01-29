`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// ECE6213
// Victor Nin
// fifo_memory
// 
//////////////////////////////////////////////////////////////////////////////////

module fifo_memory (
    input wire [7:0] write_data,
    input wire [3:0] write_addr,
    input wire write_enable,
    input wire write_clk,
    input wire write_rst_n,
    input wire [3:0] read_addr,
    input wire read_enable,
    input wire read_clk,
    input wire read_rst_n,
    output reg [7:0] read_data
);

    // Internal registers: 8 entries of 8-bit each
    reg [7:0] fifo_data[0:7];

    // Intermediate combinational variables
    reg [7:0] fifo_data_next[0:7];
    reg [7:0] read_data_comb;

    integer i;

    // Sequential logic for writing data (with asynchronous reset)
    always @(posedge write_clk or negedge write_rst_n) begin
        if (!write_rst_n) begin
            // Reset all memory locations to 0
            for (i = 0; i < 8; i = i + 1) begin
                fifo_data[i] <= 8'h00;
            end
        end else begin
            // Update memory with next state
            for (i = 0; i < 8; i = i + 1) begin
                fifo_data[i] <= fifo_data_next[i];
            end
        end
    end

    // Sequential logic for reading data (with asynchronous reset)
    always @(posedge read_clk or negedge read_rst_n) begin
        if (!read_rst_n) begin
            read_data <= 8'h00;
        end else if (read_enable) begin
            // Update read_data with the fetched combinational result
            read_data <= read_data_comb;
        end
    end

    // Combinational logic for data preparation
    always @(*) begin

        // read_data_comb = read_data; // Default to 0 when read is not enabled

        // Copy current state by default
        for (i = 0; i <8; i = i + 1) begin
            fifo_data_next[i] = fifo_data[i];
        end
        
        // Prepare next state for write operation
        if (write_enable) begin
            fifo_data_next[write_addr[2:0]] = write_data;
        end

        // Prepare read data in combinational logic for the next read clock edge
        if (read_enable) begin
            read_data_comb = fifo_data[read_addr[2:0]];
        end
         else begin
            read_data_comb = read_data;
            //read_data_comb = 8'h00;
        end
    end

endmodule




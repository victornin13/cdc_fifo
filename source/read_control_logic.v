`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// ECE6213
// Victor Nin
// Read Control Logic
// 
//////////////////////////////////////////////////////////////////////////////////

module read_control_logic (
    input wire read_clk,
    input wire read_rst_n,
    input wire read_enable_in,
    input wire [3:0] write_addr_gray_sync,   // Synchronized write pointer (Gray code)
    output reg [3:0] read_addr_gray,         // Gray code for read address
    output reg [3:0] read_addr,              // Binary read address for memory indexing
    output reg read_enable_out,
    output reg fifo_empty
);

    //reg [3:0] read_ptr;       // Read pointer in binary
    reg [3:0] read_ptr_next; 
    reg [3:0] write_addr;
    reg empty_next;

    // Sequential logic for read pointer and Gray code
    always @(posedge read_clk or negedge read_rst_n) begin
        if (!read_rst_n) begin
            read_addr <= 4'b0000;
            // read_addr_gray <= 4'b0000;
            fifo_empty <= 1'b1;
        end else begin
            read_addr <= read_ptr_next;
            // read_addr_gray <= read_ptr_next;
            fifo_empty <= empty_next;
        end
    end

    // Combinational logic for Gray code to Binary conversion for the read address
    always @(*) begin

        read_ptr_next = read_addr;

        // Convert Gray code to Binary for comparison (write address)
        write_addr[3] = write_addr_gray_sync[3];  // MSB stays the same
        write_addr[2] = write_addr_gray_sync[3] ^ write_addr_gray_sync[2];
        write_addr[1] = write_addr_gray_sync[3] ^ write_addr_gray_sync[2] ^ write_addr_gray_sync[1];
        write_addr[0] = write_addr_gray_sync[3] ^ write_addr_gray_sync[2] ^ write_addr_gray_sync[1] ^ write_addr_gray_sync[0];


        /* Convert Binary to Gray code for read pointer
        read_addr_gray[3] = read_addr[3];                    // MSB stays the same
        read_addr_gray[2] = read_addr[3] ^ read_addr[2];     // XOR for next bits
        read_addr_gray[1] = read_addr[2] ^ read_addr[1];
        read_addr_gray[0] = read_addr[1] ^ read_addr[0];
        */
        read_addr_gray = {read_addr[3], read_addr[3] ^ read_addr[2], 
                               read_addr[2] ^ read_addr[1], read_addr[1] ^ read_addr[0]};


        // FIFO read logic (only read if FIFO is not empty)
        if (read_enable_in == 1'b1 && fifo_empty == 1'b0) begin
            read_ptr_next = read_addr + 1'b1;  // Increment read pointer
            read_enable_out = 1'b1;  // Enable reading
        end else begin
            read_enable_out = 1'b0;  // Disable reading
        end

        // Empty Logic (FIFO is empty when read pointer equals the synchronized write pointer)
        if (write_addr == read_ptr_next) begin
            empty_next = 1'b1;  // FIFO is empty when the read address matches the write address
        end else begin
            empty_next = 1'b0;
        end
    end

endmodule









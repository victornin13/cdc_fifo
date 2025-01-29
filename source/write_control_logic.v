`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// ECE6213
// Victor Nin
// Write Control Logic
// 
//////////////////////////////////////////////////////////////////////////////////

module write_control_logic (
    input wire write_clk,
    input wire write_rst_n,
    input wire write_enable_in,
    input wire [3:0] read_addr_gray_sync,   // Synchronized read pointer (Gray code)
    output reg [3:0] write_addr_gray,       // Gray code for write address
    output reg [3:0] write_addr,            // Binary write address for memory indexing
    output reg write_enable_out,
    output reg fifo_full
);

    //reg [3:0] write_ptr;       // Write pointer in binary
    reg [3:0] read_addr;
    reg [3:0] write_ptr_next;
    reg full_next;

    // Sequential logic for write pointer and Gray code
    always @(posedge write_clk or negedge write_rst_n) begin
        if (!write_rst_n) begin
            write_addr <= 4'b0000;
            // write_addr_gray <= 4'b0000;
            fifo_full <= 1'b0;
        end else begin
            write_addr <= write_ptr_next;
            // write_addr_gray <= write_ptr_next;
            fifo_full <= full_next;
        end
    end

    // Combinational logic for Gray code conversion and full logic
    always @(*) begin
        // Default values
        write_ptr_next = write_addr;

         // Convert Gray code to Binary for comparison (read address)
        read_addr[3] = read_addr_gray_sync[3];  // MSB stays the same
        read_addr[2] = read_addr_gray_sync[3] ^ read_addr_gray_sync[2];
        read_addr[1] = read_addr_gray_sync[3] ^ read_addr_gray_sync[2] ^ read_addr_gray_sync[1];
        read_addr[0] = read_addr_gray_sync[3] ^ read_addr_gray_sync[2] ^ read_addr_gray_sync[1] ^ read_addr_gray_sync[0];


        // Gray Code Conversion for Write Pointer
        write_addr_gray[3] = write_addr[3];                    // MSB stays the same
        write_addr_gray[2] = write_addr[3] ^ write_addr[2];     // XOR for next bits
        write_addr_gray[1] = write_addr[2] ^ write_addr[1];
        write_addr_gray[0] = write_addr[1] ^ write_addr[0];


        // FIFO write logic (only write if FIFO is not full)
        if (write_enable_in == 1'b1 && fifo_full == 1'b0) begin
            write_ptr_next = write_addr + 1'b1;  // Increment write pointer
            write_enable_out = 1'b1;  // Enable writing
        end else begin
            write_enable_out = 1'b0;  // Disable writing
        end

        // Full Logic (when write address equals read address)
        if ((write_ptr_next[2:0] == read_addr[2:0]) && 
            (write_ptr_next[3] != read_addr[3])) begin
            full_next = 1'b1;  // FIFO is full when the write address matches the read address
        end else begin
            full_next = 1'b0;
        end
    end

endmodule









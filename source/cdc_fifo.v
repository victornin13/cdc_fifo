`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// ECE6213
// Victor Nin 
// CDC FIFO
// 
// 
//////////////////////////////////////////////////////////////////////////////////

module cdc_fifo(
    input wire write_clk,
    input wire write_rst_n,
    input wire [7:0] write_data,
    input wire write_enable,
    input wire read_clk,
    input wire read_rst_n,
    input wire read_enable,
    output wire [7:0] read_data,
    output wire fifo_full,
    output wire fifo_empty
);

    wire write_enable_out;
    wire read_enable_out;
    wire [3:0] write_addr;
    wire [3:0] read_addr;
    wire [3:0] write_addr_gray;
    wire [3:0] read_addr_gray;
    wire [3:0] write_addr_gray_sync_1;
    wire [3:0] read_addr_gray_sync_1;

    // Instantiate modules
    fifo_memory mem(
        .write_data(write_data),
        .write_addr(write_addr),
        .write_enable(write_enable),
        .write_clk(write_clk),
        .write_rst_n(write_rst_n),
        .read_addr(read_addr),
        .read_enable(read_enable),
        .read_clk(read_clk),
        .read_rst_n(read_rst_n),
        .read_data(read_data)
    );

    write_control_logic wctrl(
        .write_clk(write_clk),
        .write_rst_n(write_rst_n),
        .write_enable_in(write_enable),
        .read_addr_gray_sync(write_addr_gray_sync_1),
        .write_addr_gray(write_addr_gray),
        .write_addr(write_addr),
        .write_enable_out(write_enable_out),
        .fifo_full(fifo_full)
    );

    read_control_logic rctrl(
        .read_clk(read_clk),
        .read_rst_n(read_rst_n),
        .read_enable_in(read_enable),
        .write_addr_gray_sync(read_addr_gray_sync_1),
        .read_addr(read_addr),
        .read_addr_gray(read_addr_gray),
        .read_enable_out(read_enable_out),
        .fifo_empty(fifo_empty)
    );

    flip_flop_synch sync_write(
        .async_data(read_addr_gray),      // Asynchronous data from read domain
        .a_clk(read_clk),               // Source domain clock
        .a_rst_n(read_rst_n),           // Source domain reset
        .b_clk(write_clk),             // Destination domain clock
        .b_rst_n(write_rst_n),         // Destination domain reset
        .sync_data(write_addr_gray_sync_1)  // Synchronized data for write domain
    );

    flip_flop_synch sync_read(
        .async_data(write_addr_gray),   // Asynchronous data from write domain
        .a_clk(write_clk),              // Source domain clock
        .a_rst_n(write_rst_n),          // Source domain reset
        .b_clk(read_clk),              // Destination domain clock
        .b_rst_n(read_rst_n),          // Destination domain reset
        .sync_data(read_addr_gray_sync_1)   // Synchronized data for read domain
    );


endmodule



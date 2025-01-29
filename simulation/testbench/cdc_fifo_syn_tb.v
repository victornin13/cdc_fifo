`timescale 1ns / 1ps

// ECE 6213
// Victor Nin
// CDC FIFO Testbench
// Project 7 Back annotate

module cdc_fifo_syn_tb;

    reg write_clk;
    reg write_rst_n;
    reg write_enable;
    reg [7:0] write_data;
    reg read_clk;
    reg read_rst_n;
    reg read_enable;
    wire [7:0] read_data;
    wire fifo_full;  
    wire fifo_empty;

    // Instantiate the DUT (Device Under Test)
    cdc_fifo DUT (
        .write_clk(write_clk),
        .write_rst_n(write_rst_n),
        .write_data(write_data),
        .write_enable(write_enable),
        .read_clk(read_clk),
        .read_rst_n(read_rst_n),
        .read_enable(read_enable),
        .read_data(read_data),
        .fifo_full(fifo_full),
        .fifo_empty(fifo_empty)
    );
    

    // Generate clocks for write and read domains
    always #5 write_clk = ~write_clk;  // Write clock (100 MHz) 10ns
    always #8.5 read_clk = ~read_clk;  // Read clock (slightly offset) 17ns

    // initial block for SDF back annotation
   initial begin
      $sdf_annotate("../../synthesis/netlists/cdc_fifo_syn.sdf",cdc_fifo_syn_tb.DUT, ,"back_annotate.log");
   end
    
    // Reset and stimulus generation
    initial begin
        // Initial reset
        read_clk = 0;
        write_clk = 0;
        write_rst_n = 0;
        read_rst_n = 0;
        write_enable = 0;
        read_enable = 0;
        write_data = 8'b0;
        
        // Apply reset for a period of 20ns
        #20;
        write_rst_n = 1;
        read_rst_n = 1;
        
        // Step 1: Write data into FIFO until full (test full flag)
        #10;
        write_enable = 1;

        // Write data from 8'h01 up to 8'h08
        write_data = 8'h01;
        #10 write_data = 8'h02;
        #10 write_data = 8'h03;
        #10 write_data = 8'h04;
        #10 write_data = 8'h05;
        #10 write_data = 8'h06;
        #10 write_data = 8'h07;
        #10 write_data = 8'h08;

        // Stop writing after FIFO is full
        #10;
        write_enable = 0;

        // Check if the FIFO is full
        #10;
        if (fifo_full == 1) begin
            $display("FIFO is full as expected");
        end else begin
            $display("ERROR: FIFO should be full, but it is not");
        end

        // Step 2: Read data from FIFO until empty (test empty flag)
        #10;
        read_enable = 1;

        // Sequentially read data and check each value
        #17;
        if (read_data == 8'h01) $display("Data read correctly: 8'h01");
        else $display("ERROR: Data read out of order or incorrect, got %h instead", read_data);
        
        #17;
        if (read_data == 8'h02) $display("Data read correctly: 8'h02");
        else $display("ERROR: Data read out of order or incorrect, got %h instead", read_data);
        
        #17;
        if (read_data == 8'h03) $display("Data read correctly: 8'h03");
        else $display("ERROR: Data read out of order or incorrect, got %h instead", read_data);
        
        #17;
        if (read_data == 8'h04) $display("Data read correctly: 8'h04");
        else $display("ERROR: Data read out of order or incorrect, got %h instead", read_data);
        
        #17;
        if (read_data == 8'h05) $display("Data read correctly: 8'h05");
        else $display("ERROR: Data read out of order or incorrect, got %h instead", read_data);
        
        #17;
        if (read_data == 8'h06) $display("Data read correctly: 8'h06");
        else $display("ERROR: Data read out of order or incorrect, got %h instead", read_data);
        
        #17;
        if (read_data == 8'h07) $display("Data read correctly: 8'h07");
        else $display("ERROR: Data read out of order or incorrect, got %h instead", read_data);
        
        #17;
        if (read_data == 8'h08) $display("Data read correctly: 8'h08");
        else $display("ERROR: Data read out of order or incorrect, got %h instead", read_data);

        // Stop reading when empty signal is asserted
        #10;
        read_enable = 0;

        // Check if the FIFO is empty
        #10;
        if (fifo_empty == 1) begin
            $display("FIFO is empty as expected");
        end else begin
            $display("ERROR: FIFO should be empty, but it is not");
        end

        $finish;  // End simulation
    end

endmodule

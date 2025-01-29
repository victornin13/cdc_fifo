`timescale 1ns / 1ps

module fifo_tb(
    );
    
   reg        clk;
   reg	      rst_n;
   reg	      write_enable;
   reg	      read_enable;	    
   reg  [7:0] write_data;
   wire [7:0] read_data;
   wire	      fifo_full;  
   wire	      fifo_empty;
   
    
   fifo DUT(
	    .clk(clk),
	    .rst_n(rst_n),
	    .data_in(write_data),
	    .write_enable(write_enable),
	    .read_enable(read_enable),	    
	    .data_out(read_data),
	    .full(fifo_full),
	    .empty(fifo_empty)
	    );
    
    always #5 clk = ~clk;
    
    initial begin
       // initial values
       clk           = 0;
       rst_n         = 0;       
       write_enable   = 0;
       read_enable   = 0;
       write_data    = 0;


       // write tests       
       #23
	 $display ( " FIFO_data = %h, FIFO full = %b, FIFO empty = %b, Time %d" , read_data, fifo_full, fifo_empty, $time);
       rst_n = 1;
       #10
	 $display ( " FIFO_data = %h, FIFO full = %b, FIFO empty = %b, Time %d" , read_data, fifo_full, fifo_empty, $time);
       #10
	 write_enable = 1;
       write_data = 8'h01;
       #10
	 $display ( " FIFO_data = %h, FIFO full = %b, FIFO empty = %b, Time %d" , read_data, fifo_full, fifo_empty, $time);
	 write_enable = 1;
       write_data = 8'h02;
       #10
	 write_enable = 1;
       write_data = 8'h03;
       #10
	 $display ( " FIFO_data = %h, FIFO full = %b, FIFO empty = %b, Time %d" , read_data, fifo_full, fifo_empty, $time);
       write_enable = 0;
       write_data = 8'h04;
       #10
	 $display ( " FIFO_data = %h, FIFO full = %b, FIFO empty = %b, Time %d" , read_data, fifo_full, fifo_empty, $time);
	 write_enable = 1;
       #10
	 $display ( " FIFO_data = %h, FIFO full = %b, FIFO empty = %b, Time %d" , read_data, fifo_full, fifo_empty, $time);
	 write_enable = 0;

       // read tests
       #10
	 read_enable = 1;
       #10
	 $display ( " FIFO_data = %h, FIFO full = %b, FIFO empty = %b, Time %d" , read_data, fifo_full, fifo_empty, $time);
	 read_enable = 1;
       #10
	 $display ( " FIFO_data = %h, FIFO full = %b, FIFO empty = %b, Time %d" , read_data, fifo_full, fifo_empty, $time);
	 read_enable = 1;
       #10
	 $display ( " FIFO_data = %h, FIFO full = %b, FIFO empty = %b, Time %d" , read_data, fifo_full, fifo_empty, $time);
	 read_enable = 1;
       #10
	 $display ( " FIFO_data = %h, FIFO full = %b, FIFO empty = %b, Time %d" , read_data, fifo_full, fifo_empty, $time);
	 read_enable = 0;
 	 
     
       
       #30
	 $finish;
    end
    
endmodule

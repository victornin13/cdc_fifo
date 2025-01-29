`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// ECE6213
// Matthew LaRue 
// FIFO
// 
// 
//////////////////////////////////////////////////////////////////////////////////


module fifo(
	    input wire	     clk,
	    input wire	     rst_n,
	    input wire [7:0] data_in,
	    input wire	     write_enable,
	    input wire	     read_enable,
	    output reg [7:0] data_out,
	    output reg	     full,
	    output reg	     empty
    );

   // internal registers
   reg [7:0]		     fifo_data_current[0:3];
   reg [2:0]		     write_pointer;
   reg [2:0]		     read_pointer;

   // internal combinational variables
   reg [7:0]		     fifo_data_next[0:3];
   reg [2:0]		     write_pointer_next;
   reg [2:0]		     read_pointer_next;
   reg [7:0]		     data_out_next;
   reg			     full_next;
   reg			     empty_next;

   // loop variables
   integer		     i;
   integer		     j;

   // sequential logic, active-low asynch reset
   always @(posedge clk or negedge rst_n)
     begin
	if (rst_n == 1'b0) begin
	   // reset all registers to default values
	   write_pointer <= 3'b000;
	   read_pointer  <= 3'b000;
	   data_out      <= 8'h00;
	   full          <= 1'b0;
	   empty         <= 1'b1;
	   for(i=0;i<=3;i=i+1) begin
	      fifo_data_current[i] <= 8'h00;
	   end
	end else begin
	   write_pointer <= write_pointer_next;
	   read_pointer  <= read_pointer_next;
	   data_out      <= data_out_next;
	   full          <= full_next;
	   empty         <= empty_next;
	   for(i=0;i<=3;i=i+1) begin
	      fifo_data_current[i] <= fifo_data_next[i];
	   end
	end // else: !if(rst_n == 1'b0)
     end // always @ (posedge clk or negedge rst_n)

   // combinational logic
   always @(*)
     begin
	// assign default values to all comb variables
	for(j=0;j<=3;j=j+1) begin
	      fifo_data_next[j] = fifo_data_current[j];
	end
	write_pointer_next = write_pointer;
	read_pointer_next  = read_pointer;
        data_out_next      = data_out;

	// fifo write logic
	if ( (write_enable == 1'b1) & (full == 1'b0) ) begin
	   fifo_data_next[write_pointer[1:0]] = data_in;
	   write_pointer_next                 = write_pointer + 1'b1;
	end

	// fifo read logic
	if ( (read_enable == 1'b1) & (empty == 1'b0) ) begin
	   data_out_next    = fifo_data_current[read_pointer[1:0]];
	   read_pointer_next = read_pointer + 1'b1;
	end


	// fifo empty logic
	if ( write_pointer_next == read_pointer_next )
	  empty_next = 1'b1;
	else
	  empty_next = 1'b0;

	// fifo full logic
	if ( (write_pointer_next[1:0] == read_pointer_next[1:0]) && (write_pointer_next[2] !=  read_pointer_next[2]) )
	  full_next = 1'b1;
	else
	  full_next = 1'b0;
	
     end 
  

endmodule


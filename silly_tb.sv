`timescale 1ns / 1ps
module tb ();

   logic    a;
   logic 	b;
   logic 	c;
   logic 	y;
   logic    clk;   
   
  // instantiate device under test
   silly dut (a, b, c, y);

   // 2 ns clock
   initial 
     begin	
		clk = 1'b1;
	forever #10 clk = ~clk;
     end


   initial
     begin
    
	#0   a = 0;	
	#0   b = 0;	
	#0   c = 0;

	#20  a = 0;	
	#0   b = 0;	
	#0   c = 1;

	#20  a = 0;	
	#0   b = 1;
	#0   c = 0;	

	#20  a = 1;	
	#0   b = 0;	
	#0   c = 0;	

	#20  a = 1;	
	#0   b = 1;	
	#0   c = 0;	

	#20  a = 0;	
	#0   b = 1;	
	#0   c = 1;	

	#20  a = 1;	
	#0   b = 0;	
	#0   c = 1;	

	#20  a = 1;	
	#0   b = 1;	
	#0   c = 1;	
	
	
     end

   
endmodule

module gc2bin(gc,
	      bin
	      );

   // Top level block parameters
   parameter DATA_WIDTH = 4; // size of the gray code data

   // Input
   input wire [DATA_WIDTH-1:0] gc;
   genvar		       i;
   
   // Output
   output [DATA_WIDTH-1:0]     bin;

   // Generate according to implementation
   //generate 
   //   for (i=0; i<DATA_WIDTH; i=i+1)
	//begin : gc2bin
	   //assign bin[i] = ^ gc[DATA_WIDTH-1:i];
	//	assign bin[i] = gc[i];
	//end
   //endgenerate
   assign bin[3]=gc[3];
	xor(bin[2],bin[3],gc[2]);
	xor(bin[1],bin[2],gc[1]);
	xor(bin[0],bin[1],gc[0]);
	
endmodule


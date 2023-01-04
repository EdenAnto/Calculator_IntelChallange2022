module Average(input[5:0] 	num1,
					input[5:0] 	num2,
					output[6:0] QAverage,
					output 		RAverage);
wire[6:0] sum;					
Full_Adder_Sub adder(.a(num1),.b(num2),.op(0),.s(sum[5:0]),.cout(sum[6]));
assign RAverage=sum[0];

assign QAverage=sum>>1;				
endmodule

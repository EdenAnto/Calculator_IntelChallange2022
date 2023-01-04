module componentConnect(input[5:0] 	num1,
								input[5:0] 	num2,
								output[9:0] answer,
								output[9:0] residue,
								output[9:0] ans1,
								output[9:0] ans2);
						
							  
							  
wire cout_adder1;


Multi2    m188(.a(num1),.b(num2),.s(ans1));
Full_Adder_Sub adder1(.a(num1),.b(num2),.op(0),.s(ans2),.cout(cout_adder1));
Divider6 d1(.A(ans1),.B(ans2),.Q(answer),.R(residue));	


endmodule
 
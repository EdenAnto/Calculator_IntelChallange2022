module IntegralX(input[4:0] num1,
					  input[4:0] num2,
					  output[9:0] ComPart,
					  output[1:0] Residue);
					 
					  
wire[9:0] Q1,Q2,sub;
wire tmp;

Multi2    m1(.a(num1),.b(num1),.s(Q1));
Multi2    m2(.a(num2),.b(num2),.s(Q2));

Full_Adder_Sub subber(.a(Q1),.b(Q2),.op(1),.s(sub),.cout(tmp));
assign Residue=sub[0];
assign ComPart=sub>>1;				
					  
					  
endmodule

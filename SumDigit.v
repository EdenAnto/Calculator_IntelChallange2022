module SumDigit(input[5:0] num,
					 output[4:0] answer);


wire[3:0] tens,digit;
Divider6 d1(.A(num),.B(10),.Q(tens),.R(digit));
Full_Adder_Sub adder1(.a(tens),.b(digit),.op(0),.s(answer));

endmodule					  
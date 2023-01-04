module TriangleArea(input[4:0] num1,
						  input[4:0] num2,
						  output[9:0] QArea,
						  output[1:0] RArea);
						  

wire R;
wire [4:0] Q;
wire [9:0] ans1;
wire [2:0] NewR,ans2;
wire [9:0]ans3;

wire [9:0]ans4;

assign R=num1[0];
assign Q=num1>>1;

Multi2    m1(.a(num2),.b(Q),.s(ans1));
Multi2    m3(.a(R),.b(num2),.s(ans3));

assign ans2=ans3[0];
assign ans4=ans3>>1;

Full_Adder_Sub adder(.a(ans1),.b(ans4),.op(0),.s(QArea[8:0]),.cout(QArea[9]));
assign  RArea= ans2;


endmodule

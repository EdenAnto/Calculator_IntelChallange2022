module Full_Adder_Sub(a,b,op,s,cout);
input[9:0]	a;
input[9:0]	b;
input			op;
output[9:0]	s;
output		cout;

wire xor1,xor2,xor3,xor4,xor5,xor6,xor7,xor8,xor9,xor10;
wire cout1,cout2,cout3,cout4,cout5,cout6,cout7,cout8,cout9,cout10;

assign xor1 = b[0]^op;
assign xor2 = b[1]^op;
assign xor3 = b[2]^op;
assign xor4 = b[3]^op;
assign xor5 = b[4]^op;
assign xor6 = b[5]^op;
assign xor7 = b[6]^op;
assign xor8 = b[7]^op;
assign xor9 = b[8]^op;
assign xor10 = b[9]^op;


Full_Adder_1Bit FA1(.a(a[0]),.b(xor1),.cin(op),.s(s[0]),.cout(cout1));

Full_Adder_1Bit FA2(.a(a[1]),.b(xor2),.cin(cout1),.s(s[1]),.cout(cout2));

Full_Adder_1Bit FA3(.a(a[2]),.b(xor3),.cin(cout2),.s(s[2]),.cout(cout3));

Full_Adder_1Bit FA4(.a(a[3]),.b(xor4),.cin(cout3),.s(s[3]),.cout(cout4));

Full_Adder_1Bit FA5(.a(a[4]),.b(xor5),.cin(cout4),.s(s[4]),.cout(cout5));


Full_Adder_1Bit FA6(.a(a[5]),.b(xor6),.cin(cout5),.s(s[5]),.cout(cout6));

Full_Adder_1Bit FA7(.a(a[6]),.b(xor7),.cin(cout6),.s(s[6]),.cout(cout7));

Full_Adder_1Bit FA8(.a(a[7]),.b(xor8),.cin(cout7),.s(s[7]),.cout(cout8));

Full_Adder_1Bit FA9(.a(a[8]),.b(xor9),.cin(cout8),.s(s[8]),.cout(cout9));

Full_Adder_1Bit FA10(.a(a[9]),.b(xor10),.cin(cout9),.s(s[9]),.cout(cout10));

assign cout = cout10;



endmodule 
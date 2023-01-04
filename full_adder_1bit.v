module Full_Adder_1Bit(a,b,cin,s,cout);
input a,b,cin;
output s,cout;

wire HA1_sum , HA1_cout;
wire HA2_sum , HA2_cout;

Half_Adder HA1(.a(a),.b(b),.s(HA1_sum),.cout(HA1_cout));

Half_Adder HA2(.a(cin),.b(HA1_sum),.s(HA2_sum),.cout(HA2_cout));

assign s = HA2_sum;

assign cout = HA1_cout|HA2_cout;


endmodule 
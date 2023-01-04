module Fs_1Bit(input A,
					input B,
					input Cin,
					output Cout,
					output Y);
assign Y=(~A)&(~B)&Cin|A&(~B)&(~Cin)|(~A)&B&(~Cin)|A&B&Cin;
assign Cout= (~A)&Cin|(~A)&B|B&Cin;
endmodule 


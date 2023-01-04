module NumTo7Segment(num,ans100,ans10,ans1);
input[9:0] num;
output [3:0] ans100,ans10,ans1;



assign ans100=num/100;
assign ans10=(num/10)%10;
assign ans1=(num%100)%10;
 

endmodule

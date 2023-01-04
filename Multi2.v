module Multi2(a,b,s);
input [5:0]a;
input [5:0]b;
output [10:0]s;



wire [10:0] line1,line2,line3,line4,line5,line6;
wire tmp1,tmp2,tmp3,tmp4;
wire cout;
wire [9:0] add1,add2,add3,add4;

assign line1[0]=a[0]&b[0];
assign line1[1]=a[1]&b[0];
assign line1[2]=a[2]&b[0];
assign line1[3]=a[3]&b[0];
assign line1[4]=a[4]&b[0];
assign line1[5]=a[5]&b[0];


assign line2[0]=0;
assign line2[1]=a[0]&b[1];
assign line2[2]=a[1]&b[1];
assign line2[3]=a[2]&b[1];
assign line2[4]=a[3]&b[1];
assign line2[5]=a[4]&b[1];
assign line2[6]=a[5]&b[1];

assign line3[0]=0;
assign line3[1]=0;
assign line3[2]=a[0]&b[2];
assign line3[3]=a[1]&b[2];
assign line3[4]=a[2]&b[2];
assign line3[5]=a[3]&b[2];
assign line3[6]=a[4]&b[2];
assign line3[7]=a[5]&b[2];

assign line4[0]=0;
assign line4[1]=0;
assign line4[2]=0;
assign line4[3]=a[0]&b[3];
assign line4[4]=a[1]&b[3];
assign line4[5]=a[2]&b[3];
assign line4[6]=a[3]&b[3];
assign line4[7]=a[4]&b[3];
assign line4[8]=a[5]&b[3];

assign line5[0]=0;
assign line5[1]=0;
assign line5[2]=0;
assign line5[3]=0;
assign line5[4]=a[0]&b[4];
assign line5[5]=a[1]&b[4];
assign line5[6]=a[2]&b[4];
assign line5[7]=a[3]&b[4];
assign line5[8]=a[4]&b[4];
assign line5[9]=a[5]&b[4];

assign line6[0]=0;
assign line6[1]=0;
assign line6[2]=0;
assign line6[3]=0;
assign line6[4]=0;
assign line6[5]=a[0]&b[5];
assign line6[6]=a[1]&b[5];
assign line6[7]=a[2]&b[5];
assign line6[8]=a[3]&b[5];
assign line6[9]=a[4]&b[5];
assign line6[10]=a[5]&b[5];

Full_Adder_Sub F1(line1,line2,0,add1,tmp1);
Full_Adder_Sub F2(add1,line3,0,add2,tmp2);
Full_Adder_Sub F3(add2,line4,0,add3,tmp3);
Full_Adder_Sub F4(add3,line5,0,add4,tmp4);
Full_Adder_Sub F5(add4,line6,0,s,cout);
 

endmodule 
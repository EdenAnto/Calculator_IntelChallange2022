module Divider6(input[5:0] A,
			   input[5:0] B,
			   output[5:0] R,
			   output[5:0] Q);
			    
wire outF1,outF2,outF3,outF4,outF5,outF6,outF7,outF8,outF9,outF10,outF11,outF12,outF13,outF14,outF15,outF16,outF17,outF18;
wire outF19,outF20,outF21,outF22,outF23,outF24,outF25,outF26,outF27,outF28,outF29,outF30,outF31,outF32,outF33,outF34,outF35,outF36;
wire CoutF1,CoutF2,CoutF3,CoutF4,CoutF5,CoutF6,CoutF7,CoutF8,CoutF10,CoutF11,CoutF12,CoutF13,CoutF14,CoutF15,CoutF16,CoutF17,CoutF18;
wire CoutF19,CoutF20,CoutF21,CoutF22,CoutF23,CoutF24,CoutF25,CoutF26,CoutF27,CoutF28,CoutF29,CoutF30,CoutF31,CoutF32,CoutF33,CoutF34,CoutF35,CoutF36;
wire yMux1,yMux2,yMux3,yMux4,yMux5,yMux6,yMux7,yMux8,yMux9,yMux10,yMux11,yMux12,yMux13,yMux14,yMux15,yMux16;
wire yMux17,yMux18,yMux19,yMux20,yMux21,yMux22,yMux23,yMux24,yMux25,yMux26,yMux27,yMux28,yMux29,yMux30,yMux31;
//Row1 FS
//		   A		B	 	Cin		   Cout	      Y
Fs_1Bit F1(A[5],	B[0],	 0      ,	CoutF1,	outF1);	
Fs_1Bit F2(0   ,	B[1],	 CoutF1 ,	CoutF2,	outF2);	
Fs_1Bit F3(0   ,	B[2],	 CoutF2 ,	CoutF3,	outF3);	
Fs_1Bit F4(0   ,	B[3],	 CoutF3 ,	CoutF4,	outF4);	
Fs_1Bit F5(0   ,	B[4],	 CoutF4 ,	CoutF5,	outF5);	
Fs_1Bit F6(0   ,	B[5],	 CoutF5 ,	CoutF6,	outF6);
	
//Row1 Mux
//			0		1	 Sel	 Y
Mux2_1 Mux1(outF1,A[5] ,CoutF6,yMux1);		    
Mux2_1 Mux2(outF2,0	  ,CoutF6,yMux2);		    
Mux2_1 Mux3(outF3,0	  ,CoutF6,yMux3);		    
Mux2_1 Mux4(outF4,0	  ,CoutF6,yMux4);	
Mux2_1 Mux5(outF5,0	  ,CoutF6,yMux5);	

//Row2 FS
//		   A					B	 	Cin		   Cout	      Y
Fs_1Bit F7(A[4]	   ,	B[0],	 0      ,	CoutF7,	outF7);	
Fs_1Bit F8(yMux1     ,	B[1],	 CoutF7 ,	CoutF8,	outF8);	
Fs_1Bit F9(yMux2     ,	B[2],	 CoutF8 ,	CoutF9,	outF9);	
Fs_1Bit F10(yMux3    ,	B[3],	 CoutF9 ,	CoutF10,	outF10);	
Fs_1Bit F11(yMux4    ,	B[4],	 CoutF10 ,	CoutF11,	outF11);	
Fs_1Bit F12(yMux5    ,	B[5],	 CoutF11 ,	CoutF12,	outF12);	

//Row2 Mux
//					0		 1	   		Sel	    Y
Mux2_1 Mux6(outF7		,A[4]	  	  ,CoutF12,yMux6);		    
Mux2_1 Mux7(outF8		,yMux1	  ,CoutF12,yMux7);		    
Mux2_1 Mux8(outF9		,yMux2	  ,CoutF12,yMux8);	
Mux2_1 Mux9(outF10	,yMux3	  ,CoutF12,yMux9);
Mux2_1 Mux10(outF11	,yMux4	  ,CoutF12,yMux10);


//Row3 FS
//		  		 A					B	 	Cin	 	Cout	       Y
Fs_1Bit F13(A[3]	  ,	B[0],	 0      ,	CoutF13,	outF13);	
Fs_1Bit F14(yMux6   ,	B[1],	 CoutF13 ,	CoutF14,	outF14);	
Fs_1Bit F15(yMux7   ,	B[2],	 CoutF14 ,	CoutF15,	outF15);	
Fs_1Bit F16(yMux8   ,	B[3],	 CoutF15 ,	CoutF16,	outF16);	
Fs_1Bit F17(yMux9   ,	B[4],	 CoutF16 ,	CoutF17,	outF17);	
Fs_1Bit F18(yMux10  ,	B[5],	 CoutF17 ,	CoutF18,	outF18);	

//Row3 Mux
//			0		 1	    Sel	    Y
Mux2_1 Mux11(outF13 	,A[3]	  ,CoutF18,yMux11);		    
Mux2_1 Mux12(outF14	,yMux6  ,CoutF18,yMux12);		    
Mux2_1 Mux13(outF15	,yMux7  ,CoutF18,yMux13);
Mux2_1 Mux14(outF16  ,yMux8  ,CoutF18,yMux14);
Mux2_1 Mux15(outF17  ,yMux9  ,CoutF18,yMux15);

//Row4 FS
//		   		A			B	 	Cin		   Cout	      Y
Fs_1Bit F19(A[2]     ,	B[0],	 0       ,	CoutF19,outF19);	
Fs_1Bit F20(yMux11   ,	B[1],	 CoutF19 ,	CoutF20,outF20);	
Fs_1Bit F21(yMux12   ,	B[2],	 CoutF20 ,	CoutF21,outF21);	
Fs_1Bit F22(yMux13   ,	B[3],	 CoutF21 ,	CoutF22,outF22);	
Fs_1Bit F23(yMux14   ,	B[4],	 CoutF22 ,	CoutF23,outF23);	
Fs_1Bit F24(yMux15   ,	B[5],	 CoutF23 ,	CoutF24,outF24);	

//Row4 Mux
//						0		 1	   Sel	    Y
Mux2_1 Mux16(outF19	,A[2]		,CoutF24,yMux16);		    
Mux2_1 Mux17(outF20	,yMux11	,CoutF24,yMux17);		    
Mux2_1 Mux18(outF21	,yMux12	,CoutF24,yMux18);
Mux2_1 Mux19(outF22	,yMux13	,CoutF24,yMux19);
Mux2_1 Mux20(outF23	,yMux14	,CoutF24,yMux20);

//Row5 FS
//				   A			B	 	Cin		   Cout	      Y
Fs_1Bit F25(A[1]    ,	B[0],	 0       ,	CoutF25 ,outF25);	
Fs_1Bit F26(yMux16   ,	B[1],	 CoutF25 ,	CoutF26 ,outF26);	
Fs_1Bit F27(yMux17   ,	B[2],	 CoutF26 ,	CoutF27 ,outF27);	
Fs_1Bit F28(yMux18   ,	B[3],	 CoutF27 ,	CoutF28 ,outF28);	
Fs_1Bit F29(yMux19   ,	B[4],	 CoutF28 ,	CoutF29 ,outF29);
Fs_1Bit F30(yMux20   ,	B[5],	 CoutF29 ,	CoutF30 ,outF30);


//Row5 Mux
//					0		 1	   Sel	    Y
Mux2_1 Mux21(outF25,A[1]	,CoutF30,yMux21);		    
Mux2_1 Mux22(outF26,yMux16	,CoutF30,yMux22);		    
Mux2_1 Mux23(outF27,yMux17	,CoutF30,yMux23);
Mux2_1 Mux24(outF28,yMux18	,CoutF30,yMux24);
Mux2_1 Mux25(outF29,yMux19 ,CoutF30,yMux25);

//Row6 FS
//				   A			B	 	Cin		   Cout	      Y
Fs_1Bit F31(A[0]    ,	B[0],	 0       ,	CoutF31 ,outF31);	
Fs_1Bit F32(yMux21   ,	B[1],	 CoutF31 ,	CoutF32 ,outF32);	
Fs_1Bit F33(yMux22   ,	B[2],	 CoutF32 ,	CoutF33 ,outF33);	
Fs_1Bit F34(yMux23   ,	B[3],	 CoutF33 ,	CoutF34 ,outF34);	
Fs_1Bit F35(yMux24   ,	B[4],	 CoutF34 ,	CoutF35 ,outF35);
Fs_1Bit F36(yMux25   ,	B[5],	 CoutF35 ,	CoutF36 ,outF36);


//Row6 Mux
//					0		 1	   Sel	    Y
Mux2_1 Mux26(outF31,A[0]	,CoutF36,yMux26);		    
Mux2_1 Mux27(outF32,yMux21	,CoutF36,yMux27);		    
Mux2_1 Mux28(outF33,yMux22	,CoutF36,yMux28);
Mux2_1 Mux29(outF34,yMux23	,CoutF36,yMux29);
Mux2_1 Mux30(outF35,yMux24 ,CoutF36,yMux30);
Mux2_1 Mux31(outF36,yMux25 ,CoutF36,yMux31);



assign Q[5]=~CoutF6;
assign Q[4]=~CoutF12;	    
assign Q[3]=~CoutF18;
assign Q[2]=~CoutF24;
assign Q[1]=~CoutF30;
assign Q[0]=~CoutF36;

assign R[5]=yMux31;
assign R[4]=yMux30;
assign R[3]=yMux29;
assign R[2]=yMux28;
assign R[1]=yMux27;
assign R[0]=yMux26;

		    
endmodule 
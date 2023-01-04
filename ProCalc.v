module ProCalc(resetN,number,op,flag,A,B);
input resetN;
input [5:0]number; //SW 5:0
input op; //KEY 0
output reg[5:0] A,B;
output reg flag;


reg [5:0] a,b;



//Define variables
reg [1:0] present_state=0;
reg [1:0] next_state=1;

//Define the 4 states of the machine
parameter num1_state=2'b00;
parameter num2_state=2'b01;
parameter output_state=2'b10;


always @ (posedge op or negedge resetN)
begin
if (~resetN)
	present_state<=num1_state;
else
present_state<=next_state;
end


always  
begin
flag=0;
next_state=present_state;
case(present_state)

num1_state:
	begin
		if (~op)begin
		a<=number;
		next_state<=num2_state;
		A=0;
		end
	end
	
num2_state:
	begin
		if (~op)begin
		b<=number;
		next_state<=output_state;
		B=0;
		end
	end
	
output_state:
	begin // Numbers are ready
		if (~op)begin
		A = a;
		B = b;
		flag=1;
		end
	end
endcase

end

endmodule


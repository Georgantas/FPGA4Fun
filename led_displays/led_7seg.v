
module led_7seg(seg,dig,clock);
	input clock;
	output [7:0] seg;
	output [3:0] dig;
	reg [7:0] seg;
	reg [3:0] dig;
	reg [3:0] disp_dat;
	reg [36:0] count;
	
	always @ (posedge clock )
	begin 
		count = count + 1'b1;
		dig= 4'b1110;
	end
	
	always @ (count[24])
	begin
		disp_dat = {count[28:25]};
	end
	
	always @ (disp_dat)
	begin
		case (disp_dat)
		4'h0 : seg = 8'hc0;
		4'h1 : seg = 8'hf9;
		4'h2 : seg = 8'ha4;
		4'h3 : seg = 8'hb0;
		4'h4 : seg = 8'h99;
		4'h5 : seg = 8'h92;
		4'h6 : seg = 8'h82;
		4'h7 : seg = 8'hf8;
		4'h8 : seg = 8'h80;
		4'h9 : seg = 8'h90;
		4'ha : seg = 8'h88;
		4'hb : seg = 8'h83;
		4'hc : seg = 8'hc6;
		4'hd : seg = 8'ha1;
		4'he : seg = 8'h86;
		4'hf : seg = 8'h8e;
		endcase
	end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:08:25 01/12/2019 
// Design Name: 
// Module Name:    ls_usb_send 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

// Простейший USB передатчик написанный на verilog

module ls_usb_send(
	input wire clk,					// Частота должна быть 5 МГц
	input wire reset,
	input wire [7:0] sbyte,
	input wire start_pkt,
	input wire last_pkt_byte,
	
	output reg sbit,
	output reg dp,
	output reg dm,
	
	output reg bus_enable,
	output reg show_next,
	output wire six_ones
    );

reg [2:0] ones_cnt;
reg [2:0] bit_count;
assign six_ones = (ones_cnt == 3'h6);

wire bit_count_eq7;
assign bit_count_eq7 = (bit_count == 3'h7);

reg prev_sbit;
reg my_eop;

reg [7:0] send_reg;
reg last;
reg [5:0] clk_counter;
reg strobe;
reg bus_ena;
reg [2:0] bus_ena_prev;

always @ *
begin
	sbit = prev_sbit ^ (send_reg[0] == 1'b0) ^ (six_ones & send_reg[0]);
	dm = sbit & my_eop;
	dp = (!sbit) & my_eop;
	show_next = bit_count_eq7 & strobe & (!six_ones);
	bus_enable = bus_ena | bus_ena_prev[2];
	my_eop = !(bus_ena ^ (bus_ena | bus_ena_prev[1]));
end

always @ (posedge clk or posedge start_pkt)
begin
	if (start_pkt)
	begin
		strobe <= 1'b0;
		clk_counter <= 1'b0;
	end
	else
		{ strobe, clk_counter } <= clk_counter + 6'h13;
end

always @ (posedge clk)
begin
	if (strobe)
		bus_ena_prev <= {bus_ena_prev[1:0], bus_ena};
end

always @ (posedge clk or posedge reset)
begin
	if (reset)
	begin
		prev_sbit <= 1'b0;
		bit_count <= 3'h7;
		send_reg <= 1'b0;
		bus_ena <= 1'b0;
		last <= 1'b0;
		ones_cnt <= 1'b0;
	end
	else
	begin
		if (strobe & bus_ena)
		begin
			if (sbit == prev_sbit)
				ones_cnt <= ones_cnt + 1'b1;
			else
				ones_cnt <= 1'b0;
		end
		
		if ((bit_count_eq7 & last & strobe) | start_pkt)
			bus_ena <= !bus_ena;
		
		if (strobe & bus_ena)
			prev_sbit <= sbit;
			
		if (strobe & bus_ena & bit_count_eq7)
			last <= last_pkt_byte;
			
		if (strobe & bus_ena & (!six_ones))
		begin
			bit_count <= bit_count + 1'b1;
			if (bit_count_eq7)
				send_reg <= sbyte;
			else
				send_reg <= {1'b0, send_reg [7:1]};
		end
	end
end

endmodule

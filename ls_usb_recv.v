`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:47:21 01/12/2019 
// Design Name: 
// Module Name:    ls_usb_recv 
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
module ls_usb_recv(
	input wire clk,
	input wire dp,
	input wire dm,
	
	output wire EOP,
	output reg [7:0] rdata,
	output reg rdata_ready,
	output reg [3:0]rbyte_cnt
    );

	reg [5:0] clk_counter;
	reg strobe;
	
	reg [2:0] receiver_cnt;
	reg last_fixed_dp;
	reg receiver_enabled;
	
	reg [1:0] dp_input;
	reg [1:0] dm_input;
	
	always @ (posedge clk)
	begin
		dp_input <= { dp_input[0], dp };
		dm_input <= { dm_input[0], dm };
	end
	
	assign EOP = !(dp_input[0] | dp_input[1] | dm_input[0] | dm_input[1]);
	
	wire dp_change;
	assign dp_change = dp_input[0] ^ dp_input[1];
	
	wire do_remove_zero;
	assign do_remove_zero = (rdata[7:2] == 6'b111111) & (last_fixed_dp != dp_input[1]) & (!removed_zero);
	
	reg removed_zero;
	
	always @ (posedge clk or posedge EOP)
	begin
		if (EOP)
		begin
			receiver_cnt <= 1'b0;
			rbyte_cnt <= 1'b0;
			last_fixed_dp <= 1'b1;
			rdata <= 1'b0;
			receiver_enabled <= 1'b0;
			rdata_ready <= 1'b0;
			clk_counter <= 1'b0;
			strobe <= 1'b0;
			removed_zero <= 1'b0;
		end
		else
		begin
			if (dp_change)
			begin
				clk_counter <= 0;
				strobe <= 1'b1;
			end
			else
			begin
				{ strobe, clk_counter } <= clk_counter + 6'h13;
			end
		
			if (dp_input[0])
			begin
				receiver_enabled <= 1'b1;
			end
			
			if (strobe & receiver_enabled & (!do_remove_zero))
			begin
				rdata <= { (last_fixed_dp == dp_input[1]), rdata[7:1] };
				receiver_cnt <= receiver_cnt + 1'b1;
			end
			
			rdata_ready <= (receiver_cnt == 3'h7) & (strobe & receiver_enabled & (!do_remove_zero));
			
			if (strobe & receiver_enabled)
			begin
				removed_zero <= do_remove_zero;
				last_fixed_dp <= dp_input[1];
			end
			
			if (rdata_ready)
				rbyte_cnt <= rbyte_cnt + 1'b1;
		end
	end
	
endmodule

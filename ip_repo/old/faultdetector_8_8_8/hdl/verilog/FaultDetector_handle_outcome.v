// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module FaultDetector_handle_outcome (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        errorInTask_address0,
        errorInTask_ce0,
        errorInTask_we0,
        errorInTask_d0,
        lastTestDescriptor_address0,
        lastTestDescriptor_ce0,
        lastTestDescriptor_we0,
        lastTestDescriptor_d0,
        failedTask,
        failedTask_ap_vld,
        failedTask_ap_ack,
        destStream_dout,
        destStream_num_data_valid,
        destStream_fifo_cap,
        destStream_empty_n,
        destStream_read
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [2:0] errorInTask_address0;
output   errorInTask_ce0;
output   errorInTask_we0;
output  [7:0] errorInTask_d0;
output  [2:0] lastTestDescriptor_address0;
output   lastTestDescriptor_ce0;
output  [39:0] lastTestDescriptor_we0;
output  [319:0] lastTestDescriptor_d0;
output  [15:0] failedTask;
output   failedTask_ap_vld;
input   failedTask_ap_ack;
input  [298:0] destStream_dout;
input  [1:0] destStream_num_data_valid;
input  [1:0] destStream_fifo_cap;
input   destStream_empty_n;
output   destStream_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg errorInTask_ce0;
reg errorInTask_we0;
reg lastTestDescriptor_ce0;
reg[39:0] lastTestDescriptor_we0;
reg destStream_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    failedTask_blk_n;
wire    ap_CS_fsm_state6;
wire   [0:0] exitcond12_fu_507_p2;
wire   [0:0] icmp_ln1019_fu_519_p2;
wire    ap_CS_fsm_state8;
reg    destStream_blk_n;
wire    ap_CS_fsm_state2;
reg   [298:0] destStream_read_reg_689;
wire   [1:0] in_command_V_fu_354_p1;
reg   [1:0] in_command_V_reg_695;
reg   [7:0] in_checkId_V_reg_700;
reg   [7:0] in_executionId_V_reg_705;
reg   [7:0] in_taskId_V_reg_710;
reg   [31:0] trunc_ln235_8_reg_716;
reg   [31:0] trunc_ln235_9_reg_721;
reg   [31:0] trunc_ln235_s_reg_726;
reg   [31:0] trunc_ln235_1_reg_731;
reg   [31:0] trunc_ln235_2_reg_736;
reg   [31:0] trunc_ln235_3_reg_741;
wire   [63:0] loop_index11_cast_fu_502_p1;
reg   [63:0] loop_index11_cast_reg_746;
wire   [3:0] empty_fu_513_p2;
reg   [3:0] empty_reg_754;
reg    ap_predicate_op85_write_state6;
wire    regslice_forward_failedTask_U_apdone_blk;
reg    ap_block_state6;
reg    ap_block_state6_io;
reg   [0:0] tmp_reg_767;
reg   [23:0] tmp_5_reg_772;
wire   [31:0] outcome_AOV_q1;
reg   [31:0] outcome_AOV_load_reg_782;
wire   [31:0] outcome_AOV_q0;
reg   [31:0] outcome_AOV_load_1_reg_787;
reg   [31:0] outcome_AOV_load_2_reg_792;
wire    ap_CS_fsm_state9;
reg   [31:0] outcome_AOV_load_3_reg_797;
reg   [31:0] outcome_AOV_load_4_reg_802;
wire    ap_CS_fsm_state10;
reg   [31:0] outcome_AOV_load_5_reg_807;
wire    ap_CS_fsm_state11;
reg   [2:0] in_AOV_address0;
reg    in_AOV_ce0;
reg    in_AOV_we0;
reg   [31:0] in_AOV_d0;
wire   [31:0] in_AOV_q0;
reg   [2:0] in_AOV_address1;
reg    in_AOV_ce1;
reg    in_AOV_we1;
reg   [31:0] in_AOV_d1;
reg   [2:0] outcome_AOV_address0;
reg    outcome_AOV_ce0;
reg    outcome_AOV_we0;
reg   [2:0] outcome_AOV_address1;
reg    outcome_AOV_ce1;
reg   [3:0] loop_index11_reg_343;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln541_fu_551_p1;
wire   [31:0] bitcast_ln235_fu_468_p1;
wire   [31:0] bitcast_ln235_1_fu_473_p1;
wire    ap_CS_fsm_state3;
wire   [31:0] bitcast_ln235_2_fu_478_p1;
wire   [31:0] bitcast_ln235_3_fu_482_p1;
wire    ap_CS_fsm_state4;
wire   [31:0] bitcast_ln235_4_fu_486_p1;
wire   [31:0] bitcast_ln235_5_fu_490_p1;
wire   [31:0] bitcast_ln235_6_fu_494_p1;
wire   [31:0] bitcast_ln235_7_fu_498_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] trunc_ln235_6_fu_388_p4;
wire   [31:0] trunc_ln235_7_fu_398_p4;
wire   [31:0] empty_65_fu_578_p1;
wire   [31:0] empty_64_fu_574_p1;
wire   [31:0] empty_63_fu_571_p1;
wire   [31:0] empty_62_fu_568_p1;
wire   [31:0] empty_61_fu_565_p1;
wire   [31:0] empty_60_fu_562_p1;
wire   [31:0] empty_59_fu_559_p1;
wire   [31:0] empty_58_fu_556_p1;
reg   [11:0] ap_NS_fsm;
reg    ap_block_state1;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire   [15:0] failedTask_int_regslice;
reg    failedTask_ap_vld_int_regslice;
wire    failedTask_ap_ack_int_regslice;
wire    regslice_forward_failedTask_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 12'd1;
end

FaultDetector_handle_outcome_in_AOV_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
in_AOV_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(in_AOV_address0),
    .ce0(in_AOV_ce0),
    .we0(in_AOV_we0),
    .d0(in_AOV_d0),
    .q0(in_AOV_q0),
    .address1(in_AOV_address1),
    .ce1(in_AOV_ce1),
    .we1(in_AOV_we1),
    .d1(in_AOV_d1)
);

FaultDetector_compute_out_AOV_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
outcome_AOV_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(outcome_AOV_address0),
    .ce0(outcome_AOV_ce0),
    .we0(outcome_AOV_we0),
    .d0(in_AOV_q0),
    .q0(outcome_AOV_q0),
    .address1(outcome_AOV_address1),
    .ce1(outcome_AOV_ce1),
    .q1(outcome_AOV_q1)
);

FaultDetector_regslice_forward #(
    .DataWidth( 16 ))
regslice_forward_failedTask_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(failedTask_int_regslice),
    .vld_in(failedTask_ap_vld_int_regslice),
    .ack_in(failedTask_ap_ack_int_regslice),
    .data_out(failedTask),
    .vld_out(regslice_forward_failedTask_U_vld_out),
    .ack_out(failedTask_ap_ack),
    .apdone_blk(regslice_forward_failedTask_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((1'b1 == ap_block_state6_io) | (regslice_forward_failedTask_U_apdone_blk == 1'b1) | ((failedTask_ap_ack_int_regslice == 1'b0) & (ap_predicate_op85_write_state6 == 1'b1))) & (icmp_ln1019_fu_519_p2 == 1'd1) & (exitcond12_fu_507_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        loop_index11_reg_343 <= empty_reg_754;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        loop_index11_reg_343 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        destStream_read_reg_689 <= destStream_dout;
        in_checkId_V_reg_700 <= {{destStream_dout[9:2]}};
        in_command_V_reg_695 <= in_command_V_fu_354_p1;
        in_executionId_V_reg_705 <= {{destStream_dout[33:26]}};
        in_taskId_V_reg_710 <= {{destStream_dout[41:34]}};
        trunc_ln235_1_reg_731 <= {{destStream_dout[234:203]}};
        trunc_ln235_2_reg_736 <= {{destStream_dout[266:235]}};
        trunc_ln235_3_reg_741 <= {{destStream_dout[298:267]}};
        trunc_ln235_8_reg_716 <= {{destStream_dout[138:107]}};
        trunc_ln235_9_reg_721 <= {{destStream_dout[170:139]}};
        trunc_ln235_s_reg_726 <= {{destStream_dout[202:171]}};
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b1 == ap_block_state6_io) | (regslice_forward_failedTask_U_apdone_blk == 1'b1) | ((failedTask_ap_ack_int_regslice == 1'b0) & (ap_predicate_op85_write_state6 == 1'b1))) & (1'b1 == ap_CS_fsm_state6))) begin
        empty_reg_754 <= empty_fu_513_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        loop_index11_cast_reg_746[3 : 0] <= loop_index11_cast_fu_502_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        outcome_AOV_load_1_reg_787 <= outcome_AOV_q0;
        outcome_AOV_load_reg_782 <= outcome_AOV_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        outcome_AOV_load_2_reg_792 <= outcome_AOV_q0;
        outcome_AOV_load_3_reg_797 <= outcome_AOV_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        outcome_AOV_load_4_reg_802 <= outcome_AOV_q0;
        outcome_AOV_load_5_reg_807 <= outcome_AOV_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1019_fu_519_p2 == 1'd0) & (exitcond12_fu_507_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_5_reg_772 <= {{destStream_read_reg_689[33:10]}};
        tmp_reg_767 <= destStream_read_reg_689[32'd42];
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((destStream_empty_n == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_block_state6_io) | (regslice_forward_failedTask_U_apdone_blk == 1'b1) | ((failedTask_ap_ack_int_regslice == 1'b0) & (ap_predicate_op85_write_state6 == 1'b1)))) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

assign ap_ST_fsm_state7_blk = 1'b0;

always @ (*) begin
    if ((failedTask_ap_ack_int_regslice == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if ((~((1'b1 == ap_block_state6_io) | (regslice_forward_failedTask_U_apdone_blk == 1'b1) | ((failedTask_ap_ack_int_regslice == 1'b0) & (ap_predicate_op85_write_state6 == 1'b1))) & (icmp_ln1019_fu_519_p2 == 1'd1) & (exitcond12_fu_507_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_block_state6_io) | (regslice_forward_failedTask_U_apdone_blk == 1'b1) | ((failedTask_ap_ack_int_regslice == 1'b0) & (ap_predicate_op85_write_state6 == 1'b1))) & (icmp_ln1019_fu_519_p2 == 1'd1) & (exitcond12_fu_507_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        destStream_blk_n = destStream_empty_n;
    end else begin
        destStream_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((destStream_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        destStream_read = 1'b1;
    end else begin
        destStream_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        errorInTask_ce0 = 1'b1;
    end else begin
        errorInTask_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        errorInTask_we0 = 1'b1;
    end else begin
        errorInTask_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_block_state6_io) | (regslice_forward_failedTask_U_apdone_blk == 1'b1) | ((failedTask_ap_ack_int_regslice == 1'b0) & (ap_predicate_op85_write_state6 == 1'b1))) & (1'b1 == ap_CS_fsm_state6) & (ap_predicate_op85_write_state6 == 1'b1))) begin
        failedTask_ap_vld_int_regslice = 1'b1;
    end else begin
        failedTask_ap_vld_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | ((icmp_ln1019_fu_519_p2 == 1'd0) & (exitcond12_fu_507_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6)))) begin
        failedTask_blk_n = failedTask_ap_ack_int_regslice;
    end else begin
        failedTask_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        in_AOV_address0 = loop_index11_cast_fu_502_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        in_AOV_address0 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        in_AOV_address0 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        in_AOV_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        in_AOV_address0 = 64'd1;
    end else begin
        in_AOV_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        in_AOV_address1 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        in_AOV_address1 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        in_AOV_address1 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        in_AOV_address1 = 64'd0;
    end else begin
        in_AOV_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | (~((1'b1 == ap_block_state6_io) | (regslice_forward_failedTask_U_apdone_blk == 1'b1) | ((failedTask_ap_ack_int_regslice == 1'b0) & (ap_predicate_op85_write_state6 == 1'b1))) & (1'b1 == ap_CS_fsm_state6)) | ((destStream_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state2)))) begin
        in_AOV_ce0 = 1'b1;
    end else begin
        in_AOV_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | ((destStream_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state2)))) begin
        in_AOV_ce1 = 1'b1;
    end else begin
        in_AOV_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        in_AOV_d0 = bitcast_ln235_7_fu_498_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        in_AOV_d0 = bitcast_ln235_5_fu_490_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        in_AOV_d0 = bitcast_ln235_3_fu_482_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        in_AOV_d0 = bitcast_ln235_1_fu_473_p1;
    end else begin
        in_AOV_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        in_AOV_d1 = bitcast_ln235_6_fu_494_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        in_AOV_d1 = bitcast_ln235_4_fu_486_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        in_AOV_d1 = bitcast_ln235_2_fu_478_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        in_AOV_d1 = bitcast_ln235_fu_468_p1;
    end else begin
        in_AOV_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | ((destStream_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state2)))) begin
        in_AOV_we0 = 1'b1;
    end else begin
        in_AOV_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | ((destStream_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state2)))) begin
        in_AOV_we1 = 1'b1;
    end else begin
        in_AOV_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        lastTestDescriptor_ce0 = 1'b1;
    end else begin
        lastTestDescriptor_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        lastTestDescriptor_we0 = 40'd1099511627549;
    end else begin
        lastTestDescriptor_we0 = 40'd0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        outcome_AOV_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        outcome_AOV_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        outcome_AOV_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        outcome_AOV_address0 = loop_index11_cast_reg_746;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        outcome_AOV_address0 = 64'd1;
    end else begin
        outcome_AOV_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        outcome_AOV_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        outcome_AOV_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        outcome_AOV_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        outcome_AOV_address1 = 64'd0;
    end else begin
        outcome_AOV_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | ((failedTask_ap_ack_int_regslice == 1'b1) & (1'b1 == ap_CS_fsm_state8)) | (~((1'b1 == ap_block_state6_io) | (regslice_forward_failedTask_U_apdone_blk == 1'b1) | ((failedTask_ap_ack_int_regslice == 1'b0) & (ap_predicate_op85_write_state6 == 1'b1))) & (1'b1 == ap_CS_fsm_state6)))) begin
        outcome_AOV_ce0 = 1'b1;
    end else begin
        outcome_AOV_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | ((failedTask_ap_ack_int_regslice == 1'b1) & (1'b1 == ap_CS_fsm_state8)) | (~((1'b1 == ap_block_state6_io) | (regslice_forward_failedTask_U_apdone_blk == 1'b1) | ((failedTask_ap_ack_int_regslice == 1'b0) & (ap_predicate_op85_write_state6 == 1'b1))) & (1'b1 == ap_CS_fsm_state6)))) begin
        outcome_AOV_ce1 = 1'b1;
    end else begin
        outcome_AOV_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        outcome_AOV_we0 = 1'b1;
    end else begin
        outcome_AOV_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((destStream_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if ((~((1'b1 == ap_block_state6_io) | (regslice_forward_failedTask_U_apdone_blk == 1'b1) | ((failedTask_ap_ack_int_regslice == 1'b0) & (ap_predicate_op85_write_state6 == 1'b1))) & (icmp_ln1019_fu_519_p2 == 1'd1) & (exitcond12_fu_507_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((1'b1 == ap_block_state6_io) | (regslice_forward_failedTask_U_apdone_blk == 1'b1) | ((failedTask_ap_ack_int_regslice == 1'b0) & (ap_predicate_op85_write_state6 == 1'b1))) & (icmp_ln1019_fu_519_p2 == 1'd0) & (exitcond12_fu_507_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if ((~((1'b1 == ap_block_state6_io) | (regslice_forward_failedTask_U_apdone_blk == 1'b1) | ((failedTask_ap_ack_int_regslice == 1'b0) & (ap_predicate_op85_write_state6 == 1'b1))) & (exitcond12_fu_507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state8 : begin
            if (((failedTask_ap_ack_int_regslice == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state6 = ((regslice_forward_failedTask_U_apdone_blk == 1'b1) | ((failedTask_ap_ack_int_regslice == 1'b0) & (ap_predicate_op85_write_state6 == 1'b1)));
end

always @ (*) begin
    ap_block_state6_io = ((failedTask_ap_ack_int_regslice == 1'b0) & (ap_predicate_op85_write_state6 == 1'b1));
end

always @ (*) begin
    ap_predicate_op85_write_state6 = ((icmp_ln1019_fu_519_p2 == 1'd0) & (exitcond12_fu_507_p2 == 1'd1));
end

assign bitcast_ln235_1_fu_473_p1 = trunc_ln235_7_fu_398_p4;

assign bitcast_ln235_2_fu_478_p1 = trunc_ln235_8_reg_716;

assign bitcast_ln235_3_fu_482_p1 = trunc_ln235_9_reg_721;

assign bitcast_ln235_4_fu_486_p1 = trunc_ln235_s_reg_726;

assign bitcast_ln235_5_fu_490_p1 = trunc_ln235_1_reg_731;

assign bitcast_ln235_6_fu_494_p1 = trunc_ln235_2_reg_736;

assign bitcast_ln235_7_fu_498_p1 = trunc_ln235_3_reg_741;

assign bitcast_ln235_fu_468_p1 = trunc_ln235_6_fu_388_p4;

assign empty_58_fu_556_p1 = outcome_AOV_load_reg_782;

assign empty_59_fu_559_p1 = outcome_AOV_load_1_reg_787;

assign empty_60_fu_562_p1 = outcome_AOV_load_2_reg_792;

assign empty_61_fu_565_p1 = outcome_AOV_load_3_reg_797;

assign empty_62_fu_568_p1 = outcome_AOV_load_4_reg_802;

assign empty_63_fu_571_p1 = outcome_AOV_load_5_reg_807;

assign empty_64_fu_574_p1 = outcome_AOV_q0;

assign empty_65_fu_578_p1 = outcome_AOV_q1;

assign empty_fu_513_p2 = (loop_index11_reg_343 + 4'd1);

assign errorInTask_address0 = zext_ln541_fu_551_p1;

assign errorInTask_d0 = tmp_reg_767;

assign exitcond12_fu_507_p2 = ((loop_index11_reg_343 == 4'd8) ? 1'b1 : 1'b0);

assign failedTask_ap_vld = regslice_forward_failedTask_U_vld_out;

assign failedTask_int_regslice = {{in_executionId_V_reg_705}, {in_taskId_V_reg_710}};

assign icmp_ln1019_fu_519_p2 = ((in_command_V_reg_695 == 2'd1) ? 1'b1 : 1'b0);

assign in_command_V_fu_354_p1 = destStream_dout[1:0];

assign lastTestDescriptor_address0 = zext_ln541_fu_551_p1;

assign lastTestDescriptor_d0 = {{{{{{{{{{{{empty_65_fu_578_p1}, {empty_64_fu_574_p1}}, {empty_63_fu_571_p1}}, {empty_62_fu_568_p1}}, {empty_61_fu_565_p1}}, {empty_60_fu_562_p1}}, {empty_59_fu_559_p1}}, {empty_58_fu_556_p1}}, {24'd0}}, {tmp_5_reg_772}}, {8'd0}}, {in_checkId_V_reg_700}};

assign loop_index11_cast_fu_502_p1 = loop_index11_reg_343;

assign trunc_ln235_6_fu_388_p4 = {{destStream_dout[74:43]}};

assign trunc_ln235_7_fu_398_p4 = {{destStream_dout[106:75]}};

assign zext_ln541_fu_551_p1 = in_taskId_V_reg_710;

always @ (posedge ap_clk) begin
    loop_index11_cast_reg_746[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //FaultDetector_handle_outcome
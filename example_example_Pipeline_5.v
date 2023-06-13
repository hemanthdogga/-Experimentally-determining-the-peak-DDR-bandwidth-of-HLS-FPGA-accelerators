// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module example_example_Pipeline_5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_b_AWVALID,
        m_axi_b_AWREADY,
        m_axi_b_AWADDR,
        m_axi_b_AWID,
        m_axi_b_AWLEN,
        m_axi_b_AWSIZE,
        m_axi_b_AWBURST,
        m_axi_b_AWLOCK,
        m_axi_b_AWCACHE,
        m_axi_b_AWPROT,
        m_axi_b_AWQOS,
        m_axi_b_AWREGION,
        m_axi_b_AWUSER,
        m_axi_b_WVALID,
        m_axi_b_WREADY,
        m_axi_b_WDATA,
        m_axi_b_WSTRB,
        m_axi_b_WLAST,
        m_axi_b_WID,
        m_axi_b_WUSER,
        m_axi_b_ARVALID,
        m_axi_b_ARREADY,
        m_axi_b_ARADDR,
        m_axi_b_ARID,
        m_axi_b_ARLEN,
        m_axi_b_ARSIZE,
        m_axi_b_ARBURST,
        m_axi_b_ARLOCK,
        m_axi_b_ARCACHE,
        m_axi_b_ARPROT,
        m_axi_b_ARQOS,
        m_axi_b_ARREGION,
        m_axi_b_ARUSER,
        m_axi_b_RVALID,
        m_axi_b_RREADY,
        m_axi_b_RDATA,
        m_axi_b_RLAST,
        m_axi_b_RID,
        m_axi_b_RFIFONUM,
        m_axi_b_RUSER,
        m_axi_b_RRESP,
        m_axi_b_BVALID,
        m_axi_b_BREADY,
        m_axi_b_BRESP,
        m_axi_b_BID,
        m_axi_b_BUSER,
        sext_ln48,
        buffb_address0,
        buffb_ce0,
        buffb_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_b_AWVALID;
input   m_axi_b_AWREADY;
output  [63:0] m_axi_b_AWADDR;
output  [0:0] m_axi_b_AWID;
output  [31:0] m_axi_b_AWLEN;
output  [2:0] m_axi_b_AWSIZE;
output  [1:0] m_axi_b_AWBURST;
output  [1:0] m_axi_b_AWLOCK;
output  [3:0] m_axi_b_AWCACHE;
output  [2:0] m_axi_b_AWPROT;
output  [3:0] m_axi_b_AWQOS;
output  [3:0] m_axi_b_AWREGION;
output  [0:0] m_axi_b_AWUSER;
output   m_axi_b_WVALID;
input   m_axi_b_WREADY;
output  [31:0] m_axi_b_WDATA;
output  [3:0] m_axi_b_WSTRB;
output   m_axi_b_WLAST;
output  [0:0] m_axi_b_WID;
output  [0:0] m_axi_b_WUSER;
output   m_axi_b_ARVALID;
input   m_axi_b_ARREADY;
output  [63:0] m_axi_b_ARADDR;
output  [0:0] m_axi_b_ARID;
output  [31:0] m_axi_b_ARLEN;
output  [2:0] m_axi_b_ARSIZE;
output  [1:0] m_axi_b_ARBURST;
output  [1:0] m_axi_b_ARLOCK;
output  [3:0] m_axi_b_ARCACHE;
output  [2:0] m_axi_b_ARPROT;
output  [3:0] m_axi_b_ARQOS;
output  [3:0] m_axi_b_ARREGION;
output  [0:0] m_axi_b_ARUSER;
input   m_axi_b_RVALID;
output   m_axi_b_RREADY;
input  [31:0] m_axi_b_RDATA;
input   m_axi_b_RLAST;
input  [0:0] m_axi_b_RID;
input  [8:0] m_axi_b_RFIFONUM;
input  [0:0] m_axi_b_RUSER;
input  [1:0] m_axi_b_RRESP;
input   m_axi_b_BVALID;
output   m_axi_b_BREADY;
input  [1:0] m_axi_b_BRESP;
input  [0:0] m_axi_b_BID;
input  [0:0] m_axi_b_BUSER;
input  [61:0] sext_ln48;
output  [5:0] buffb_address0;
output   buffb_ce0;
input  [31:0] buffb_q0;

reg ap_idle;
reg m_axi_b_WVALID;
reg buffb_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] exitcond6_fu_93_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    b_blk_n_W;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond6_reg_132;
reg   [31:0] buffb_load_reg_146;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] loop_index_cast_fu_105_p1;
wire    ap_block_pp0_stage0_01001;
reg   [5:0] loop_index_fu_50;
wire   [5:0] empty_17_fu_99_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_loop_index_load;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

example_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((exitcond6_fu_93_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            loop_index_fu_50 <= empty_17_fu_99_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            loop_index_fu_50 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        exitcond6_reg_132 <= exitcond6_fu_93_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond6_reg_132 == 1'd0))) begin
        buffb_load_reg_146 <= buffb_q0;
    end
end

always @ (*) begin
    if (((exitcond6_fu_93_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond6_reg_132 == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_loop_index_load = 6'd0;
    end else begin
        ap_sig_allocacmp_loop_index_load = loop_index_fu_50;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        b_blk_n_W = m_axi_b_WREADY;
    end else begin
        b_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffb_ce0 = 1'b1;
    end else begin
        buffb_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        m_axi_b_WVALID = 1'b1;
    end else begin
        m_axi_b_WVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_b_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_b_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign buffb_address0 = loop_index_cast_fu_105_p1;

assign empty_17_fu_99_p2 = (ap_sig_allocacmp_loop_index_load + 6'd1);

assign exitcond6_fu_93_p2 = ((ap_sig_allocacmp_loop_index_load == 6'd50) ? 1'b1 : 1'b0);

assign loop_index_cast_fu_105_p1 = ap_sig_allocacmp_loop_index_load;

assign m_axi_b_ARADDR = 64'd0;

assign m_axi_b_ARBURST = 2'd0;

assign m_axi_b_ARCACHE = 4'd0;

assign m_axi_b_ARID = 1'd0;

assign m_axi_b_ARLEN = 32'd0;

assign m_axi_b_ARLOCK = 2'd0;

assign m_axi_b_ARPROT = 3'd0;

assign m_axi_b_ARQOS = 4'd0;

assign m_axi_b_ARREGION = 4'd0;

assign m_axi_b_ARSIZE = 3'd0;

assign m_axi_b_ARUSER = 1'd0;

assign m_axi_b_ARVALID = 1'b0;

assign m_axi_b_AWADDR = 64'd0;

assign m_axi_b_AWBURST = 2'd0;

assign m_axi_b_AWCACHE = 4'd0;

assign m_axi_b_AWID = 1'd0;

assign m_axi_b_AWLEN = 32'd0;

assign m_axi_b_AWLOCK = 2'd0;

assign m_axi_b_AWPROT = 3'd0;

assign m_axi_b_AWQOS = 4'd0;

assign m_axi_b_AWREGION = 4'd0;

assign m_axi_b_AWSIZE = 3'd0;

assign m_axi_b_AWUSER = 1'd0;

assign m_axi_b_AWVALID = 1'b0;

assign m_axi_b_BREADY = 1'b0;

assign m_axi_b_RREADY = 1'b0;

assign m_axi_b_WDATA = buffb_load_reg_146;

assign m_axi_b_WID = 1'd0;

assign m_axi_b_WLAST = 1'b0;

assign m_axi_b_WSTRB = 4'd15;

assign m_axi_b_WUSER = 1'd0;

endmodule //example_example_Pipeline_5
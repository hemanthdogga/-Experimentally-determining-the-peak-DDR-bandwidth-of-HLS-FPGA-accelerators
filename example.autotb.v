// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      example
`define AUTOTB_DUT_INST AESL_inst_example
`define AUTOTB_TOP      apatb_example_top
`define AUTOTB_LAT_RESULT_FILE "example.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "example.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_example_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_a 1
`define AESL_DEPTH_b 1
`define AESL_DEPTH_a_offset 1
`define AESL_DEPTH_b_offset 1
`define AUTOTB_TVIN_a  "D:/VITISplay/using_axi_master/Simulation/tv/cdatafile/c.example.autotvin_a.dat"
`define AUTOTB_TVIN_b  "D:/VITISplay/using_axi_master/Simulation/tv/cdatafile/c.example.autotvin_b.dat"
`define AUTOTB_TVIN_a_offset  "D:/VITISplay/using_axi_master/Simulation/tv/cdatafile/c.example.autotvin_a_offset.dat"
`define AUTOTB_TVIN_b_offset  "D:/VITISplay/using_axi_master/Simulation/tv/cdatafile/c.example.autotvin_b_offset.dat"
`define AUTOTB_TVIN_a_out_wrapc  "D:/VITISplay/using_axi_master/Simulation/tv/rtldatafile/rtl.example.autotvin_a.dat"
`define AUTOTB_TVIN_b_out_wrapc  "D:/VITISplay/using_axi_master/Simulation/tv/rtldatafile/rtl.example.autotvin_b.dat"
`define AUTOTB_TVIN_a_offset_out_wrapc  "D:/VITISplay/using_axi_master/Simulation/tv/rtldatafile/rtl.example.autotvin_a_offset.dat"
`define AUTOTB_TVIN_b_offset_out_wrapc  "D:/VITISplay/using_axi_master/Simulation/tv/rtldatafile/rtl.example.autotvin_b_offset.dat"
`define AUTOTB_TVOUT_a  "D:/VITISplay/using_axi_master/Simulation/tv/cdatafile/c.example.autotvout_a.dat"
`define AUTOTB_TVOUT_b  "D:/VITISplay/using_axi_master/Simulation/tv/cdatafile/c.example.autotvout_b.dat"
`define AUTOTB_TVOUT_a_out_wrapc  "D:/VITISplay/using_axi_master/Simulation/tv/rtldatafile/rtl.example.autotvout_a.dat"
`define AUTOTB_TVOUT_b_out_wrapc  "D:/VITISplay/using_axi_master/Simulation/tv/rtldatafile/rtl.example.autotvout_b.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 3098;
parameter LENGTH_a_offset = 1;
parameter LENGTH_b_offset = 1;
parameter LENGTH_a = 1024;
parameter LENGTH_b = 1024;

task read_token;
    input integer fp;
    output reg [191 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [5 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [5 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire  a_AWVALID;
wire  a_AWREADY;
wire [63 : 0] a_AWADDR;
wire [0 : 0] a_AWID;
wire [7 : 0] a_AWLEN;
wire [2 : 0] a_AWSIZE;
wire [1 : 0] a_AWBURST;
wire [1 : 0] a_AWLOCK;
wire [3 : 0] a_AWCACHE;
wire [2 : 0] a_AWPROT;
wire [3 : 0] a_AWQOS;
wire [3 : 0] a_AWREGION;
wire [0 : 0] a_AWUSER;
wire  a_WVALID;
wire  a_WREADY;
wire [31 : 0] a_WDATA;
wire [3 : 0] a_WSTRB;
wire  a_WLAST;
wire [0 : 0] a_WID;
wire [0 : 0] a_WUSER;
wire  a_ARVALID;
wire  a_ARREADY;
wire [63 : 0] a_ARADDR;
wire [0 : 0] a_ARID;
wire [7 : 0] a_ARLEN;
wire [2 : 0] a_ARSIZE;
wire [1 : 0] a_ARBURST;
wire [1 : 0] a_ARLOCK;
wire [3 : 0] a_ARCACHE;
wire [2 : 0] a_ARPROT;
wire [3 : 0] a_ARQOS;
wire [3 : 0] a_ARREGION;
wire [0 : 0] a_ARUSER;
wire  a_RVALID;
wire  a_RREADY;
wire [31 : 0] a_RDATA;
wire  a_RLAST;
wire [0 : 0] a_RID;
wire [0 : 0] a_RUSER;
wire [1 : 0] a_RRESP;
wire  a_BVALID;
wire  a_BREADY;
wire [1 : 0] a_BRESP;
wire [0 : 0] a_BID;
wire [0 : 0] a_BUSER;
wire  b_AWVALID;
wire  b_AWREADY;
wire [63 : 0] b_AWADDR;
wire [0 : 0] b_AWID;
wire [7 : 0] b_AWLEN;
wire [2 : 0] b_AWSIZE;
wire [1 : 0] b_AWBURST;
wire [1 : 0] b_AWLOCK;
wire [3 : 0] b_AWCACHE;
wire [2 : 0] b_AWPROT;
wire [3 : 0] b_AWQOS;
wire [3 : 0] b_AWREGION;
wire [0 : 0] b_AWUSER;
wire  b_WVALID;
wire  b_WREADY;
wire [31 : 0] b_WDATA;
wire [3 : 0] b_WSTRB;
wire  b_WLAST;
wire [0 : 0] b_WID;
wire [0 : 0] b_WUSER;
wire  b_ARVALID;
wire  b_ARREADY;
wire [63 : 0] b_ARADDR;
wire [0 : 0] b_ARID;
wire [7 : 0] b_ARLEN;
wire [2 : 0] b_ARSIZE;
wire [1 : 0] b_ARBURST;
wire [1 : 0] b_ARLOCK;
wire [3 : 0] b_ARCACHE;
wire [2 : 0] b_ARPROT;
wire [3 : 0] b_ARQOS;
wire [3 : 0] b_ARREGION;
wire [0 : 0] b_ARUSER;
wire  b_RVALID;
wire  b_RREADY;
wire [31 : 0] b_RDATA;
wire  b_RLAST;
wire [0 : 0] b_RID;
wire [0 : 0] b_RUSER;
wire [1 : 0] b_RRESP;
wire  b_BVALID;
wire  b_BREADY;
wire [1 : 0] b_BRESP;
wire [0 : 0] b_BID;
wire [0 : 0] b_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire control_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .m_axi_a_AWVALID(a_AWVALID),
    .m_axi_a_AWREADY(a_AWREADY),
    .m_axi_a_AWADDR(a_AWADDR),
    .m_axi_a_AWID(a_AWID),
    .m_axi_a_AWLEN(a_AWLEN),
    .m_axi_a_AWSIZE(a_AWSIZE),
    .m_axi_a_AWBURST(a_AWBURST),
    .m_axi_a_AWLOCK(a_AWLOCK),
    .m_axi_a_AWCACHE(a_AWCACHE),
    .m_axi_a_AWPROT(a_AWPROT),
    .m_axi_a_AWQOS(a_AWQOS),
    .m_axi_a_AWREGION(a_AWREGION),
    .m_axi_a_AWUSER(a_AWUSER),
    .m_axi_a_WVALID(a_WVALID),
    .m_axi_a_WREADY(a_WREADY),
    .m_axi_a_WDATA(a_WDATA),
    .m_axi_a_WSTRB(a_WSTRB),
    .m_axi_a_WLAST(a_WLAST),
    .m_axi_a_WID(a_WID),
    .m_axi_a_WUSER(a_WUSER),
    .m_axi_a_ARVALID(a_ARVALID),
    .m_axi_a_ARREADY(a_ARREADY),
    .m_axi_a_ARADDR(a_ARADDR),
    .m_axi_a_ARID(a_ARID),
    .m_axi_a_ARLEN(a_ARLEN),
    .m_axi_a_ARSIZE(a_ARSIZE),
    .m_axi_a_ARBURST(a_ARBURST),
    .m_axi_a_ARLOCK(a_ARLOCK),
    .m_axi_a_ARCACHE(a_ARCACHE),
    .m_axi_a_ARPROT(a_ARPROT),
    .m_axi_a_ARQOS(a_ARQOS),
    .m_axi_a_ARREGION(a_ARREGION),
    .m_axi_a_ARUSER(a_ARUSER),
    .m_axi_a_RVALID(a_RVALID),
    .m_axi_a_RREADY(a_RREADY),
    .m_axi_a_RDATA(a_RDATA),
    .m_axi_a_RLAST(a_RLAST),
    .m_axi_a_RID(a_RID),
    .m_axi_a_RUSER(a_RUSER),
    .m_axi_a_RRESP(a_RRESP),
    .m_axi_a_BVALID(a_BVALID),
    .m_axi_a_BREADY(a_BREADY),
    .m_axi_a_BRESP(a_BRESP),
    .m_axi_a_BID(a_BID),
    .m_axi_a_BUSER(a_BUSER),
    .m_axi_b_AWVALID(b_AWVALID),
    .m_axi_b_AWREADY(b_AWREADY),
    .m_axi_b_AWADDR(b_AWADDR),
    .m_axi_b_AWID(b_AWID),
    .m_axi_b_AWLEN(b_AWLEN),
    .m_axi_b_AWSIZE(b_AWSIZE),
    .m_axi_b_AWBURST(b_AWBURST),
    .m_axi_b_AWLOCK(b_AWLOCK),
    .m_axi_b_AWCACHE(b_AWCACHE),
    .m_axi_b_AWPROT(b_AWPROT),
    .m_axi_b_AWQOS(b_AWQOS),
    .m_axi_b_AWREGION(b_AWREGION),
    .m_axi_b_AWUSER(b_AWUSER),
    .m_axi_b_WVALID(b_WVALID),
    .m_axi_b_WREADY(b_WREADY),
    .m_axi_b_WDATA(b_WDATA),
    .m_axi_b_WSTRB(b_WSTRB),
    .m_axi_b_WLAST(b_WLAST),
    .m_axi_b_WID(b_WID),
    .m_axi_b_WUSER(b_WUSER),
    .m_axi_b_ARVALID(b_ARVALID),
    .m_axi_b_ARREADY(b_ARREADY),
    .m_axi_b_ARADDR(b_ARADDR),
    .m_axi_b_ARID(b_ARID),
    .m_axi_b_ARLEN(b_ARLEN),
    .m_axi_b_ARSIZE(b_ARSIZE),
    .m_axi_b_ARBURST(b_ARBURST),
    .m_axi_b_ARLOCK(b_ARLOCK),
    .m_axi_b_ARCACHE(b_ARCACHE),
    .m_axi_b_ARPROT(b_ARPROT),
    .m_axi_b_ARQOS(b_ARQOS),
    .m_axi_b_ARREGION(b_ARREGION),
    .m_axi_b_ARUSER(b_ARUSER),
    .m_axi_b_RVALID(b_RVALID),
    .m_axi_b_RREADY(b_RREADY),
    .m_axi_b_RDATA(b_RDATA),
    .m_axi_b_RLAST(b_RLAST),
    .m_axi_b_RID(b_RID),
    .m_axi_b_RUSER(b_RUSER),
    .m_axi_b_RRESP(b_RRESP),
    .m_axi_b_BVALID(b_BVALID),
    .m_axi_b_BREADY(b_BREADY),
    .m_axi_b_BRESP(b_BRESP),
    .m_axi_b_BID(b_BID),
    .m_axi_b_BUSER(b_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_slave_start | AESL_slave_start_lock;
assign AESL_start = start;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & control_write_data_finish;
  assign AESL_slave_write_start_finish = AESL_slave_write_start_in;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_slave_done =  1 ;
  assign AESL_done = (ap_done_lock | ap_done) & AESL_slave_done & slave_done_status;
  assign AESL_slave_output_done = ap_done;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_start_lock <= 0;
    end
    else begin
        if (AESL_ready == 1) begin
            AESL_slave_start_lock <= 0;
        end
        else if (AESL_slave_start == 1) begin
            AESL_slave_start_lock <= 1;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        ap_done_lock <= 0;
    end
    else begin
        if (AESL_done == 1) begin
            ap_done_lock <= 0;
        end
        else if (ap_done == 1) begin
            ap_done_lock <= 1;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_done == 1 ) begin
        slave_done_status <= 1;
    end
end
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end




wire    AESL_axi_master_a_ready;
wire    AESL_axi_master_a_done;
AESL_axi_master_a AESL_AXI_MASTER_a(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_a_AWVALID (a_AWVALID),
    .TRAN_a_AWREADY (a_AWREADY),
    .TRAN_a_AWADDR (a_AWADDR),
    .TRAN_a_AWID (a_AWID),
    .TRAN_a_AWLEN (a_AWLEN),
    .TRAN_a_AWSIZE (a_AWSIZE),
    .TRAN_a_AWBURST (a_AWBURST),
    .TRAN_a_AWLOCK (a_AWLOCK),
    .TRAN_a_AWCACHE (a_AWCACHE),
    .TRAN_a_AWPROT (a_AWPROT),
    .TRAN_a_AWQOS (a_AWQOS),
    .TRAN_a_AWREGION (a_AWREGION),
    .TRAN_a_AWUSER (a_AWUSER),
    .TRAN_a_WVALID (a_WVALID),
    .TRAN_a_WREADY (a_WREADY),
    .TRAN_a_WDATA (a_WDATA),
    .TRAN_a_WSTRB (a_WSTRB),
    .TRAN_a_WLAST (a_WLAST),
    .TRAN_a_WID (a_WID),
    .TRAN_a_WUSER (a_WUSER),
    .TRAN_a_ARVALID (a_ARVALID),
    .TRAN_a_ARREADY (a_ARREADY),
    .TRAN_a_ARADDR (a_ARADDR),
    .TRAN_a_ARID (a_ARID),
    .TRAN_a_ARLEN (a_ARLEN),
    .TRAN_a_ARSIZE (a_ARSIZE),
    .TRAN_a_ARBURST (a_ARBURST),
    .TRAN_a_ARLOCK (a_ARLOCK),
    .TRAN_a_ARCACHE (a_ARCACHE),
    .TRAN_a_ARPROT (a_ARPROT),
    .TRAN_a_ARQOS (a_ARQOS),
    .TRAN_a_ARREGION (a_ARREGION),
    .TRAN_a_ARUSER (a_ARUSER),
    .TRAN_a_RVALID (a_RVALID),
    .TRAN_a_RREADY (a_RREADY),
    .TRAN_a_RDATA (a_RDATA),
    .TRAN_a_RLAST (a_RLAST),
    .TRAN_a_RID (a_RID),
    .TRAN_a_RUSER (a_RUSER),
    .TRAN_a_RRESP (a_RRESP),
    .TRAN_a_BVALID (a_BVALID),
    .TRAN_a_BREADY (a_BREADY),
    .TRAN_a_BRESP (a_BRESP),
    .TRAN_a_BID (a_BID),
    .TRAN_a_BUSER (a_BUSER),
    .ready (AESL_axi_master_a_ready),
    .done  (AESL_axi_master_a_done)
);
assign    AESL_axi_master_a_ready    =   ready;
assign    AESL_axi_master_a_done    =   AESL_done_delay;
wire    AESL_axi_master_b_ready;
wire    AESL_axi_master_b_done;
AESL_axi_master_b AESL_AXI_MASTER_b(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_b_AWVALID (b_AWVALID),
    .TRAN_b_AWREADY (b_AWREADY),
    .TRAN_b_AWADDR (b_AWADDR),
    .TRAN_b_AWID (b_AWID),
    .TRAN_b_AWLEN (b_AWLEN),
    .TRAN_b_AWSIZE (b_AWSIZE),
    .TRAN_b_AWBURST (b_AWBURST),
    .TRAN_b_AWLOCK (b_AWLOCK),
    .TRAN_b_AWCACHE (b_AWCACHE),
    .TRAN_b_AWPROT (b_AWPROT),
    .TRAN_b_AWQOS (b_AWQOS),
    .TRAN_b_AWREGION (b_AWREGION),
    .TRAN_b_AWUSER (b_AWUSER),
    .TRAN_b_WVALID (b_WVALID),
    .TRAN_b_WREADY (b_WREADY),
    .TRAN_b_WDATA (b_WDATA),
    .TRAN_b_WSTRB (b_WSTRB),
    .TRAN_b_WLAST (b_WLAST),
    .TRAN_b_WID (b_WID),
    .TRAN_b_WUSER (b_WUSER),
    .TRAN_b_ARVALID (b_ARVALID),
    .TRAN_b_ARREADY (b_ARREADY),
    .TRAN_b_ARADDR (b_ARADDR),
    .TRAN_b_ARID (b_ARID),
    .TRAN_b_ARLEN (b_ARLEN),
    .TRAN_b_ARSIZE (b_ARSIZE),
    .TRAN_b_ARBURST (b_ARBURST),
    .TRAN_b_ARLOCK (b_ARLOCK),
    .TRAN_b_ARCACHE (b_ARCACHE),
    .TRAN_b_ARPROT (b_ARPROT),
    .TRAN_b_ARQOS (b_ARQOS),
    .TRAN_b_ARREGION (b_ARREGION),
    .TRAN_b_ARUSER (b_ARUSER),
    .TRAN_b_RVALID (b_RVALID),
    .TRAN_b_RREADY (b_RREADY),
    .TRAN_b_RDATA (b_RDATA),
    .TRAN_b_RLAST (b_RLAST),
    .TRAN_b_RID (b_RID),
    .TRAN_b_RUSER (b_RUSER),
    .TRAN_b_RRESP (b_RRESP),
    .TRAN_b_BVALID (b_BVALID),
    .TRAN_b_BREADY (b_BREADY),
    .TRAN_b_BRESP (b_BRESP),
    .TRAN_b_BID (b_BID),
    .TRAN_b_BUSER (b_BUSER),
    .ready (AESL_axi_master_b_ready),
    .done  (AESL_axi_master_b_done)
);
assign    AESL_axi_master_b_ready    =   ready;
assign    AESL_axi_master_b_done    =   AESL_done_delay;

AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_write_data_finish(control_write_data_finish),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_in (AESL_slave_output_done),
    .TRAN_control_idle_in (AESL_idle),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_a;
reg [31:0] size_a;
reg [31:0] size_a_backup;
reg end_b;
reg [31:0] size_b;
reg [31:0] size_b_backup;
reg end_a_offset;
reg [31:0] size_a_offset;
reg [31:0] size_a_offset_backup;
reg end_b_offset;
reg [31:0] size_b_offset;
reg [31:0] size_b_offset_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_a;

initial begin : dump_tvout_runtime_sign_a
    integer fp;
    dump_tvout_finish_a = 0;
    fp = $fopen(`AUTOTB_TVOUT_a_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_a_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_a_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_a_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_a = 1;
end


reg dump_tvout_finish_b;

initial begin : dump_tvout_runtime_sign_b
    integer fp;
    dump_tvout_finish_b = 0;
    fp = $fopen(`AUTOTB_TVOUT_b_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_b_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_b_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_b_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_b = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule

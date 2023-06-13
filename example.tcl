
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set b_offset_group [add_wave_group b_offset(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $b_offset_group]
set wdata_group [add_wave_group "Write Channel" -into $b_offset_group]
set ctrl_group [add_wave_group "Handshakes" -into $b_offset_group]
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_BUSER -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_BID -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_BRESP -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_RRESP -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_RUSER -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_RID -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_RDATA -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_ARUSER -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_ARREGION -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_ARQOS -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_ARPROT -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_ARBURST -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_ARLEN -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_ARID -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_ARADDR -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_WUSER -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_WID -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_WSTRB -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_WDATA -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_AWUSER -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_AWREGION -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_AWQOS -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_AWPROT -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_AWBURST -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_AWLEN -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_AWID -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_AWADDR -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_b_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set a_offset_group [add_wave_group a_offset(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $a_offset_group]
set wdata_group [add_wave_group "Write Channel" -into $a_offset_group]
set ctrl_group [add_wave_group "Handshakes" -into $a_offset_group]
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_BUSER -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_BID -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_BRESP -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_RRESP -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_RUSER -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_RID -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_RDATA -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_ARUSER -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_ARREGION -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_ARQOS -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_ARPROT -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_ARBURST -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_ARLEN -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_ARID -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_ARADDR -into $rdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_WUSER -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_WID -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_WSTRB -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_WDATA -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_AWUSER -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_AWREGION -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_AWQOS -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_AWPROT -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_AWBURST -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_AWLEN -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_AWID -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_AWADDR -into $wdata_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/m_axi_a_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set a_offset__b_offset_group [add_wave_group a_offset__b_offset(axi_slave) -into $cinputgroup]
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_BRESP -into $a_offset__b_offset_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_BREADY -into $a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_BVALID -into $a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_RRESP -into $a_offset__b_offset_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_RDATA -into $a_offset__b_offset_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_RREADY -into $a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_RVALID -into $a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_ARREADY -into $a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_ARVALID -into $a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_ARADDR -into $a_offset__b_offset_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_WSTRB -into $a_offset__b_offset_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_WDATA -into $a_offset__b_offset_group -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_WREADY -into $a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_WVALID -into $a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_AWREADY -into $a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_AWVALID -into $a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/AESL_inst_example/s_axi_control_AWADDR -into $a_offset__b_offset_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_example_top/AESL_inst_example/ap_start -into $blocksiggroup
add_wave /apatb_example_top/AESL_inst_example/ap_done -into $blocksiggroup
add_wave /apatb_example_top/AESL_inst_example/ap_idle -into $blocksiggroup
add_wave /apatb_example_top/AESL_inst_example/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_example_top/AESL_inst_example/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_example_top/AESL_inst_example/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_example_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_example_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_example_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_example_top/LENGTH_a_offset -into $tb_portdepth_group -radix hex
add_wave /apatb_example_top/LENGTH_b_offset -into $tb_portdepth_group -radix hex
add_wave /apatb_example_top/LENGTH_a -into $tb_portdepth_group -radix hex
add_wave /apatb_example_top/LENGTH_b -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_b_offset_group [add_wave_group b_offset(axi_master) -into $tbcinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_b_offset_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_b_offset_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_b_offset_group]
add_wave /apatb_example_top/b_BUSER -into $wdata_group -radix hex
add_wave /apatb_example_top/b_BID -into $wdata_group -radix hex
add_wave /apatb_example_top/b_BRESP -into $wdata_group -radix hex
add_wave /apatb_example_top/b_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/b_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/b_RRESP -into $rdata_group -radix hex
add_wave /apatb_example_top/b_RUSER -into $rdata_group -radix hex
add_wave /apatb_example_top/b_RID -into $rdata_group -radix hex
add_wave /apatb_example_top/b_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/b_RDATA -into $rdata_group -radix hex
add_wave /apatb_example_top/b_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/b_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/b_ARUSER -into $rdata_group -radix hex
add_wave /apatb_example_top/b_ARREGION -into $rdata_group -radix hex
add_wave /apatb_example_top/b_ARQOS -into $rdata_group -radix hex
add_wave /apatb_example_top/b_ARPROT -into $rdata_group -radix hex
add_wave /apatb_example_top/b_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_example_top/b_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_example_top/b_ARBURST -into $rdata_group -radix hex
add_wave /apatb_example_top/b_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_example_top/b_ARLEN -into $rdata_group -radix hex
add_wave /apatb_example_top/b_ARID -into $rdata_group -radix hex
add_wave /apatb_example_top/b_ARADDR -into $rdata_group -radix hex
add_wave /apatb_example_top/b_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/b_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/b_WUSER -into $wdata_group -radix hex
add_wave /apatb_example_top/b_WID -into $wdata_group -radix hex
add_wave /apatb_example_top/b_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/b_WSTRB -into $wdata_group -radix hex
add_wave /apatb_example_top/b_WDATA -into $wdata_group -radix hex
add_wave /apatb_example_top/b_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/b_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/b_AWUSER -into $wdata_group -radix hex
add_wave /apatb_example_top/b_AWREGION -into $wdata_group -radix hex
add_wave /apatb_example_top/b_AWQOS -into $wdata_group -radix hex
add_wave /apatb_example_top/b_AWPROT -into $wdata_group -radix hex
add_wave /apatb_example_top/b_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_example_top/b_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_example_top/b_AWBURST -into $wdata_group -radix hex
add_wave /apatb_example_top/b_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_example_top/b_AWLEN -into $wdata_group -radix hex
add_wave /apatb_example_top/b_AWID -into $wdata_group -radix hex
add_wave /apatb_example_top/b_AWADDR -into $wdata_group -radix hex
add_wave /apatb_example_top/b_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/b_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_a_offset_group [add_wave_group a_offset(axi_master) -into $tbcinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_a_offset_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_a_offset_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_a_offset_group]
add_wave /apatb_example_top/a_BUSER -into $wdata_group -radix hex
add_wave /apatb_example_top/a_BID -into $wdata_group -radix hex
add_wave /apatb_example_top/a_BRESP -into $wdata_group -radix hex
add_wave /apatb_example_top/a_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/a_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/a_RRESP -into $rdata_group -radix hex
add_wave /apatb_example_top/a_RUSER -into $rdata_group -radix hex
add_wave /apatb_example_top/a_RID -into $rdata_group -radix hex
add_wave /apatb_example_top/a_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/a_RDATA -into $rdata_group -radix hex
add_wave /apatb_example_top/a_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/a_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/a_ARUSER -into $rdata_group -radix hex
add_wave /apatb_example_top/a_ARREGION -into $rdata_group -radix hex
add_wave /apatb_example_top/a_ARQOS -into $rdata_group -radix hex
add_wave /apatb_example_top/a_ARPROT -into $rdata_group -radix hex
add_wave /apatb_example_top/a_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_example_top/a_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_example_top/a_ARBURST -into $rdata_group -radix hex
add_wave /apatb_example_top/a_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_example_top/a_ARLEN -into $rdata_group -radix hex
add_wave /apatb_example_top/a_ARID -into $rdata_group -radix hex
add_wave /apatb_example_top/a_ARADDR -into $rdata_group -radix hex
add_wave /apatb_example_top/a_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/a_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/a_WUSER -into $wdata_group -radix hex
add_wave /apatb_example_top/a_WID -into $wdata_group -radix hex
add_wave /apatb_example_top/a_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/a_WSTRB -into $wdata_group -radix hex
add_wave /apatb_example_top/a_WDATA -into $wdata_group -radix hex
add_wave /apatb_example_top/a_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/a_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/a_AWUSER -into $wdata_group -radix hex
add_wave /apatb_example_top/a_AWREGION -into $wdata_group -radix hex
add_wave /apatb_example_top/a_AWQOS -into $wdata_group -radix hex
add_wave /apatb_example_top/a_AWPROT -into $wdata_group -radix hex
add_wave /apatb_example_top/a_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_example_top/a_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_example_top/a_AWBURST -into $wdata_group -radix hex
add_wave /apatb_example_top/a_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_example_top/a_AWLEN -into $wdata_group -radix hex
add_wave /apatb_example_top/a_AWID -into $wdata_group -radix hex
add_wave /apatb_example_top/a_AWADDR -into $wdata_group -radix hex
add_wave /apatb_example_top/a_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_example_top/a_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_a_offset__b_offset_group [add_wave_group a_offset__b_offset(axi_slave) -into $tbcinputgroup]
add_wave /apatb_example_top/control_BRESP -into $tb_a_offset__b_offset_group -radix hex
add_wave /apatb_example_top/control_BREADY -into $tb_a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/control_BVALID -into $tb_a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/control_RRESP -into $tb_a_offset__b_offset_group -radix hex
add_wave /apatb_example_top/control_RDATA -into $tb_a_offset__b_offset_group -radix hex
add_wave /apatb_example_top/control_RREADY -into $tb_a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/control_RVALID -into $tb_a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/control_ARREADY -into $tb_a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/control_ARVALID -into $tb_a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/control_ARADDR -into $tb_a_offset__b_offset_group -radix hex
add_wave /apatb_example_top/control_WSTRB -into $tb_a_offset__b_offset_group -radix hex
add_wave /apatb_example_top/control_WDATA -into $tb_a_offset__b_offset_group -radix hex
add_wave /apatb_example_top/control_WREADY -into $tb_a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/control_WVALID -into $tb_a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/control_AWREADY -into $tb_a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/control_AWVALID -into $tb_a_offset__b_offset_group -color #ffff00 -radix hex
add_wave /apatb_example_top/control_AWADDR -into $tb_a_offset__b_offset_group -radix hex
save_wave_config example.wcfg
run all


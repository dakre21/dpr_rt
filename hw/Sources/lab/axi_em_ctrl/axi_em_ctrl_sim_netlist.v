// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Thu Apr 26 21:54:23 2018
// Host        : dakre-VirtualBox running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode funcsim /home/dakre/dpr_rt/hw/Sources/lab/axi_em_ctrl/axi_em_ctrl_sim_netlist.v
// Design      : axi_em_ctrl
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_em_ctrl,axi_emc,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_emc,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module axi_em_ctrl
   (s_axi_aclk,
    s_axi_aresetn,
    rdclk,
    s_axi_reg_awaddr,
    s_axi_reg_awvalid,
    s_axi_reg_awready,
    s_axi_reg_wdata,
    s_axi_reg_wstrb,
    s_axi_reg_wvalid,
    s_axi_reg_wready,
    s_axi_reg_bresp,
    s_axi_reg_bvalid,
    s_axi_reg_bready,
    s_axi_reg_araddr,
    s_axi_reg_arvalid,
    s_axi_reg_arready,
    s_axi_reg_rdata,
    s_axi_reg_rresp,
    s_axi_reg_rvalid,
    s_axi_reg_rready,
    s_axi_mem_awid,
    s_axi_mem_awaddr,
    s_axi_mem_awlen,
    s_axi_mem_awsize,
    s_axi_mem_awburst,
    s_axi_mem_awlock,
    s_axi_mem_awcache,
    s_axi_mem_awprot,
    s_axi_mem_awvalid,
    s_axi_mem_awready,
    s_axi_mem_wdata,
    s_axi_mem_wstrb,
    s_axi_mem_wlast,
    s_axi_mem_wvalid,
    s_axi_mem_wready,
    s_axi_mem_bid,
    s_axi_mem_bresp,
    s_axi_mem_bvalid,
    s_axi_mem_bready,
    s_axi_mem_arid,
    s_axi_mem_araddr,
    s_axi_mem_arlen,
    s_axi_mem_arsize,
    s_axi_mem_arburst,
    s_axi_mem_arlock,
    s_axi_mem_arcache,
    s_axi_mem_arprot,
    s_axi_mem_arvalid,
    s_axi_mem_arready,
    s_axi_mem_rid,
    s_axi_mem_rdata,
    s_axi_mem_rresp,
    s_axi_mem_rlast,
    s_axi_mem_rvalid,
    s_axi_mem_rready,
    mem_dq_i,
    mem_dq_o,
    mem_dq_t,
    mem_a,
    mem_ce,
    mem_cen,
    mem_oen,
    mem_wen,
    mem_ben,
    mem_qwen,
    mem_rpn,
    mem_adv_ldn,
    mem_lbon,
    mem_cken,
    mem_rnw,
    mem_cre,
    mem_wait);
  (* max_fanout = "10000" *) (* sigis = "Clk" *) (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) 
  (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi_mem:s_axi_reg, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000" *) input s_axi_aclk;
  (* max_fanout = "10000" *) (* sigis = "Rst" *) (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) 
  (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* max_fanout = "10000" *) (* sigis = "Clk" *) (* x_interface_info = "xilinx.com:signal:clock:1.0 rdclk CLK" *) 
  (* x_interface_parameter = "XIL_INTERFACENAME rdclk, ASSOCIATED_BUSIF EMC_INTF, FREQ_HZ 100000000, PHASE 0.000" *) input rdclk;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_REG, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [4:0]s_axi_reg_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG AWVALID" *) input s_axi_reg_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG AWREADY" *) output s_axi_reg_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG WDATA" *) input [31:0]s_axi_reg_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG WSTRB" *) input [3:0]s_axi_reg_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG WVALID" *) input s_axi_reg_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG WREADY" *) output s_axi_reg_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG BRESP" *) output [1:0]s_axi_reg_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG BVALID" *) output s_axi_reg_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG BREADY" *) input s_axi_reg_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG ARADDR" *) input [4:0]s_axi_reg_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG ARVALID" *) input s_axi_reg_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG ARREADY" *) output s_axi_reg_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG RDATA" *) output [31:0]s_axi_reg_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG RRESP" *) output [1:0]s_axi_reg_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG RVALID" *) output s_axi_reg_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_REG RREADY" *) input s_axi_reg_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_MEM, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [3:0]s_axi_mem_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWADDR" *) input [31:0]s_axi_mem_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWLEN" *) input [7:0]s_axi_mem_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWSIZE" *) input [2:0]s_axi_mem_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWBURST" *) input [1:0]s_axi_mem_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWLOCK" *) input s_axi_mem_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWCACHE" *) input [3:0]s_axi_mem_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWPROT" *) input [2:0]s_axi_mem_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWVALID" *) input s_axi_mem_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWREADY" *) output s_axi_mem_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WDATA" *) input [31:0]s_axi_mem_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WSTRB" *) input [3:0]s_axi_mem_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WLAST" *) input s_axi_mem_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WVALID" *) input s_axi_mem_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WREADY" *) output s_axi_mem_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BID" *) output [3:0]s_axi_mem_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BRESP" *) output [1:0]s_axi_mem_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BVALID" *) output s_axi_mem_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BREADY" *) input s_axi_mem_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARID" *) input [3:0]s_axi_mem_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARADDR" *) input [31:0]s_axi_mem_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARLEN" *) input [7:0]s_axi_mem_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARSIZE" *) input [2:0]s_axi_mem_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARBURST" *) input [1:0]s_axi_mem_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARLOCK" *) input s_axi_mem_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARCACHE" *) input [3:0]s_axi_mem_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARPROT" *) input [2:0]s_axi_mem_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARVALID" *) input s_axi_mem_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARREADY" *) output s_axi_mem_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RID" *) output [3:0]s_axi_mem_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RDATA" *) output [31:0]s_axi_mem_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RRESP" *) output [1:0]s_axi_mem_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RLAST" *) output s_axi_mem_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RVALID" *) output s_axi_mem_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RREADY" *) input s_axi_mem_rready;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF DQ_I" *) (* x_interface_parameter = "XIL_INTERFACENAME EMC_INTF, BOARD.ASSOCIATED_PARAM EMC_BOARD_INTERFACE" *) input [15:0]mem_dq_i;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF DQ_O" *) output [15:0]mem_dq_o;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF DQ_T" *) output [15:0]mem_dq_t;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF ADDR" *) output [31:0]mem_a;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF CE" *) output [0:0]mem_ce;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF CE_N" *) output [0:0]mem_cen;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF OEN" *) output [0:0]mem_oen;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF WEN" *) output mem_wen;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF BEN" *) output [1:0]mem_ben;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF QWEN" *) output [1:0]mem_qwen;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF RPN" *) output mem_rpn;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF ADV_LDN" *) output mem_adv_ldn;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF LBON" *) output mem_lbon;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF CLKEN" *) output mem_cken;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF RNW" *) output mem_rnw;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF CRE" *) output mem_cre;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF WAIT" *) input [0:0]mem_wait;

  wire \<const0> ;
  wire [31:1]\^mem_a ;
  wire [1:0]mem_ben;
  wire [0:0]mem_ce;
  wire [0:0]mem_cen;
  wire mem_cre;
  wire [15:0]mem_dq_i;
  wire [15:0]mem_dq_o;
  wire [15:0]mem_dq_t;
  wire [0:0]mem_oen;
  wire [1:0]mem_qwen;
  wire mem_rnw;
  wire mem_rpn;
  wire mem_wen;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Clk" *) wire rdclk;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Clk" *) wire s_axi_aclk;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Rst" *) wire s_axi_aresetn;
  wire [31:0]s_axi_mem_araddr;
  wire [1:0]s_axi_mem_arburst;
  wire [3:0]s_axi_mem_arid;
  wire [7:0]s_axi_mem_arlen;
  wire s_axi_mem_arready;
  wire [2:0]s_axi_mem_arsize;
  wire s_axi_mem_arvalid;
  wire [31:0]s_axi_mem_awaddr;
  wire [1:0]s_axi_mem_awburst;
  wire [3:0]s_axi_mem_awid;
  wire [7:0]s_axi_mem_awlen;
  wire s_axi_mem_awready;
  wire [2:0]s_axi_mem_awsize;
  wire s_axi_mem_awvalid;
  wire [3:0]s_axi_mem_bid;
  wire s_axi_mem_bready;
  wire [1:1]\^s_axi_mem_bresp ;
  wire s_axi_mem_bvalid;
  wire [31:0]s_axi_mem_rdata;
  wire [3:0]s_axi_mem_rid;
  wire s_axi_mem_rlast;
  wire s_axi_mem_rready;
  wire [1:1]\^s_axi_mem_rresp ;
  wire s_axi_mem_rvalid;
  wire [31:0]s_axi_mem_wdata;
  wire s_axi_mem_wlast;
  wire s_axi_mem_wready;
  wire [3:0]s_axi_mem_wstrb;
  wire s_axi_mem_wvalid;
  wire [4:0]s_axi_reg_araddr;
  wire s_axi_reg_arready;
  wire s_axi_reg_arvalid;
  wire [4:0]s_axi_reg_awaddr;
  wire s_axi_reg_awready;
  wire s_axi_reg_awvalid;
  wire s_axi_reg_bready;
  wire s_axi_reg_bvalid;
  wire [31:0]\^s_axi_reg_rdata ;
  wire s_axi_reg_rready;
  wire s_axi_reg_rvalid;
  wire [31:0]s_axi_reg_wdata;
  wire s_axi_reg_wvalid;

  assign mem_a[31:1] = \^mem_a [31:1];
  assign mem_a[0] = \<const0> ;
  assign mem_adv_ldn = \<const0> ;
  assign mem_cken = \<const0> ;
  assign mem_lbon = \<const0> ;
  assign s_axi_mem_bresp[1] = \^s_axi_mem_bresp [1];
  assign s_axi_mem_bresp[0] = \<const0> ;
  assign s_axi_mem_rresp[1] = \^s_axi_mem_rresp [1];
  assign s_axi_mem_rresp[0] = \<const0> ;
  assign s_axi_reg_bresp[1] = \<const0> ;
  assign s_axi_reg_bresp[0] = \<const0> ;
  assign s_axi_reg_rdata[31:30] = \^s_axi_reg_rdata [31:30];
  assign s_axi_reg_rdata[29] = \<const0> ;
  assign s_axi_reg_rdata[28] = \<const0> ;
  assign s_axi_reg_rdata[27] = \<const0> ;
  assign s_axi_reg_rdata[26] = \<const0> ;
  assign s_axi_reg_rdata[25] = \<const0> ;
  assign s_axi_reg_rdata[24] = \<const0> ;
  assign s_axi_reg_rdata[23] = \<const0> ;
  assign s_axi_reg_rdata[22] = \<const0> ;
  assign s_axi_reg_rdata[21] = \<const0> ;
  assign s_axi_reg_rdata[20] = \<const0> ;
  assign s_axi_reg_rdata[19] = \<const0> ;
  assign s_axi_reg_rdata[18] = \<const0> ;
  assign s_axi_reg_rdata[17] = \<const0> ;
  assign s_axi_reg_rdata[16] = \<const0> ;
  assign s_axi_reg_rdata[15] = \<const0> ;
  assign s_axi_reg_rdata[14] = \<const0> ;
  assign s_axi_reg_rdata[13] = \<const0> ;
  assign s_axi_reg_rdata[12] = \<const0> ;
  assign s_axi_reg_rdata[11] = \<const0> ;
  assign s_axi_reg_rdata[10] = \<const0> ;
  assign s_axi_reg_rdata[9] = \<const0> ;
  assign s_axi_reg_rdata[8] = \<const0> ;
  assign s_axi_reg_rdata[7] = \<const0> ;
  assign s_axi_reg_rdata[6:0] = \^s_axi_reg_rdata [6:0];
  assign s_axi_reg_rresp[1] = \<const0> ;
  assign s_axi_reg_rresp[0] = \<const0> ;
  assign s_axi_reg_wready = s_axi_reg_awready;
  GND GND
       (.G(\<const0> ));
  axi_em_ctrl_axi_emc U0
       (.E(s_axi_mem_arready),
        .mem_a(\^mem_a ),
        .mem_ben(mem_ben),
        .mem_ce(mem_ce),
        .mem_cen(mem_cen),
        .mem_cre(mem_cre),
        .mem_dq_i(mem_dq_i),
        .mem_dq_o(mem_dq_o),
        .mem_dq_t(mem_dq_t),
        .mem_oen(mem_oen),
        .mem_qwen(mem_qwen),
        .mem_rnw(mem_rnw),
        .mem_rpn(mem_rpn),
        .mem_wen(mem_wen),
        .rdclk(rdclk),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_mem_araddr(s_axi_mem_araddr),
        .s_axi_mem_arburst(s_axi_mem_arburst),
        .s_axi_mem_arid(s_axi_mem_arid),
        .s_axi_mem_arlen(s_axi_mem_arlen),
        .s_axi_mem_arsize(s_axi_mem_arsize[1:0]),
        .s_axi_mem_arvalid(s_axi_mem_arvalid),
        .s_axi_mem_awaddr(s_axi_mem_awaddr),
        .s_axi_mem_awburst(s_axi_mem_awburst),
        .s_axi_mem_awid(s_axi_mem_awid),
        .s_axi_mem_awlen(s_axi_mem_awlen),
        .s_axi_mem_awready(s_axi_mem_awready),
        .s_axi_mem_awsize(s_axi_mem_awsize[1:0]),
        .s_axi_mem_awvalid(s_axi_mem_awvalid),
        .s_axi_mem_bid(s_axi_mem_bid),
        .s_axi_mem_bready(s_axi_mem_bready),
        .s_axi_mem_bresp(\^s_axi_mem_bresp ),
        .s_axi_mem_bvalid(s_axi_mem_bvalid),
        .s_axi_mem_rdata(s_axi_mem_rdata),
        .s_axi_mem_rid(s_axi_mem_rid),
        .s_axi_mem_rlast(s_axi_mem_rlast),
        .s_axi_mem_rready(s_axi_mem_rready),
        .s_axi_mem_rresp(\^s_axi_mem_rresp ),
        .s_axi_mem_rvalid(s_axi_mem_rvalid),
        .s_axi_mem_wdata(s_axi_mem_wdata),
        .s_axi_mem_wlast(s_axi_mem_wlast),
        .s_axi_mem_wready(s_axi_mem_wready),
        .s_axi_mem_wstrb(s_axi_mem_wstrb),
        .s_axi_mem_wvalid(s_axi_mem_wvalid),
        .s_axi_reg_araddr(s_axi_reg_araddr[4:2]),
        .s_axi_reg_arready(s_axi_reg_arready),
        .s_axi_reg_arvalid(s_axi_reg_arvalid),
        .s_axi_reg_awaddr(s_axi_reg_awaddr[4:2]),
        .s_axi_reg_awready(s_axi_reg_awready),
        .s_axi_reg_awvalid(s_axi_reg_awvalid),
        .s_axi_reg_bready(s_axi_reg_bready),
        .s_axi_reg_bvalid(s_axi_reg_bvalid),
        .s_axi_reg_rdata({\^s_axi_reg_rdata [31:30],\^s_axi_reg_rdata [6:0]}),
        .s_axi_reg_rready(s_axi_reg_rready),
        .s_axi_reg_rvalid(s_axi_reg_rvalid),
        .s_axi_reg_wdata({s_axi_reg_wdata[31:30],s_axi_reg_wdata[6:0]}),
        .s_axi_reg_wvalid(s_axi_reg_wvalid));
endmodule

(* ORIG_REF_NAME = "EMC" *) 
module axi_em_ctrl_EMC
   (burst_cnt_i,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ,
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ,
    Cycle_cnt_en_int,
    \ADDRESS_STORE_GEN[0].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[1].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[2].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[3].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[4].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[5].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[6].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[7].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[8].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[9].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[10].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[11].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[12].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[13].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[14].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[15].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[16].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[17].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[18].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[19].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[20].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[21].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[22].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[23].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[24].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[25].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[26].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[27].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[28].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[29].ADDRESS_REG__0 ,
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ,
    mem_wen,
    Bus2IP_Mem_CS_d2_reg,
    ip2bus_rdack,
    transaction_done_i,
    mem_cen,
    mem_oen,
    mem_rpn,
    mem_ce,
    mem_rnw,
    CO,
    pend_rdreq,
    pend_wrreq,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ,
    trd_end,
    \s_axi_mem_bid_reg_reg[3] ,
    transaction_complete_reg_reg,
    \mem_a_int_reg[31] ,
    twph_end,
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ,
    cycle_End,
    \FSM_sequential_emc_addr_ps_reg[0] ,
    Write_req_data_ack_cmb,
    Bus2IP_RdReq_d1_reg,
    \FSM_sequential_emc_addr_ps_reg[2] ,
    enable_cs_cmb0,
    enable_cs_cmb126_out,
    Write_req_addr_ack_cmb,
    pend_rdreq_reg,
    read_req_ack_cmb,
    \FSM_sequential_crnt_state_reg[1] ,
    next_state1,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 ,
    rd_fifo_wr_en,
    cycle_cnt_en_cmb58_out,
    Q,
    \s_axi_mem_rdata[7] ,
    mem_dq_o,
    mem_dq_t,
    mem_qwen,
    mem_ben,
    ip2bus_addrack,
    S_0,
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    reset_fifo,
    CE,
    s_axi_aclk,
    SR,
    S_1,
    bus2ip_addr_temp,
    bus2ip_ben_fixed,
    \bus2ip_data_reg_reg[31] ,
    readreq_th_reset,
    temp_bus2ip_cs,
    IP2Bus_RdAck0,
    bus2Mem_RdReq,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9] ,
    S,
    bus2ip_burst_reg_reg,
    bus2ip_burst_reg_reg_0,
    bus2ip_wrreq_i,
    s_axi_mem_wvalid,
    s_axi_mem_awvalid,
    s_axi_mem_arvalid,
    rw_flag_reg,
    bus2Mem_WrReq,
    Bus2IP_RdReq_emc,
    out,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    single_transaction,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ,
    \burstlength_reg_reg[4] ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 ,
    rnw_reg_reg,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 ,
    new_page_access,
    bus2ip_wr_req_reg_reg,
    next_state181_out,
    read_req_ack_cmb44_out,
    bus2ip_rnw,
    last_addr1,
    rdce_out_i,
    rst_rdce_cmb,
    \axi_trans_size_reg_reg[1] ,
    s_axi_mem_awburst,
    s_axi_mem_arburst,
    s_axi_mem_wlast,
    \bus2ip_BE_reg_reg[3] ,
    \bus2ip_BE_reg_reg[1] ,
    E,
    D,
    mem_dq_i,
    rdclk);
  output [0:7]burst_cnt_i;
  output [0:0]\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  output [0:0]\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ;
  output Cycle_cnt_en_int;
  output \ADDRESS_STORE_GEN[0].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[1].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[2].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[3].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[4].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[5].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[6].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[7].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[8].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[9].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[10].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[11].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[12].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[13].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[14].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[15].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[16].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[17].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[18].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[19].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[20].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[21].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[22].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[23].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[24].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[25].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[26].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[27].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[28].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[29].ADDRESS_REG__0 ;
  output \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  output mem_wen;
  output [0:0]Bus2IP_Mem_CS_d2_reg;
  output ip2bus_rdack;
  output transaction_done_i;
  output [0:0]mem_cen;
  output [0:0]mem_oen;
  output mem_rpn;
  output [0:0]mem_ce;
  output mem_rnw;
  output [0:0]CO;
  output pend_rdreq;
  output pend_wrreq;
  output \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  output \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  output trd_end;
  output \s_axi_mem_bid_reg_reg[3] ;
  output transaction_complete_reg_reg;
  output \mem_a_int_reg[31] ;
  output twph_end;
  output \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ;
  output cycle_End;
  output \FSM_sequential_emc_addr_ps_reg[0] ;
  output Write_req_data_ack_cmb;
  output Bus2IP_RdReq_d1_reg;
  output \FSM_sequential_emc_addr_ps_reg[2] ;
  output enable_cs_cmb0;
  output enable_cs_cmb126_out;
  output Write_req_addr_ack_cmb;
  output pend_rdreq_reg;
  output read_req_ack_cmb;
  output \FSM_sequential_crnt_state_reg[1] ;
  output next_state1;
  output \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ;
  output \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 ;
  output rd_fifo_wr_en;
  output cycle_cnt_en_cmb58_out;
  output [3:0]Q;
  output [31:0]\s_axi_mem_rdata[7] ;
  output [15:0]mem_dq_o;
  output [15:0]mem_dq_t;
  output [1:0]mem_qwen;
  output [1:0]mem_ben;
  input ip2bus_addrack;
  input S_0;
  input \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  input reset_fifo;
  input CE;
  input s_axi_aclk;
  input [0:0]SR;
  input S_1;
  input [29:0]bus2ip_addr_temp;
  input [0:3]bus2ip_ben_fixed;
  input [31:0]\bus2ip_data_reg_reg[31] ;
  input readreq_th_reset;
  input temp_bus2ip_cs;
  input IP2Bus_RdAck0;
  input bus2Mem_RdReq;
  input [0:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9] ;
  input [0:0]S;
  input bus2ip_burst_reg_reg;
  input bus2ip_burst_reg_reg_0;
  input bus2ip_wrreq_i;
  input s_axi_mem_wvalid;
  input s_axi_mem_awvalid;
  input s_axi_mem_arvalid;
  input rw_flag_reg;
  input bus2Mem_WrReq;
  input Bus2IP_RdReq_emc;
  input [0:0]out;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  input single_transaction;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  input \burstlength_reg_reg[4] ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 ;
  input rnw_reg_reg;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 ;
  input new_page_access;
  input bus2ip_wr_req_reg_reg;
  input next_state181_out;
  input read_req_ack_cmb44_out;
  input bus2ip_rnw;
  input last_addr1;
  input rdce_out_i;
  input rst_rdce_cmb;
  input [0:0]\axi_trans_size_reg_reg[1] ;
  input [1:0]s_axi_mem_awburst;
  input [1:0]s_axi_mem_arburst;
  input s_axi_mem_wlast;
  input \bus2ip_BE_reg_reg[3] ;
  input [1:0]\bus2ip_BE_reg_reg[1] ;
  input [0:0]E;
  input [27:0]D;
  input [15:0]mem_dq_i;
  input rdclk;

  wire \ADDRESS_STORE_GEN[0].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[10].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[11].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[12].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[13].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[14].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[15].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[16].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[17].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[18].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[19].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[1].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[20].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[21].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[22].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[23].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[24].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[25].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[26].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[27].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[28].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[29].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[2].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[3].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[4].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[5].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[6].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[7].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[8].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[9].ADDRESS_REG__0 ;
  wire ADDR_COUNTER_MUX_I_n_32;
  wire ADDR_COUNTER_MUX_I_n_33;
  wire ADDR_COUNTER_MUX_I_n_34;
  wire ADDR_COUNTER_MUX_I_n_36;
  wire ADDR_COUNTER_MUX_I_n_37;
  wire ADDR_COUNTER_MUX_I_n_38;
  wire ADDR_COUNTER_MUX_I_n_39;
  wire ADDR_COUNTER_MUX_I_n_42;
  wire ADDR_COUNTER_MUX_I_n_44;
  wire \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  wire [0:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9] ;
  wire [0:0]Bus2IP_Mem_CS_d2_reg;
  wire Bus2IP_RdReq_d1_reg;
  wire Bus2IP_RdReq_emc;
  wire CE;
  wire [0:0]CO;
  wire COUNTERS_I_n_30;
  wire COUNTERS_I_n_33;
  wire COUNTERS_I_n_35;
  wire COUNTERS_I_n_36;
  wire COUNTERS_I_n_42;
  wire COUNTERS_I_n_45;
  wire Cycle_cnt_en_int;
  wire [27:0]D;
  wire \DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/CE ;
  wire \DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire [0:0]E;
  wire \FSM_sequential_crnt_state_reg[1] ;
  wire \FSM_sequential_emc_addr_ps_reg[0] ;
  wire \FSM_sequential_emc_addr_ps_reg[2] ;
  wire IO_REGISTERS_I_n_10;
  wire IO_REGISTERS_I_n_11;
  wire IO_REGISTERS_I_n_12;
  wire IO_REGISTERS_I_n_13;
  wire IO_REGISTERS_I_n_14;
  wire IO_REGISTERS_I_n_15;
  wire IO_REGISTERS_I_n_16;
  wire IO_REGISTERS_I_n_17;
  wire IO_REGISTERS_I_n_18;
  wire IO_REGISTERS_I_n_19;
  wire IO_REGISTERS_I_n_20;
  wire IO_REGISTERS_I_n_21;
  wire IO_REGISTERS_I_n_6;
  wire IO_REGISTERS_I_n_7;
  wire IO_REGISTERS_I_n_8;
  wire IO_REGISTERS_I_n_9;
  wire IP2Bus_RdAck0;
  wire IPIC_IF_I_n_11;
  wire IPIC_IF_I_n_13;
  wire IPIC_IF_I_n_14;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 ;
  wire MEM_STATE_MACHINE_I_n_0;
  wire MEM_STATE_MACHINE_I_n_10;
  wire MEM_STATE_MACHINE_I_n_12;
  wire MEM_STATE_MACHINE_I_n_13;
  wire MEM_STATE_MACHINE_I_n_14;
  wire MEM_STATE_MACHINE_I_n_15;
  wire MEM_STATE_MACHINE_I_n_16;
  wire MEM_STATE_MACHINE_I_n_17;
  wire MEM_STATE_MACHINE_I_n_18;
  wire MEM_STATE_MACHINE_I_n_19;
  wire MEM_STATE_MACHINE_I_n_20;
  wire MEM_STATE_MACHINE_I_n_21;
  wire MEM_STATE_MACHINE_I_n_22;
  wire MEM_STATE_MACHINE_I_n_23;
  wire MEM_STATE_MACHINE_I_n_24;
  wire MEM_STATE_MACHINE_I_n_25;
  wire MEM_STATE_MACHINE_I_n_26;
  wire MEM_STATE_MACHINE_I_n_34;
  wire MEM_STATE_MACHINE_I_n_36;
  wire MEM_STATE_MACHINE_I_n_41;
  wire MEM_STATE_MACHINE_I_n_51;
  wire [0:1]Mem_BEN_int;
  wire Mem_CE_int;
  wire [0:15]Mem_DQ_O_int;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire [3:0]Q;
  wire [0:0]\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 ;
  wire [0:0]\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ;
  wire [0:0]S;
  wire [0:0]SR;
  wire S_0;
  wire S_1;
  wire \THZCNT_I/CE ;
  wire \TLZCNT_I/CE ;
  wire \TPACCCNT_I/CE ;
  wire \TPACCCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TRDCNT_I/CE ;
  wire \TRDCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TRDCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TRDCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TRDCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TRDCNT_I/S ;
  wire \TWPHCNT_I/CE ;
  wire \TWPHCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWPHCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWPHCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWPHCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWPHCNT_I/S ;
  wire \TWRCNT_I/CE ;
  wire \TWRCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWRCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWRCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWRCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/CE ;
  wire Write_req_addr_ack_cmb;
  wire Write_req_data_ack_cmb;
  wire Write_req_data_ack_cmb13_out;
  wire addr_cnt_ce;
  wire addr_cnt_ce_cmb61_out;
  wire addr_cnt_rst;
  wire [0:0]\axi_trans_size_reg_reg[1] ;
  wire [0:7]burst_cnt_i;
  wire \burstlength_reg_reg[4] ;
  wire bus2Mem_RdReq;
  wire bus2Mem_WrReq;
  wire [1:0]\bus2ip_BE_reg_reg[1] ;
  wire \bus2ip_BE_reg_reg[3] ;
  wire [29:0]bus2ip_addr_temp;
  wire [0:3]bus2ip_ben_fixed;
  wire bus2ip_burst_reg_reg;
  wire bus2ip_burst_reg_reg_0;
  wire [31:0]\bus2ip_data_reg_reg[31] ;
  wire bus2ip_rnw;
  wire bus2ip_wr_req_reg_reg;
  wire bus2ip_wrreq_i;
  wire cycle_End;
  wire [0:0]cycle_cnt;
  wire cycle_cnt_en_cmb58_out;
  wire data_strobe_c;
  wire enable_cs_cmb0;
  wire enable_cs_cmb126_out;
  wire ip2bus_addrack;
  wire ip2bus_rdack;
  wire last_addr1;
  wire [0:31]mem2Bus_Data;
  wire mem_CEN_cmb;
  wire mem_OEN_cmb;
  wire mem_RNW_cmb;
  wire mem_WEN_cmb;
  wire \mem_a_int_reg[31] ;
  wire [1:0]mem_ben;
  wire [0:0]mem_ce;
  wire [0:0]mem_cen;
  wire [15:0]mem_dq_i;
  wire [15:0]mem_dq_o;
  wire [15:0]mem_dq_t;
  wire [15:15]mem_dq_t_int;
  wire mem_dqt_t_d;
  wire [0:0]mem_oen;
  wire [1:0]mem_qwen;
  wire [0:1]mem_qwen_int;
  wire mem_rnw;
  wire mem_rpn;
  wire mem_wen;
  wire new_page_access;
  wire new_page_d1;
  wire next_state1;
  wire next_state181_out;
  wire [0:0]out;
  wire [0:3]p_0_in;
  wire pend_rdreq;
  wire pend_rdreq_reg;
  wire pend_wrreq;
  wire rd_fifo_wr_en;
  wire rdce_out_i;
  wire rdclk;
  wire read_ack;
  wire read_ack_cmb;
  wire read_break_reg;
  wire read_data_en;
  wire read_req_ack_cmb;
  wire read_req_ack_cmb44_out;
  wire readreq_th_reset;
  wire reset_fifo;
  wire rnw_reg_reg;
  wire rst_rdce_cmb;
  wire rw_flag_reg;
  wire s_axi_aclk;
  wire [1:0]s_axi_mem_arburst;
  wire s_axi_mem_arvalid;
  wire [1:0]s_axi_mem_awburst;
  wire s_axi_mem_awvalid;
  wire \s_axi_mem_bid_reg_reg[3] ;
  wire [31:0]\s_axi_mem_rdata[7] ;
  wire s_axi_mem_wlast;
  wire s_axi_mem_wvalid;
  wire single_transaction;
  wire temp_bus2ip_cs;
  wire [3:3]tpacc_cnt;
  wire tpacc_end;
  wire transaction_complete_reg_reg;
  wire transaction_done_i;
  wire [0:4]trd_cnt;
  wire trd_cnt_en;
  wire trd_end;
  wire [0:4]twph_cnt;
  wire twph_cnt_en;
  wire twph_end;
  wire twr_cnt_en;
  wire twr_end;
  wire [0:14]twr_rec_cnt;
  wire twr_rec_cnt_en_int;
  wire twr_rec_end_int;

  axi_em_ctrl_addr_counter_mux ADDR_COUNTER_MUX_I
       (.\ADDRESS_STORE_GEN[0].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[0].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[10].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[10].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[11].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[11].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[12].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[12].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[13].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[13].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[14].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[14].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[15].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[15].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[16].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[16].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[17].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[17].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[18].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[18].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[19].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[19].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[1].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[1].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[20].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[20].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[21].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[21].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[22].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[22].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[23].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[23].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[24].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[24].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[25].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[25].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[26].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[26].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[27].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[27].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[28].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[28].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[29].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[29].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[2].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[2].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[3].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[3].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[4].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[4].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[5].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[5].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[6].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[6].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[7].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[7].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[8].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[8].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[9].ADDRESS_REG__0 (\ADDRESS_STORE_GEN[9].ADDRESS_REG__0 ),
        .CE(\DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/CE ),
        .CO(CO),
        .D({mem_qwen_int[0],mem_qwen_int[1]}),
        .\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0 (ADDR_COUNTER_MUX_I_n_32),
        .\FSM_sequential_crnt_state_reg[0] (ADDR_COUNTER_MUX_I_n_37),
        .\FSM_sequential_crnt_state_reg[0]_0 (MEM_STATE_MACHINE_I_n_36),
        .\FSM_sequential_crnt_state_reg[0]_1 (MEM_STATE_MACHINE_I_n_41),
        .\FSM_sequential_crnt_state_reg[1] (ADDR_COUNTER_MUX_I_n_38),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 (ADDR_COUNTER_MUX_I_n_33),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 (ADDR_COUNTER_MUX_I_n_34),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 (ADDR_COUNTER_MUX_I_n_36),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 (ADDR_COUNTER_MUX_I_n_44),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 (twph_end),
        .\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 (trd_end),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0] (ADDR_COUNTER_MUX_I_n_42),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] (\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 ),
        .\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE (\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ),
        .\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 (ADDR_COUNTER_MUX_I_n_39),
        .SR(SR),
        .S_1(S_1),
        .addr_cnt_ce(addr_cnt_ce),
        .addr_cnt_ce_cmb61_out(addr_cnt_ce_cmb61_out),
        .addr_cnt_rst(addr_cnt_rst),
        .\axi_trans_size_reg_reg[1] (Cycle_cnt_en_int),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .\bus2ip_BE_reg_reg[1] (\bus2ip_BE_reg_reg[1] ),
        .\bus2ip_BE_reg_reg[3] (\bus2ip_BE_reg_reg[3] ),
        .bus2ip_addr_temp(bus2ip_addr_temp),
        .bus2ip_ben_fixed(bus2ip_ben_fixed),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_wrreq_i(bus2ip_wrreq_i),
        .cycle_cnt(cycle_cnt),
        .data_strobe_c(data_strobe_c),
        .mem_WEN_cmb(mem_WEN_cmb),
        .\mem_ben_reg_reg[0] ({Mem_BEN_int[0],Mem_BEN_int[1]}),
        .new_page_d1(new_page_d1),
        .pend_wrreq_reg(pend_wrreq),
        .read_break_reg(read_break_reg),
        .read_data_en_reg_reg(cycle_End),
        .s_axi_aclk(s_axi_aclk),
        .temp_bus2ip_cs(temp_bus2ip_cs),
        .tpacc_end(tpacc_end));
  axi_em_ctrl_counters COUNTERS_I
       (.CE(\TWRCNT_I/CE ),
        .CE_11(\TRDCNT_I/CE ),
        .CE_13(\TPACCCNT_I/CE ),
        .CE_14(\T_WRREC_CNT_I/CE ),
        .CE_15(\THZCNT_I/CE ),
        .CE_4(\TWPHCNT_I/CE ),
        .CE_5(\TLZCNT_I/CE ),
        .CO(CO),
        .\DATA_STORE_GEN[0].WRDATA_REG (twph_end),
        .\FSM_sequential_crnt_state_reg[0] (MEM_STATE_MACHINE_I_n_36),
        .\FSM_sequential_crnt_state_reg[1] (COUNTERS_I_n_35),
        .\FSM_sequential_crnt_state_reg[2] (MEM_STATE_MACHINE_I_n_26),
        .\FSM_sequential_crnt_state_reg[3] (COUNTERS_I_n_36),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 (\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ({p_0_in[0],p_0_in[1],p_0_in[2],p_0_in[3]}),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ({twr_rec_cnt[0],twr_rec_cnt[1],twr_rec_cnt[2],twr_rec_cnt[3],twr_rec_cnt[4],twr_rec_cnt[5],twr_rec_cnt[6],twr_rec_cnt[7],twr_rec_cnt[8],twr_rec_cnt[9],twr_rec_cnt[10],twr_rec_cnt[11],twr_rec_cnt[12],twr_rec_cnt[13],twr_rec_cnt[14]}),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 (COUNTERS_I_n_33),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 (MEM_STATE_MACHINE_I_n_12),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\TWRCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10 (\TRDCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 (\TWPHCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_22),
        .\PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_23),
        .\PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_24),
        .\PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_25),
        .\PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_10),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 (cycle_End),
        .\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_13),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\TWRCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 (\TWPHCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9 (\TRDCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_14),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\TWRCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 (\TWPHCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8 (\TRDCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_15),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg (\TWRCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 (\TWPHCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 (\TPACCCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7 (\TRDCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_16),
        .\PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_17),
        .\PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_18),
        .\PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_19),
        .\PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_20),
        .\PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_21),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] (COUNTERS_I_n_45),
        .\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE (\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 (COUNTERS_I_n_42),
        .S(\TWPHCNT_I/S ),
        .SR(SR),
        .S_6(\TRDCNT_I/S ),
        .Write_req_data_ack_cmb13_out(Write_req_data_ack_cmb13_out),
        .addr_cnt_ce_cmb61_out(addr_cnt_ce_cmb61_out),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .bus2Mem_WrReq(bus2Mem_WrReq),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_wrreq_i(bus2ip_wrreq_i),
        .cycle_cnt_en_cmb58_out(cycle_cnt_en_cmb58_out),
        .last_addr1(last_addr1),
        .out(MEM_STATE_MACHINE_I_n_0),
        .pend_wrreq_reg(pend_wrreq),
        .read_ack_cmb(read_ack_cmb),
        .read_ack_reg_reg(tpacc_cnt),
        .read_ack_reg_reg_0(trd_end),
        .s_axi_aclk(s_axi_aclk),
        .temp_bus2ip_cs(temp_bus2ip_cs),
        .tpacc_end(tpacc_end),
        .transaction_done_reg_reg(COUNTERS_I_n_30),
        .trd_cnt(trd_cnt),
        .trd_cnt_en(trd_cnt_en),
        .twph_cnt(twph_cnt),
        .twph_cnt_en(twph_cnt_en),
        .twr_cnt_en(twr_cnt_en),
        .twr_end(twr_end),
        .twr_rec_cnt_en_int(twr_rec_cnt_en_int),
        .twr_rec_end_int(twr_rec_end_int));
  axi_em_ctrl_io_registers IO_REGISTERS_I
       (.\BEN_STORE_GEN[0].BEN_REG ({mem_qwen_int[0],mem_qwen_int[1]}),
        .\BEN_STORE_GEN[2].BEN_REG ({Mem_BEN_int[0],Mem_BEN_int[1]}),
        .D({Mem_DQ_O_int[0],Mem_DQ_O_int[1],Mem_DQ_O_int[2],Mem_DQ_O_int[3],Mem_DQ_O_int[4],Mem_DQ_O_int[5],Mem_DQ_O_int[6],Mem_DQ_O_int[7],Mem_DQ_O_int[8],Mem_DQ_O_int[9],Mem_DQ_O_int[10],Mem_DQ_O_int[11],Mem_DQ_O_int[12],Mem_DQ_O_int[13],Mem_DQ_O_int[14],Mem_DQ_O_int[15]}),
        .Mem_CE_int(Mem_CE_int),
        .Q({IO_REGISTERS_I_n_6,IO_REGISTERS_I_n_7,IO_REGISTERS_I_n_8,IO_REGISTERS_I_n_9,IO_REGISTERS_I_n_10,IO_REGISTERS_I_n_11,IO_REGISTERS_I_n_12,IO_REGISTERS_I_n_13,IO_REGISTERS_I_n_14,IO_REGISTERS_I_n_15,IO_REGISTERS_I_n_16,IO_REGISTERS_I_n_17,IO_REGISTERS_I_n_18,IO_REGISTERS_I_n_19,IO_REGISTERS_I_n_20,IO_REGISTERS_I_n_21}),
        .SR(SR),
        .mem_CEN_cmb(mem_CEN_cmb),
        .mem_OEN_cmb(mem_OEN_cmb),
        .mem_RNW_cmb(mem_RNW_cmb),
        .mem_WEN_cmb(mem_WEN_cmb),
        .mem_ben(mem_ben),
        .mem_ce(mem_ce),
        .mem_cen(mem_cen),
        .mem_dq_i(mem_dq_i),
        .mem_dq_o(mem_dq_o),
        .mem_dq_t(mem_dq_t),
        .mem_dqt_t_d_reg(mem_dq_t_int),
        .mem_oen(mem_oen),
        .mem_qwen(mem_qwen),
        .mem_rnw(mem_rnw),
        .mem_rpn(mem_rpn),
        .mem_wen(mem_wen),
        .rdclk(rdclk),
        .s_axi_aclk(s_axi_aclk));
  axi_em_ctrl_ipic_if IPIC_IF_I
       (.Bus2IP_RdReq_d1_reg(Bus2IP_RdReq_d1_reg),
        .CE(CE),
        .D({mem2Bus_Data[0],mem2Bus_Data[1],mem2Bus_Data[2],mem2Bus_Data[3],mem2Bus_Data[4],mem2Bus_Data[5],mem2Bus_Data[6],mem2Bus_Data[7],mem2Bus_Data[8],mem2Bus_Data[9],mem2Bus_Data[10],mem2Bus_Data[11],mem2Bus_Data[12],mem2Bus_Data[13],mem2Bus_Data[14],mem2Bus_Data[15],mem2Bus_Data[16],mem2Bus_Data[17],mem2Bus_Data[18],mem2Bus_Data[19],mem2Bus_Data[20],mem2Bus_Data[21],mem2Bus_Data[22],mem2Bus_Data[23],mem2Bus_Data[24],mem2Bus_Data[25],mem2Bus_Data[26],mem2Bus_Data[27],mem2Bus_Data[28],mem2Bus_Data[29],mem2Bus_Data[30],mem2Bus_Data[31]}),
        .\FSM_sequential_crnt_state_reg[0] (IPIC_IF_I_n_11),
        .\FSM_sequential_crnt_state_reg[0]_0 (MEM_STATE_MACHINE_I_n_34),
        .\FSM_sequential_crnt_state_reg[3] (MEM_STATE_MACHINE_I_n_0),
        .IP2Bus_RdAck0(IP2Bus_RdAck0),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 (IPIC_IF_I_n_13),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 (cycle_End),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 (twph_end),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] (IPIC_IF_I_n_14),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 (\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ),
        .SR(SR),
        .S_0(S_0),
        .burst_cnt_i(burst_cnt_i),
        .bus2ip_burst_reg_reg(bus2ip_burst_reg_reg),
        .bus2ip_burst_reg_reg_0(bus2ip_burst_reg_reg_0),
        .bus2ip_wrreq_i(bus2ip_wrreq_i),
        .ip2bus_addrack(ip2bus_addrack),
        .ip2bus_rdack(ip2bus_rdack),
        .next_state1(next_state1),
        .out(out),
        .pend_rdreq(pend_rdreq),
        .pend_rdreq_reg_0(pend_rdreq_reg),
        .pend_wrreq_reg_0(pend_wrreq),
        .rd_fifo_wr_en(rd_fifo_wr_en),
        .reset_fifo(reset_fifo),
        .s_axi_aclk(s_axi_aclk),
        .\s_axi_mem_rdata[7] (\s_axi_mem_rdata[7] ),
        .s_axi_mem_wvalid(s_axi_mem_wvalid),
        .single_transaction(single_transaction),
        .temp_bus2ip_cs(temp_bus2ip_cs));
  axi_em_ctrl_mem_state_machine MEM_STATE_MACHINE_I
       (.Bus2IP_Mem_CS_d2_reg_0(Bus2IP_Mem_CS_d2_reg),
        .Bus2IP_RdReq_emc(Bus2IP_RdReq_emc),
        .CE(\TRDCNT_I/CE ),
        .CE_0(\DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/CE ),
        .CE_10(\TWRCNT_I/CE ),
        .CE_11(\TLZCNT_I/CE ),
        .CE_17(\T_WRREC_CNT_I/CE ),
        .CE_2(\TPACCCNT_I/CE ),
        .CE_3(\THZCNT_I/CE ),
        .CE_4(\TWPHCNT_I/CE ),
        .\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] (MEM_STATE_MACHINE_I_n_34),
        .\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0 (MEM_STATE_MACHINE_I_n_41),
        .\FSM_sequential_crnt_state_reg[1]_0 (\FSM_sequential_crnt_state_reg[1] ),
        .\FSM_sequential_crnt_state_reg[3]_0 (COUNTERS_I_n_36),
        .\FSM_sequential_emc_addr_ps_reg[0] (\FSM_sequential_emc_addr_ps_reg[0] ),
        .\FSM_sequential_emc_addr_ps_reg[0]_0 (out),
        .\FSM_sequential_emc_addr_ps_reg[2] (\FSM_sequential_emc_addr_ps_reg[2] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_6 (COUNTERS_I_n_45),
        .Mem_CE_int(Mem_CE_int),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 (Cycle_cnt_en_int),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 (ADDR_COUNTER_MUX_I_n_37),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 (ADDR_COUNTER_MUX_I_n_36),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2 (ADDR_COUNTER_MUX_I_n_32),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3 (ADDR_COUNTER_MUX_I_n_44),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_12),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ({twr_rec_cnt[0],twr_rec_cnt[1],twr_rec_cnt[2],twr_rec_cnt[3],twr_rec_cnt[4],twr_rec_cnt[5],twr_rec_cnt[6],twr_rec_cnt[7],twr_rec_cnt[8],twr_rec_cnt[9],twr_rec_cnt[10],twr_rec_cnt[11],twr_rec_cnt[12],twr_rec_cnt[13],twr_rec_cnt[14]}),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ({p_0_in[0],p_0_in[1],p_0_in[2],p_0_in[3]}),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1 (\TRDCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_15 (\TWRCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 (\TWPHCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_22),
        .\PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_23),
        .\PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_24),
        .\PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_25),
        .\PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_10),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 (cycle_End),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 (ADDR_COUNTER_MUX_I_n_39),
        .\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_13),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\TRDCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_14 (\TWRCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 (\TWPHCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 (\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1 (COUNTERS_I_n_35),
        .\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_14),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\TRDCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_13 (\TWRCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 (\TWPHCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 (twph_end),
        .\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 (pend_rdreq_reg),
        .\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_15),
        .\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 (trd_end),
        .\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_1 (tpacc_cnt),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg (\TRDCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 (\TWRCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16 (\TPACCCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_9 (\TWPHCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 (COUNTERS_I_n_33),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_16),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 (COUNTERS_I_n_42),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 (\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .\PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_17),
        .\PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_18),
        .\PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_19),
        .\PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_20),
        .\PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_21),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] (\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 (MEM_STATE_MACHINE_I_n_51),
        .\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 (MEM_STATE_MACHINE_I_n_26),
        .S(\TRDCNT_I/S ),
        .SR(SR),
        .S_5(\TWPHCNT_I/S ),
        .Write_req_addr_ack_cmb(Write_req_addr_ack_cmb),
        .Write_req_data_ack_cmb(Write_req_data_ack_cmb),
        .Write_req_data_ack_cmb13_out(Write_req_data_ack_cmb13_out),
        .addr_cnt_ce(addr_cnt_ce),
        .addr_cnt_rst(addr_cnt_rst),
        .\axi_trans_size_reg_reg[1] (\axi_trans_size_reg_reg[1] ),
        .\burstlength_reg_reg[4] (\burstlength_reg_reg[4] ),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .bus2Mem_WrReq(bus2Mem_WrReq),
        .bus2ip_wr_req_reg_reg(bus2ip_wr_req_reg_reg),
        .bus2ip_wr_req_reg_reg_0(IPIC_IF_I_n_14),
        .bus2ip_wr_req_reg_reg_1(ADDR_COUNTER_MUX_I_n_33),
        .bus2ip_wrreq_i(bus2ip_wrreq_i),
        .cycle_cnt(cycle_cnt),
        .data_strobe_c(data_strobe_c),
        .enable_cs_cmb0(enable_cs_cmb0),
        .enable_cs_cmb126_out(enable_cs_cmb126_out),
        .mem_CEN_cmb(mem_CEN_cmb),
        .mem_OEN_cmb(mem_OEN_cmb),
        .mem_RNW_cmb(mem_RNW_cmb),
        .mem_WEN_cmb(mem_WEN_cmb),
        .\mem_a_int_reg[31] (\mem_a_int_reg[31] ),
        .\mem_dq_t_reg_reg[0] (mem_dq_t_int),
        .mem_dqt_t_d(mem_dqt_t_d),
        .new_page_access(new_page_access),
        .new_page_d1(new_page_d1),
        .new_page_d1_reg_0(ADDR_COUNTER_MUX_I_n_38),
        .next_state1(next_state1),
        .next_state181_out(next_state181_out),
        .out(MEM_STATE_MACHINE_I_n_0),
        .pend_rdreq(pend_rdreq),
        .pend_wrreq_reg(COUNTERS_I_n_30),
        .pend_wrreq_reg_0(pend_wrreq),
        .pend_wrreq_reg_1(IPIC_IF_I_n_11),
        .pend_wrreq_reg_2(IPIC_IF_I_n_13),
        .rdce_out_i(rdce_out_i),
        .read_ack(read_ack),
        .read_ack_cmb(read_ack_cmb),
        .read_break_reg(read_break_reg),
        .read_data_en(read_data_en),
        .read_data_en_reg_reg_0(MEM_STATE_MACHINE_I_n_36),
        .read_req_ack_cmb(read_req_ack_cmb),
        .read_req_ack_cmb44_out(read_req_ack_cmb44_out),
        .rnw_reg_reg(rnw_reg_reg),
        .rnw_reg_reg_0(ADDR_COUNTER_MUX_I_n_34),
        .rst_rdce_cmb(rst_rdce_cmb),
        .rw_flag_reg(rw_flag_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_mem_arburst(s_axi_mem_arburst),
        .s_axi_mem_arvalid(s_axi_mem_arvalid),
        .s_axi_mem_awburst(s_axi_mem_awburst),
        .s_axi_mem_awvalid(s_axi_mem_awvalid),
        .\s_axi_mem_bid_reg_reg[3] (\s_axi_mem_bid_reg_reg[3] ),
        .s_axi_mem_wlast(s_axi_mem_wlast),
        .s_axi_mem_wvalid(s_axi_mem_wvalid),
        .single_transaction(single_transaction),
        .temp_bus2ip_cs(temp_bus2ip_cs),
        .tpacc_end(tpacc_end),
        .transaction_complete_reg_reg_0(transaction_complete_reg_reg),
        .transaction_done_i(transaction_done_i),
        .trd_cnt(trd_cnt),
        .trd_cnt_en(trd_cnt_en),
        .twph_cnt(twph_cnt),
        .twph_cnt_en(twph_cnt_en),
        .twr_cnt_en(twr_cnt_en),
        .twr_end(twr_end),
        .twr_rec_cnt_en_int(twr_rec_cnt_en_int),
        .twr_rec_end_int(twr_rec_end_int));
  axi_em_ctrl_mem_steer MEM_STEER_I
       (.\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 (\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ),
        .D({mem2Bus_Data[0],mem2Bus_Data[1],mem2Bus_Data[2],mem2Bus_Data[3],mem2Bus_Data[4],mem2Bus_Data[5],mem2Bus_Data[6],mem2Bus_Data[7],mem2Bus_Data[8],mem2Bus_Data[9],mem2Bus_Data[10],mem2Bus_Data[11],mem2Bus_Data[12],mem2Bus_Data[13],mem2Bus_Data[14],mem2Bus_Data[15],mem2Bus_Data[16],mem2Bus_Data[17],mem2Bus_Data[18],mem2Bus_Data[19],mem2Bus_Data[20],mem2Bus_Data[21],mem2Bus_Data[22],mem2Bus_Data[23],mem2Bus_Data[24],mem2Bus_Data[25],mem2Bus_Data[26],mem2Bus_Data[27],mem2Bus_Data[28],mem2Bus_Data[29],mem2Bus_Data[30],mem2Bus_Data[31]}),
        .\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ({ADDR_COUNTER_MUX_I_n_42,\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 }),
        .Q({IO_REGISTERS_I_n_6,IO_REGISTERS_I_n_7,IO_REGISTERS_I_n_8,IO_REGISTERS_I_n_9,IO_REGISTERS_I_n_10,IO_REGISTERS_I_n_11,IO_REGISTERS_I_n_12,IO_REGISTERS_I_n_13,IO_REGISTERS_I_n_14,IO_REGISTERS_I_n_15,IO_REGISTERS_I_n_16,IO_REGISTERS_I_n_17,IO_REGISTERS_I_n_18,IO_REGISTERS_I_n_19,IO_REGISTERS_I_n_20,IO_REGISTERS_I_n_21}),
        .SR(SR),
        .\bus2ip_data_reg_reg[31] (\bus2ip_data_reg_reg[31] ),
        .bus2ip_reset_reg(MEM_STATE_MACHINE_I_n_51),
        .data_strobe_c(data_strobe_c),
        .mem_WEN_cmb(mem_WEN_cmb),
        .\mem_dq_o_reg_reg[0] ({Mem_DQ_O_int[0],Mem_DQ_O_int[1],Mem_DQ_O_int[2],Mem_DQ_O_int[3],Mem_DQ_O_int[4],Mem_DQ_O_int[5],Mem_DQ_O_int[6],Mem_DQ_O_int[7],Mem_DQ_O_int[8],Mem_DQ_O_int[9],Mem_DQ_O_int[10],Mem_DQ_O_int[11],Mem_DQ_O_int[12],Mem_DQ_O_int[13],Mem_DQ_O_int[14],Mem_DQ_O_int[15]}),
        .mem_dqt_t_d(mem_dqt_t_d),
        .read_ack(read_ack),
        .read_data_en(read_data_en),
        .readreq_th_reset(readreq_th_reset),
        .s_axi_aclk(s_axi_aclk));
  axi_em_ctrl_select_param SELECT_PARAM_I
       (.\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9] (\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9] ),
        .CO(CO),
        .D(D),
        .E(E),
        .Q(Q),
        .S(S),
        .SR(SR),
        .bus2ip_addr_temp({bus2ip_addr_temp[28:8],bus2ip_addr_temp[4:2]}),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "addr_counter_mux" *) 
module axi_em_ctrl_addr_counter_mux
   (\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ,
    cycle_cnt,
    \ADDRESS_STORE_GEN[0].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[1].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[2].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[3].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[4].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[5].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[6].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[7].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[8].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[9].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[10].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[11].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[12].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[13].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[14].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[15].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[16].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[17].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[18].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[19].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[20].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[21].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[22].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[23].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[24].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[25].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[26].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[27].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[28].ADDRESS_REG__0 ,
    \ADDRESS_STORE_GEN[29].ADDRESS_REG__0 ,
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0 ,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ,
    read_data_en_reg_reg,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    \FSM_sequential_crnt_state_reg[0] ,
    \FSM_sequential_crnt_state_reg[1] ,
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ,
    D,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0] ,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ,
    \mem_ben_reg_reg[0] ,
    \axi_trans_size_reg_reg[1] ,
    S_1,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    SR,
    CE,
    s_axi_aclk,
    data_strobe_c,
    bus2ip_addr_temp,
    bus2ip_ben_fixed,
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ,
    bus2Mem_RdReq,
    bus2ip_wrreq_i,
    pend_wrreq_reg,
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ,
    bus2ip_rnw,
    temp_bus2ip_cs,
    CO,
    \FSM_sequential_crnt_state_reg[0]_0 ,
    tpacc_end,
    new_page_d1,
    read_break_reg,
    mem_WEN_cmb,
    \bus2ip_BE_reg_reg[3] ,
    \bus2ip_BE_reg_reg[1] ,
    addr_cnt_ce,
    addr_cnt_rst,
    \FSM_sequential_crnt_state_reg[0]_1 ,
    addr_cnt_ce_cmb61_out);
  output \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ;
  output [0:0]cycle_cnt;
  output \ADDRESS_STORE_GEN[0].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[1].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[2].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[3].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[4].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[5].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[6].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[7].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[8].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[9].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[10].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[11].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[12].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[13].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[14].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[15].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[16].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[17].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[18].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[19].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[20].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[21].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[22].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[23].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[24].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[25].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[26].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[27].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[28].ADDRESS_REG__0 ;
  output \ADDRESS_STORE_GEN[29].ADDRESS_REG__0 ;
  output \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0 ;
  output \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  output \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  output read_data_en_reg_reg;
  output \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  output \FSM_sequential_crnt_state_reg[0] ;
  output \FSM_sequential_crnt_state_reg[1] ;
  output \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ;
  output [1:0]D;
  output \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0] ;
  output [0:0]\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  output \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  output [1:0]\mem_ben_reg_reg[0] ;
  input \axi_trans_size_reg_reg[1] ;
  input S_1;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  input [0:0]SR;
  input CE;
  input s_axi_aclk;
  input data_strobe_c;
  input [29:0]bus2ip_addr_temp;
  input [0:3]bus2ip_ben_fixed;
  input \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ;
  input bus2Mem_RdReq;
  input bus2ip_wrreq_i;
  input pend_wrreq_reg;
  input \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  input bus2ip_rnw;
  input temp_bus2ip_cs;
  input [0:0]CO;
  input \FSM_sequential_crnt_state_reg[0]_0 ;
  input tpacc_end;
  input new_page_d1;
  input read_break_reg;
  input mem_WEN_cmb;
  input \bus2ip_BE_reg_reg[3] ;
  input [1:0]\bus2ip_BE_reg_reg[1] ;
  input addr_cnt_ce;
  input addr_cnt_rst;
  input \FSM_sequential_crnt_state_reg[0]_1 ;
  input addr_cnt_ce_cmb61_out;

  wire \ADDRESS_STORE_GEN[0].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[10].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[11].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[12].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[13].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[14].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[15].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[16].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[17].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[18].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[19].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[1].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[20].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[21].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[22].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[23].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[24].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[25].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[26].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[27].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[28].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[29].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[2].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[3].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[4].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[5].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[6].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[7].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[8].ADDRESS_REG__0 ;
  wire \ADDRESS_STORE_GEN[9].ADDRESS_REG__0 ;
  wire CE;
  wire [0:0]CO;
  wire [1:0]D;
  wire \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_1_n_0 ;
  wire \DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_1_n_0 ;
  wire \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0 ;
  wire \FSM_sequential_crnt_state_reg[0] ;
  wire \FSM_sequential_crnt_state_reg[0]_0 ;
  wire \FSM_sequential_crnt_state_reg[0]_1 ;
  wire \FSM_sequential_crnt_state_reg[1] ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0] ;
  wire [0:0]\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ;
  wire [0:0]SR;
  wire S_1;
  wire addr_cnt_ce;
  wire addr_cnt_ce_cmb61_out;
  wire addr_cnt_rst;
  wire \axi_trans_size_reg_reg[1] ;
  wire bus2Mem_RdReq;
  wire [1:0]\bus2ip_BE_reg_reg[1] ;
  wire \bus2ip_BE_reg_reg[3] ;
  wire [29:0]bus2ip_addr_temp;
  wire [0:3]bus2ip_ben_fixed;
  wire [0:3]bus2ip_ben_int;
  wire bus2ip_rnw;
  wire bus2ip_wrreq_i;
  wire [0:0]cycle_cnt;
  wire data_strobe_c;
  wire mem_WEN_cmb;
  wire [1:0]\mem_ben_reg_reg[0] ;
  wire new_page_d1;
  wire pend_wrreq_reg;
  wire read_break_reg;
  wire read_data_en_reg_reg;
  wire s_axi_aclk;
  wire temp_bus2ip_cs;
  wire tpacc_end;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[0].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[29]),
        .Q(\ADDRESS_STORE_GEN[0].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[10].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[19]),
        .Q(\ADDRESS_STORE_GEN[10].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[11].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[18]),
        .Q(\ADDRESS_STORE_GEN[11].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[12].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[17]),
        .Q(\ADDRESS_STORE_GEN[12].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[13].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[16]),
        .Q(\ADDRESS_STORE_GEN[13].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[14].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[15]),
        .Q(\ADDRESS_STORE_GEN[14].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[15].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[14]),
        .Q(\ADDRESS_STORE_GEN[15].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[16].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[13]),
        .Q(\ADDRESS_STORE_GEN[16].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[17].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[12]),
        .Q(\ADDRESS_STORE_GEN[17].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[18].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[11]),
        .Q(\ADDRESS_STORE_GEN[18].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[19].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[10]),
        .Q(\ADDRESS_STORE_GEN[19].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[1].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[28]),
        .Q(\ADDRESS_STORE_GEN[1].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[20].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[9]),
        .Q(\ADDRESS_STORE_GEN[20].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[21].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[8]),
        .Q(\ADDRESS_STORE_GEN[21].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[22].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[7]),
        .Q(\ADDRESS_STORE_GEN[22].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[23].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[6]),
        .Q(\ADDRESS_STORE_GEN[23].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[24].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[5]),
        .Q(\ADDRESS_STORE_GEN[24].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[25].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[4]),
        .Q(\ADDRESS_STORE_GEN[25].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[26].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[3]),
        .Q(\ADDRESS_STORE_GEN[26].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[27].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[2]),
        .Q(\ADDRESS_STORE_GEN[27].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[28].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[1]),
        .Q(\ADDRESS_STORE_GEN[28].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[29].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[0]),
        .Q(\ADDRESS_STORE_GEN[29].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[2].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[27]),
        .Q(\ADDRESS_STORE_GEN[2].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[3].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[26]),
        .Q(\ADDRESS_STORE_GEN[3].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[4].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[25]),
        .Q(\ADDRESS_STORE_GEN[4].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[5].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[24]),
        .Q(\ADDRESS_STORE_GEN[5].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[6].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[23]),
        .Q(\ADDRESS_STORE_GEN[6].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[7].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[22]),
        .Q(\ADDRESS_STORE_GEN[7].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[8].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[21]),
        .Q(\ADDRESS_STORE_GEN[8].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[9].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_addr_temp[20]),
        .Q(\ADDRESS_STORE_GEN[9].ADDRESS_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \BEN_STORE_GEN[0].BEN_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_ben_fixed[0]),
        .Q(bus2ip_ben_int[0]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \BEN_STORE_GEN[1].BEN_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_ben_fixed[1]),
        .Q(bus2ip_ben_int[1]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \BEN_STORE_GEN[2].BEN_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_ben_fixed[2]),
        .Q(bus2ip_ben_int[2]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \BEN_STORE_GEN[3].BEN_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(bus2ip_ben_fixed[3]),
        .Q(bus2ip_ben_int[3]),
        .R(SR));
  axi_em_ctrl_ld_arith_reg__parameterized0 \DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I 
       (.CE(CE),
        .CO(CO),
        .\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1] (\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0 ),
        .\FSM_sequential_crnt_state_reg[0] (\FSM_sequential_crnt_state_reg[0] ),
        .\FSM_sequential_crnt_state_reg[0]_0 (\FSM_sequential_crnt_state_reg[0]_0 ),
        .\FSM_sequential_crnt_state_reg[1] (\FSM_sequential_crnt_state_reg[1] ),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 (\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 (\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ),
        .\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE (\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ),
        .\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 (\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .SR(SR),
        .S_1(S_1),
        .\axi_trans_size_reg_reg[1] (\axi_trans_size_reg_reg[1] ),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_wrreq_i(bus2ip_wrreq_i),
        .new_page_d1(new_page_d1),
        .pend_wrreq_reg(pend_wrreq_reg),
        .read_break_reg(read_break_reg),
        .read_data_en_reg_reg(cycle_cnt),
        .read_data_en_reg_reg_0(read_data_en_reg_reg),
        .s_axi_aclk(s_axi_aclk),
        .temp_bus2ip_cs(temp_bus2ip_cs),
        .tpacc_end(tpacc_end));
  LUT6 #(
    .INIT(64'h00007757000088A8)) 
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_1 
       (.I0(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ),
        .I1(\FSM_sequential_crnt_state_reg[0]_1 ),
        .I2(addr_cnt_ce_cmb61_out),
        .I3(\FSM_sequential_crnt_state_reg[0]_0 ),
        .I4(addr_cnt_rst),
        .I5(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0] ),
        .O(\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h020200FF0202FF00)) 
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_1 
       (.I0(\bus2ip_BE_reg_reg[3] ),
        .I1(\bus2ip_BE_reg_reg[1] [0]),
        .I2(\bus2ip_BE_reg_reg[1] [1]),
        .I3(addr_cnt_ce),
        .I4(addr_cnt_rst),
        .I5(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ),
        .O(\DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_1_n_0 ));
  FDRE \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_1_n_0 ),
        .Q(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0] ),
        .R(SR));
  FDRE \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_1_n_0 ),
        .Q(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \mem_ben_reg[0]_i_1 
       (.I0(bus2ip_ben_int[2]),
        .I1(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ),
        .I2(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0] ),
        .I3(bus2ip_ben_int[0]),
        .O(\mem_ben_reg_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \mem_ben_reg[1]_i_1 
       (.I0(bus2ip_ben_int[3]),
        .I1(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ),
        .I2(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0] ),
        .I3(bus2ip_ben_int[1]),
        .O(\mem_ben_reg_reg[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \mem_qwen_reg[0]_i_1 
       (.I0(mem_WEN_cmb),
        .I1(bus2ip_ben_int[0]),
        .I2(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0] ),
        .I3(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ),
        .I4(bus2ip_ben_int[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \mem_qwen_reg[1]_i_1 
       (.I0(mem_WEN_cmb),
        .I1(bus2ip_ben_int[1]),
        .I2(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0] ),
        .I3(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ),
        .I4(bus2ip_ben_int[3]),
        .O(D[0]));
endmodule

(* ORIG_REF_NAME = "axi_emc" *) 
module axi_em_ctrl_axi_emc
   (s_axi_mem_awready,
    s_axi_reg_rvalid,
    s_axi_mem_rdata,
    s_axi_mem_wready,
    s_axi_mem_bvalid,
    mem_wen,
    s_axi_mem_bid,
    s_axi_mem_rid,
    E,
    mem_dq_o,
    mem_dq_t,
    mem_cen,
    mem_oen,
    mem_qwen,
    mem_ben,
    mem_rpn,
    mem_ce,
    mem_rnw,
    s_axi_reg_arready,
    s_axi_reg_awready,
    s_axi_reg_rdata,
    mem_a,
    mem_cre,
    s_axi_mem_rresp,
    s_axi_mem_rvalid,
    s_axi_mem_rlast,
    s_axi_mem_bresp,
    s_axi_reg_bvalid,
    s_axi_mem_arsize,
    s_axi_mem_awsize,
    s_axi_mem_araddr,
    s_axi_aresetn,
    s_axi_mem_wvalid,
    s_axi_mem_awvalid,
    s_axi_mem_arvalid,
    s_axi_aclk,
    s_axi_mem_bready,
    s_axi_mem_awid,
    s_axi_mem_arid,
    s_axi_mem_wdata,
    mem_dq_i,
    rdclk,
    s_axi_reg_araddr,
    s_axi_reg_awaddr,
    s_axi_reg_arvalid,
    s_axi_reg_awvalid,
    s_axi_reg_wdata,
    s_axi_mem_arlen,
    s_axi_mem_awlen,
    s_axi_mem_awaddr,
    s_axi_mem_wstrb,
    s_axi_mem_rready,
    s_axi_mem_awburst,
    s_axi_mem_arburst,
    s_axi_mem_wlast,
    s_axi_reg_wvalid,
    s_axi_reg_rready,
    s_axi_reg_bready);
  output s_axi_mem_awready;
  output s_axi_reg_rvalid;
  output [31:0]s_axi_mem_rdata;
  output s_axi_mem_wready;
  output s_axi_mem_bvalid;
  output mem_wen;
  output [3:0]s_axi_mem_bid;
  output [3:0]s_axi_mem_rid;
  output [0:0]E;
  output [15:0]mem_dq_o;
  output [15:0]mem_dq_t;
  output [0:0]mem_cen;
  output [0:0]mem_oen;
  output [1:0]mem_qwen;
  output [1:0]mem_ben;
  output mem_rpn;
  output [0:0]mem_ce;
  output mem_rnw;
  output s_axi_reg_arready;
  output s_axi_reg_awready;
  output [8:0]s_axi_reg_rdata;
  output [30:0]mem_a;
  output mem_cre;
  output [0:0]s_axi_mem_rresp;
  output s_axi_mem_rvalid;
  output s_axi_mem_rlast;
  output [0:0]s_axi_mem_bresp;
  output s_axi_reg_bvalid;
  input [1:0]s_axi_mem_arsize;
  input [1:0]s_axi_mem_awsize;
  input [31:0]s_axi_mem_araddr;
  input s_axi_aresetn;
  input s_axi_mem_wvalid;
  input s_axi_mem_awvalid;
  input s_axi_mem_arvalid;
  input s_axi_aclk;
  input s_axi_mem_bready;
  input [3:0]s_axi_mem_awid;
  input [3:0]s_axi_mem_arid;
  input [31:0]s_axi_mem_wdata;
  input [15:0]mem_dq_i;
  input rdclk;
  input [2:0]s_axi_reg_araddr;
  input [2:0]s_axi_reg_awaddr;
  input s_axi_reg_arvalid;
  input s_axi_reg_awvalid;
  input [8:0]s_axi_reg_wdata;
  input [7:0]s_axi_mem_arlen;
  input [7:0]s_axi_mem_awlen;
  input [31:0]s_axi_mem_awaddr;
  input [3:0]s_axi_mem_wstrb;
  input s_axi_mem_rready;
  input [1:0]s_axi_mem_awburst;
  input [1:0]s_axi_mem_arburst;
  input s_axi_mem_wlast;
  input s_axi_reg_wvalid;
  input s_axi_reg_rready;
  input s_axi_reg_bready;

  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[0].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[10].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[11].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[12].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[13].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[14].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[15].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[16].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[17].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[18].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[19].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[1].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[20].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[21].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[22].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[23].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[24].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[25].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[26].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[27].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[28].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[29].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[2].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[3].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[4].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[5].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[6].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[7].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[8].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[9].ADDRESS_REG__0 ;
  wire \ADDR_COUNTER_MUX_I/Cycle_cnt_en_int ;
  wire \ADDR_COUNTER_MUX_I/DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/S ;
  wire [1:1]\ADDR_COUNTER_MUX_I/cycle_cnt ;
  wire \AXI_EMC_ADDRESS_DECODE_INSTANCE_I/rdce_out_i ;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_0;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_100;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_101;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_102;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_103;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_104;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_105;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_106;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_107;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_108;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_109;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_111;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_116;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_117;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_119;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_120;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_2;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_43;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_45;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_46;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_47;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_48;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_56;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_58;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_59;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_61;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_64;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_65;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_66;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_81;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_82;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_83;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_84;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_85;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_86;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_87;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_88;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_89;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_90;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_91;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_92;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_93;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_94;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_95;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_96;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_97;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_98;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_99;
  wire Bus2IP_RdReq_emc;
  wire [0:0]E;
  wire EMC_CTRL_I_n_54;
  wire EMC_CTRL_I_n_55;
  wire EMC_CTRL_I_n_57;
  wire EMC_CTRL_I_n_58;
  wire EMC_CTRL_I_n_59;
  wire EMC_CTRL_I_n_61;
  wire EMC_CTRL_I_n_63;
  wire EMC_CTRL_I_n_65;
  wire EMC_CTRL_I_n_66;
  wire EMC_CTRL_I_n_70;
  wire EMC_CTRL_I_n_72;
  wire EMC_CTRL_I_n_74;
  wire EMC_CTRL_I_n_75;
  wire \IPIC_IF_I/BURST_CNT/CE ;
  wire \IPIC_IF_I/BURST_CNT/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \IPIC_IF_I/BURST_CNT/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \IPIC_IF_I/BURST_CNT/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \IPIC_IF_I/BURST_CNT/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \IPIC_IF_I/BURST_CNT/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \IPIC_IF_I/BURST_CNT/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \IPIC_IF_I/BURST_CNT/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \IPIC_IF_I/BURST_CNT/S ;
  wire \IPIC_IF_I/IP2Bus_RdAck0 ;
  wire [0:7]\IPIC_IF_I/burst_cnt_i ;
  wire \IPIC_IF_I/pend_rdreq ;
  wire \IPIC_IF_I/pend_wrreq ;
  wire \IPIC_IF_I/reset_fifo ;
  wire [0:24]L;
  (* MAX_FANOUT = "30" *) (* RTL_MAX_FANOUT = "found" *) wire \MEM_STATE_MACHINE_I/Write_req_addr_ack_cmb ;
  (* MAX_FANOUT = "30" *) (* RTL_MAX_FANOUT = "found" *) wire \MEM_STATE_MACHINE_I/Write_req_data_ack_cmb ;
  wire [2:2]\MEM_STATE_MACHINE_I/crnt_state_reg ;
  wire \MEM_STATE_MACHINE_I/cycle_cnt_en_cmb58_out ;
  wire \MEM_STATE_MACHINE_I/next_state1 ;
  wire \MEM_STATE_MACHINE_I/next_state181_out ;
  wire [0:0]\MEM_STATE_MACHINE_I/p_0_in ;
  (* MAX_FANOUT = "30" *) (* RTL_MAX_FANOUT = "found" *) wire \MEM_STATE_MACHINE_I/read_req_ack_cmb ;
  wire \MEM_STATE_MACHINE_I/read_req_ack_cmb44_out ;
  wire \MEM_STEER_I/ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  wire \MEM_STEER_I/readreq_th_reset ;
  wire [31:0]\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] ;
  wire \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[2]_i_1_n_0 ;
  wire \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[3]_i_1_n_0 ;
  wire \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[4]_i_1_n_0 ;
  wire \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2] ;
  wire \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3] ;
  wire \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4] ;
  wire \REG_EN_GEN.read_reg_req_i_1_n_0 ;
  wire \REG_EN_GEN.rvalid_i_1_n_0 ;
  wire \REG_EN_GEN.s_axi_reg_bvalid_i_i_2_n_0 ;
  wire \REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0 ;
  wire \REG_EN_GEN.write_reg_req_i_1_n_0 ;
  wire \SELECT_PARAM_I/neqOp ;
  wire [31:0]axi_lite_ip2bus_data2;
  wire axi_lite_ip2bus_wrack_d1;
  wire [1:1]axi_trans_size_reg_int;
  wire bus2Mem_RdReq;
  wire bus2Mem_WrReq;
  wire [31:2]bus2ip_addr_temp;
  wire [0:3]bus2ip_ben_fixed;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire bus2ip_wrce_lite_cmb_4;
  wire bus2ip_wrreq_i;
  wire cycle_End;
  wire enable_cs_cmb0;
  wire enable_cs_cmb126_out;
  wire ip2bus_addrack;
  wire [0:31]ip2bus_data;
  wire ip2bus_rdack;
  wire last_addr1;
  wire [30:0]mem_a;
  wire [1:0]mem_ben;
  wire [0:0]mem_ce;
  wire [0:0]mem_cen;
  wire mem_cre;
  wire [15:0]mem_dq_i;
  wire [15:0]mem_dq_o;
  wire [15:0]mem_dq_t;
  wire [0:0]mem_oen;
  wire [1:0]mem_qwen;
  wire mem_rnw;
  wire mem_rpn;
  wire mem_wen;
  wire new_page_access;
  wire psram_page_mode;
  wire rd_fifo_wr_en;
  wire rdclk;
  wire read_reg_req;
  wire rst_rdce_cmb;
  wire rw_flag_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_mem_araddr;
  wire [1:0]s_axi_mem_arburst;
  wire [3:0]s_axi_mem_arid;
  wire [7:0]s_axi_mem_arlen;
  wire [1:0]s_axi_mem_arsize;
  wire s_axi_mem_arvalid;
  wire [31:0]s_axi_mem_awaddr;
  wire [1:0]s_axi_mem_awburst;
  wire [3:0]s_axi_mem_awid;
  wire [7:0]s_axi_mem_awlen;
  wire s_axi_mem_awready;
  wire [1:0]s_axi_mem_awsize;
  wire s_axi_mem_awvalid;
  wire [3:0]s_axi_mem_bid;
  wire s_axi_mem_bready;
  wire [0:0]s_axi_mem_bresp;
  wire s_axi_mem_bvalid;
  wire [31:0]s_axi_mem_rdata;
  wire [3:0]s_axi_mem_rid;
  wire s_axi_mem_rlast;
  wire s_axi_mem_rready;
  wire [0:0]s_axi_mem_rresp;
  wire s_axi_mem_rvalid;
  wire [31:0]s_axi_mem_wdata;
  wire s_axi_mem_wlast;
  wire s_axi_mem_wready;
  wire [3:0]s_axi_mem_wstrb;
  wire s_axi_mem_wvalid;
  wire [2:0]s_axi_reg_araddr;
  wire s_axi_reg_arready;
  wire s_axi_reg_arvalid;
  wire [2:0]s_axi_reg_awaddr;
  wire s_axi_reg_awready;
  wire s_axi_reg_awvalid;
  wire s_axi_reg_bready;
  wire s_axi_reg_bvalid;
  wire [8:0]s_axi_reg_rdata;
  wire s_axi_reg_rready;
  wire s_axi_reg_rvalid;
  wire [8:0]s_axi_reg_wdata;
  wire s_axi_reg_wvalid;
  wire single_transaction;
  wire [1:0]temp_bus2ip_be;
  wire temp_bus2ip_cs;
  wire [31:0]temp_bus2ip_data;
  wire transaction_done_i;
  wire trd_end;
  wire twph_end;
  wire write_reg_req;

  axi_em_ctrl_axi_emc_native_interface AXI_EMC_NATIVE_INTERFACE_I
       (.\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 (\MEM_STEER_I/ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ),
        .Bus2IP_RdReq_emc(Bus2IP_RdReq_emc),
        .CE(\IPIC_IF_I/BURST_CNT/CE ),
        .CO(\SELECT_PARAM_I/neqOp ),
        .Cycle_cnt_en_int(\ADDR_COUNTER_MUX_I/Cycle_cnt_en_int ),
        .D({AXI_EMC_NATIVE_INTERFACE_I_n_81,AXI_EMC_NATIVE_INTERFACE_I_n_82,AXI_EMC_NATIVE_INTERFACE_I_n_83,AXI_EMC_NATIVE_INTERFACE_I_n_84,AXI_EMC_NATIVE_INTERFACE_I_n_85,AXI_EMC_NATIVE_INTERFACE_I_n_86,AXI_EMC_NATIVE_INTERFACE_I_n_87,AXI_EMC_NATIVE_INTERFACE_I_n_88,AXI_EMC_NATIVE_INTERFACE_I_n_89,AXI_EMC_NATIVE_INTERFACE_I_n_90,AXI_EMC_NATIVE_INTERFACE_I_n_91,AXI_EMC_NATIVE_INTERFACE_I_n_92,AXI_EMC_NATIVE_INTERFACE_I_n_93,AXI_EMC_NATIVE_INTERFACE_I_n_94,AXI_EMC_NATIVE_INTERFACE_I_n_95,AXI_EMC_NATIVE_INTERFACE_I_n_96,AXI_EMC_NATIVE_INTERFACE_I_n_97,AXI_EMC_NATIVE_INTERFACE_I_n_98,AXI_EMC_NATIVE_INTERFACE_I_n_99,AXI_EMC_NATIVE_INTERFACE_I_n_100,AXI_EMC_NATIVE_INTERFACE_I_n_101,AXI_EMC_NATIVE_INTERFACE_I_n_102,AXI_EMC_NATIVE_INTERFACE_I_n_103,AXI_EMC_NATIVE_INTERFACE_I_n_104,AXI_EMC_NATIVE_INTERFACE_I_n_105,AXI_EMC_NATIVE_INTERFACE_I_n_106,AXI_EMC_NATIVE_INTERFACE_I_n_107,AXI_EMC_NATIVE_INTERFACE_I_n_108}),
        .\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] (AXI_EMC_NATIVE_INTERFACE_I_n_116),
        .\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1] (AXI_EMC_NATIVE_INTERFACE_I_n_111),
        .\DATA_STORE_GEN[24].WRDATA_REG (temp_bus2ip_data),
        .E(s_axi_mem_awready),
        .\FSM_sequential_crnt_state_reg[0] (AXI_EMC_NATIVE_INTERFACE_I_n_43),
        .\FSM_sequential_crnt_state_reg[0]_0 (AXI_EMC_NATIVE_INTERFACE_I_n_58),
        .\FSM_sequential_crnt_state_reg[0]_1 (AXI_EMC_NATIVE_INTERFACE_I_n_61),
        .\FSM_sequential_crnt_state_reg[0]_2 (EMC_CTRL_I_n_58),
        .\FSM_sequential_crnt_state_reg[2] (AXI_EMC_NATIVE_INTERFACE_I_n_56),
        .\FSM_sequential_crnt_state_reg[3] (AXI_EMC_NATIVE_INTERFACE_I_n_59),
        .\FSM_sequential_emc_addr_ps_reg[0]_0 (EMC_CTRL_I_n_63),
        .\IP2Bus_Data_reg[0] ({ip2bus_data[0],ip2bus_data[1],ip2bus_data[2],ip2bus_data[3],ip2bus_data[4],ip2bus_data[5],ip2bus_data[6],ip2bus_data[7],ip2bus_data[8],ip2bus_data[9],ip2bus_data[10],ip2bus_data[11],ip2bus_data[12],ip2bus_data[13],ip2bus_data[14],ip2bus_data[15],ip2bus_data[16],ip2bus_data[17],ip2bus_data[18],ip2bus_data[19],ip2bus_data[20],ip2bus_data[21],ip2bus_data[22],ip2bus_data[23],ip2bus_data[24],ip2bus_data[25],ip2bus_data[26],ip2bus_data[27],ip2bus_data[28],ip2bus_data[29],ip2bus_data[30],ip2bus_data[31]}),
        .IP2Bus_RdAck0(\IPIC_IF_I/IP2Bus_RdAck0 ),
        .IP2Bus_RdAck_reg(EMC_CTRL_I_n_65),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 (AXI_EMC_NATIVE_INTERFACE_I_n_45),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 (AXI_EMC_NATIVE_INTERFACE_I_n_46),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\IPIC_IF_I/BURST_CNT/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\IPIC_IF_I/BURST_CNT/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 (EMC_CTRL_I_n_54),
        .\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 (EMC_CTRL_I_n_55),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\IPIC_IF_I/BURST_CNT/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 (EMC_CTRL_I_n_70),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg (\IPIC_IF_I/BURST_CNT/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 (EMC_CTRL_I_n_61),
        .\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg (\IPIC_IF_I/BURST_CNT/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg (\IPIC_IF_I/BURST_CNT/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg (\IPIC_IF_I/BURST_CNT/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ),
        .Q(temp_bus2ip_be),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] (AXI_EMC_NATIVE_INTERFACE_I_n_64),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 (AXI_EMC_NATIVE_INTERFACE_I_n_65),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 (AXI_EMC_NATIVE_INTERFACE_I_n_66),
        .\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0] (\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [0]),
        .\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg (AXI_EMC_NATIVE_INTERFACE_I_n_117),
        .\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg (AXI_EMC_NATIVE_INTERFACE_I_n_47),
        .S(AXI_EMC_NATIVE_INTERFACE_I_n_48),
        .\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] ({L[0],L[22],L[23],L[24]}),
        .\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27] (AXI_EMC_NATIVE_INTERFACE_I_n_109),
        .SR(AXI_EMC_NATIVE_INTERFACE_I_n_2),
        .S_0(\ADDR_COUNTER_MUX_I/DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/S ),
        .S_1(\IPIC_IF_I/BURST_CNT/S ),
        .Write_req_addr_ack_cmb(\MEM_STATE_MACHINE_I/Write_req_addr_ack_cmb ),
        .Write_req_data_ack_cmb(\MEM_STATE_MACHINE_I/Write_req_data_ack_cmb ),
        .\axi_trans_size_reg_reg[1]_0 (axi_trans_size_reg_int),
        .burst_cnt_i(\IPIC_IF_I/burst_cnt_i ),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .bus2Mem_WrReq(bus2Mem_WrReq),
        .bus2ip_addr_temp(bus2ip_addr_temp),
        .bus2ip_ben_fixed(bus2ip_ben_fixed),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_wr_req_reg_reg_0(EMC_CTRL_I_n_72),
        .bus2ip_wr_req_reg_reg_1(EMC_CTRL_I_n_74),
        .bus2ip_wrreq_i(bus2ip_wrreq_i),
        .crnt_state_reg(\MEM_STATE_MACHINE_I/crnt_state_reg ),
        .cycle_End(cycle_End),
        .cycle_cnt(\ADDR_COUNTER_MUX_I/cycle_cnt ),
        .cycle_cnt_en_cmb58_out(\MEM_STATE_MACHINE_I/cycle_cnt_en_cmb58_out ),
        .enable_cs_cmb0(enable_cs_cmb0),
        .enable_cs_cmb126_out(enable_cs_cmb126_out),
        .ip2bus_addrack(ip2bus_addrack),
        .ip2bus_rdack(ip2bus_rdack),
        .last_addr1(last_addr1),
        .new_page_access(new_page_access),
        .next_state1(\MEM_STATE_MACHINE_I/next_state1 ),
        .next_state181_out(\MEM_STATE_MACHINE_I/next_state181_out ),
        .out(AXI_EMC_NATIVE_INTERFACE_I_n_0),
        .p_0_in(\MEM_STATE_MACHINE_I/p_0_in ),
        .pend_rdreq(\IPIC_IF_I/pend_rdreq ),
        .pend_rdreq_reg(AXI_EMC_NATIVE_INTERFACE_I_n_119),
        .pend_wrreq(\IPIC_IF_I/pend_wrreq ),
        .pend_wrreq_reg(AXI_EMC_NATIVE_INTERFACE_I_n_120),
        .psram_page_mode(psram_page_mode),
        .rd_fifo_wr_en(rd_fifo_wr_en),
        .rdce_out_i(\AXI_EMC_ADDRESS_DECODE_INSTANCE_I/rdce_out_i ),
        .read_req_ack_cmb(\MEM_STATE_MACHINE_I/read_req_ack_cmb ),
        .read_req_ack_cmb44_out(\MEM_STATE_MACHINE_I/read_req_ack_cmb44_out ),
        .readreq_th_reset(\MEM_STEER_I/readreq_th_reset ),
        .reset_fifo(\IPIC_IF_I/reset_fifo ),
        .rst_rdce_cmb(rst_rdce_cmb),
        .rw_flag_reg(rw_flag_reg),
        .rw_flag_reg_reg_0(EMC_CTRL_I_n_57),
        .rw_flag_reg_reg_1(EMC_CTRL_I_n_66),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_mem_araddr(s_axi_mem_araddr),
        .s_axi_mem_arburst(s_axi_mem_arburst),
        .s_axi_mem_arid(s_axi_mem_arid),
        .s_axi_mem_arlen(s_axi_mem_arlen),
        .s_axi_mem_arready(E),
        .s_axi_mem_arsize(s_axi_mem_arsize),
        .s_axi_mem_arvalid(s_axi_mem_arvalid),
        .s_axi_mem_awaddr(s_axi_mem_awaddr),
        .s_axi_mem_awburst(s_axi_mem_awburst),
        .s_axi_mem_awid(s_axi_mem_awid),
        .s_axi_mem_awlen(s_axi_mem_awlen),
        .s_axi_mem_awsize(s_axi_mem_awsize),
        .s_axi_mem_awvalid(s_axi_mem_awvalid),
        .s_axi_mem_bid(s_axi_mem_bid),
        .s_axi_mem_bready(s_axi_mem_bready),
        .s_axi_mem_bresp(s_axi_mem_bresp),
        .s_axi_mem_bvalid(s_axi_mem_bvalid),
        .s_axi_mem_rdata(s_axi_mem_rdata),
        .s_axi_mem_rid(s_axi_mem_rid),
        .s_axi_mem_rlast(s_axi_mem_rlast),
        .s_axi_mem_rready(s_axi_mem_rready),
        .s_axi_mem_rresp(s_axi_mem_rresp),
        .s_axi_mem_rvalid(s_axi_mem_rvalid),
        .s_axi_mem_wdata(s_axi_mem_wdata),
        .s_axi_mem_wready(s_axi_mem_wready),
        .s_axi_mem_wstrb(s_axi_mem_wstrb),
        .s_axi_mem_wvalid(s_axi_mem_wvalid),
        .single_transaction(single_transaction),
        .temp_bus2ip_cs(temp_bus2ip_cs),
        .transaction_done_i(transaction_done_i),
        .trd_end(trd_end),
        .twph_end(twph_end));
  axi_em_ctrl_EMC EMC_CTRL_I
       (.\ADDRESS_STORE_GEN[0].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[0].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[10].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[10].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[11].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[11].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[12].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[12].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[13].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[13].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[14].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[14].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[15].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[15].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[16].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[16].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[17].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[17].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[18].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[18].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[19].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[19].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[1].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[1].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[20].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[20].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[21].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[21].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[22].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[22].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[23].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[23].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[24].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[24].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[25].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[25].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[26].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[26].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[27].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[27].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[28].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[28].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[29].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[29].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[2].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[2].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[3].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[3].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[4].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[4].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[5].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[5].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[6].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[6].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[7].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[7].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[8].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[8].ADDRESS_REG__0 ),
        .\ADDRESS_STORE_GEN[9].ADDRESS_REG__0 (\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[9].ADDRESS_REG__0 ),
        .\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 (\MEM_STEER_I/ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9] (AXI_EMC_NATIVE_INTERFACE_I_n_116),
        .Bus2IP_Mem_CS_d2_reg(\MEM_STATE_MACHINE_I/p_0_in ),
        .Bus2IP_RdReq_d1_reg(EMC_CTRL_I_n_65),
        .Bus2IP_RdReq_emc(Bus2IP_RdReq_emc),
        .CE(\IPIC_IF_I/BURST_CNT/CE ),
        .CO(\SELECT_PARAM_I/neqOp ),
        .Cycle_cnt_en_int(\ADDR_COUNTER_MUX_I/Cycle_cnt_en_int ),
        .D({AXI_EMC_NATIVE_INTERFACE_I_n_81,AXI_EMC_NATIVE_INTERFACE_I_n_82,AXI_EMC_NATIVE_INTERFACE_I_n_83,AXI_EMC_NATIVE_INTERFACE_I_n_84,AXI_EMC_NATIVE_INTERFACE_I_n_85,AXI_EMC_NATIVE_INTERFACE_I_n_86,AXI_EMC_NATIVE_INTERFACE_I_n_87,AXI_EMC_NATIVE_INTERFACE_I_n_88,AXI_EMC_NATIVE_INTERFACE_I_n_89,AXI_EMC_NATIVE_INTERFACE_I_n_90,AXI_EMC_NATIVE_INTERFACE_I_n_91,AXI_EMC_NATIVE_INTERFACE_I_n_92,AXI_EMC_NATIVE_INTERFACE_I_n_93,AXI_EMC_NATIVE_INTERFACE_I_n_94,AXI_EMC_NATIVE_INTERFACE_I_n_95,AXI_EMC_NATIVE_INTERFACE_I_n_96,AXI_EMC_NATIVE_INTERFACE_I_n_97,AXI_EMC_NATIVE_INTERFACE_I_n_98,AXI_EMC_NATIVE_INTERFACE_I_n_99,AXI_EMC_NATIVE_INTERFACE_I_n_100,AXI_EMC_NATIVE_INTERFACE_I_n_101,AXI_EMC_NATIVE_INTERFACE_I_n_102,AXI_EMC_NATIVE_INTERFACE_I_n_103,AXI_EMC_NATIVE_INTERFACE_I_n_104,AXI_EMC_NATIVE_INTERFACE_I_n_105,AXI_EMC_NATIVE_INTERFACE_I_n_106,AXI_EMC_NATIVE_INTERFACE_I_n_107,AXI_EMC_NATIVE_INTERFACE_I_n_108}),
        .E(AXI_EMC_NATIVE_INTERFACE_I_n_109),
        .\FSM_sequential_crnt_state_reg[1] (EMC_CTRL_I_n_72),
        .\FSM_sequential_emc_addr_ps_reg[0] (EMC_CTRL_I_n_63),
        .\FSM_sequential_emc_addr_ps_reg[2] (EMC_CTRL_I_n_66),
        .IP2Bus_RdAck0(\IPIC_IF_I/IP2Bus_RdAck0 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (AXI_EMC_NATIVE_INTERFACE_I_n_56),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (AXI_EMC_NATIVE_INTERFACE_I_n_58),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (AXI_EMC_NATIVE_INTERFACE_I_n_59),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 (AXI_EMC_NATIVE_INTERFACE_I_n_43),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 (AXI_EMC_NATIVE_INTERFACE_I_n_65),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 (AXI_EMC_NATIVE_INTERFACE_I_n_66),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 (AXI_EMC_NATIVE_INTERFACE_I_n_46),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 (EMC_CTRL_I_n_54),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 (EMC_CTRL_I_n_55),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\IPIC_IF_I/BURST_CNT/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\IPIC_IF_I/BURST_CNT/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\IPIC_IF_I/BURST_CNT/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg (\IPIC_IF_I/BURST_CNT/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg (\IPIC_IF_I/BURST_CNT/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg (\IPIC_IF_I/BURST_CNT/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg (\IPIC_IF_I/BURST_CNT/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ),
        .Q({L[0],L[22],L[23],L[24]}),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] (\MEM_STATE_MACHINE_I/crnt_state_reg ),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 (EMC_CTRL_I_n_74),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 (EMC_CTRL_I_n_75),
        .\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE (\ADDR_COUNTER_MUX_I/cycle_cnt ),
        .\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 (EMC_CTRL_I_n_61),
        .S(AXI_EMC_NATIVE_INTERFACE_I_n_48),
        .SR(bus2ip_reset),
        .S_0(\IPIC_IF_I/BURST_CNT/S ),
        .S_1(\ADDR_COUNTER_MUX_I/DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/S ),
        .Write_req_addr_ack_cmb(\MEM_STATE_MACHINE_I/Write_req_addr_ack_cmb ),
        .Write_req_data_ack_cmb(\MEM_STATE_MACHINE_I/Write_req_data_ack_cmb ),
        .\axi_trans_size_reg_reg[1] (axi_trans_size_reg_int),
        .burst_cnt_i(\IPIC_IF_I/burst_cnt_i ),
        .\burstlength_reg_reg[4] (AXI_EMC_NATIVE_INTERFACE_I_n_64),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .bus2Mem_WrReq(bus2Mem_WrReq),
        .\bus2ip_BE_reg_reg[1] (temp_bus2ip_be),
        .\bus2ip_BE_reg_reg[3] (AXI_EMC_NATIVE_INTERFACE_I_n_111),
        .bus2ip_addr_temp(bus2ip_addr_temp),
        .bus2ip_ben_fixed(bus2ip_ben_fixed),
        .bus2ip_burst_reg_reg(AXI_EMC_NATIVE_INTERFACE_I_n_119),
        .bus2ip_burst_reg_reg_0(AXI_EMC_NATIVE_INTERFACE_I_n_120),
        .\bus2ip_data_reg_reg[31] (temp_bus2ip_data),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_wr_req_reg_reg(AXI_EMC_NATIVE_INTERFACE_I_n_45),
        .bus2ip_wrreq_i(bus2ip_wrreq_i),
        .cycle_End(cycle_End),
        .cycle_cnt_en_cmb58_out(\MEM_STATE_MACHINE_I/cycle_cnt_en_cmb58_out ),
        .enable_cs_cmb0(enable_cs_cmb0),
        .enable_cs_cmb126_out(enable_cs_cmb126_out),
        .ip2bus_addrack(ip2bus_addrack),
        .ip2bus_rdack(ip2bus_rdack),
        .last_addr1(last_addr1),
        .\mem_a_int_reg[31] (EMC_CTRL_I_n_59),
        .mem_ben(mem_ben),
        .mem_ce(mem_ce),
        .mem_cen(mem_cen),
        .mem_dq_i(mem_dq_i),
        .mem_dq_o(mem_dq_o),
        .mem_dq_t(mem_dq_t),
        .mem_oen(mem_oen),
        .mem_qwen(mem_qwen),
        .mem_rnw(mem_rnw),
        .mem_rpn(mem_rpn),
        .mem_wen(mem_wen),
        .new_page_access(new_page_access),
        .next_state1(\MEM_STATE_MACHINE_I/next_state1 ),
        .next_state181_out(\MEM_STATE_MACHINE_I/next_state181_out ),
        .out(AXI_EMC_NATIVE_INTERFACE_I_n_0),
        .pend_rdreq(\IPIC_IF_I/pend_rdreq ),
        .pend_rdreq_reg(EMC_CTRL_I_n_70),
        .pend_wrreq(\IPIC_IF_I/pend_wrreq ),
        .rd_fifo_wr_en(rd_fifo_wr_en),
        .rdce_out_i(\AXI_EMC_ADDRESS_DECODE_INSTANCE_I/rdce_out_i ),
        .rdclk(rdclk),
        .read_req_ack_cmb(\MEM_STATE_MACHINE_I/read_req_ack_cmb ),
        .read_req_ack_cmb44_out(\MEM_STATE_MACHINE_I/read_req_ack_cmb44_out ),
        .readreq_th_reset(\MEM_STEER_I/readreq_th_reset ),
        .reset_fifo(\IPIC_IF_I/reset_fifo ),
        .rnw_reg_reg(AXI_EMC_NATIVE_INTERFACE_I_n_61),
        .rst_rdce_cmb(rst_rdce_cmb),
        .rw_flag_reg(rw_flag_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_mem_arburst(s_axi_mem_arburst),
        .s_axi_mem_arvalid(s_axi_mem_arvalid),
        .s_axi_mem_awburst(s_axi_mem_awburst),
        .s_axi_mem_awvalid(s_axi_mem_awvalid),
        .\s_axi_mem_bid_reg_reg[3] (EMC_CTRL_I_n_57),
        .\s_axi_mem_rdata[7] ({ip2bus_data[0],ip2bus_data[1],ip2bus_data[2],ip2bus_data[3],ip2bus_data[4],ip2bus_data[5],ip2bus_data[6],ip2bus_data[7],ip2bus_data[8],ip2bus_data[9],ip2bus_data[10],ip2bus_data[11],ip2bus_data[12],ip2bus_data[13],ip2bus_data[14],ip2bus_data[15],ip2bus_data[16],ip2bus_data[17],ip2bus_data[18],ip2bus_data[19],ip2bus_data[20],ip2bus_data[21],ip2bus_data[22],ip2bus_data[23],ip2bus_data[24],ip2bus_data[25],ip2bus_data[26],ip2bus_data[27],ip2bus_data[28],ip2bus_data[29],ip2bus_data[30],ip2bus_data[31]}),
        .s_axi_mem_wlast(s_axi_mem_wlast),
        .s_axi_mem_wvalid(s_axi_mem_wvalid),
        .single_transaction(single_transaction),
        .temp_bus2ip_cs(temp_bus2ip_cs),
        .transaction_complete_reg_reg(EMC_CTRL_I_n_58),
        .transaction_done_i(transaction_done_i),
        .trd_end(trd_end),
        .twph_end(twph_end));
  LUT5 #(
    .INIT(32'h00000800)) 
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG[0][31]_i_1 
       (.I0(s_axi_reg_wvalid),
        .I1(write_reg_req),
        .I2(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2] ),
        .I3(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4] ),
        .I4(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3] ),
        .O(bus2ip_wrce_lite_cmb_4));
  FDRE \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_lite_cmb_4),
        .D(s_axi_reg_wdata[0]),
        .Q(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [0]),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  FDRE \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][1] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_lite_cmb_4),
        .D(s_axi_reg_wdata[1]),
        .Q(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [1]),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  FDSE \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][2] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_lite_cmb_4),
        .D(s_axi_reg_wdata[2]),
        .Q(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [2]),
        .S(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  FDRE \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][30] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_lite_cmb_4),
        .D(s_axi_reg_wdata[7]),
        .Q(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [30]),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  FDRE \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][31] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_lite_cmb_4),
        .D(s_axi_reg_wdata[8]),
        .Q(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [31]),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  FDRE \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][3] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_lite_cmb_4),
        .D(s_axi_reg_wdata[3]),
        .Q(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [3]),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  FDRE \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][4] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_lite_cmb_4),
        .D(s_axi_reg_wdata[4]),
        .Q(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [4]),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  FDSE \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][5] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_lite_cmb_4),
        .D(s_axi_reg_wdata[5]),
        .Q(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [5]),
        .S(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  FDRE \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][6] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_lite_cmb_4),
        .D(s_axi_reg_wdata[6]),
        .Q(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [6]),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  (* IOB = "TRUE" *) 
  FDRE \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [6]),
        .Q(mem_cre),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_117));
  FDSE \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_EMC_NATIVE_INTERFACE_I_n_47),
        .Q(psram_page_mode),
        .S(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  LUT6 #(
    .INIT(64'hACFFAFFFAC00A000)) 
    \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[2]_i_1 
       (.I0(s_axi_reg_araddr[0]),
        .I1(s_axi_reg_awaddr[0]),
        .I2(s_axi_reg_arvalid),
        .I3(s_axi_reg_arready),
        .I4(s_axi_reg_awvalid),
        .I5(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2] ),
        .O(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACFFAFFFAC00A000)) 
    \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[3]_i_1 
       (.I0(s_axi_reg_araddr[1]),
        .I1(s_axi_reg_awaddr[1]),
        .I2(s_axi_reg_arvalid),
        .I3(s_axi_reg_arready),
        .I4(s_axi_reg_awvalid),
        .I5(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3] ),
        .O(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACFFAFFFAC00A000)) 
    \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[4]_i_1 
       (.I0(s_axi_reg_araddr[2]),
        .I1(s_axi_reg_awaddr[2]),
        .I2(s_axi_reg_arvalid),
        .I3(s_axi_reg_arready),
        .I4(s_axi_reg_awvalid),
        .I5(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4] ),
        .O(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[4]_i_1_n_0 ));
  FDRE \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[2]_i_1_n_0 ),
        .Q(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2] ),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  FDRE \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[3]_i_1_n_0 ),
        .Q(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3] ),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  FDRE \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[4]_i_1_n_0 ),
        .Q(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4] ),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  FDRE \REG_EN_GEN.axi_lite_ip2bus_wrack_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_reg_awready),
        .Q(axi_lite_ip2bus_wrack_d1),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \REG_EN_GEN.read_reg_req_i_1 
       (.I0(s_axi_reg_rvalid),
        .I1(read_reg_req),
        .I2(write_reg_req),
        .I3(s_axi_reg_arvalid),
        .O(\REG_EN_GEN.read_reg_req_i_1_n_0 ));
  FDRE \REG_EN_GEN.read_reg_req_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_EN_GEN.read_reg_req_i_1_n_0 ),
        .Q(read_reg_req),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  LUT3 #(
    .INIT(8'hBA)) 
    \REG_EN_GEN.rvalid_i_1 
       (.I0(read_reg_req),
        .I1(s_axi_reg_rready),
        .I2(s_axi_reg_rvalid),
        .O(\REG_EN_GEN.rvalid_i_1_n_0 ));
  FDRE \REG_EN_GEN.rvalid_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_EN_GEN.rvalid_i_1_n_0 ),
        .Q(s_axi_reg_rvalid),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \REG_EN_GEN.s_axi_reg_bvalid_i_i_2 
       (.I0(s_axi_reg_bready),
        .I1(s_axi_reg_bvalid),
        .I2(axi_lite_ip2bus_wrack_d1),
        .I3(write_reg_req),
        .I4(s_axi_reg_wvalid),
        .O(\REG_EN_GEN.s_axi_reg_bvalid_i_i_2_n_0 ));
  FDRE \REG_EN_GEN.s_axi_reg_bvalid_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_EN_GEN.s_axi_reg_bvalid_i_i_2_n_0 ),
        .Q(s_axi_reg_bvalid),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  LUT4 #(
    .INIT(16'h0020)) 
    \REG_EN_GEN.s_axi_reg_rdata[0]_i_1 
       (.I0(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [0]),
        .I1(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3] ),
        .I2(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4] ),
        .I3(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2] ),
        .O(axi_lite_ip2bus_data2[0]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \REG_EN_GEN.s_axi_reg_rdata[1]_i_1 
       (.I0(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [1]),
        .I1(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3] ),
        .I2(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4] ),
        .I3(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2] ),
        .O(axi_lite_ip2bus_data2[1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \REG_EN_GEN.s_axi_reg_rdata[2]_i_1 
       (.I0(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [2]),
        .I1(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3] ),
        .I2(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4] ),
        .I3(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2] ),
        .O(axi_lite_ip2bus_data2[2]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \REG_EN_GEN.s_axi_reg_rdata[30]_i_1 
       (.I0(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [30]),
        .I1(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3] ),
        .I2(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4] ),
        .I3(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2] ),
        .O(axi_lite_ip2bus_data2[30]));
  LUT3 #(
    .INIT(8'h1F)) 
    \REG_EN_GEN.s_axi_reg_rdata[31]_i_1 
       (.I0(s_axi_reg_rvalid),
        .I1(read_reg_req),
        .I2(s_axi_aresetn),
        .O(\REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \REG_EN_GEN.s_axi_reg_rdata[31]_i_2 
       (.I0(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [31]),
        .I1(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3] ),
        .I2(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4] ),
        .I3(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2] ),
        .O(axi_lite_ip2bus_data2[31]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \REG_EN_GEN.s_axi_reg_rdata[3]_i_1 
       (.I0(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [3]),
        .I1(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3] ),
        .I2(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4] ),
        .I3(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2] ),
        .O(axi_lite_ip2bus_data2[3]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \REG_EN_GEN.s_axi_reg_rdata[4]_i_1 
       (.I0(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [4]),
        .I1(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3] ),
        .I2(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4] ),
        .I3(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2] ),
        .O(axi_lite_ip2bus_data2[4]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \REG_EN_GEN.s_axi_reg_rdata[5]_i_1 
       (.I0(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [5]),
        .I1(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3] ),
        .I2(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4] ),
        .I3(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2] ),
        .O(axi_lite_ip2bus_data2[5]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \REG_EN_GEN.s_axi_reg_rdata[6]_i_1 
       (.I0(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0] [6]),
        .I1(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3] ),
        .I2(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4] ),
        .I3(\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2] ),
        .O(axi_lite_ip2bus_data2[6]));
  FDRE \REG_EN_GEN.s_axi_reg_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(read_reg_req),
        .D(axi_lite_ip2bus_data2[0]),
        .Q(s_axi_reg_rdata[0]),
        .R(\REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0 ));
  FDRE \REG_EN_GEN.s_axi_reg_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(read_reg_req),
        .D(axi_lite_ip2bus_data2[1]),
        .Q(s_axi_reg_rdata[1]),
        .R(\REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0 ));
  FDRE \REG_EN_GEN.s_axi_reg_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(read_reg_req),
        .D(axi_lite_ip2bus_data2[2]),
        .Q(s_axi_reg_rdata[2]),
        .R(\REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0 ));
  FDRE \REG_EN_GEN.s_axi_reg_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(read_reg_req),
        .D(axi_lite_ip2bus_data2[30]),
        .Q(s_axi_reg_rdata[7]),
        .R(\REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0 ));
  FDRE \REG_EN_GEN.s_axi_reg_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(read_reg_req),
        .D(axi_lite_ip2bus_data2[31]),
        .Q(s_axi_reg_rdata[8]),
        .R(\REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0 ));
  FDRE \REG_EN_GEN.s_axi_reg_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(read_reg_req),
        .D(axi_lite_ip2bus_data2[3]),
        .Q(s_axi_reg_rdata[3]),
        .R(\REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0 ));
  FDRE \REG_EN_GEN.s_axi_reg_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(read_reg_req),
        .D(axi_lite_ip2bus_data2[4]),
        .Q(s_axi_reg_rdata[4]),
        .R(\REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0 ));
  FDRE \REG_EN_GEN.s_axi_reg_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(read_reg_req),
        .D(axi_lite_ip2bus_data2[5]),
        .Q(s_axi_reg_rdata[5]),
        .R(\REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0 ));
  FDRE \REG_EN_GEN.s_axi_reg_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(read_reg_req),
        .D(axi_lite_ip2bus_data2[6]),
        .Q(s_axi_reg_rdata[6]),
        .R(\REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h4F444444)) 
    \REG_EN_GEN.write_reg_req_i_1 
       (.I0(s_axi_reg_wvalid),
        .I1(write_reg_req),
        .I2(s_axi_reg_arvalid),
        .I3(s_axi_reg_awvalid),
        .I4(s_axi_reg_arready),
        .O(\REG_EN_GEN.write_reg_req_i_1_n_0 ));
  FDRE \REG_EN_GEN.write_reg_req_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_EN_GEN.write_reg_req_i_1_n_0 ),
        .Q(write_reg_req),
        .R(AXI_EMC_NATIVE_INTERFACE_I_n_2));
  FDRE bus2ip_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_EMC_NATIVE_INTERFACE_I_n_2),
        .Q(bus2ip_reset),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[10] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[21].ADDRESS_REG__0 ),
        .Q(mem_a[9]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[11] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[20].ADDRESS_REG__0 ),
        .Q(mem_a[10]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[12] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[19].ADDRESS_REG__0 ),
        .Q(mem_a[11]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[13] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[18].ADDRESS_REG__0 ),
        .Q(mem_a[12]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[14] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[17].ADDRESS_REG__0 ),
        .Q(mem_a[13]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[15] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[16].ADDRESS_REG__0 ),
        .Q(mem_a[14]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[16] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[15].ADDRESS_REG__0 ),
        .Q(mem_a[15]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[17] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[14].ADDRESS_REG__0 ),
        .Q(mem_a[16]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[18] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[13].ADDRESS_REG__0 ),
        .Q(mem_a[17]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[19] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[12].ADDRESS_REG__0 ),
        .Q(mem_a[18]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[1] 
       (.C(rdclk),
        .CE(1'b1),
        .D(EMC_CTRL_I_n_75),
        .Q(mem_a[0]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[20] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[11].ADDRESS_REG__0 ),
        .Q(mem_a[19]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[21] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[10].ADDRESS_REG__0 ),
        .Q(mem_a[20]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[22] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[9].ADDRESS_REG__0 ),
        .Q(mem_a[21]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[23] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[8].ADDRESS_REG__0 ),
        .Q(mem_a[22]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[24] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[7].ADDRESS_REG__0 ),
        .Q(mem_a[23]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[25] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[6].ADDRESS_REG__0 ),
        .Q(mem_a[24]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[26] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[5].ADDRESS_REG__0 ),
        .Q(mem_a[25]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[27] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[4].ADDRESS_REG__0 ),
        .Q(mem_a[26]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[28] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[3].ADDRESS_REG__0 ),
        .Q(mem_a[27]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[29] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[2].ADDRESS_REG__0 ),
        .Q(mem_a[28]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[2] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[29].ADDRESS_REG__0 ),
        .Q(mem_a[1]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[30] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[1].ADDRESS_REG__0 ),
        .Q(mem_a[29]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[31] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[0].ADDRESS_REG__0 ),
        .Q(mem_a[30]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[3] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[28].ADDRESS_REG__0 ),
        .Q(mem_a[2]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[4] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[27].ADDRESS_REG__0 ),
        .Q(mem_a[3]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[5] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[26].ADDRESS_REG__0 ),
        .Q(mem_a[4]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[6] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[25].ADDRESS_REG__0 ),
        .Q(mem_a[5]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[7] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[24].ADDRESS_REG__0 ),
        .Q(mem_a[6]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[8] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[23].ADDRESS_REG__0 ),
        .Q(mem_a[7]),
        .R(EMC_CTRL_I_n_59));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[9] 
       (.C(rdclk),
        .CE(1'b1),
        .D(\ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[22].ADDRESS_REG__0 ),
        .Q(mem_a[8]),
        .R(EMC_CTRL_I_n_59));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    s_axi_reg_arready_INST_0
       (.I0(s_axi_reg_rvalid),
        .I1(read_reg_req),
        .I2(s_axi_aresetn),
        .I3(write_reg_req),
        .O(s_axi_reg_arready));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    s_axi_reg_wready_INST_0
       (.I0(write_reg_req),
        .I1(s_axi_reg_wvalid),
        .O(s_axi_reg_awready));
endmodule

(* ORIG_REF_NAME = "axi_emc_addr_gen" *) 
module axi_em_ctrl_axi_emc_addr_gen
   (\ADDRESS_STORE_GEN[29].ADDRESS_REG ,
    SR,
    bus2ip_addr_temp,
    S,
    enable_cs_cmb,
    rnw_cmb,
    rnw_cmb0,
    \burst_addr_cnt_reg[7] ,
    \burst_addr_cnt_reg[6] ,
    \rd_data_count_reg[6] ,
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ,
    s_axi_aclk,
    Q,
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] ,
    out,
    enable_cs_cmb0,
    enable_cs_cmb126_out,
    rnw_reg_reg,
    s_axi_mem_araddr,
    s_axi_mem_awaddr,
    \derived_burst_reg_reg[1] ,
    \LEN_GEN_32.derived_len_reg_reg[2] ,
    \burst_addr_cnt_reg[7]_0 ,
    last_data_acked,
    \rd_data_count_reg[7] ,
    s_axi_mem_rready,
    s_axi_mem_arvalid,
    rw_flag_reg_reg,
    s_axi_mem_awvalid,
    s_axi_aresetn,
    \FSM_sequential_emc_addr_ps_reg[2] ,
    bus2ip_addr_i,
    \FSM_sequential_emc_addr_ps_reg[0] ,
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0] ,
    \FSM_sequential_emc_addr_ps_reg[2]_0 ,
    E);
  output \ADDRESS_STORE_GEN[29].ADDRESS_REG ;
  output [0:0]SR;
  output [28:0]bus2ip_addr_temp;
  output [0:0]S;
  output enable_cs_cmb;
  output rnw_cmb;
  output rnw_cmb0;
  output \burst_addr_cnt_reg[7] ;
  output \burst_addr_cnt_reg[6] ;
  output \rd_data_count_reg[6] ;
  output [0:0]\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ;
  input s_axi_aclk;
  input [1:0]Q;
  input [3:0]\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] ;
  input [2:0]out;
  input enable_cs_cmb0;
  input enable_cs_cmb126_out;
  input rnw_reg_reg;
  input [31:0]s_axi_mem_araddr;
  input [31:0]s_axi_mem_awaddr;
  input [1:0]\derived_burst_reg_reg[1] ;
  input [2:0]\LEN_GEN_32.derived_len_reg_reg[2] ;
  input [7:0]\burst_addr_cnt_reg[7]_0 ;
  input last_data_acked;
  input [7:0]\rd_data_count_reg[7] ;
  input s_axi_mem_rready;
  input s_axi_mem_arvalid;
  input rw_flag_reg_reg;
  input s_axi_mem_awvalid;
  input s_axi_aresetn;
  input \FSM_sequential_emc_addr_ps_reg[2] ;
  input bus2ip_addr_i;
  input \FSM_sequential_emc_addr_ps_reg[0] ;
  input \MEM_DECODE_GEN[0].rdce_out_i_reg[0] ;
  input \FSM_sequential_emc_addr_ps_reg[2]_0 ;
  input [0:0]E;

  wire \ADDRESS_STORE_GEN[29].ADDRESS_REG ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_4_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_3_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_4_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_4_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_3_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1] ;
  wire [0:0]\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ;
  wire [0:0]E;
  wire \FSM_sequential_emc_addr_ps_reg[0] ;
  wire \FSM_sequential_emc_addr_ps_reg[2] ;
  wire \FSM_sequential_emc_addr_ps_reg[2]_0 ;
  wire [2:0]\LEN_GEN_32.derived_len_reg_reg[2] ;
  wire \MEM_DECODE_GEN[0].rdce_out_i_reg[0] ;
  wire [1:0]Q;
  wire [0:0]S;
  wire [3:0]\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] ;
  wire [0:0]SR;
  wire [5:0]addr_11_6_cmb;
  wire \burst_addr_cnt_reg[6] ;
  wire \burst_addr_cnt_reg[7] ;
  wire [7:0]\burst_addr_cnt_reg[7]_0 ;
  wire bus2ip_addr_i;
  wire \bus2ip_addr_i[12]_i_1_n_0 ;
  wire \bus2ip_addr_i[13]_i_1_n_0 ;
  wire \bus2ip_addr_i[14]_i_1_n_0 ;
  wire \bus2ip_addr_i[15]_i_1_n_0 ;
  wire \bus2ip_addr_i[16]_i_1_n_0 ;
  wire \bus2ip_addr_i[17]_i_1_n_0 ;
  wire \bus2ip_addr_i[18]_i_1_n_0 ;
  wire \bus2ip_addr_i[19]_i_1_n_0 ;
  wire \bus2ip_addr_i[20]_i_1_n_0 ;
  wire \bus2ip_addr_i[21]_i_1_n_0 ;
  wire \bus2ip_addr_i[22]_i_1_n_0 ;
  wire \bus2ip_addr_i[23]_i_1_n_0 ;
  wire \bus2ip_addr_i[24]_i_1_n_0 ;
  wire \bus2ip_addr_i[25]_i_1_n_0 ;
  wire \bus2ip_addr_i[26]_i_1_n_0 ;
  wire \bus2ip_addr_i[27]_i_1_n_0 ;
  wire \bus2ip_addr_i[28]_i_1_n_0 ;
  wire \bus2ip_addr_i[29]_i_1_n_0 ;
  wire \bus2ip_addr_i[30]_i_1_n_0 ;
  wire \bus2ip_addr_i[31]_i_2_n_0 ;
  wire [28:0]bus2ip_addr_temp;
  wire [1:0]\derived_burst_reg_reg[1] ;
  wire enable_cs_cmb;
  wire enable_cs_cmb0;
  wire enable_cs_cmb126_out;
  wire last_data_acked;
  wire [2:0]out;
  wire \rd_data_count_reg[6] ;
  wire [7:0]\rd_data_count_reg[7] ;
  wire rnw_cmb;
  wire rnw_cmb0;
  wire rnw_reg_i_2_n_0;
  wire rnw_reg_reg;
  wire rw_flag_reg_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_mem_araddr;
  wire s_axi_mem_arvalid;
  wire [31:0]s_axi_mem_awaddr;
  wire s_axi_mem_awvalid;
  wire s_axi_mem_rready;

  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_1 
       (.I0(s_axi_mem_araddr[10]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[10]),
        .I3(enable_cs_cmb),
        .I4(bus2ip_addr_temp[7]),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2_n_0 ),
        .O(addr_11_6_cmb[4]));
  LUT4 #(
    .INIT(16'h8000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2 
       (.I0(bus2ip_addr_temp[6]),
        .I1(bus2ip_addr_temp[4]),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0 ),
        .I3(bus2ip_addr_temp[5]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_2 
       (.I0(s_axi_mem_araddr[11]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[11]),
        .I3(enable_cs_cmb),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_4_n_0 ),
        .O(addr_11_6_cmb[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_4 
       (.I0(bus2ip_addr_temp[8]),
        .I1(bus2ip_addr_temp[6]),
        .I2(bus2ip_addr_temp[4]),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0 ),
        .I4(bus2ip_addr_temp[5]),
        .I5(bus2ip_addr_temp[7]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFFFA0A03000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_2_n_0 ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3_n_0 ),
        .I2(\FSM_sequential_emc_addr_ps_reg[2] ),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4_n_0 ),
        .I4(enable_cs_cmb),
        .I5(\ADDRESS_STORE_GEN[29].ADDRESS_REG ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_2 
       (.I0(s_axi_mem_araddr[2]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[2]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1] ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4 
       (.I0(\derived_burst_reg_reg[1] [0]),
        .I1(\LEN_GEN_32.derived_len_reg_reg[2] [0]),
        .I2(\derived_burst_reg_reg[1] [1]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFFFA0A03000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_2_n_0 ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_3_n_0 ),
        .I2(\FSM_sequential_emc_addr_ps_reg[2] ),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_4_n_0 ),
        .I4(enable_cs_cmb),
        .I5(bus2ip_addr_temp[0]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_2 
       (.I0(s_axi_mem_araddr[3]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[3]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h0057FFFF)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_3 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1] ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\ADDRESS_STORE_GEN[29].ADDRESS_REG ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_4 
       (.I0(\derived_burst_reg_reg[1] [0]),
        .I1(\LEN_GEN_32.derived_len_reg_reg[2] [1]),
        .I2(\derived_burst_reg_reg[1] [1]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFFFA0A03000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_2_n_0 ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0 ),
        .I2(\FSM_sequential_emc_addr_ps_reg[2] ),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_4_n_0 ),
        .I4(enable_cs_cmb),
        .I5(bus2ip_addr_temp[1]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_2 
       (.I0(s_axi_mem_araddr[4]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[4]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55577777FFFFFFFF)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3 
       (.I0(\ADDRESS_STORE_GEN[29].ADDRESS_REG ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1] ),
        .I5(bus2ip_addr_temp[0]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_4 
       (.I0(\derived_burst_reg_reg[1] [0]),
        .I1(\LEN_GEN_32.derived_len_reg_reg[2] [2]),
        .I2(\derived_burst_reg_reg[1] [1]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFFFF8B880000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_2_n_0 ),
        .I1(enable_cs_cmb),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0 ),
        .I3(bus2ip_addr_temp[1]),
        .I4(bus2ip_addr_i),
        .I5(bus2ip_addr_temp[2]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_2 
       (.I0(s_axi_mem_araddr[5]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[5]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_mem_araddr[6]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[6]),
        .I3(enable_cs_cmb),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2_n_0 ),
        .I5(bus2ip_addr_temp[3]),
        .O(addr_11_6_cmb[0]));
  LUT3 #(
    .INIT(8'hDF)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2 
       (.I0(bus2ip_addr_temp[1]),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0 ),
        .I2(bus2ip_addr_temp[2]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_mem_araddr[7]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[7]),
        .I3(enable_cs_cmb),
        .I4(bus2ip_addr_temp[4]),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0 ),
        .O(addr_11_6_cmb[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2 
       (.I0(bus2ip_addr_temp[3]),
        .I1(bus2ip_addr_temp[2]),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0 ),
        .I3(bus2ip_addr_temp[1]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_mem_araddr[8]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[8]),
        .I3(enable_cs_cmb),
        .I4(bus2ip_addr_temp[5]),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0 ),
        .O(addr_11_6_cmb[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2 
       (.I0(bus2ip_addr_temp[4]),
        .I1(bus2ip_addr_temp[1]),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0 ),
        .I3(bus2ip_addr_temp[2]),
        .I4(bus2ip_addr_temp[3]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_1 
       (.I0(s_axi_mem_araddr[9]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[9]),
        .I3(enable_cs_cmb),
        .I4(bus2ip_addr_temp[6]),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2_n_0 ),
        .O(addr_11_6_cmb[3]));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2 
       (.I0(bus2ip_addr_temp[5]),
        .I1(bus2ip_addr_temp[3]),
        .I2(bus2ip_addr_temp[2]),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0 ),
        .I4(bus2ip_addr_temp[1]),
        .I5(bus2ip_addr_temp[4]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(addr_11_6_cmb[4]),
        .Q(bus2ip_addr_temp[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(addr_11_6_cmb[5]),
        .Q(bus2ip_addr_temp[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\ADDRESS_STORE_GEN[29].ADDRESS_REG ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(addr_11_6_cmb[0]),
        .Q(bus2ip_addr_temp[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(addr_11_6_cmb[1]),
        .Q(bus2ip_addr_temp[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(addr_11_6_cmb[2]),
        .Q(bus2ip_addr_temp[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(addr_11_6_cmb[3]),
        .Q(bus2ip_addr_temp[6]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFACAFAFA0A3A0A0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(enable_cs_cmb),
        .I3(\FSM_sequential_emc_addr_ps_reg[0] ),
        .I4(\MEM_DECODE_GEN[0].rdce_out_i_reg[0] ),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2 
       (.I0(s_axi_mem_araddr[0]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[0]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8FFFFB88B0000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_n_0 ),
        .I1(enable_cs_cmb),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(\FSM_sequential_emc_addr_ps_reg[2]_0 ),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1] ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2 
       (.I0(s_axi_mem_araddr[1]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[1]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_3 
       (.I0(Q[0]),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1_n_0 ),
        .Q(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1_n_0 ),
        .Q(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \REG_EN_GEN.s_axi_reg_bvalid_i_i_1 
       (.I0(s_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \burst_addr_cnt[6]_i_2 
       (.I0(\burst_addr_cnt_reg[7]_0 [5]),
        .I1(\burst_addr_cnt_reg[7]_0 [3]),
        .I2(\burst_addr_cnt_reg[7]_0 [0]),
        .I3(\burst_addr_cnt_reg[7]_0 [1]),
        .I4(\burst_addr_cnt_reg[7]_0 [2]),
        .I5(\burst_addr_cnt_reg[7]_0 [4]),
        .O(\burst_addr_cnt_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[12]_i_1 
       (.I0(s_axi_mem_araddr[12]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[12]),
        .O(\bus2ip_addr_i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[13]_i_1 
       (.I0(s_axi_mem_araddr[13]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[13]),
        .O(\bus2ip_addr_i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[14]_i_1 
       (.I0(s_axi_mem_araddr[14]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[14]),
        .O(\bus2ip_addr_i[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[15]_i_1 
       (.I0(s_axi_mem_araddr[15]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[15]),
        .O(\bus2ip_addr_i[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[16]_i_1 
       (.I0(s_axi_mem_araddr[16]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[16]),
        .O(\bus2ip_addr_i[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[17]_i_1 
       (.I0(s_axi_mem_araddr[17]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[17]),
        .O(\bus2ip_addr_i[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[18]_i_1 
       (.I0(s_axi_mem_araddr[18]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[18]),
        .O(\bus2ip_addr_i[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[19]_i_1 
       (.I0(s_axi_mem_araddr[19]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[19]),
        .O(\bus2ip_addr_i[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[20]_i_1 
       (.I0(s_axi_mem_araddr[20]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[20]),
        .O(\bus2ip_addr_i[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[21]_i_1 
       (.I0(s_axi_mem_araddr[21]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[21]),
        .O(\bus2ip_addr_i[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[22]_i_1 
       (.I0(s_axi_mem_araddr[22]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[22]),
        .O(\bus2ip_addr_i[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[23]_i_1 
       (.I0(s_axi_mem_araddr[23]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[23]),
        .O(\bus2ip_addr_i[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[24]_i_1 
       (.I0(s_axi_mem_araddr[24]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[24]),
        .O(\bus2ip_addr_i[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[25]_i_1 
       (.I0(s_axi_mem_araddr[25]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[25]),
        .O(\bus2ip_addr_i[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[26]_i_1 
       (.I0(s_axi_mem_araddr[26]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[26]),
        .O(\bus2ip_addr_i[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[27]_i_1 
       (.I0(s_axi_mem_araddr[27]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[27]),
        .O(\bus2ip_addr_i[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[28]_i_1 
       (.I0(s_axi_mem_araddr[28]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[28]),
        .O(\bus2ip_addr_i[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[29]_i_1 
       (.I0(s_axi_mem_araddr[29]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[29]),
        .O(\bus2ip_addr_i[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[30]_i_1 
       (.I0(s_axi_mem_araddr[30]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[30]),
        .O(\bus2ip_addr_i[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01010100)) 
    \bus2ip_addr_i[31]_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(enable_cs_cmb0),
        .I4(enable_cs_cmb126_out),
        .O(enable_cs_cmb));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[31]_i_2 
       (.I0(s_axi_mem_araddr[31]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[31]),
        .O(\bus2ip_addr_i[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[12]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[13]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[14]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[15]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[16]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[17]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[18]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[19]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[20]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[21]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[22]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[23]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[24]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[25]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[26]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[27]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[28]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[29]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[30]_i_1_n_0 ),
        .Q(bus2ip_addr_temp[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\bus2ip_addr_i[31]_i_2_n_0 ),
        .Q(bus2ip_addr_temp[28]),
        .R(SR));
  LUT2 #(
    .INIT(4'h9)) 
    neqOp_carry__1_i_1
       (.I0(bus2ip_addr_temp[28]),
        .I1(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [3]),
        .O(S));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    neqOp_carry_i_3
       (.I0(bus2ip_addr_temp[6]),
        .I1(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [2]),
        .I2(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [1]),
        .I3(bus2ip_addr_temp[5]),
        .I4(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [0]),
        .I5(bus2ip_addr_temp[4]),
        .O(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ));
  LUT6 #(
    .INIT(64'hCDC8DD8DCDC8D888)) 
    rnw_reg_i_1
       (.I0(out[2]),
        .I1(rnw_reg_reg),
        .I2(out[1]),
        .I3(rnw_reg_i_2_n_0),
        .I4(out[0]),
        .I5(rnw_cmb0),
        .O(rnw_cmb));
  LUT6 #(
    .INIT(64'hAAAAAA2AAAAAAAAA)) 
    rnw_reg_i_2
       (.I0(rnw_reg_reg),
        .I1(last_data_acked),
        .I2(\rd_data_count_reg[6] ),
        .I3(\rd_data_count_reg[7] [6]),
        .I4(\rd_data_count_reg[7] [7]),
        .I5(s_axi_mem_rready),
        .O(rnw_reg_i_2_n_0));
  LUT3 #(
    .INIT(8'h2A)) 
    rnw_reg_i_3
       (.I0(s_axi_mem_arvalid),
        .I1(rw_flag_reg_reg),
        .I2(s_axi_mem_awvalid),
        .O(rnw_cmb0));
  LUT3 #(
    .INIT(8'h01)) 
    s_axi_mem_bvalid_reg_i_2
       (.I0(\burst_addr_cnt_reg[6] ),
        .I1(\burst_addr_cnt_reg[7]_0 [6]),
        .I2(\burst_addr_cnt_reg[7]_0 [7]),
        .O(\burst_addr_cnt_reg[7] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axi_mem_rlast_INST_0_i_1
       (.I0(\rd_data_count_reg[7] [3]),
        .I1(\rd_data_count_reg[7] [2]),
        .I2(\rd_data_count_reg[7] [0]),
        .I3(\rd_data_count_reg[7] [1]),
        .I4(\rd_data_count_reg[7] [4]),
        .I5(\rd_data_count_reg[7] [5]),
        .O(\rd_data_count_reg[6] ));
endmodule

(* ORIG_REF_NAME = "axi_emc_address_decode" *) 
module axi_em_ctrl_axi_emc_address_decode
   (Bus2IP_Mem_CS_d1_reg,
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC ,
    \FSM_sequential_crnt_state_reg[0] ,
    Bus2IP_RdReq_d1_reg,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg ,
    IP2Bus_RdAck0,
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 ,
    readreq_th_reset,
    S,
    bus2ip_burst_reg_reg,
    D,
    addr_sm_ps_IDLE_reg_reg,
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ,
    \FSM_sequential_crnt_state_reg[2] ,
    \FSM_sequential_crnt_state_reg[0]_0 ,
    \FSM_sequential_crnt_state_reg[3] ,
    next_state181_out,
    \FSM_sequential_crnt_state_reg[0]_1 ,
    E,
    \bus2ip_BE_reg_reg[0] ,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 ,
    read_req_ack_cmb44_out,
    S_0,
    S_1,
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    single_transfer_cmb,
    bus2ip_burst_reg_reg_0,
    \burstlength_reg_reg[3] ,
    bus2ip_burst_reg_reg_1,
    \burst_data_cnt_reg[6] ,
    in,
    reset_fifo,
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] ,
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27] ,
    new_page_access,
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg ,
    CE,
    \s_axi_mem_bresp_reg_reg[1] ,
    bus2ip_rd_req_reg_reg,
    pend_rdreq_reg,
    pend_wrreq_reg,
    s_axi_aclk,
    pend_rdreq,
    Q,
    bus2ip_wr_req_reg_reg,
    pend_wrreq,
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ,
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0] ,
    \FSM_sequential_emc_addr_ps_reg[0] ,
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ,
    bus2ip_reset,
    ip2bus_rdack,
    \INFERRED_GEN.cnt_i_reg[0] ,
    Write_req_data_ack_cmb,
    out,
    \FSM_sequential_emc_addr_ps_reg[0]_0 ,
    \FSM_sequential_emc_addr_ps_reg[0]_1 ,
    \FSM_sequential_emc_addr_ps_reg[1] ,
    s_axi_mem_bvalid_reg_reg,
    s_axi_mem_bready,
    s_axi_mem_bvalid_reg_reg_0,
    s_axi_mem_wvalid,
    \burst_addr_cnt_reg[6] ,
    next_state174_out,
    cycle_End,
    bus2ip_wr_req_reg_reg_0,
    bus2ip_wr_req_reg_reg_1,
    twph_end,
    next_state1,
    rnw_reg_reg,
    CO,
    trd_end,
    enable_rdce_cmb,
    enable_cs_cmb,
    s_axi_aresetn,
    rnw_cmb,
    \FSM_sequential_emc_addr_ps_reg[0]_2 ,
    transaction_done_i,
    crnt_state_reg,
    cycle_cnt_en_cmb58_out,
    bus2ip_wr_req_reg_reg_2,
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ,
    cycle_cnt,
    Cycle_cnt_en_int,
    \axi_trans_size_reg_reg[1] ,
    axi_trans_size_reg_int,
    type_of_xfer_reg_reg,
    IP2Bus_RdAck_reg,
    IP2Bus_RdAck_reg_0,
    burst_cnt_i,
    read_req_ack_cmb,
    s_axi_mem_awlen,
    s_axi_mem_arlen,
    Write_req_addr_ack_cmb,
    \burst_data_cnt_reg[7] ,
    Type_of_xfer,
    psram_page_mode,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4] ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5] ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11] ,
    bus2ip_addr_temp,
    p_0_in,
    s_axi_mem_bresp,
    addr_sm_ps_idle_cmb,
    rnw_cmb0,
    Bus2IP_RdReq_emc,
    bus2ip_burst_reg,
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 );
  output Bus2IP_Mem_CS_d1_reg;
  output \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC ;
  output \FSM_sequential_crnt_state_reg[0] ;
  output Bus2IP_RdReq_d1_reg;
  output \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  output \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg ;
  output IP2Bus_RdAck0;
  output \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 ;
  output readreq_th_reset;
  output [0:0]S;
  output bus2ip_burst_reg_reg;
  output [1:0]D;
  output addr_sm_ps_IDLE_reg_reg;
  output \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ;
  output \FSM_sequential_crnt_state_reg[2] ;
  output \FSM_sequential_crnt_state_reg[0]_0 ;
  output \FSM_sequential_crnt_state_reg[3] ;
  output next_state181_out;
  output \FSM_sequential_crnt_state_reg[0]_1 ;
  output [0:0]E;
  output [0:0]\bus2ip_BE_reg_reg[0] ;
  output \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  output \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ;
  output \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 ;
  output read_req_ack_cmb44_out;
  output S_0;
  output S_1;
  output \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  output single_transfer_cmb;
  output bus2ip_burst_reg_reg_0;
  output [3:0]\burstlength_reg_reg[3] ;
  output bus2ip_burst_reg_reg_1;
  output \burst_data_cnt_reg[6] ;
  output [0:0]in;
  output reset_fifo;
  output [27:0]\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] ;
  output [0:0]\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27] ;
  output new_page_access;
  output \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg ;
  output CE;
  output \s_axi_mem_bresp_reg_reg[1] ;
  output bus2ip_rd_req_reg_reg;
  output pend_rdreq_reg;
  output pend_wrreq_reg;
  input s_axi_aclk;
  input pend_rdreq;
  input [7:0]Q;
  input bus2ip_wr_req_reg_reg;
  input pend_wrreq;
  input \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ;
  input [0:0]\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0] ;
  input \FSM_sequential_emc_addr_ps_reg[0] ;
  input \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  input bus2ip_reset;
  input ip2bus_rdack;
  input [0:0]\INFERRED_GEN.cnt_i_reg[0] ;
  input Write_req_data_ack_cmb;
  input [2:0]out;
  input \FSM_sequential_emc_addr_ps_reg[0]_0 ;
  input \FSM_sequential_emc_addr_ps_reg[0]_1 ;
  input \FSM_sequential_emc_addr_ps_reg[1] ;
  input s_axi_mem_bvalid_reg_reg;
  input s_axi_mem_bready;
  input s_axi_mem_bvalid_reg_reg_0;
  input s_axi_mem_wvalid;
  input \burst_addr_cnt_reg[6] ;
  input next_state174_out;
  input cycle_End;
  input bus2ip_wr_req_reg_reg_0;
  input bus2ip_wr_req_reg_reg_1;
  input twph_end;
  input next_state1;
  input rnw_reg_reg;
  input [0:0]CO;
  input trd_end;
  input enable_rdce_cmb;
  input enable_cs_cmb;
  input s_axi_aresetn;
  input rnw_cmb;
  input [0:0]\FSM_sequential_emc_addr_ps_reg[0]_2 ;
  input transaction_done_i;
  input [0:0]crnt_state_reg;
  input cycle_cnt_en_cmb58_out;
  input bus2ip_wr_req_reg_reg_2;
  input \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ;
  input \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ;
  input [0:0]cycle_cnt;
  input Cycle_cnt_en_int;
  input [0:0]\axi_trans_size_reg_reg[1] ;
  input [0:0]axi_trans_size_reg_int;
  input type_of_xfer_reg_reg;
  input IP2Bus_RdAck_reg;
  input IP2Bus_RdAck_reg_0;
  input [0:7]burst_cnt_i;
  input read_req_ack_cmb;
  input [7:0]s_axi_mem_awlen;
  input [7:0]s_axi_mem_arlen;
  input Write_req_addr_ack_cmb;
  input [7:0]\burst_data_cnt_reg[7] ;
  input Type_of_xfer;
  input psram_page_mode;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4] ;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5] ;
  input [5:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11] ;
  input [19:0]bus2ip_addr_temp;
  input [0:0]p_0_in;
  input [0:0]s_axi_mem_bresp;
  input addr_sm_ps_idle_cmb;
  input rnw_cmb0;
  input Bus2IP_RdReq_emc;
  input bus2ip_burst_reg;
  input \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;

  wire \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC ;
  wire \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 ;
  wire \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_3_n_0 ;
  wire \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  wire [5:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11] ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4] ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5] ;
  wire Bus2IP_Mem_CS_d1_reg;
  wire Bus2IP_RdReq_d1_i_4_n_0;
  wire Bus2IP_RdReq_d1_reg;
  wire Bus2IP_RdReq_emc;
  wire CE;
  wire [0:0]CO;
  wire Cycle_cnt_en_int;
  wire [1:0]D;
  wire [0:0]E;
  wire \EMC_CTRL_I/IPIC_IF_I/set_pend_rdreq ;
  wire \FSM_sequential_crnt_state_reg[0] ;
  wire \FSM_sequential_crnt_state_reg[0]_0 ;
  wire \FSM_sequential_crnt_state_reg[0]_1 ;
  wire \FSM_sequential_crnt_state_reg[2] ;
  wire \FSM_sequential_crnt_state_reg[3] ;
  wire \FSM_sequential_emc_addr_ps[0]_i_2_n_0 ;
  wire \FSM_sequential_emc_addr_ps[1]_i_3_n_0 ;
  wire \FSM_sequential_emc_addr_ps[1]_i_4_n_0 ;
  wire \FSM_sequential_emc_addr_ps_reg[0] ;
  wire \FSM_sequential_emc_addr_ps_reg[0]_0 ;
  wire \FSM_sequential_emc_addr_ps_reg[0]_1 ;
  wire [0:0]\FSM_sequential_emc_addr_ps_reg[0]_2 ;
  wire \FSM_sequential_emc_addr_ps_reg[1] ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[0] ;
  wire IP2Bus_RdAck0;
  wire IP2Bus_RdAck_reg;
  wire IP2Bus_RdAck_reg_0;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_reg[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].rdce_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].rdce_out_i[0]_i_3_n_0 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[7].MULT_AND_i1_i_4_n_0 ;
  wire [7:0]Q;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 ;
  wire [0:0]\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0] ;
  wire \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg ;
  wire \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg ;
  wire [0:0]S;
  wire [27:0]\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] ;
  wire [0:0]\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27] ;
  wire S_0;
  wire S_1;
  wire Type_of_xfer;
  wire Write_req_addr_ack_cmb;
  wire Write_req_data_ack_cmb;
  wire addr_sm_ps_IDLE_reg_reg;
  wire addr_sm_ps_idle_cmb;
  wire [0:0]axi_trans_size_reg_int;
  wire [0:0]\axi_trans_size_reg_reg[1] ;
  wire \burst_addr_cnt_reg[6] ;
  wire [0:7]burst_cnt_i;
  wire \burst_data_cnt_reg[6] ;
  wire [7:0]\burst_data_cnt_reg[7] ;
  wire [3:0]\burstlength_reg_reg[3] ;
  wire [0:0]\bus2ip_BE_reg_reg[0] ;
  wire [19:0]bus2ip_addr_temp;
  wire bus2ip_burst_reg;
  wire bus2ip_burst_reg_reg;
  wire bus2ip_burst_reg_reg_0;
  wire bus2ip_burst_reg_reg_1;
  wire bus2ip_rd_req_reg_i_2_n_0;
  wire bus2ip_rd_req_reg_reg;
  wire bus2ip_reset;
  wire bus2ip_wr_req_reg_reg;
  wire bus2ip_wr_req_reg_reg_0;
  wire bus2ip_wr_req_reg_reg_1;
  wire bus2ip_wr_req_reg_reg_2;
  wire [0:0]crnt_state_reg;
  wire cs_reg;
  wire cycle_End;
  wire [0:0]cycle_cnt;
  wire cycle_cnt_en_cmb58_out;
  wire enable_cs_cmb;
  wire enable_rdce_cmb;
  wire [0:0]in;
  wire ip2bus_rdack;
  wire new_page_access;
  wire next_state1;
  wire next_state174_out;
  wire next_state181_out;
  wire [2:0]out;
  wire [0:0]p_0_in;
  wire pend_rdreq;
  wire pend_rdreq_reg;
  wire pend_wrreq;
  wire pend_wrreq_reg;
  wire psram_page_mode;
  wire read_req_ack_cmb;
  wire read_req_ack_cmb44_out;
  wire readreq_th_reset;
  wire reset_fifo;
  wire rnw_cmb;
  wire rnw_cmb0;
  wire rnw_reg_reg;
  wire rst_cs_cmb;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [7:0]s_axi_mem_arlen;
  wire [7:0]s_axi_mem_awlen;
  wire s_axi_mem_bready;
  wire [0:0]s_axi_mem_bresp;
  wire \s_axi_mem_bresp_reg_reg[1] ;
  wire s_axi_mem_bvalid_reg_reg;
  wire s_axi_mem_bvalid_reg_reg_0;
  wire s_axi_mem_wvalid;
  wire single_transfer_cmb;
  wire transaction_done_i;
  wire trd_end;
  wire twph_end;
  wire type_of_xfer_reg_reg;

  LUT5 #(
    .INIT(32'hFFFF3313)) 
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_1 
       (.I0(pend_rdreq),
        .I1(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 ),
        .I2(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC ),
        .I3(\FSM_sequential_emc_addr_ps_reg[0] ),
        .I4(bus2ip_reset),
        .O(readreq_th_reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_2 
       (.I0(Q[4]),
        .I1(Q[7]),
        .I2(Q[1]),
        .I3(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_3_n_0 ),
        .O(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(Bus2IP_Mem_CS_d1_reg),
        .O(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF1D0000)) 
    Bus2IP_RdReq_d1_i_1
       (.I0(IP2Bus_RdAck_reg),
        .I1(out[1]),
        .I2(IP2Bus_RdAck_reg_0),
        .I3(out[2]),
        .I4(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC ),
        .I5(Bus2IP_RdReq_d1_i_4_n_0),
        .O(Bus2IP_RdReq_d1_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55555554)) 
    Bus2IP_RdReq_d1_i_4
       (.I0(pend_rdreq),
        .I1(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_3_n_0 ),
        .I2(Q[1]),
        .I3(Q[7]),
        .I4(Q[4]),
        .O(Bus2IP_RdReq_d1_i_4_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    Cnt_p10_carry_i_5
       (.I0(ip2bus_rdack),
        .I1(Bus2IP_Mem_CS_d1_reg),
        .I2(\INFERRED_GEN.cnt_i_reg[0] ),
        .O(S));
  LUT6 #(
    .INIT(64'hC088CC88FFBBFFBB)) 
    \FSM_sequential_crnt_state[0]_i_2 
       (.I0(\FSM_sequential_crnt_state_reg[0] ),
        .I1(cycle_End),
        .I2(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 ),
        .I3(bus2ip_wr_req_reg_reg_1),
        .I4(next_state1),
        .I5(twph_end),
        .O(\FSM_sequential_crnt_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \FSM_sequential_crnt_state[0]_i_9 
       (.I0(rnw_reg_reg),
        .I1(Bus2IP_Mem_CS_d1_reg),
        .I2(CO),
        .I3(trd_end),
        .O(\FSM_sequential_crnt_state_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFF0FEF0F0000E000)) 
    \FSM_sequential_crnt_state[2]_i_2 
       (.I0(\FSM_sequential_crnt_state_reg[0] ),
        .I1(next_state174_out),
        .I2(cycle_End),
        .I3(bus2ip_wr_req_reg_reg_0),
        .I4(bus2ip_wr_req_reg_reg_1),
        .I5(twph_end),
        .O(\FSM_sequential_crnt_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \FSM_sequential_crnt_state[3]_i_4 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ),
        .I2(pend_wrreq),
        .I3(bus2ip_wr_req_reg_reg),
        .I4(next_state181_out),
        .O(\FSM_sequential_crnt_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_crnt_state[3]_i_9 
       (.I0(Bus2IP_RdReq_d1_reg),
        .I1(Bus2IP_Mem_CS_d1_reg),
        .O(\FSM_sequential_crnt_state_reg[0] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \FSM_sequential_emc_addr_ps[0]_i_1 
       (.I0(\FSM_sequential_emc_addr_ps[0]_i_2_n_0 ),
        .I1(out[2]),
        .I2(\FSM_sequential_emc_addr_ps_reg[0]_0 ),
        .I3(out[1]),
        .I4(\FSM_sequential_emc_addr_ps_reg[0]_1 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00002EEE)) 
    \FSM_sequential_emc_addr_ps[0]_i_2 
       (.I0(s_axi_mem_wvalid),
        .I1(out[0]),
        .I2(\burst_addr_cnt_reg[6] ),
        .I3(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .I4(out[1]),
        .O(\FSM_sequential_emc_addr_ps[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h15FF1500)) 
    \FSM_sequential_emc_addr_ps[1]_i_3 
       (.I0(out[0]),
        .I1(s_axi_mem_bvalid_reg_reg),
        .I2(s_axi_mem_bready),
        .I3(out[1]),
        .I4(\FSM_sequential_emc_addr_ps[1]_i_4_n_0 ),
        .O(\FSM_sequential_emc_addr_ps[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8830)) 
    \FSM_sequential_emc_addr_ps[1]_i_4 
       (.I0(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .I1(out[0]),
        .I2(s_axi_mem_wvalid),
        .I3(\burst_addr_cnt_reg[6] ),
        .O(\FSM_sequential_emc_addr_ps[1]_i_4_n_0 ));
  MUXF7 \FSM_sequential_emc_addr_ps_reg[1]_i_1 
       (.I0(\FSM_sequential_emc_addr_ps_reg[1] ),
        .I1(\FSM_sequential_emc_addr_ps[1]_i_3_n_0 ),
        .O(D[1]),
        .S(out[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \INFERRED_GEN.data_reg[255][0]_srl32_i_2 
       (.I0(ip2bus_rdack),
        .I1(Bus2IP_Mem_CS_d1_reg),
        .I2(Type_of_xfer),
        .O(in));
  LUT5 #(
    .INIT(32'hCCEC0000)) 
    IP2Bus_RdAck_i_1
       (.I0(pend_rdreq),
        .I1(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 ),
        .I2(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC ),
        .I3(\FSM_sequential_emc_addr_ps_reg[0] ),
        .I4(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ),
        .O(IP2Bus_RdAck0));
  LUT6 #(
    .INIT(64'hAAABAAAA00000000)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(enable_cs_cmb),
        .I5(\MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0 ),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_2 
       (.I0(s_axi_aresetn),
        .I1(rst_cs_cmb),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00BB0088CF00CC00)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_3 
       (.I0(Write_req_data_ack_cmb),
        .I1(out[2]),
        .I2(bus2ip_burst_reg_reg),
        .I3(out[1]),
        .I4(ip2bus_rdack),
        .I5(out[0]),
        .O(rst_cs_cmb));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(Bus2IP_Mem_CS_d1_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF01)) 
    \MEM_DECODE_GEN[0].cs_reg[0]_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(cs_reg),
        .O(\MEM_DECODE_GEN[0].cs_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_DECODE_GEN[0].cs_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_reg[0]_i_1_n_0 ),
        .Q(cs_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AA8AAA80)) 
    \MEM_DECODE_GEN[0].rdce_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0 ),
        .I1(cs_reg),
        .I2(enable_rdce_cmb),
        .I3(\MEM_DECODE_GEN[0].rdce_out_i[0]_i_3_n_0 ),
        .I4(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC ),
        .I5(\FSM_sequential_emc_addr_ps_reg[0] ),
        .O(\MEM_DECODE_GEN[0].rdce_out_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \MEM_DECODE_GEN[0].rdce_out_i[0]_i_3 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(rnw_cmb),
        .I4(enable_cs_cmb),
        .O(\MEM_DECODE_GEN[0].rdce_out_i[0]_i_3_n_0 ));
  FDRE \MEM_DECODE_GEN[0].rdce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].rdce_out_i[0]_i_1_n_0 ),
        .Q(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h2E)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__1 
       (.I0(Q[7]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .I2(burst_cnt_i[0]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_5 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(pend_wrreq),
        .I2(bus2ip_wr_req_reg_reg),
        .O(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1 
       (.I0(cycle_cnt),
        .I1(Cycle_cnt_en_int),
        .I2(\axi_trans_size_reg_reg[1] ),
        .I3(axi_trans_size_reg_int),
        .I4(Bus2IP_RdReq_d1_reg),
        .I5(type_of_xfer_reg_reg),
        .O(S_0));
  LUT3 #(
    .INIT(8'h2E)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__1 
       (.I0(Q[6]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .I2(burst_cnt_i[1]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT3 #(
    .INIT(8'h2E)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__0 
       (.I0(Q[5]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .I2(burst_cnt_i[2]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT3 #(
    .INIT(8'h2E)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__0 
       (.I0(Q[4]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .I2(burst_cnt_i[3]),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3 
       (.I0(Bus2IP_RdReq_d1_reg),
        .I1(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ),
        .O(read_req_ack_cmb44_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4 
       (.I0(bus2ip_wr_req_reg_reg),
        .I1(pend_wrreq),
        .I2(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ),
        .I3(Bus2IP_Mem_CS_d1_reg),
        .O(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ));
  LUT3 #(
    .INIT(8'h2E)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1__0 
       (.I0(Q[3]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .I2(burst_cnt_i[4]),
        .O(\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT3 #(
    .INIT(8'h2E)) 
    \PERBIT_GEN[5].MUXCY_i1_i_1 
       (.I0(Q[2]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .I2(burst_cnt_i[5]),
        .O(\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT3 #(
    .INIT(8'h2E)) 
    \PERBIT_GEN[6].MUXCY_i1_i_1 
       (.I0(Q[1]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .I2(burst_cnt_i[6]),
        .O(\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_i_1 
       (.I0(bus2ip_reset),
        .I1(Bus2IP_Mem_CS_d1_reg),
        .O(reset_fifo));
  LUT2 #(
    .INIT(4'hB)) 
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_i_2 
       (.I0(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .I1(p_0_in),
        .O(CE));
  LUT5 #(
    .INIT(32'hF200F2F2)) 
    \PERBIT_GEN[7].MULT_AND_i1_i_1 
       (.I0(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC ),
        .I1(\FSM_sequential_emc_addr_ps_reg[0] ),
        .I2(bus2ip_wr_req_reg_reg),
        .I3(read_req_ack_cmb),
        .I4(\PERBIT_GEN[7].MULT_AND_i1_i_4_n_0 ),
        .O(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \PERBIT_GEN[7].MULT_AND_i1_i_4 
       (.I0(bus2ip_wr_req_reg_reg),
        .I1(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 ),
        .I2(\burst_addr_cnt_reg[6] ),
        .I3(Write_req_addr_ack_cmb),
        .O(\PERBIT_GEN[7].MULT_AND_i1_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \PERBIT_GEN[7].MULT_AND_i1_i_6 
       (.I0(Bus2IP_RdReq_d1_reg),
        .I1(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(Bus2IP_Mem_CS_d1_reg),
        .O(next_state181_out));
  LUT3 #(
    .INIT(8'hB8)) 
    \PERBIT_GEN[7].MUXCY_i1_i_1 
       (.I0(burst_cnt_i[7]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .I2(Q[0]),
        .O(S_1));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABBBB)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_28 
       (.I0(cycle_cnt_en_cmb58_out),
        .I1(bus2ip_wr_req_reg_reg_2),
        .I2(next_state174_out),
        .I3(Bus2IP_RdReq_d1_reg),
        .I4(Bus2IP_Mem_CS_d1_reg),
        .I5(bus2ip_wr_req_reg_reg_1),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8F8F808F8F8F8F8F)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_34 
       (.I0(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 ),
        .I1(twph_end),
        .I2(bus2ip_wr_req_reg_reg_1),
        .I3(Bus2IP_Mem_CS_d1_reg),
        .I4(Bus2IP_RdReq_d1_reg),
        .I5(next_state174_out),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hB8FCB8FC00FF0000)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_8 
       (.I0(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 ),
        .I1(bus2ip_wr_req_reg_reg_1),
        .I2(\FSM_sequential_crnt_state_reg[0] ),
        .I3(twph_end),
        .I4(crnt_state_reg),
        .I5(cycle_End),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_i_1 
       (.I0(s_axi_aresetn),
        .I1(Bus2IP_Mem_CS_d1_reg),
        .O(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_i_1 
       (.I0(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0] ),
        .I1(Bus2IP_Mem_CS_d1_reg),
        .O(\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[0]_i_1 
       (.I0(psram_page_mode),
        .I1(rnw_reg_reg),
        .I2(Bus2IP_Mem_CS_d1_reg),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[0]_i_2 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[19]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[10]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[9]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[11]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[8]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[12]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[7]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[13]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[6]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[14]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[5]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[15]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[4]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[16]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[3]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[17]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[2]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[18]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[1]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [9]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[19]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[0]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[1]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[18]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [26]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[20]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11] [5]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[21]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11] [4]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[22]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11] [3]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[23]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11] [2]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[24]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11] [1]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[25]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11] [0]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[26]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5] ),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[27]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4] ),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[2]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[17]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[3]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[16]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[4]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[15]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[5]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[14]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[6]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[13]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [21]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[7]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[12]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[8]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[11]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[9]_i_1 
       (.I0(Bus2IP_Mem_CS_d1_reg),
        .I1(rnw_reg_reg),
        .I2(psram_page_mode),
        .I3(bus2ip_addr_temp[10]),
        .O(\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] [18]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    addr_sm_ns_IDLE_cmb_i_13
       (.I0(bus2ip_burst_reg_reg_0),
        .I1(\burstlength_reg_reg[3] [0]),
        .I2(\burstlength_reg_reg[3] [2]),
        .I3(bus2ip_burst_reg_reg_1),
        .I4(\burstlength_reg_reg[3] [3]),
        .I5(\burstlength_reg_reg[3] [1]),
        .O(single_transfer_cmb));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    addr_sm_ns_IDLE_cmb_i_16
       (.I0(s_axi_mem_awlen[5]),
        .I1(s_axi_mem_arlen[5]),
        .I2(s_axi_mem_awlen[6]),
        .I3(rnw_cmb),
        .I4(s_axi_mem_arlen[6]),
        .O(bus2ip_burst_reg_reg_1));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    addr_sm_ns_IDLE_cmb_i_18
       (.I0(s_axi_mem_awlen[4]),
        .I1(s_axi_mem_arlen[4]),
        .I2(s_axi_mem_awlen[7]),
        .I3(rnw_cmb),
        .I4(s_axi_mem_arlen[7]),
        .O(bus2ip_burst_reg_reg_0));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    addr_sm_ns_IDLE_cmb_i_5
       (.I0(s_axi_mem_bvalid_reg_reg_0),
        .I1(out[1]),
        .I2(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .I3(out[0]),
        .I4(s_axi_mem_wvalid),
        .I5(\burst_addr_cnt_reg[6] ),
        .O(addr_sm_ps_IDLE_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \burst_addr_cnt[7]_i_1 
       (.I0(enable_cs_cmb),
        .I1(\burst_addr_cnt_reg[6] ),
        .I2(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .O(E));
  LUT3 #(
    .INIT(8'hEF)) 
    \burst_data_cnt[7]_i_3 
       (.I0(\burst_data_cnt_reg[7] [7]),
        .I1(\burst_data_cnt_reg[7] [6]),
        .I2(\burst_data_cnt_reg[6] ),
        .O(bus2ip_burst_reg_reg));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \burst_data_cnt[7]_i_4 
       (.I0(\burst_data_cnt_reg[7] [3]),
        .I1(\burst_data_cnt_reg[7] [2]),
        .I2(\burst_data_cnt_reg[7] [1]),
        .I3(\burst_data_cnt_reg[7] [0]),
        .I4(\burst_data_cnt_reg[7] [4]),
        .I5(\burst_data_cnt_reg[7] [5]),
        .O(\burst_data_cnt_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burstlength_reg[0]_i_1 
       (.I0(s_axi_mem_arlen[0]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[0]),
        .O(\burstlength_reg_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burstlength_reg[1]_i_1 
       (.I0(s_axi_mem_arlen[1]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[1]),
        .O(\burstlength_reg_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burstlength_reg[2]_i_1 
       (.I0(s_axi_mem_arlen[2]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[2]),
        .O(\burstlength_reg_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burstlength_reg[3]_i_1 
       (.I0(s_axi_mem_arlen[3]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[3]),
        .O(\burstlength_reg_reg[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFAC)) 
    \bus2ip_BE_reg[3]_i_1 
       (.I0(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .I1(\FSM_sequential_emc_addr_ps_reg[0]_2 ),
        .I2(rnw_cmb),
        .I3(enable_cs_cmb),
        .O(\bus2ip_BE_reg_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFF7400000030)) 
    bus2ip_rd_req_reg_i_1
       (.I0(bus2ip_rd_req_reg_i_2_n_0),
        .I1(out[1]),
        .I2(rnw_cmb0),
        .I3(out[0]),
        .I4(out[2]),
        .I5(Bus2IP_RdReq_emc),
        .O(bus2ip_rd_req_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bus2ip_rd_req_reg_i_2
       (.I0(\burst_addr_cnt_reg[6] ),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .O(bus2ip_rd_req_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    new_page_d1_i_2
       (.I0(CO),
        .I1(Bus2IP_Mem_CS_d1_reg),
        .I2(rnw_reg_reg),
        .O(new_page_access));
  LUT6 #(
    .INIT(64'hFFFFBF00FFFF0000)) 
    pend_rdreq_i_1
       (.I0(bus2ip_burst_reg),
        .I1(read_req_ack_cmb),
        .I2(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .I3(Bus2IP_Mem_CS_d1_reg),
        .I4(\EMC_CTRL_I/IPIC_IF_I/set_pend_rdreq ),
        .I5(pend_rdreq),
        .O(pend_rdreq_reg));
  LUT5 #(
    .INIT(32'h00000080)) 
    pend_rdreq_i_3
       (.I0(transaction_done_i),
        .I1(Bus2IP_Mem_CS_d1_reg),
        .I2(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC ),
        .I3(\FSM_sequential_emc_addr_ps_reg[0] ),
        .I4(pend_rdreq),
        .O(\EMC_CTRL_I/IPIC_IF_I/set_pend_rdreq ));
  LUT6 #(
    .INIT(64'hE0E0E0E0F0000000)) 
    pend_wrreq_i_1
       (.I0(\PERBIT_GEN[7].MULT_AND_i1_i_4_n_0 ),
        .I1(bus2ip_burst_reg),
        .I2(Bus2IP_Mem_CS_d1_reg),
        .I3(transaction_done_i),
        .I4(bus2ip_wr_req_reg_reg),
        .I5(pend_wrreq),
        .O(pend_wrreq_reg));
  LUT5 #(
    .INIT(32'h0000AAEA)) 
    \s_axi_mem_bresp_reg[1]_i_1 
       (.I0(s_axi_mem_bresp),
        .I1(Write_req_data_ack_cmb),
        .I2(Bus2IP_Mem_CS_d1_reg),
        .I3(Type_of_xfer),
        .I4(addr_sm_ps_idle_cmb),
        .O(\s_axi_mem_bresp_reg_reg[1] ));
endmodule

(* ORIG_REF_NAME = "axi_emc_native_interface" *) 
module axi_em_ctrl_axi_emc_native_interface
   (out,
    bus2ip_rnw,
    SR,
    bus2ip_addr_temp,
    temp_bus2ip_cs,
    rdce_out_i,
    s_axi_mem_bvalid,
    Bus2IP_RdReq_emc,
    rw_flag_reg,
    s_axi_mem_bresp,
    bus2ip_wrreq_i,
    Q,
    E,
    \FSM_sequential_crnt_state_reg[0] ,
    bus2Mem_RdReq,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg ,
    S,
    IP2Bus_RdAck0,
    single_transaction,
    rst_rdce_cmb,
    readreq_th_reset,
    s_axi_mem_wready,
    last_addr1,
    ip2bus_addrack,
    \FSM_sequential_crnt_state_reg[2] ,
    bus2Mem_WrReq,
    \FSM_sequential_crnt_state_reg[0]_0 ,
    \FSM_sequential_crnt_state_reg[3] ,
    next_state181_out,
    \FSM_sequential_crnt_state_reg[0]_1 ,
    s_axi_mem_rresp,
    s_axi_mem_arready,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 ,
    read_req_ack_cmb44_out,
    S_0,
    \axi_trans_size_reg_reg[1]_0 ,
    S_1,
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    s_axi_mem_rvalid,
    s_axi_mem_rlast,
    reset_fifo,
    D,
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27] ,
    new_page_access,
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1] ,
    bus2ip_ben_fixed,
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ,
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg ,
    CE,
    pend_rdreq_reg,
    pend_wrreq_reg,
    s_axi_mem_rdata,
    s_axi_mem_bid,
    s_axi_mem_rid,
    \DATA_STORE_GEN[24].WRDATA_REG ,
    bus2ip_reset,
    s_axi_aclk,
    s_axi_mem_arsize,
    s_axi_mem_awsize,
    s_axi_mem_araddr,
    rw_flag_reg_reg_0,
    s_axi_aresetn,
    pend_rdreq,
    pend_wrreq,
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ,
    Write_req_data_ack_cmb,
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0] ,
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] ,
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ,
    ip2bus_rdack,
    enable_cs_cmb0,
    enable_cs_cmb126_out,
    s_axi_mem_bready,
    s_axi_mem_wvalid,
    \FSM_sequential_emc_addr_ps_reg[0]_0 ,
    rw_flag_reg_reg_1,
    cycle_End,
    bus2ip_wr_req_reg_reg_0,
    twph_end,
    next_state1,
    CO,
    trd_end,
    s_axi_mem_arlen,
    s_axi_mem_awlen,
    s_axi_mem_awaddr,
    s_axi_mem_wstrb,
    s_axi_mem_rready,
    \FSM_sequential_crnt_state_reg[0]_2 ,
    s_axi_mem_arvalid,
    s_axi_mem_awvalid,
    transaction_done_i,
    crnt_state_reg,
    cycle_cnt_en_cmb58_out,
    bus2ip_wr_req_reg_reg_1,
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ,
    cycle_cnt,
    Cycle_cnt_en_int,
    IP2Bus_RdAck_reg,
    burst_cnt_i,
    read_req_ack_cmb,
    s_axi_mem_awburst,
    s_axi_mem_arburst,
    Write_req_addr_ack_cmb,
    psram_page_mode,
    p_0_in,
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ,
    rd_fifo_wr_en,
    \IP2Bus_Data_reg[0] ,
    s_axi_mem_awid,
    s_axi_mem_arid,
    s_axi_mem_wdata);
  output [0:0]out;
  output bus2ip_rnw;
  output [0:0]SR;
  output [29:0]bus2ip_addr_temp;
  output temp_bus2ip_cs;
  output rdce_out_i;
  output s_axi_mem_bvalid;
  output Bus2IP_RdReq_emc;
  output rw_flag_reg;
  output [0:0]s_axi_mem_bresp;
  output bus2ip_wrreq_i;
  output [1:0]Q;
  output [0:0]E;
  output \FSM_sequential_crnt_state_reg[0] ;
  output bus2Mem_RdReq;
  output \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  output \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg ;
  output [0:0]S;
  output IP2Bus_RdAck0;
  output single_transaction;
  output rst_rdce_cmb;
  output readreq_th_reset;
  output s_axi_mem_wready;
  output last_addr1;
  output ip2bus_addrack;
  output \FSM_sequential_crnt_state_reg[2] ;
  output bus2Mem_WrReq;
  output \FSM_sequential_crnt_state_reg[0]_0 ;
  output \FSM_sequential_crnt_state_reg[3] ;
  output next_state181_out;
  output \FSM_sequential_crnt_state_reg[0]_1 ;
  output [0:0]s_axi_mem_rresp;
  output [0:0]s_axi_mem_arready;
  output \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  output \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ;
  output \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 ;
  output read_req_ack_cmb44_out;
  output S_0;
  output [0:0]\axi_trans_size_reg_reg[1]_0 ;
  output S_1;
  output \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  output s_axi_mem_rvalid;
  output s_axi_mem_rlast;
  output reset_fifo;
  output [27:0]D;
  output [0:0]\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27] ;
  output new_page_access;
  output \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1] ;
  output [0:3]bus2ip_ben_fixed;
  output [0:0]\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ;
  output \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg ;
  output CE;
  output pend_rdreq_reg;
  output pend_wrreq_reg;
  output [31:0]s_axi_mem_rdata;
  output [3:0]s_axi_mem_bid;
  output [3:0]s_axi_mem_rid;
  output [31:0]\DATA_STORE_GEN[24].WRDATA_REG ;
  input bus2ip_reset;
  input s_axi_aclk;
  input [1:0]s_axi_mem_arsize;
  input [1:0]s_axi_mem_awsize;
  input [31:0]s_axi_mem_araddr;
  input rw_flag_reg_reg_0;
  input s_axi_aresetn;
  input pend_rdreq;
  input pend_wrreq;
  input \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ;
  input Write_req_data_ack_cmb;
  input [0:0]\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0] ;
  input [3:0]\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] ;
  input \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  input ip2bus_rdack;
  input enable_cs_cmb0;
  input enable_cs_cmb126_out;
  input s_axi_mem_bready;
  input s_axi_mem_wvalid;
  input \FSM_sequential_emc_addr_ps_reg[0]_0 ;
  input rw_flag_reg_reg_1;
  input cycle_End;
  input bus2ip_wr_req_reg_reg_0;
  input twph_end;
  input next_state1;
  input [0:0]CO;
  input trd_end;
  input [7:0]s_axi_mem_arlen;
  input [7:0]s_axi_mem_awlen;
  input [31:0]s_axi_mem_awaddr;
  input [3:0]s_axi_mem_wstrb;
  input s_axi_mem_rready;
  input \FSM_sequential_crnt_state_reg[0]_2 ;
  input s_axi_mem_arvalid;
  input s_axi_mem_awvalid;
  input transaction_done_i;
  input [0:0]crnt_state_reg;
  input cycle_cnt_en_cmb58_out;
  input bus2ip_wr_req_reg_reg_1;
  input \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ;
  input \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ;
  input [0:0]cycle_cnt;
  input Cycle_cnt_en_int;
  input IP2Bus_RdAck_reg;
  input [0:7]burst_cnt_i;
  input read_req_ack_cmb;
  input [1:0]s_axi_mem_awburst;
  input [1:0]s_axi_mem_arburst;
  input Write_req_addr_ack_cmb;
  input psram_page_mode;
  input [0:0]p_0_in;
  input \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  input rd_fifo_wr_en;
  input [31:0]\IP2Bus_Data_reg[0] ;
  input [3:0]s_axi_mem_awid;
  input [3:0]s_axi_mem_arid;
  input [31:0]s_axi_mem_wdata;

  wire \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_10;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_11;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_12;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_13;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_14;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_22;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_37;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_42;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_43;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_78;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_79;
  wire AXI_EMC_ADDR_GEN_INSTANCE_I_n_36;
  wire AXI_EMC_ADDR_GEN_INSTANCE_I_n_37;
  wire Bus2IP_RdReq_emc;
  wire CE;
  wire [0:0]CO;
  wire Cycle_cnt_en_int;
  wire [27:0]D;
  wire [0:0]\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ;
  wire \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1] ;
  wire [31:0]\DATA_STORE_GEN[24].WRDATA_REG ;
  wire [0:0]E;
  wire \EMC_CTRL_I/MEM_STATE_MACHINE_I/next_state174_out ;
  wire \FSM_sequential_crnt_state_reg[0] ;
  wire \FSM_sequential_crnt_state_reg[0]_0 ;
  wire \FSM_sequential_crnt_state_reg[0]_1 ;
  wire \FSM_sequential_crnt_state_reg[0]_2 ;
  wire \FSM_sequential_crnt_state_reg[2] ;
  wire \FSM_sequential_crnt_state_reg[3] ;
  wire \FSM_sequential_emc_addr_ps[0]_i_4_n_0 ;
  wire \FSM_sequential_emc_addr_ps[1]_i_2_n_0 ;
  wire \FSM_sequential_emc_addr_ps[2]_i_2_n_0 ;
  wire \FSM_sequential_emc_addr_ps[2]_i_3_n_0 ;
  wire \FSM_sequential_emc_addr_ps[2]_i_4_n_0 ;
  wire \FSM_sequential_emc_addr_ps[2]_i_6_n_0 ;
  wire \FSM_sequential_emc_addr_ps_reg[0]_0 ;
  wire \FSM_sequential_emc_addr_ps_reg[2]_i_1_n_0 ;
  wire [31:0]\IP2Bus_Data_reg[0] ;
  wire IP2Bus_RdAck0;
  wire IP2Bus_RdAck_reg;
  wire \LEN_GEN_32.derived_len_reg[0]_i_1_n_0 ;
  wire \LEN_GEN_32.derived_len_reg[1]_i_1_n_0 ;
  wire \LEN_GEN_32.derived_len_reg[2]_i_1_n_0 ;
  wire \LEN_GEN_32.derived_len_reg[3]_i_1_n_0 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].MUXCY_i1_i_2_n_0 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire [1:0]Q;
  wire RDATA_FIFO_I_n_0;
  wire RDATA_FIFO_I_n_2;
  wire RDATA_FIFO_I_n_6;
  wire RDATA_FIFO_I_n_7;
  wire RDATA_FIFO_I_n_8;
  wire RDATA_FIFO_I_n_9;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 ;
  wire [0:0]\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0] ;
  wire \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg ;
  wire \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg ;
  wire [0:0]S;
  wire [3:0]\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] ;
  wire [0:0]\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27] ;
  wire [0:0]SR;
  wire S_0;
  wire S_1;
  wire Type_of_xfer;
  wire Type_of_xfer_cmb;
  wire Write_req_addr_ack_cmb;
  wire Write_req_data_ack_cmb;
  wire addr_sm_ns_IDLE_cmb_i_10_n_0;
  wire addr_sm_ns_IDLE_cmb_i_11_n_0;
  wire addr_sm_ns_IDLE_cmb_i_12_n_0;
  wire addr_sm_ns_IDLE_cmb_i_15_n_0;
  wire addr_sm_ns_IDLE_cmb_i_17_n_0;
  wire addr_sm_ns_IDLE_cmb_i_1_n_0;
  wire addr_sm_ns_IDLE_cmb_i_2_n_0;
  wire addr_sm_ns_IDLE_cmb_i_4_n_0;
  wire addr_sm_ns_IDLE_cmb_i_7_n_0;
  wire addr_sm_ns_IDLE_cmb_i_9_n_0;
  wire addr_sm_ns_IDLE_cmb_n_0;
  wire addr_sm_ps_IDLE_reg;
  wire addr_sm_ps_idle_cmb;
  wire \axi_trans_size_reg[0]_i_1_n_0 ;
  wire \axi_trans_size_reg[1]_i_1_n_0 ;
  wire [0:0]axi_trans_size_reg_int;
  wire [0:0]\axi_trans_size_reg_reg[1]_0 ;
  wire \burst_addr_cnt[4]_i_2_n_0 ;
  wire \burst_addr_cnt[5]_i_2_n_0 ;
  wire \burst_addr_cnt[7]_i_3_n_0 ;
  wire [0:0]burst_addr_cnt_reg__0;
  wire [7:1]burst_addr_cnt_reg__1;
  wire [0:7]burst_cnt_i;
  wire [7:0]burst_data_cnt;
  wire \burst_data_cnt[4]_i_2_n_0 ;
  wire \burst_data_cnt[5]_i_2_n_0 ;
  wire \burst_data_cnt[7]_i_1_n_0 ;
  wire [3:0]burst_length_cmb;
  wire bus2Mem_RdReq;
  wire bus2Mem_WrReq;
  wire \bus2ip_BE_reg[0]_i_1_n_0 ;
  wire \bus2ip_BE_reg[0]_i_2_n_0 ;
  wire \bus2ip_BE_reg[1]_i_1_n_0 ;
  wire \bus2ip_BE_reg[1]_i_2_n_0 ;
  wire \bus2ip_BE_reg[1]_i_3_n_0 ;
  wire \bus2ip_BE_reg[2]_i_1_n_0 ;
  wire \bus2ip_BE_reg[2]_i_2_n_0 ;
  wire \bus2ip_BE_reg[3]_i_2_n_0 ;
  wire \bus2ip_BE_reg[3]_i_3_n_0 ;
  wire \bus2ip_BE_reg[3]_i_4_n_0 ;
  wire \bus2ip_BE_reg[3]_i_5_n_0 ;
  wire \bus2ip_BE_reg[3]_i_6_n_0 ;
  wire bus2ip_addr_i;
  wire [29:0]bus2ip_addr_temp;
  wire [0:3]bus2ip_ben_fixed;
  wire bus2ip_burst_reg;
  wire bus2ip_burst_reg_i_1_n_0;
  wire [0:7]bus2ip_burstlength;
  wire bus2ip_data_reg0;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire bus2ip_wr_req_cmb0;
  wire bus2ip_wr_req_reg_i_1_n_0;
  wire bus2ip_wr_req_reg_reg_0;
  wire bus2ip_wr_req_reg_reg_1;
  wire bus2ip_wrreq_i;
  wire [0:0]crnt_state_reg;
  wire cycle_End;
  wire [0:0]cycle_cnt;
  wire cycle_cnt_en_cmb58_out;
  wire [7:4]data;
  wire [1:0]derived_burst_reg;
  wire \derived_burst_reg[0]_i_1_n_0 ;
  wire \derived_burst_reg[1]_i_1_n_0 ;
  wire [3:0]derived_len_reg;
  wire derived_size_reg;
  wire \derived_size_reg[0]_i_1_n_0 ;
  wire \derived_size_reg_reg_n_0_[0] ;
  wire \derived_size_reg_reg_n_0_[1] ;
  wire [2:2]emc_addr_ns;
  (* RTL_KEEP = "yes" *) wire [2:1]emc_addr_ps;
  wire enable_cs_cmb;
  wire enable_cs_cmb0;
  wire enable_cs_cmb126_out;
  wire enable_rdce_cmb;
  wire ip2bus_addrack;
  wire ip2bus_rdack;
  wire last_addr1;
  wire last_data_acked;
  wire last_data_acked_i_1_n_0;
  wire last_data_acked_i_2_n_0;
  wire new_page_access;
  wire next_state1;
  wire next_state181_out;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire [0:0]p_0_in;
  wire p_0_in1_in;
  wire [7:0]p_0_in__0;
  wire [7:0]p_0_in__0__0;
  wire p_1_in;
  wire [7:0]p_2_in;
  wire pend_rdreq;
  wire pend_rdreq_reg;
  wire pend_wrreq;
  wire pend_wrreq_reg;
  wire psram_page_mode;
  wire \rd_data_count[4]_i_2_n_0 ;
  wire \rd_data_count[5]_i_2_n_0 ;
  wire [7:0]rd_data_count_reg__0;
  wire [0:0]rd_fifo_data_in;
  wire rd_fifo_wr_en;
  wire rdce_out_i;
  wire read_req_ack_cmb;
  wire read_req_ack_cmb44_out;
  wire readreq_th_reset;
  wire reset_fifo;
  wire rnw_cmb;
  wire rnw_cmb0;
  wire rst_rdce_cmb;
  wire rw_flag_reg;
  wire rw_flag_reg_i_1_n_0;
  wire rw_flag_reg_reg_0;
  wire rw_flag_reg_reg_1;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_mem_araddr;
  wire [1:0]s_axi_mem_arburst;
  wire [3:0]s_axi_mem_arid;
  wire [7:0]s_axi_mem_arlen;
  wire [0:0]s_axi_mem_arready;
  wire [1:0]s_axi_mem_arsize;
  wire s_axi_mem_arvalid;
  wire [31:0]s_axi_mem_awaddr;
  wire [1:0]s_axi_mem_awburst;
  wire [3:0]s_axi_mem_awid;
  wire [7:0]s_axi_mem_awlen;
  wire [1:0]s_axi_mem_awsize;
  wire s_axi_mem_awvalid;
  wire [3:0]s_axi_mem_bid;
  wire s_axi_mem_bready;
  wire [0:0]s_axi_mem_bresp;
  wire s_axi_mem_bvalid;
  wire s_axi_mem_bvalid_reg_i_1_n_0;
  wire [31:0]s_axi_mem_rdata;
  wire [3:0]s_axi_mem_rid;
  wire s_axi_mem_rlast;
  wire s_axi_mem_rready;
  wire [0:0]s_axi_mem_rresp;
  wire s_axi_mem_rvalid;
  wire [31:0]s_axi_mem_wdata;
  wire s_axi_mem_wready;
  wire [3:0]s_axi_mem_wstrb;
  wire s_axi_mem_wvalid;
  wire single_transaction;
  wire single_transfer_cmb;
  wire [3:2]temp_bus2ip_be;
  wire temp_bus2ip_cs;
  wire transaction_done_i;
  wire trd_end;
  wire twph_end;

  axi_em_ctrl_axi_emc_address_decode AXI_EMC_ADDRESS_DECODE_INSTANCE_I
       (.\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC (rdce_out_i),
        .\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 (single_transaction),
        .\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 (\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11] (bus2ip_addr_temp[9:4]),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4] (bus2ip_addr_temp[2]),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5] (bus2ip_addr_temp[3]),
        .Bus2IP_Mem_CS_d1_reg(temp_bus2ip_cs),
        .Bus2IP_RdReq_d1_reg(bus2Mem_RdReq),
        .Bus2IP_RdReq_emc(Bus2IP_RdReq_emc),
        .CE(CE),
        .CO(CO),
        .Cycle_cnt_en_int(Cycle_cnt_en_int),
        .D({AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_12,AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_13}),
        .E(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21),
        .\FSM_sequential_crnt_state_reg[0] (\FSM_sequential_crnt_state_reg[0] ),
        .\FSM_sequential_crnt_state_reg[0]_0 (\FSM_sequential_crnt_state_reg[0]_0 ),
        .\FSM_sequential_crnt_state_reg[0]_1 (\FSM_sequential_crnt_state_reg[0]_1 ),
        .\FSM_sequential_crnt_state_reg[2] (\FSM_sequential_crnt_state_reg[2] ),
        .\FSM_sequential_crnt_state_reg[3] (\FSM_sequential_crnt_state_reg[3] ),
        .\FSM_sequential_emc_addr_ps_reg[0] (rst_rdce_cmb),
        .\FSM_sequential_emc_addr_ps_reg[0]_0 (\FSM_sequential_emc_addr_ps_reg[0]_0 ),
        .\FSM_sequential_emc_addr_ps_reg[0]_1 (\FSM_sequential_emc_addr_ps[0]_i_4_n_0 ),
        .\FSM_sequential_emc_addr_ps_reg[0]_2 (bus2ip_data_reg0),
        .\FSM_sequential_emc_addr_ps_reg[1] (\FSM_sequential_emc_addr_ps[1]_i_2_n_0 ),
        .\INFERRED_GEN.cnt_i_reg[0] (RDATA_FIFO_I_n_0),
        .IP2Bus_RdAck0(IP2Bus_RdAck0),
        .IP2Bus_RdAck_reg(IP2Bus_RdAck_reg),
        .IP2Bus_RdAck_reg_0(RDATA_FIFO_I_n_2),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 (\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 (\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 (\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 (ip2bus_addrack),
        .Q({bus2ip_burstlength[0],bus2ip_burstlength[1],bus2ip_burstlength[2],bus2ip_burstlength[3],bus2ip_burstlength[4],bus2ip_burstlength[5],bus2ip_burstlength[6],bus2ip_burstlength[7]}),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] (\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 (\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 (\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1 ),
        .\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0] (\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0] ),
        .\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg (\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg ),
        .\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg (\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg ),
        .S(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_10),
        .\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] (D),
        .\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27] (\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27] ),
        .S_0(S_0),
        .S_1(S_1),
        .Type_of_xfer(Type_of_xfer),
        .Write_req_addr_ack_cmb(Write_req_addr_ack_cmb),
        .Write_req_data_ack_cmb(Write_req_data_ack_cmb),
        .addr_sm_ps_IDLE_reg_reg(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_14),
        .addr_sm_ps_idle_cmb(addr_sm_ps_idle_cmb),
        .axi_trans_size_reg_int(axi_trans_size_reg_int),
        .\axi_trans_size_reg_reg[1] (\axi_trans_size_reg_reg[1]_0 ),
        .\burst_addr_cnt_reg[6] (last_addr1),
        .burst_cnt_i(burst_cnt_i),
        .\burst_data_cnt_reg[6] (AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_43),
        .\burst_data_cnt_reg[7] (burst_data_cnt),
        .\burstlength_reg_reg[3] (burst_length_cmb),
        .\bus2ip_BE_reg_reg[0] (AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_22),
        .bus2ip_addr_temp(bus2ip_addr_temp[29:10]),
        .bus2ip_burst_reg(bus2ip_burst_reg),
        .bus2ip_burst_reg_reg(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_11),
        .bus2ip_burst_reg_reg_0(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_37),
        .bus2ip_burst_reg_reg_1(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_42),
        .bus2ip_rd_req_reg_reg(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_79),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_wr_req_reg_reg(bus2ip_wrreq_i),
        .bus2ip_wr_req_reg_reg_0(bus2ip_wr_req_reg_reg_0),
        .bus2ip_wr_req_reg_reg_1(bus2Mem_WrReq),
        .bus2ip_wr_req_reg_reg_2(bus2ip_wr_req_reg_reg_1),
        .crnt_state_reg(crnt_state_reg),
        .cycle_End(cycle_End),
        .cycle_cnt(cycle_cnt),
        .cycle_cnt_en_cmb58_out(cycle_cnt_en_cmb58_out),
        .enable_cs_cmb(enable_cs_cmb),
        .enable_rdce_cmb(enable_rdce_cmb),
        .in(rd_fifo_data_in),
        .ip2bus_rdack(ip2bus_rdack),
        .new_page_access(new_page_access),
        .next_state1(next_state1),
        .next_state174_out(\EMC_CTRL_I/MEM_STATE_MACHINE_I/next_state174_out ),
        .next_state181_out(next_state181_out),
        .out({emc_addr_ps,out}),
        .p_0_in(p_0_in),
        .pend_rdreq(pend_rdreq),
        .pend_rdreq_reg(pend_rdreq_reg),
        .pend_wrreq(pend_wrreq),
        .pend_wrreq_reg(pend_wrreq_reg),
        .psram_page_mode(psram_page_mode),
        .read_req_ack_cmb(read_req_ack_cmb),
        .read_req_ack_cmb44_out(read_req_ack_cmb44_out),
        .readreq_th_reset(readreq_th_reset),
        .reset_fifo(reset_fifo),
        .rnw_cmb(rnw_cmb),
        .rnw_cmb0(rnw_cmb0),
        .rnw_reg_reg(bus2ip_rnw),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_mem_arlen(s_axi_mem_arlen),
        .s_axi_mem_awlen(s_axi_mem_awlen),
        .s_axi_mem_bready(s_axi_mem_bready),
        .s_axi_mem_bresp(s_axi_mem_bresp),
        .\s_axi_mem_bresp_reg_reg[1] (AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_78),
        .s_axi_mem_bvalid_reg_reg(s_axi_mem_bvalid),
        .s_axi_mem_bvalid_reg_reg_0(addr_sm_ns_IDLE_cmb_i_15_n_0),
        .s_axi_mem_wvalid(s_axi_mem_wvalid),
        .single_transfer_cmb(single_transfer_cmb),
        .transaction_done_i(transaction_done_i),
        .trd_end(trd_end),
        .twph_end(twph_end),
        .type_of_xfer_reg_reg(\PERBIT_GEN[1].MUXCY_i1_i_2_n_0 ));
  axi_em_ctrl_axi_emc_addr_gen AXI_EMC_ADDR_GEN_INSTANCE_I
       (.\ADDRESS_STORE_GEN[29].ADDRESS_REG (bus2ip_addr_temp[0]),
        .\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] (\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ),
        .E(RDATA_FIFO_I_n_7),
        .\FSM_sequential_emc_addr_ps_reg[0] (rst_rdce_cmb),
        .\FSM_sequential_emc_addr_ps_reg[2] (RDATA_FIFO_I_n_6),
        .\FSM_sequential_emc_addr_ps_reg[2]_0 (RDATA_FIFO_I_n_8),
        .\LEN_GEN_32.derived_len_reg_reg[2] (derived_len_reg[2:0]),
        .\MEM_DECODE_GEN[0].rdce_out_i_reg[0] (ip2bus_addrack),
        .Q({\derived_size_reg_reg_n_0_[1] ,\derived_size_reg_reg_n_0_[0] }),
        .S(S),
        .\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] (\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] ),
        .SR(SR),
        .\burst_addr_cnt_reg[6] (AXI_EMC_ADDR_GEN_INSTANCE_I_n_36),
        .\burst_addr_cnt_reg[7] (last_addr1),
        .\burst_addr_cnt_reg[7]_0 ({burst_addr_cnt_reg__1,burst_addr_cnt_reg__0}),
        .bus2ip_addr_i(bus2ip_addr_i),
        .bus2ip_addr_temp(bus2ip_addr_temp[29:1]),
        .\derived_burst_reg_reg[1] (derived_burst_reg),
        .enable_cs_cmb(enable_cs_cmb),
        .enable_cs_cmb0(enable_cs_cmb0),
        .enable_cs_cmb126_out(enable_cs_cmb126_out),
        .last_data_acked(last_data_acked),
        .out({emc_addr_ps,out}),
        .\rd_data_count_reg[6] (AXI_EMC_ADDR_GEN_INSTANCE_I_n_37),
        .\rd_data_count_reg[7] (rd_data_count_reg__0),
        .rnw_cmb(rnw_cmb),
        .rnw_cmb0(rnw_cmb0),
        .rnw_reg_reg(bus2ip_rnw),
        .rw_flag_reg_reg(rw_flag_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_mem_araddr(s_axi_mem_araddr),
        .s_axi_mem_arvalid(s_axi_mem_arvalid),
        .s_axi_mem_awaddr(s_axi_mem_awaddr),
        .s_axi_mem_awvalid(s_axi_mem_awvalid),
        .s_axi_mem_rready(s_axi_mem_rready));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BEN_STORE_GEN[0].BEN_REG_i_1 
       (.I0(Type_of_xfer),
        .I1(Q[0]),
        .O(bus2ip_ben_fixed[0]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BEN_STORE_GEN[1].BEN_REG_i_1 
       (.I0(Type_of_xfer),
        .I1(Q[1]),
        .O(bus2ip_ben_fixed[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BEN_STORE_GEN[2].BEN_REG_i_1 
       (.I0(Type_of_xfer),
        .I1(temp_bus2ip_be[2]),
        .O(bus2ip_ben_fixed[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BEN_STORE_GEN[3].BEN_REG_i_1 
       (.I0(Type_of_xfer),
        .I1(temp_bus2ip_be[3]),
        .O(bus2ip_ben_fixed[3]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_2 
       (.I0(temp_bus2ip_be[3]),
        .I1(temp_bus2ip_be[2]),
        .I2(Type_of_xfer),
        .O(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1] ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_crnt_state[2]_i_7 
       (.I0(last_addr1),
        .I1(temp_bus2ip_be[3]),
        .I2(Q[0]),
        .I3(temp_bus2ip_be[2]),
        .I4(Q[1]),
        .O(\EMC_CTRL_I/MEM_STATE_MACHINE_I/next_state174_out ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \FSM_sequential_emc_addr_ps[0]_i_4 
       (.I0(p_1_in),
        .I1(out),
        .I2(single_transfer_cmb),
        .I3(enable_cs_cmb0),
        .I4(enable_cs_cmb126_out),
        .O(\FSM_sequential_emc_addr_ps[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888888888B8B8B88)) 
    \FSM_sequential_emc_addr_ps[1]_i_2 
       (.I0(addr_sm_ns_IDLE_cmb_i_12_n_0),
        .I1(emc_addr_ps[1]),
        .I2(single_transfer_cmb),
        .I3(enable_cs_cmb0),
        .I4(enable_cs_cmb126_out),
        .I5(out),
        .O(\FSM_sequential_emc_addr_ps[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h202020200F000000)) 
    \FSM_sequential_emc_addr_ps[2]_i_2 
       (.I0(Write_req_data_ack_cmb),
        .I1(\FSM_sequential_emc_addr_ps[2]_i_4_n_0 ),
        .I2(emc_addr_ps[1]),
        .I3(single_transfer_cmb),
        .I4(rw_flag_reg_reg_1),
        .I5(out),
        .O(\FSM_sequential_emc_addr_ps[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F7F7F707F)) 
    \FSM_sequential_emc_addr_ps[2]_i_3 
       (.I0(s_axi_mem_bvalid),
        .I1(s_axi_mem_bready),
        .I2(emc_addr_ps[1]),
        .I3(s_axi_mem_wvalid),
        .I4(last_addr1),
        .I5(out),
        .O(\FSM_sequential_emc_addr_ps[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \FSM_sequential_emc_addr_ps[2]_i_4 
       (.I0(s_axi_mem_wvalid),
        .I1(\FSM_sequential_emc_addr_ps[2]_i_6_n_0 ),
        .I2(burst_addr_cnt_reg__1[7]),
        .I3(burst_addr_cnt_reg__1[5]),
        .I4(burst_addr_cnt_reg__1[6]),
        .I5(burst_addr_cnt_reg__1[3]),
        .O(\FSM_sequential_emc_addr_ps[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_emc_addr_ps[2]_i_6 
       (.I0(burst_addr_cnt_reg__0),
        .I1(burst_addr_cnt_reg__1[1]),
        .I2(burst_addr_cnt_reg__1[4]),
        .I3(burst_addr_cnt_reg__1[2]),
        .O(\FSM_sequential_emc_addr_ps[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,rd:010,rd_last:001,wr:011,wr_wait:100,wr_last:101,resp:110" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_emc_addr_ps_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_13),
        .Q(out),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:000,rd:010,rd_last:001,wr:011,wr_wait:100,wr_last:101,resp:110" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_emc_addr_ps_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_12),
        .Q(emc_addr_ps[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:000,rd:010,rd_last:001,wr:011,wr_wait:100,wr_last:101,resp:110" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_emc_addr_ps_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_emc_addr_ps_reg[2]_i_1_n_0 ),
        .Q(emc_addr_ps[2]),
        .R(SR));
  MUXF7 \FSM_sequential_emc_addr_ps_reg[2]_i_1 
       (.I0(\FSM_sequential_emc_addr_ps[2]_i_2_n_0 ),
        .I1(\FSM_sequential_emc_addr_ps[2]_i_3_n_0 ),
        .O(\FSM_sequential_emc_addr_ps_reg[2]_i_1_n_0 ),
        .S(emc_addr_ps[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \LEN_GEN_32.derived_len_reg[0]_i_1 
       (.I0(burst_length_cmb[0]),
        .I1(p_0_in1_in),
        .I2(burst_length_cmb[1]),
        .I3(\derived_size_reg[0]_i_1_n_0 ),
        .I4(burst_length_cmb[2]),
        .O(\LEN_GEN_32.derived_len_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \LEN_GEN_32.derived_len_reg[1]_i_1 
       (.I0(burst_length_cmb[1]),
        .I1(p_0_in1_in),
        .I2(burst_length_cmb[2]),
        .I3(\derived_size_reg[0]_i_1_n_0 ),
        .I4(burst_length_cmb[3]),
        .O(\LEN_GEN_32.derived_len_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8000000B800)) 
    \LEN_GEN_32.derived_len_reg[2]_i_1 
       (.I0(s_axi_mem_arsize[0]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awsize[0]),
        .I3(burst_length_cmb[3]),
        .I4(p_0_in1_in),
        .I5(burst_length_cmb[2]),
        .O(\LEN_GEN_32.derived_len_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \LEN_GEN_32.derived_len_reg[3]_i_1 
       (.I0(s_axi_mem_awlen[3]),
        .I1(s_axi_mem_arlen[3]),
        .I2(s_axi_mem_awsize[1]),
        .I3(rnw_cmb),
        .I4(s_axi_mem_arsize[1]),
        .O(\LEN_GEN_32.derived_len_reg[3]_i_1_n_0 ));
  FDRE \LEN_GEN_32.derived_len_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\LEN_GEN_32.derived_len_reg[0]_i_1_n_0 ),
        .Q(derived_len_reg[0]),
        .R(1'b0));
  FDRE \LEN_GEN_32.derived_len_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\LEN_GEN_32.derived_len_reg[1]_i_1_n_0 ),
        .Q(derived_len_reg[1]),
        .R(1'b0));
  FDRE \LEN_GEN_32.derived_len_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\LEN_GEN_32.derived_len_reg[2]_i_1_n_0 ),
        .Q(derived_len_reg[2]),
        .R(1'b0));
  FDRE \LEN_GEN_32.derived_len_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(\LEN_GEN_32.derived_len_reg[3]_i_1_n_0 ),
        .Q(derived_len_reg[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hA8A8A800)) 
    \PERBIT_GEN[1].MUXCY_i1_i_2 
       (.I0(Type_of_xfer),
        .I1(temp_bus2ip_be[2]),
        .I2(temp_bus2ip_be[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\PERBIT_GEN[1].MUXCY_i1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_5 
       (.I0(bus2ip_wrreq_i),
        .I1(pend_wrreq),
        .O(bus2Mem_WrReq));
  axi_em_ctrl_srl_fifo_rbu_f RDATA_FIFO_I
       (.\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] (RDATA_FIFO_I_n_6),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0] (rst_rdce_cmb),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1] (RDATA_FIFO_I_n_8),
        .Bus2IP_RdReq_d1_reg(RDATA_FIFO_I_n_2),
        .E(RDATA_FIFO_I_n_7),
        .\LEN_GEN_32.derived_len_reg_reg[3] (derived_len_reg[3]),
        .\MEM_DECODE_GEN[0].rdce_out_i_reg[0] (ip2bus_addrack),
        .Q(RDATA_FIFO_I_n_0),
        .S(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_10),
        .\burst_addr_cnt_reg[6] (last_addr1),
        .\burst_data_cnt_reg[3] (AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_43),
        .\burst_data_cnt_reg[7] (AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_11),
        .\burst_data_cnt_reg[7]_0 (burst_data_cnt[7:6]),
        .bus2ip_addr_i(bus2ip_addr_i),
        .bus2ip_reset(bus2ip_reset),
        .\derived_burst_reg_reg[1] (derived_burst_reg),
        .enable_cs_cmb(enable_cs_cmb),
        .enable_cs_cmb126_out(enable_cs_cmb126_out),
        .enable_rdce_cmb(enable_rdce_cmb),
        .in({\IP2Bus_Data_reg[0] [7],\IP2Bus_Data_reg[0] [6],\IP2Bus_Data_reg[0] [5],\IP2Bus_Data_reg[0] [4],\IP2Bus_Data_reg[0] [3],\IP2Bus_Data_reg[0] [2],\IP2Bus_Data_reg[0] [1],\IP2Bus_Data_reg[0] [0],\IP2Bus_Data_reg[0] [15],\IP2Bus_Data_reg[0] [14],\IP2Bus_Data_reg[0] [13],\IP2Bus_Data_reg[0] [12],\IP2Bus_Data_reg[0] [11],\IP2Bus_Data_reg[0] [10],\IP2Bus_Data_reg[0] [9],\IP2Bus_Data_reg[0] [8],\IP2Bus_Data_reg[0] [23],\IP2Bus_Data_reg[0] [22],\IP2Bus_Data_reg[0] [21],\IP2Bus_Data_reg[0] [20],\IP2Bus_Data_reg[0] [19],\IP2Bus_Data_reg[0] [18],\IP2Bus_Data_reg[0] [17],\IP2Bus_Data_reg[0] [16],\IP2Bus_Data_reg[0] [31],\IP2Bus_Data_reg[0] [30],\IP2Bus_Data_reg[0] [29],\IP2Bus_Data_reg[0] [28],\IP2Bus_Data_reg[0] [27],\IP2Bus_Data_reg[0] [26],\IP2Bus_Data_reg[0] [25],\IP2Bus_Data_reg[0] [24],rd_fifo_data_in}),
        .ip2bus_rdack(ip2bus_rdack),
        .out({emc_addr_ps,out}),
        .\rd_data_count_reg[7] (RDATA_FIFO_I_n_9),
        .rd_fifo_wr_en(rd_fifo_wr_en),
        .rnw_reg_reg(bus2ip_rnw),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_mem_rdata(s_axi_mem_rdata),
        .s_axi_mem_rready(s_axi_mem_rready),
        .s_axi_mem_rresp(s_axi_mem_rresp),
        .s_axi_mem_rvalid(s_axi_mem_rvalid),
        .single_transfer_cmb(single_transfer_cmb));
  LUT6 #(
    .INIT(64'h0000000305050003)) 
    addr_sm_ns_IDLE_cmb
       (.I0(addr_sm_ns_IDLE_cmb_i_1_n_0),
        .I1(addr_sm_ns_IDLE_cmb_i_2_n_0),
        .I2(emc_addr_ns),
        .I3(addr_sm_ns_IDLE_cmb_i_4_n_0),
        .I4(emc_addr_ps[2]),
        .I5(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_14),
        .O(addr_sm_ns_IDLE_cmb_n_0));
  LUT5 #(
    .INIT(32'h7F7F7F70)) 
    addr_sm_ns_IDLE_cmb_i_1
       (.I0(s_axi_mem_bvalid),
        .I1(s_axi_mem_bready),
        .I2(emc_addr_ps[1]),
        .I3(s_axi_mem_wvalid),
        .I4(out),
        .O(addr_sm_ns_IDLE_cmb_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    addr_sm_ns_IDLE_cmb_i_10
       (.I0(\FSM_sequential_emc_addr_ps[2]_i_4_n_0 ),
        .I1(Write_req_data_ack_cmb),
        .O(addr_sm_ns_IDLE_cmb_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    addr_sm_ns_IDLE_cmb_i_11
       (.I0(burst_length_cmb[1]),
        .I1(burst_length_cmb[3]),
        .I2(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_42),
        .I3(addr_sm_ns_IDLE_cmb_i_17_n_0),
        .I4(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_37),
        .I5(enable_cs_cmb0),
        .O(addr_sm_ns_IDLE_cmb_i_11_n_0));
  LUT4 #(
    .INIT(16'hBFB0)) 
    addr_sm_ns_IDLE_cmb_i_12
       (.I0(\FSM_sequential_emc_addr_ps[2]_i_4_n_0 ),
        .I1(Write_req_data_ack_cmb),
        .I2(out),
        .I3(p_1_in),
        .O(addr_sm_ns_IDLE_cmb_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h7)) 
    addr_sm_ns_IDLE_cmb_i_15
       (.I0(s_axi_mem_bvalid),
        .I1(s_axi_mem_bready),
        .O(addr_sm_ns_IDLE_cmb_i_15_n_0));
  LUT5 #(
    .INIT(32'h00053305)) 
    addr_sm_ns_IDLE_cmb_i_17
       (.I0(s_axi_mem_awlen[0]),
        .I1(s_axi_mem_arlen[0]),
        .I2(s_axi_mem_awlen[2]),
        .I3(rnw_cmb),
        .I4(s_axi_mem_arlen[2]),
        .O(addr_sm_ns_IDLE_cmb_i_17_n_0));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    addr_sm_ns_IDLE_cmb_i_2
       (.I0(\FSM_sequential_emc_addr_ps_reg[0]_0 ),
        .I1(emc_addr_ps[1]),
        .I2(p_1_in),
        .I3(out),
        .I4(addr_sm_ns_IDLE_cmb_i_7_n_0),
        .I5(enable_cs_cmb0),
        .O(addr_sm_ns_IDLE_cmb_i_2_n_0));
  LUT6 #(
    .INIT(64'h8B888B8888BB8888)) 
    addr_sm_ns_IDLE_cmb_i_3
       (.I0(addr_sm_ns_IDLE_cmb_i_9_n_0),
        .I1(emc_addr_ps[2]),
        .I2(addr_sm_ns_IDLE_cmb_i_10_n_0),
        .I3(emc_addr_ps[1]),
        .I4(addr_sm_ns_IDLE_cmb_i_11_n_0),
        .I5(out),
        .O(emc_addr_ns));
  LUT6 #(
    .INIT(64'h888888888B8B8B88)) 
    addr_sm_ns_IDLE_cmb_i_4
       (.I0(addr_sm_ns_IDLE_cmb_i_12_n_0),
        .I1(emc_addr_ps[1]),
        .I2(single_transfer_cmb),
        .I3(enable_cs_cmb126_out),
        .I4(enable_cs_cmb0),
        .I5(out),
        .O(addr_sm_ns_IDLE_cmb_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    addr_sm_ns_IDLE_cmb_i_6
       (.I0(last_data_acked),
        .I1(AXI_EMC_ADDR_GEN_INSTANCE_I_n_37),
        .I2(rd_data_count_reg__0[6]),
        .I3(rd_data_count_reg__0[7]),
        .I4(s_axi_mem_rready),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    addr_sm_ns_IDLE_cmb_i_7
       (.I0(burst_length_cmb[1]),
        .I1(burst_length_cmb[3]),
        .I2(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_42),
        .I3(addr_sm_ns_IDLE_cmb_i_17_n_0),
        .I4(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_37),
        .I5(enable_cs_cmb126_out),
        .O(addr_sm_ns_IDLE_cmb_i_7_n_0));
  LUT6 #(
    .INIT(64'h7F7F7F707F7F7F7F)) 
    addr_sm_ns_IDLE_cmb_i_9
       (.I0(s_axi_mem_bvalid),
        .I1(s_axi_mem_bready),
        .I2(emc_addr_ps[1]),
        .I3(out),
        .I4(last_addr1),
        .I5(s_axi_mem_wvalid),
        .O(addr_sm_ns_IDLE_cmb_i_9_n_0));
  FDSE addr_sm_ps_IDLE_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_sm_ns_IDLE_cmb_n_0),
        .Q(addr_sm_ps_IDLE_reg),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \axi_trans_size_reg[0]_i_1 
       (.I0(s_axi_mem_arsize[0]),
        .I1(enable_cs_cmb),
        .I2(rnw_cmb),
        .I3(axi_trans_size_reg_int),
        .O(\axi_trans_size_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \axi_trans_size_reg[1]_i_1 
       (.I0(s_axi_mem_arsize[1]),
        .I1(enable_cs_cmb),
        .I2(rnw_cmb),
        .I3(\axi_trans_size_reg_reg[1]_0 ),
        .O(\axi_trans_size_reg[1]_i_1_n_0 ));
  FDRE \axi_trans_size_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_trans_size_reg[0]_i_1_n_0 ),
        .Q(axi_trans_size_reg_int),
        .R(SR));
  FDRE \axi_trans_size_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_trans_size_reg[1]_i_1_n_0 ),
        .Q(\axi_trans_size_reg_reg[1]_0 ),
        .R(SR));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \burst_addr_cnt[0]_i_1 
       (.I0(s_axi_mem_arlen[0]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[0]),
        .I3(enable_cs_cmb),
        .I4(burst_addr_cnt_reg__0),
        .O(p_0_in__0__0[0]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \burst_addr_cnt[1]_i_1 
       (.I0(s_axi_mem_arlen[1]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[1]),
        .I3(enable_cs_cmb),
        .I4(burst_addr_cnt_reg__0),
        .I5(burst_addr_cnt_reg__1[1]),
        .O(p_0_in__0__0[1]));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \burst_addr_cnt[2]_i_1 
       (.I0(burst_length_cmb[2]),
        .I1(enable_cs_cmb),
        .I2(burst_addr_cnt_reg__0),
        .I3(burst_addr_cnt_reg__1[1]),
        .I4(burst_addr_cnt_reg__1[2]),
        .O(p_0_in__0__0[2]));
  LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
    \burst_addr_cnt[3]_i_1 
       (.I0(burst_length_cmb[3]),
        .I1(enable_cs_cmb),
        .I2(burst_addr_cnt_reg__1[2]),
        .I3(burst_addr_cnt_reg__1[1]),
        .I4(burst_addr_cnt_reg__0),
        .I5(burst_addr_cnt_reg__1[3]),
        .O(p_0_in__0__0[3]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \burst_addr_cnt[4]_i_1 
       (.I0(s_axi_mem_arlen[4]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[4]),
        .I3(enable_cs_cmb),
        .I4(burst_addr_cnt_reg__1[4]),
        .I5(\burst_addr_cnt[4]_i_2_n_0 ),
        .O(p_0_in__0__0[4]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \burst_addr_cnt[4]_i_2 
       (.I0(burst_addr_cnt_reg__1[3]),
        .I1(burst_addr_cnt_reg__0),
        .I2(burst_addr_cnt_reg__1[1]),
        .I3(burst_addr_cnt_reg__1[2]),
        .O(\burst_addr_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \burst_addr_cnt[5]_i_1 
       (.I0(s_axi_mem_arlen[5]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[5]),
        .I3(enable_cs_cmb),
        .I4(\burst_addr_cnt[5]_i_2_n_0 ),
        .I5(burst_addr_cnt_reg__1[5]),
        .O(p_0_in__0__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \burst_addr_cnt[5]_i_2 
       (.I0(burst_addr_cnt_reg__1[4]),
        .I1(burst_addr_cnt_reg__1[2]),
        .I2(burst_addr_cnt_reg__1[1]),
        .I3(burst_addr_cnt_reg__0),
        .I4(burst_addr_cnt_reg__1[3]),
        .O(\burst_addr_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \burst_addr_cnt[6]_i_1 
       (.I0(s_axi_mem_arlen[6]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[6]),
        .I3(enable_cs_cmb),
        .I4(AXI_EMC_ADDR_GEN_INSTANCE_I_n_36),
        .I5(burst_addr_cnt_reg__1[6]),
        .O(p_0_in__0__0[6]));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \burst_addr_cnt[7]_i_2 
       (.I0(s_axi_mem_arlen[7]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[7]),
        .I3(enable_cs_cmb),
        .I4(burst_addr_cnt_reg__1[7]),
        .I5(\burst_addr_cnt[7]_i_3_n_0 ),
        .O(p_0_in__0__0[7]));
  LUT2 #(
    .INIT(4'h1)) 
    \burst_addr_cnt[7]_i_3 
       (.I0(burst_addr_cnt_reg__1[6]),
        .I1(AXI_EMC_ADDR_GEN_INSTANCE_I_n_36),
        .O(\burst_addr_cnt[7]_i_3_n_0 ));
  FDRE \burst_addr_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21),
        .D(p_0_in__0__0[0]),
        .Q(burst_addr_cnt_reg__0),
        .R(1'b0));
  FDRE \burst_addr_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21),
        .D(p_0_in__0__0[1]),
        .Q(burst_addr_cnt_reg__1[1]),
        .R(1'b0));
  FDRE \burst_addr_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21),
        .D(p_0_in__0__0[2]),
        .Q(burst_addr_cnt_reg__1[2]),
        .R(1'b0));
  FDRE \burst_addr_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21),
        .D(p_0_in__0__0[3]),
        .Q(burst_addr_cnt_reg__1[3]),
        .R(1'b0));
  FDRE \burst_addr_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21),
        .D(p_0_in__0__0[4]),
        .Q(burst_addr_cnt_reg__1[4]),
        .R(1'b0));
  FDRE \burst_addr_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21),
        .D(p_0_in__0__0[5]),
        .Q(burst_addr_cnt_reg__1[5]),
        .R(1'b0));
  FDRE \burst_addr_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21),
        .D(p_0_in__0__0[6]),
        .Q(burst_addr_cnt_reg__1[6]),
        .R(1'b0));
  FDRE \burst_addr_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21),
        .D(p_0_in__0__0[7]),
        .Q(burst_addr_cnt_reg__1[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \burst_data_cnt[0]_i_1 
       (.I0(s_axi_mem_arlen[0]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[0]),
        .I3(enable_cs_cmb),
        .I4(burst_data_cnt[0]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \burst_data_cnt[1]_i_1 
       (.I0(s_axi_mem_arlen[1]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[1]),
        .I3(enable_cs_cmb),
        .I4(burst_data_cnt[1]),
        .I5(burst_data_cnt[0]),
        .O(p_2_in[1]));
  LUT5 #(
    .INIT(32'hB8B8B88B)) 
    \burst_data_cnt[2]_i_1 
       (.I0(burst_length_cmb[2]),
        .I1(enable_cs_cmb),
        .I2(burst_data_cnt[2]),
        .I3(burst_data_cnt[0]),
        .I4(burst_data_cnt[1]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \burst_data_cnt[3]_i_1 
       (.I0(burst_length_cmb[3]),
        .I1(enable_cs_cmb),
        .I2(burst_data_cnt[3]),
        .I3(burst_data_cnt[2]),
        .I4(burst_data_cnt[1]),
        .I5(burst_data_cnt[0]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \burst_data_cnt[4]_i_1 
       (.I0(s_axi_mem_arlen[4]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[4]),
        .I3(enable_cs_cmb),
        .I4(burst_data_cnt[4]),
        .I5(\burst_data_cnt[4]_i_2_n_0 ),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \burst_data_cnt[4]_i_2 
       (.I0(burst_data_cnt[3]),
        .I1(burst_data_cnt[2]),
        .I2(burst_data_cnt[1]),
        .I3(burst_data_cnt[0]),
        .O(\burst_data_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \burst_data_cnt[5]_i_1 
       (.I0(s_axi_mem_arlen[5]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[5]),
        .I3(enable_cs_cmb),
        .I4(burst_data_cnt[5]),
        .I5(\burst_data_cnt[5]_i_2_n_0 ),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \burst_data_cnt[5]_i_2 
       (.I0(burst_data_cnt[4]),
        .I1(burst_data_cnt[0]),
        .I2(burst_data_cnt[1]),
        .I3(burst_data_cnt[2]),
        .I4(burst_data_cnt[3]),
        .O(\burst_data_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \burst_data_cnt[6]_i_1 
       (.I0(s_axi_mem_arlen[6]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[6]),
        .I3(enable_cs_cmb),
        .I4(burst_data_cnt[6]),
        .I5(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_43),
        .O(p_2_in[6]));
  LUT3 #(
    .INIT(8'hF8)) 
    \burst_data_cnt[7]_i_1 
       (.I0(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_11),
        .I1(ip2bus_rdack),
        .I2(enable_cs_cmb),
        .O(\burst_data_cnt[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB88BB8B8)) 
    \burst_data_cnt[7]_i_2 
       (.I0(data[7]),
        .I1(enable_cs_cmb),
        .I2(burst_data_cnt[7]),
        .I3(burst_data_cnt[6]),
        .I4(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_43),
        .O(p_2_in[7]));
  FDRE \burst_data_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(burst_data_cnt[0]),
        .R(SR));
  FDRE \burst_data_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(burst_data_cnt[1]),
        .R(SR));
  FDRE \burst_data_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(burst_data_cnt[2]),
        .R(SR));
  FDRE \burst_data_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(burst_data_cnt[3]),
        .R(SR));
  FDRE \burst_data_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(burst_data_cnt[4]),
        .R(SR));
  FDRE \burst_data_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(burst_data_cnt[5]),
        .R(SR));
  FDRE \burst_data_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(burst_data_cnt[6]),
        .R(SR));
  FDRE \burst_data_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(burst_data_cnt[7]),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \burstlength_reg[4]_i_1 
       (.I0(s_axi_mem_arlen[4]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[4]),
        .O(data[4]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burstlength_reg[5]_i_1 
       (.I0(s_axi_mem_arlen[5]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[5]),
        .O(data[5]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burstlength_reg[6]_i_1 
       (.I0(s_axi_mem_arlen[6]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[6]),
        .O(data[6]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burstlength_reg[7]_i_1 
       (.I0(s_axi_mem_arlen[7]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[7]),
        .O(data[7]));
  FDRE \burstlength_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(burst_length_cmb[0]),
        .Q(bus2ip_burstlength[7]),
        .R(SR));
  FDRE \burstlength_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(burst_length_cmb[1]),
        .Q(bus2ip_burstlength[6]),
        .R(SR));
  FDRE \burstlength_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(burst_length_cmb[2]),
        .Q(bus2ip_burstlength[5]),
        .R(SR));
  FDRE \burstlength_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(burst_length_cmb[3]),
        .Q(bus2ip_burstlength[4]),
        .R(SR));
  FDRE \burstlength_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(data[4]),
        .Q(bus2ip_burstlength[3]),
        .R(SR));
  FDRE \burstlength_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(data[5]),
        .Q(bus2ip_burstlength[2]),
        .R(SR));
  FDRE \burstlength_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(data[6]),
        .Q(bus2ip_burstlength[1]),
        .R(SR));
  FDRE \burstlength_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(data[7]),
        .Q(bus2ip_burstlength[0]),
        .R(SR));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B8B888B)) 
    \bus2ip_BE_reg[0]_i_1 
       (.I0(s_axi_mem_wstrb[0]),
        .I1(\bus2ip_BE_reg[3]_i_3_n_0 ),
        .I2(\bus2ip_BE_reg[1]_i_2_n_0 ),
        .I3(s_axi_mem_araddr[0]),
        .I4(\bus2ip_BE_reg[3]_i_5_n_0 ),
        .I5(\bus2ip_BE_reg[0]_i_2_n_0 ),
        .O(\bus2ip_BE_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55554540)) 
    \bus2ip_BE_reg[0]_i_2 
       (.I0(enable_cs_cmb),
        .I1(temp_bus2ip_be[2]),
        .I2(\derived_size_reg_reg_n_0_[0] ),
        .I3(temp_bus2ip_be[3]),
        .I4(\derived_size_reg_reg_n_0_[1] ),
        .O(\bus2ip_BE_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B8B8B88)) 
    \bus2ip_BE_reg[1]_i_1 
       (.I0(s_axi_mem_wstrb[1]),
        .I1(\bus2ip_BE_reg[3]_i_3_n_0 ),
        .I2(\bus2ip_BE_reg[1]_i_2_n_0 ),
        .I3(s_axi_mem_araddr[0]),
        .I4(\bus2ip_BE_reg[3]_i_5_n_0 ),
        .I5(\bus2ip_BE_reg[1]_i_3_n_0 ),
        .O(\bus2ip_BE_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h4700FFFF)) 
    \bus2ip_BE_reg[1]_i_2 
       (.I0(s_axi_mem_arsize[1]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awsize[1]),
        .I3(s_axi_mem_araddr[1]),
        .I4(enable_cs_cmb),
        .O(\bus2ip_BE_reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55554540)) 
    \bus2ip_BE_reg[1]_i_3 
       (.I0(enable_cs_cmb),
        .I1(temp_bus2ip_be[3]),
        .I2(\derived_size_reg_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(\derived_size_reg_reg_n_0_[1] ),
        .O(\bus2ip_BE_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBB8B8888)) 
    \bus2ip_BE_reg[2]_i_1 
       (.I0(s_axi_mem_wstrb[2]),
        .I1(\bus2ip_BE_reg[3]_i_3_n_0 ),
        .I2(s_axi_mem_araddr[0]),
        .I3(\bus2ip_BE_reg[3]_i_5_n_0 ),
        .I4(\bus2ip_BE_reg[3]_i_4_n_0 ),
        .I5(\bus2ip_BE_reg[2]_i_2_n_0 ),
        .O(\bus2ip_BE_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55554540)) 
    \bus2ip_BE_reg[2]_i_2 
       (.I0(enable_cs_cmb),
        .I1(Q[0]),
        .I2(\derived_size_reg_reg_n_0_[0] ),
        .I3(Q[1]),
        .I4(\derived_size_reg_reg_n_0_[1] ),
        .O(\bus2ip_BE_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8B8B888)) 
    \bus2ip_BE_reg[3]_i_2 
       (.I0(s_axi_mem_wstrb[3]),
        .I1(\bus2ip_BE_reg[3]_i_3_n_0 ),
        .I2(\bus2ip_BE_reg[3]_i_4_n_0 ),
        .I3(s_axi_mem_araddr[0]),
        .I4(\bus2ip_BE_reg[3]_i_5_n_0 ),
        .I5(\bus2ip_BE_reg[3]_i_6_n_0 ),
        .O(\bus2ip_BE_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bus2ip_BE_reg[3]_i_3 
       (.I0(bus2ip_data_reg0),
        .I1(rnw_cmb),
        .O(\bus2ip_BE_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hAAAA8A80)) 
    \bus2ip_BE_reg[3]_i_4 
       (.I0(enable_cs_cmb),
        .I1(s_axi_mem_arsize[1]),
        .I2(rnw_cmb),
        .I3(s_axi_mem_awsize[1]),
        .I4(s_axi_mem_araddr[1]),
        .O(\bus2ip_BE_reg[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \bus2ip_BE_reg[3]_i_5 
       (.I0(s_axi_mem_awsize[0]),
        .I1(s_axi_mem_arsize[0]),
        .I2(s_axi_mem_awsize[1]),
        .I3(rnw_cmb),
        .I4(s_axi_mem_arsize[1]),
        .O(\bus2ip_BE_reg[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55554540)) 
    \bus2ip_BE_reg[3]_i_6 
       (.I0(enable_cs_cmb),
        .I1(Q[1]),
        .I2(\derived_size_reg_reg_n_0_[0] ),
        .I3(temp_bus2ip_be[2]),
        .I4(\derived_size_reg_reg_n_0_[1] ),
        .O(\bus2ip_BE_reg[3]_i_6_n_0 ));
  FDRE \bus2ip_BE_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_22),
        .D(\bus2ip_BE_reg[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \bus2ip_BE_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_22),
        .D(\bus2ip_BE_reg[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \bus2ip_BE_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_22),
        .D(\bus2ip_BE_reg[2]_i_1_n_0 ),
        .Q(temp_bus2ip_be[2]),
        .R(SR));
  FDRE \bus2ip_BE_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_22),
        .D(\bus2ip_BE_reg[3]_i_2_n_0 ),
        .Q(temp_bus2ip_be[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'h3A300000)) 
    bus2ip_burst_reg_i_1
       (.I0(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_11),
        .I1(single_transfer_cmb),
        .I2(enable_cs_cmb),
        .I3(bus2ip_burst_reg),
        .I4(s_axi_aresetn),
        .O(bus2ip_burst_reg_i_1_n_0));
  FDRE bus2ip_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_burst_reg_i_1_n_0),
        .Q(bus2ip_burst_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0022002288020002)) 
    \bus2ip_data_reg[31]_i_1 
       (.I0(s_axi_mem_wvalid),
        .I1(out),
        .I2(rw_flag_reg_reg_0),
        .I3(emc_addr_ps[1]),
        .I4(Write_req_data_ack_cmb),
        .I5(emc_addr_ps[2]),
        .O(bus2ip_data_reg0));
  FDRE \bus2ip_data_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[0]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [0]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[10]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [10]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[11]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [11]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[12]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [12]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[13]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [13]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[14]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [14]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[15]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [15]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[16]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [16]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[17]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [17]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[18]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [18]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[19]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [19]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[1]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [1]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[20]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [20]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[21]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [21]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[22]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [22]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[23]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [23]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[24]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [24]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[25]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [25]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[26]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [26]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[27]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [27]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[28]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [28]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[29]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [29]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[2]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [2]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[30]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [30]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[31]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [31]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[3]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [3]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[4]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [4]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[5]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [5]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[6]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [6]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[7]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [7]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[8]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [8]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[9]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG [9]),
        .R(SR));
  FDRE bus2ip_rd_req_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_79),
        .Q(Bus2IP_RdReq_emc),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF5FFFFC0F5000FC)) 
    bus2ip_wr_req_reg_i_1
       (.I0(Write_req_data_ack_cmb),
        .I1(bus2ip_wr_req_cmb0),
        .I2(emc_addr_ps[2]),
        .I3(emc_addr_ps[1]),
        .I4(out),
        .I5(bus2ip_wrreq_i),
        .O(bus2ip_wr_req_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hB000)) 
    bus2ip_wr_req_reg_i_2
       (.I0(rw_flag_reg),
        .I1(s_axi_mem_arvalid),
        .I2(s_axi_mem_awvalid),
        .I3(s_axi_mem_wvalid),
        .O(bus2ip_wr_req_cmb0));
  FDRE bus2ip_wr_req_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_wr_req_reg_i_1_n_0),
        .Q(bus2ip_wrreq_i),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \derived_burst_reg[0]_i_1 
       (.I0(s_axi_mem_arburst[0]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awburst[0]),
        .O(\derived_burst_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \derived_burst_reg[1]_i_1 
       (.I0(s_axi_mem_arburst[1]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awburst[1]),
        .O(\derived_burst_reg[1]_i_1_n_0 ));
  FDRE \derived_burst_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(derived_size_reg),
        .D(\derived_burst_reg[0]_i_1_n_0 ),
        .Q(derived_burst_reg[0]),
        .R(1'b0));
  FDRE \derived_burst_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(derived_size_reg),
        .D(\derived_burst_reg[1]_i_1_n_0 ),
        .Q(derived_burst_reg[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \derived_size_reg[0]_i_1 
       (.I0(s_axi_mem_arsize[0]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awsize[0]),
        .O(\derived_size_reg[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \derived_size_reg[1]_i_1 
       (.I0(enable_cs_cmb),
        .I1(s_axi_aresetn),
        .O(derived_size_reg));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \derived_size_reg[1]_i_2 
       (.I0(s_axi_mem_arsize[1]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awsize[1]),
        .O(p_0_in1_in));
  FDRE \derived_size_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(derived_size_reg),
        .D(\derived_size_reg[0]_i_1_n_0 ),
        .Q(\derived_size_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \derived_size_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(derived_size_reg),
        .D(p_0_in1_in),
        .Q(\derived_size_reg_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AEEE)) 
    last_data_acked_i_1
       (.I0(last_data_acked),
        .I1(ip2bus_rdack),
        .I2(last_data_acked_i_2_n_0),
        .I3(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_11),
        .I4(addr_sm_ps_idle_cmb),
        .O(last_data_acked_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    last_data_acked_i_2
       (.I0(rd_data_count_reg__0[7]),
        .I1(rd_data_count_reg__0[6]),
        .I2(AXI_EMC_ADDR_GEN_INSTANCE_I_n_37),
        .O(last_data_acked_i_2_n_0));
  FDRE last_data_acked_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_data_acked_i_1_n_0),
        .Q(last_data_acked),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \rd_data_count[0]_i_1 
       (.I0(s_axi_mem_arlen[0]),
        .I1(enable_cs_cmb),
        .I2(rd_data_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \rd_data_count[1]_i_1 
       (.I0(s_axi_mem_arlen[1]),
        .I1(enable_cs_cmb),
        .I2(rd_data_count_reg__0[0]),
        .I3(rd_data_count_reg__0[1]),
        .O(p_0_in__0[1]));
  LUT5 #(
    .INIT(32'hB8B8B88B)) 
    \rd_data_count[2]_i_1 
       (.I0(s_axi_mem_arlen[2]),
        .I1(enable_cs_cmb),
        .I2(rd_data_count_reg__0[2]),
        .I3(rd_data_count_reg__0[1]),
        .I4(rd_data_count_reg__0[0]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \rd_data_count[3]_i_1 
       (.I0(s_axi_mem_arlen[3]),
        .I1(enable_cs_cmb),
        .I2(rd_data_count_reg__0[3]),
        .I3(rd_data_count_reg__0[2]),
        .I4(rd_data_count_reg__0[0]),
        .I5(rd_data_count_reg__0[1]),
        .O(p_0_in__0[3]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \rd_data_count[4]_i_1 
       (.I0(s_axi_mem_arlen[4]),
        .I1(enable_cs_cmb),
        .I2(rd_data_count_reg__0[4]),
        .I3(\rd_data_count[4]_i_2_n_0 ),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_data_count[4]_i_2 
       (.I0(rd_data_count_reg__0[3]),
        .I1(rd_data_count_reg__0[2]),
        .I2(rd_data_count_reg__0[0]),
        .I3(rd_data_count_reg__0[1]),
        .O(\rd_data_count[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \rd_data_count[5]_i_1 
       (.I0(s_axi_mem_arlen[5]),
        .I1(enable_cs_cmb),
        .I2(rd_data_count_reg__0[5]),
        .I3(\rd_data_count[5]_i_2_n_0 ),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \rd_data_count[5]_i_2 
       (.I0(rd_data_count_reg__0[4]),
        .I1(rd_data_count_reg__0[1]),
        .I2(rd_data_count_reg__0[0]),
        .I3(rd_data_count_reg__0[2]),
        .I4(rd_data_count_reg__0[3]),
        .O(\rd_data_count[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \rd_data_count[6]_i_1 
       (.I0(s_axi_mem_arlen[6]),
        .I1(enable_cs_cmb),
        .I2(rd_data_count_reg__0[6]),
        .I3(AXI_EMC_ADDR_GEN_INSTANCE_I_n_37),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hB88BB8B8)) 
    \rd_data_count[7]_i_2 
       (.I0(s_axi_mem_arlen[7]),
        .I1(enable_cs_cmb),
        .I2(rd_data_count_reg__0[7]),
        .I3(rd_data_count_reg__0[6]),
        .I4(AXI_EMC_ADDR_GEN_INSTANCE_I_n_37),
        .O(p_0_in__0[7]));
  FDRE \rd_data_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_9),
        .D(p_0_in__0[0]),
        .Q(rd_data_count_reg__0[0]),
        .R(SR));
  FDRE \rd_data_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_9),
        .D(p_0_in__0[1]),
        .Q(rd_data_count_reg__0[1]),
        .R(SR));
  FDRE \rd_data_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_9),
        .D(p_0_in__0[2]),
        .Q(rd_data_count_reg__0[2]),
        .R(SR));
  FDRE \rd_data_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_9),
        .D(p_0_in__0[3]),
        .Q(rd_data_count_reg__0[3]),
        .R(SR));
  FDRE \rd_data_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_9),
        .D(p_0_in__0[4]),
        .Q(rd_data_count_reg__0[4]),
        .R(SR));
  FDRE \rd_data_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_9),
        .D(p_0_in__0[5]),
        .Q(rd_data_count_reg__0[5]),
        .R(SR));
  FDRE \rd_data_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_9),
        .D(p_0_in__0[6]),
        .Q(rd_data_count_reg__0[6]),
        .R(SR));
  FDRE \rd_data_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_9),
        .D(p_0_in__0[7]),
        .Q(rd_data_count_reg__0[7]),
        .R(SR));
  FDRE rnw_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rnw_cmb),
        .Q(bus2ip_rnw),
        .R(SR));
  LUT5 #(
    .INIT(32'hFF3F00A0)) 
    rw_flag_reg_i_1
       (.I0(s_axi_mem_arvalid),
        .I1(s_axi_mem_awvalid),
        .I2(addr_sm_ps_IDLE_reg),
        .I3(\FSM_sequential_crnt_state_reg[0]_2 ),
        .I4(rw_flag_reg),
        .O(rw_flag_reg_i_1_n_0));
  FDRE rw_flag_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rw_flag_reg_i_1_n_0),
        .Q(rw_flag_reg),
        .R(SR));
  LUT6 #(
    .INIT(64'h0444000000000000)) 
    s_axi_mem_arready_INST_0
       (.I0(\FSM_sequential_crnt_state_reg[0]_2 ),
        .I1(s_axi_mem_arvalid),
        .I2(rw_flag_reg),
        .I3(s_axi_mem_awvalid),
        .I4(s_axi_aresetn),
        .I5(addr_sm_ps_idle_cmb),
        .O(s_axi_mem_arready));
  LUT3 #(
    .INIT(8'h01)) 
    s_axi_mem_arready_INST_0_i_2
       (.I0(emc_addr_ps[1]),
        .I1(out),
        .I2(emc_addr_ps[2]),
        .O(addr_sm_ps_idle_cmb));
  LUT5 #(
    .INIT(32'h00010000)) 
    s_axi_mem_awready_INST_0
       (.I0(rw_flag_reg_reg_0),
        .I1(emc_addr_ps[1]),
        .I2(out),
        .I3(emc_addr_ps[2]),
        .I4(s_axi_aresetn),
        .O(E));
  FDRE \s_axi_mem_bid_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_awid[0]),
        .Q(s_axi_mem_bid[0]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_awid[1]),
        .Q(s_axi_mem_bid[1]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_awid[2]),
        .Q(s_axi_mem_bid[2]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_awid[3]),
        .Q(s_axi_mem_bid[3]),
        .R(SR));
  FDRE \s_axi_mem_bresp_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_78),
        .Q(s_axi_mem_bresp),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h0000C0EA)) 
    s_axi_mem_bvalid_reg_i_1
       (.I0(s_axi_mem_bvalid),
        .I1(last_addr1),
        .I2(Write_req_data_ack_cmb),
        .I3(s_axi_mem_bready),
        .I4(addr_sm_ps_idle_cmb),
        .O(s_axi_mem_bvalid_reg_i_1_n_0));
  FDRE s_axi_mem_bvalid_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_mem_bvalid_reg_i_1_n_0),
        .Q(s_axi_mem_bvalid),
        .R(1'b0));
  FDRE \s_axi_mem_rid_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_mem_arready),
        .D(s_axi_mem_arid[0]),
        .Q(s_axi_mem_rid[0]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_mem_arready),
        .D(s_axi_mem_arid[1]),
        .Q(s_axi_mem_rid[1]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_mem_arready),
        .D(s_axi_mem_arid[2]),
        .Q(s_axi_mem_rid[2]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_mem_arready),
        .D(s_axi_mem_arid[3]),
        .Q(s_axi_mem_rid[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    s_axi_mem_rlast_INST_0
       (.I0(last_data_acked),
        .I1(AXI_EMC_ADDR_GEN_INSTANCE_I_n_37),
        .I2(rd_data_count_reg__0[6]),
        .I3(rd_data_count_reg__0[7]),
        .O(s_axi_mem_rlast));
  LUT5 #(
    .INIT(32'h40400A0F)) 
    s_axi_mem_wready_INST_0
       (.I0(emc_addr_ps[2]),
        .I1(Write_req_data_ack_cmb),
        .I2(emc_addr_ps[1]),
        .I3(rw_flag_reg_reg_0),
        .I4(out),
        .O(s_axi_mem_wready));
  LUT5 #(
    .INIT(32'hFFF0EEEE)) 
    type_of_xfer_reg_i_1
       (.I0(s_axi_mem_awburst[0]),
        .I1(s_axi_mem_awburst[1]),
        .I2(s_axi_mem_arburst[0]),
        .I3(s_axi_mem_arburst[1]),
        .I4(rnw_cmb),
        .O(Type_of_xfer_cmb));
  FDRE type_of_xfer_reg_reg
       (.C(s_axi_aclk),
        .CE(enable_cs_cmb),
        .D(Type_of_xfer_cmb),
        .Q(Type_of_xfer),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module axi_em_ctrl_cntr_incr_decr_addn_f
   (Q,
    enable_rdce_cmb,
    \rd_data_count_reg[7] ,
    s_axi_mem_rvalid,
    fifo_full_p1,
    A,
    addr,
    \s_axi_mem_rdata[14] ,
    S,
    out,
    single_transfer_cmb,
    enable_cs_cmb126_out,
    \burst_data_cnt_reg[7] ,
    enable_cs_cmb,
    s_axi_mem_rready,
    bus2ip_reset,
    s_axi_aclk);
  output [7:0]Q;
  output enable_rdce_cmb;
  output [0:0]\rd_data_count_reg[7] ;
  output s_axi_mem_rvalid;
  output fifo_full_p1;
  output [1:0]A;
  output [1:0]addr;
  output [2:0]\s_axi_mem_rdata[14] ;
  input [0:0]S;
  input [2:0]out;
  input single_transfer_cmb;
  input enable_cs_cmb126_out;
  input \burst_data_cnt_reg[7] ;
  input enable_cs_cmb;
  input s_axi_mem_rready;
  input bus2ip_reset;
  input s_axi_aclk;

  wire [1:0]A;
  wire Cnt_p10_carry__0_i_1_n_0;
  wire Cnt_p10_carry__0_i_2_n_0;
  wire Cnt_p10_carry__0_i_3_n_0;
  wire Cnt_p10_carry__0_i_4_n_0;
  wire Cnt_p10_carry__0_n_0;
  wire Cnt_p10_carry__0_n_1;
  wire Cnt_p10_carry__0_n_2;
  wire Cnt_p10_carry__0_n_3;
  wire Cnt_p10_carry__1_i_1_n_0;
  wire Cnt_p10_carry_i_2_n_0;
  wire Cnt_p10_carry_i_3_n_0;
  wire Cnt_p10_carry_i_4_n_0;
  wire Cnt_p10_carry_n_0;
  wire Cnt_p10_carry_n_1;
  wire Cnt_p10_carry_n_2;
  wire Cnt_p10_carry_n_3;
  wire FIFO_Full_i_2_n_0;
  wire \MEM_DECODE_GEN[0].rdce_out_i[0]_i_4_n_0 ;
  wire [7:0]Q;
  wire [0:0]S;
  wire [1:0]addr;
  wire [8:0]addr_i_p1;
  wire \burst_data_cnt_reg[7] ;
  wire bus2ip_reset;
  wire enable_cs_cmb;
  wire enable_cs_cmb126_out;
  wire enable_rdce_cmb;
  wire fifo_empty;
  wire fifo_full_p1;
  wire [2:0]out;
  wire rd_data_count0;
  wire [0:0]\rd_data_count_reg[7] ;
  wire s_axi_aclk;
  wire [2:0]\s_axi_mem_rdata[14] ;
  wire s_axi_mem_rready;
  wire s_axi_mem_rvalid;
  wire single_transfer_cmb;
  wire [3:0]NLW_Cnt_p10_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_Cnt_p10_carry__1_O_UNCONNECTED;

  CARRY4 Cnt_p10_carry
       (.CI(1'b0),
        .CO({Cnt_p10_carry_n_0,Cnt_p10_carry_n_1,Cnt_p10_carry_n_2,Cnt_p10_carry_n_3}),
        .CYINIT(rd_data_count0),
        .DI(Q[3:0]),
        .O(addr_i_p1[3:0]),
        .S({Cnt_p10_carry_i_2_n_0,Cnt_p10_carry_i_3_n_0,Cnt_p10_carry_i_4_n_0,S}));
  CARRY4 Cnt_p10_carry__0
       (.CI(Cnt_p10_carry_n_0),
        .CO({Cnt_p10_carry__0_n_0,Cnt_p10_carry__0_n_1,Cnt_p10_carry__0_n_2,Cnt_p10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(addr_i_p1[7:4]),
        .S({Cnt_p10_carry__0_i_1_n_0,Cnt_p10_carry__0_i_2_n_0,Cnt_p10_carry__0_i_3_n_0,Cnt_p10_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h9A)) 
    Cnt_p10_carry__0_i_1
       (.I0(Q[7]),
        .I1(fifo_empty),
        .I2(s_axi_mem_rready),
        .O(Cnt_p10_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    Cnt_p10_carry__0_i_2
       (.I0(Q[6]),
        .I1(fifo_empty),
        .I2(s_axi_mem_rready),
        .O(Cnt_p10_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    Cnt_p10_carry__0_i_3
       (.I0(Q[5]),
        .I1(fifo_empty),
        .I2(s_axi_mem_rready),
        .O(Cnt_p10_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    Cnt_p10_carry__0_i_4
       (.I0(Q[4]),
        .I1(fifo_empty),
        .I2(s_axi_mem_rready),
        .O(Cnt_p10_carry__0_i_4_n_0));
  CARRY4 Cnt_p10_carry__1
       (.CI(Cnt_p10_carry__0_n_0),
        .CO(NLW_Cnt_p10_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_Cnt_p10_carry__1_O_UNCONNECTED[3:1],addr_i_p1[8]}),
        .S({1'b0,1'b0,1'b0,Cnt_p10_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    Cnt_p10_carry__1_i_1
       (.I0(s_axi_mem_rready),
        .I1(fifo_empty),
        .O(Cnt_p10_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    Cnt_p10_carry_i_1
       (.I0(s_axi_mem_rready),
        .I1(fifo_empty),
        .O(rd_data_count0));
  LUT3 #(
    .INIT(8'h9A)) 
    Cnt_p10_carry_i_2
       (.I0(Q[3]),
        .I1(fifo_empty),
        .I2(s_axi_mem_rready),
        .O(Cnt_p10_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    Cnt_p10_carry_i_3
       (.I0(Q[2]),
        .I1(fifo_empty),
        .I2(s_axi_mem_rready),
        .O(Cnt_p10_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    Cnt_p10_carry_i_4
       (.I0(Q[1]),
        .I1(fifo_empty),
        .I2(s_axi_mem_rready),
        .O(Cnt_p10_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    FIFO_Full_i_1
       (.I0(addr_i_p1[5]),
        .I1(addr_i_p1[7]),
        .I2(addr_i_p1[1]),
        .I3(FIFO_Full_i_2_n_0),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    FIFO_Full_i_2
       (.I0(addr_i_p1[6]),
        .I1(addr_i_p1[2]),
        .I2(addr_i_p1[8]),
        .I3(addr_i_p1[0]),
        .I4(addr_i_p1[3]),
        .I5(addr_i_p1[4]),
        .O(FIFO_Full_i_2_n_0));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[0]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[0]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[0]_rep 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(\s_axi_mem_rdata[14] [0]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[1]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[1]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[1]_rep 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(\s_axi_mem_rdata[14] [1]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[2]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[2]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[2]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[2]_rep 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(\s_axi_mem_rdata[14] [2]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[3]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(Q[3]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[3]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[3]_rep 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(A[0]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[3]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[3]_rep__0 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(addr[0]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[4]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[4]),
        .Q(Q[4]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[4]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[4]_rep 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[4]),
        .Q(A[1]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[4]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[4]_rep__0 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[4]),
        .Q(addr[1]),
        .S(bus2ip_reset));
  FDSE \INFERRED_GEN.cnt_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[5]),
        .Q(Q[5]),
        .S(bus2ip_reset));
  FDSE \INFERRED_GEN.cnt_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[6]),
        .Q(Q[6]),
        .S(bus2ip_reset));
  FDSE \INFERRED_GEN.cnt_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[7]),
        .Q(Q[7]),
        .S(bus2ip_reset));
  FDSE \INFERRED_GEN.cnt_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[8]),
        .Q(fifo_empty),
        .S(bus2ip_reset));
  LUT6 #(
    .INIT(64'h00000000FF400040)) 
    \MEM_DECODE_GEN[0].rdce_out_i[0]_i_2 
       (.I0(out[0]),
        .I1(single_transfer_cmb),
        .I2(enable_cs_cmb126_out),
        .I3(out[1]),
        .I4(\MEM_DECODE_GEN[0].rdce_out_i[0]_i_4_n_0 ),
        .I5(out[2]),
        .O(enable_rdce_cmb));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \MEM_DECODE_GEN[0].rdce_out_i[0]_i_4 
       (.I0(fifo_empty),
        .I1(\burst_data_cnt_reg[7] ),
        .I2(out[0]),
        .O(\MEM_DECODE_GEN[0].rdce_out_i[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rd_data_count[7]_i_1 
       (.I0(enable_cs_cmb),
        .I1(fifo_empty),
        .I2(s_axi_mem_rready),
        .O(\rd_data_count_reg[7] ));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_mem_rvalid_INST_0
       (.I0(fifo_empty),
        .O(s_axi_mem_rvalid));
endmodule

(* ORIG_REF_NAME = "counters" *) 
module axi_em_ctrl_counters
   (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ,
    twph_cnt,
    trd_cnt,
    read_ack_reg_reg,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    transaction_done_reg_reg,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ,
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ,
    \FSM_sequential_crnt_state_reg[1] ,
    \FSM_sequential_crnt_state_reg[3] ,
    twr_rec_end_int,
    Write_req_data_ack_cmb13_out,
    \DATA_STORE_GEN[0].WRDATA_REG ,
    addr_cnt_ce_cmb61_out,
    read_ack_reg_reg_0,
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ,
    read_ack_cmb,
    tpacc_end,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ,
    cycle_cnt_en_cmb58_out,
    twr_end,
    twr_cnt_en,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    SR,
    CE,
    s_axi_aclk,
    twph_cnt_en,
    S,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 ,
    CE_4,
    CE_5,
    trd_cnt_en,
    S_6,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10 ,
    CE_11,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 ,
    CE_13,
    twr_rec_cnt_en_int,
    \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 ,
    CE_14,
    CE_15,
    pend_wrreq_reg,
    bus2ip_wrreq_i,
    temp_bus2ip_cs,
    bus2Mem_RdReq,
    \FSM_sequential_crnt_state_reg[2] ,
    bus2Mem_WrReq,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ,
    out,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    last_addr1,
    CO,
    bus2ip_rnw,
    \FSM_sequential_crnt_state_reg[0] );
  output [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  output [0:4]twph_cnt;
  output [0:4]trd_cnt;
  output [0:0]read_ack_reg_reg;
  output [14:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  output transaction_done_reg_reg;
  output \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  output \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  output \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ;
  output \FSM_sequential_crnt_state_reg[1] ;
  output \FSM_sequential_crnt_state_reg[3] ;
  output twr_rec_end_int;
  output Write_req_data_ack_cmb13_out;
  output \DATA_STORE_GEN[0].WRDATA_REG ;
  output addr_cnt_ce_cmb61_out;
  output read_ack_reg_reg_0;
  output \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ;
  output read_ack_cmb;
  output tpacc_end;
  output \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  output cycle_cnt_en_cmb58_out;
  output twr_end;
  input twr_cnt_en;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  input [0:0]SR;
  input CE;
  input s_axi_aclk;
  input twph_cnt_en;
  input S;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 ;
  input CE_4;
  input CE_5;
  input trd_cnt_en;
  input S_6;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7 ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8 ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9 ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10 ;
  input CE_11;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 ;
  input CE_13;
  input twr_rec_cnt_en_int;
  input \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 ;
  input CE_14;
  input CE_15;
  input pend_wrreq_reg;
  input bus2ip_wrreq_i;
  input temp_bus2ip_cs;
  input bus2Mem_RdReq;
  input \FSM_sequential_crnt_state_reg[2] ;
  input bus2Mem_WrReq;
  input \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ;
  input [0:0]out;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  input last_addr1;
  input [0:0]CO;
  input bus2ip_rnw;
  input \FSM_sequential_crnt_state_reg[0] ;

  wire CE;
  wire CE_11;
  wire CE_13;
  wire CE_14;
  wire CE_15;
  wire CE_4;
  wire CE_5;
  wire [0:0]CO;
  wire \DATA_STORE_GEN[0].WRDATA_REG ;
  wire \FSM_sequential_crnt_state_reg[0] ;
  wire \FSM_sequential_crnt_state_reg[1] ;
  wire \FSM_sequential_crnt_state_reg[2] ;
  wire \FSM_sequential_crnt_state_reg[3] ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  wire [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  wire [14:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 ;
  wire \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9 ;
  wire \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8 ;
  wire \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ;
  wire S;
  wire [0:0]SR;
  wire S_6;
  wire Write_req_data_ack_cmb13_out;
  wire addr_cnt_ce_cmb61_out;
  wire bus2Mem_RdReq;
  wire bus2Mem_WrReq;
  wire bus2ip_rnw;
  wire bus2ip_wrreq_i;
  wire cycle_cnt_en_cmb58_out;
  wire last_addr1;
  wire [0:0]out;
  wire pend_wrreq_reg;
  wire read_ack_cmb;
  wire [0:0]read_ack_reg_reg;
  wire read_ack_reg_reg_0;
  wire s_axi_aclk;
  wire temp_bus2ip_cs;
  wire tpacc_end;
  wire transaction_done_reg_reg;
  wire [0:4]trd_cnt;
  wire trd_cnt_en;
  wire [0:4]twph_cnt;
  wire twph_cnt_en;
  wire twr_cnt_en;
  wire twr_end;
  wire twr_rec_cnt_en_int;
  wire twr_rec_end_int;

  axi_em_ctrl_ld_arith_reg__parameterized2 THZCNT_I
       (.CE_15(CE_15),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ),
        .\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .SR(SR),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .bus2Mem_WrReq(bus2Mem_WrReq),
        .bus2ip_wrreq_i(bus2ip_wrreq_i),
        .pend_wrreq_reg(pend_wrreq_reg),
        .s_axi_aclk(s_axi_aclk),
        .temp_bus2ip_cs(temp_bus2ip_cs),
        .transaction_done_reg_reg(transaction_done_reg_reg));
  axi_em_ctrl_ld_arith_reg__parameterized2_0 TLZCNT_I
       (.CE_5(CE_5),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] (\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ),
        .SR(SR),
        .s_axi_aclk(s_axi_aclk),
        .temp_bus2ip_cs(temp_bus2ip_cs));
  axi_em_ctrl_ld_arith_reg__parameterized1 TPACCCNT_I
       (.CE_13(CE_13),
        .\FSM_sequential_crnt_state_reg[0] (\FSM_sequential_crnt_state_reg[0] ),
        .\FSM_sequential_crnt_state_reg[2] (\FSM_sequential_crnt_state_reg[2] ),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 (\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 (read_ack_reg_reg_0),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 (\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 ),
        .\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE (\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ),
        .\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 (\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .SR(SR),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .read_ack_cmb(read_ack_cmb),
        .read_ack_reg_reg(read_ack_reg_reg),
        .s_axi_aclk(s_axi_aclk),
        .tpacc_end(tpacc_end));
  axi_em_ctrl_ld_arith_reg__parameterized1_1 TRDCNT_I
       (.CE_11(CE_11),
        .CO(CO),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10 (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10 ),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 (\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9 (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9 ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8 (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8 ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7 (\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7 ),
        .SR(SR),
        .S_6(S_6),
        .addr_cnt_ce_cmb61_out(addr_cnt_ce_cmb61_out),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .bus2ip_rnw(bus2ip_rnw),
        .read_ack_reg_reg(read_ack_reg_reg_0),
        .s_axi_aclk(s_axi_aclk),
        .temp_bus2ip_cs(temp_bus2ip_cs),
        .trd_cnt(trd_cnt),
        .trd_cnt_en(trd_cnt_en));
  axi_em_ctrl_ld_arith_reg__parameterized2_2 TWPHCNT_I
       (.CE_4(CE_4),
        .\DATA_STORE_GEN[0].WRDATA_REG (\DATA_STORE_GEN[0].WRDATA_REG ),
        .\FSM_sequential_crnt_state_reg[1] (\FSM_sequential_crnt_state_reg[1] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 (twph_cnt[0]),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 ),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 (twph_cnt[1]),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 (\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ),
        .\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 (twph_cnt[2]),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ),
        .\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 (twph_cnt[3]),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 (\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ),
        .\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 (twph_cnt[4]),
        .S(S),
        .SR(SR),
        .Write_req_data_ack_cmb13_out(Write_req_data_ack_cmb13_out),
        .bus2ip_wrreq_i(bus2ip_wrreq_i),
        .cycle_cnt_en_cmb58_out(cycle_cnt_en_cmb58_out),
        .last_addr1(last_addr1),
        .pend_wrreq_reg(pend_wrreq_reg),
        .s_axi_aclk(s_axi_aclk),
        .twph_cnt_en(twph_cnt_en));
  axi_em_ctrl_ld_arith_reg__parameterized1_3 TWRCNT_I
       (.CE(CE),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .SR(SR),
        .s_axi_aclk(s_axi_aclk),
        .twr_cnt_en(twr_cnt_en),
        .twr_end(twr_end));
  axi_em_ctrl_ld_arith_reg__parameterized3 T_WRREC_CNT_I
       (.CE_14(CE_14),
        .\FSM_sequential_crnt_state_reg[3] (\FSM_sequential_crnt_state_reg[3] ),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 ),
        .\PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1 ),
        .SR(SR),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .twr_rec_cnt_en_int(twr_rec_cnt_en_int),
        .twr_rec_end_int(twr_rec_end_int));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module axi_em_ctrl_dynshreg_f
   (s_axi_mem_rresp,
    s_axi_mem_rdata,
    rnw_reg_reg,
    Q,
    rd_fifo_wr_en,
    in,
    \INFERRED_GEN.cnt_i_reg[2]_rep ,
    s_axi_aclk,
    A,
    addr);
  output [0:0]s_axi_mem_rresp;
  output [31:0]s_axi_mem_rdata;
  input rnw_reg_reg;
  input [7:0]Q;
  input rd_fifo_wr_en;
  input [0:32]in;
  input [2:0]\INFERRED_GEN.cnt_i_reg[2]_rep ;
  input s_axi_aclk;
  input [1:0]A;
  input [1:0]addr;

  wire [1:0]A;
  wire [2:0]\INFERRED_GEN.cnt_i_reg[2]_rep ;
  wire \INFERRED_GEN.data_reg[255][0]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][10]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][11]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][12]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][13]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][14]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][15]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][16]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][17]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][18]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][19]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][1]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][20]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][21]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][22]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][23]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][24]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][25]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][26]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][27]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][28]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][29]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][2]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][30]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][31]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][32]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][3]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][4]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][5]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][6]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][7]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][8]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][9]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32_n_1 ;
  wire [7:0]Q;
  wire [1:0]addr;
  wire [0:32]in;
  wire rd_fifo_wr_en;
  wire rnw_reg_reg;
  wire s_axi_aclk;
  wire [31:0]s_axi_mem_rdata;
  wire [0:0]s_axi_mem_rresp;
  wire \NLW_INFERRED_GEN.data_reg[255][0]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][10]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][11]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][12]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][13]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][14]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][15]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][16]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][17]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][18]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][19]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][1]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][20]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][21]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][22]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][23]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][24]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][25]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][26]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][27]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][28]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][29]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][2]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][30]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][31]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][32]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][3]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][4]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][5]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][6]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][7]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][8]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][9]_srl32__6_Q31_UNCONNECTED ;

  MUXF7 \INFERRED_GEN.data_reg[255][0]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][0]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][0]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][0]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][0]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][0]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][0]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][0]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][0]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][0]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][0]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][0]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][0]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][0]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][0]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][0]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][0]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][0]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][0]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][0]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][0]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][0]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][0]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][0]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[32]),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][0]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][0]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][0]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][0]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][0]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][0]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][0]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][0]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][0]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][0]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][0]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][0]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][0]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][0]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][10]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][10]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][10]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][10]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][10]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][10]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][10]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][10]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][10]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][10]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][10]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][10]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][10]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][10]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][10]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][10]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][10]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][10]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][10]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][10]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][10]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][10]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][10]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][10]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[22]),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][10]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][10]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][10]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][10]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][10]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][10]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][10]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][10]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][10]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][10]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][10]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][10]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][10]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][10]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][10]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][11]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][11]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][11]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][11]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][11]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][11]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][11]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][11]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][11]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][11]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][11]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][11]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][11]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][11]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][11]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][11]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][11]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][11]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][11]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][11]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][11]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][11]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][11]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][11]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[21]),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][11]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][11]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][11]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][11]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][11]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][11]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][11]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][11]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][11]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][11]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][11]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][11]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][11]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][11]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][11]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][12]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][12]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][12]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][12]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][12]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][12]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][12]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][12]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][12]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][12]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][12]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][12]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][12]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][12]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][12]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][12]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][12]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][12]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][12]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][12]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][12]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][12]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][12]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][12]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[20]),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][12]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][12]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][12]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][12]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][12]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][12]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][12]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][12]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][12]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][12]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][12]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][12]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][12]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][12]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][12]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][13]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][13]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][13]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][13]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][13]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][13]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][13]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][13]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][13]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][13]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][13]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][13]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][13]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][13]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][13]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][13]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][13]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][13]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][13]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][13]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][13]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][13]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][13]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][13]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[19]),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][13]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][13]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][13]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][13]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][13]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][13]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][13]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][13]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][13]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][13]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][13]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][13]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][13]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][13]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][13]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][14]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][14]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][14]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][14]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][14]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][14]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][14]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][14]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][14]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][14]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][14]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][14]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][14]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][14]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][14]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][14]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][14]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][14]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][14]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][14]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][14]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][14]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][14]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][14]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[18]),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][14]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][14]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][14]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][14]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][14]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][14]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][14]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][14]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][14]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][14]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][14]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][14]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][14]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][14]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][14]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][15]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][15]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][15]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][15]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][15]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][15]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][15]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][15]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][15]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][15]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][15]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][15]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][15]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][15]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][15]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][15]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][15]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][15]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][15]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][15]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][15]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][15]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][15]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][15]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[17]),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][15]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][15]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][15]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][15]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][15]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][15]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][15]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][15]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][15]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][15]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][15]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][15]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][15]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][15]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][15]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][16]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][16]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][16]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][16]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][16]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][16]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][16]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][16]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][16]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][16]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][16]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][16]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][16]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][16]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][16]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][16]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][16]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][16]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][16]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][16]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][16]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][16]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][16]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][16]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[16]),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][16]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][16]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][16]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][16]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][16]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][16]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][16]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][16]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][16]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][16]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][16]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][16]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][16]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][16]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][16]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][17]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][17]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][17]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][17]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][17]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][17]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][17]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][17]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][17]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][17]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][17]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][17]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][17]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][17]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][17]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][17]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][17]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][17]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][17]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][17]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][17]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][17]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][17]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][17]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[15]),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][17]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][17]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][17]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][17]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][17]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][17]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][17]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][17]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][17]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][17]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][17]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][17]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][17]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][17]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][17]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][18]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][18]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][18]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][18]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][18]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][18]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][18]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][18]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][18]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][18]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][18]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][18]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][18]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][18]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][18]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][18]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][18]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][18]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][18]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][18]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][18]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][18]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][18]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][18]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[14]),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][18]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][18]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][18]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][18]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][18]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][18]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][18]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][18]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][18]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][18]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][18]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][18]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][18]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][18]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][18]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][19]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][19]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][19]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][19]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][19]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][19]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][19]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][19]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][19]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][19]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][19]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][19]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][19]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][19]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][19]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][19]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][19]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][19]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][19]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][19]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][19]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][19]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][19]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][19]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[13]),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][19]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][19]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][19]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][19]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][19]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][19]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][19]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][19]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][19]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][19]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][19]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][19]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][19]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][19]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][19]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][1]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][1]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][1]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][1]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][1]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][1]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][1]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][1]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][1]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][1]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][1]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][1]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][1]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][1]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][1]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][1]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][1]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][1]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][1]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][1]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][1]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][1]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][1]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][1]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[31]),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][1]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][1]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][1]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][1]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][1]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][1]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][1]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][1]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][1]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][1]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][1]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][1]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][1]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][1]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][20]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][20]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][20]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][20]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][20]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][20]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][20]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][20]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][20]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][20]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][20]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][20]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][20]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][20]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][20]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][20]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][20]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][20]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][20]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][20]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][20]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][20]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][20]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][20]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[12]),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][20]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][20]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][20]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][20]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][20]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][20]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][20]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][20]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][20]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][20]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][20]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][20]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][20]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][20]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][20]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][21]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][21]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][21]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][21]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][21]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][21]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][21]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][21]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][21]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][21]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][21]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][21]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][21]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][21]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][21]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][21]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][21]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][21]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][21]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][21]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][21]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][21]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][21]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][21]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[11]),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][21]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][21]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][21]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][21]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][21]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][21]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][21]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][21]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][21]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][21]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][21]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][21]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][21]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][21]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][21]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][22]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][22]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][22]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][22]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][22]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][22]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][22]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][22]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][22]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][22]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][22]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][22]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][22]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][22]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][22]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][22]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][22]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][22]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][22]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][22]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][22]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][22]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][22]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][22]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[10]),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][22]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][22]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][22]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][22]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][22]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][22]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][22]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][22]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][22]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][22]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][22]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][22]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][22]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][22]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][22]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][23]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][23]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][23]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][23]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][23]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][23]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][23]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][23]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][23]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][23]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][23]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][23]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][23]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][23]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][23]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][23]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][23]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][23]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][23]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][23]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][23]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][23]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][23]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][23]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[9]),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][23]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][23]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][23]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][23]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][23]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][23]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][23]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][23]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][23]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][23]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][23]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][23]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][23]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][23]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][23]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][24]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][24]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][24]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][24]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][24]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][24]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][24]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][24]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][24]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][24]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][24]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][24]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][24]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][24]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][24]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][24]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][24]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][24]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][24]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][24]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][24]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][24]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][24]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][24]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[8]),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][24]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][24]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][24]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][24]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][24]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][24]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][24]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][24]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][24]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][24]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][24]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][24]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][24]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][24]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][24]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][25]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][25]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][25]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][25]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][25]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][25]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][25]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][25]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][25]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][25]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][25]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][25]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][25]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][25]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][25]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][25]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][25]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][25]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][25]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][25]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][25]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][25]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][25]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][25]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[7]),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][25]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][25]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][25]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][25]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][25]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][25]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][25]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][25]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][25]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][25]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][25]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][25]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][25]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][25]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][25]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][26]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][26]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][26]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][26]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][26]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][26]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][26]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][26]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][26]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][26]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][26]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][26]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][26]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][26]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][26]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][26]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][26]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][26]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][26]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][26]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][26]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][26]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][26]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][26]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[6]),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][26]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][26]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][26]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][26]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][26]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][26]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][26]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][26]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][26]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][26]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][26]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][26]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][26]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][26]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][26]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][27]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][27]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][27]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][27]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][27]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][27]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][27]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][27]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][27]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][27]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][27]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][27]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][27]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][27]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][27]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][27]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][27]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][27]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][27]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][27]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][27]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][27]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][27]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][27]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[5]),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][27]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][27]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][27]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][27]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][27]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][27]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][27]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][27]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][27]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][27]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][27]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][27]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][27]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][27]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][27]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][28]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][28]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][28]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][28]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][28]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][28]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][28]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][28]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][28]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][28]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][28]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][28]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][28]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][28]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][28]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][28]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][28]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][28]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][28]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][28]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][28]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][28]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][28]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][28]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[4]),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][28]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][28]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][28]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][28]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][28]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][28]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][28]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][28]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][28]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][28]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][28]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][28]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][28]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][28]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][28]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][29]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][29]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][29]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][29]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][29]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][29]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][29]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][29]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][29]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][29]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][29]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][29]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][29]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][29]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][29]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][29]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][29]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][29]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][29]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][29]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][29]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][29]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][29]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][29]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[3]),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][29]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][29]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][29]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][29]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][29]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][29]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][29]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][29]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][29]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][29]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][29]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][29]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][29]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][29]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][29]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][2]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][2]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][2]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][2]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][2]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][2]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][2]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][2]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][2]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][2]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][2]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][2]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][2]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][2]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][2]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][2]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][2]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][2]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][2]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][2]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][2]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][2]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][2]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][2]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[30]),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][2]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][2]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][2]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][2]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][2]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][2]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][2]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][2]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][2]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][2]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][2]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][2]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][2]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][2]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][2]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][30]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][30]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][30]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][30]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][30]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][30]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][30]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][30]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][30]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][30]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][30]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][30]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][30]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][30]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][30]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][30]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][30]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][30]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][30]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][30]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][30]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][30]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][30]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][30]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[2]),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][30]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][30]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][30]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][30]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][30]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][30]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][30]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][30]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][30]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][30]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][30]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][30]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][30]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][30]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][30]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][31]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][31]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][31]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][31]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][31]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][31]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][31]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][31]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][31]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][31]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][31]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][31]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][31]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][31]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][31]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][31]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][31]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][31]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][31]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][31]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][31]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][31]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][31]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][31]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[1]),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][31]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][31]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][31]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][31]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][31]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][31]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][31]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][31]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][31]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][31]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][31]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][31]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][31]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][31]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][31]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][32]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][32]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][32]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][32]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][32]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][32]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][32]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][32]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][32]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][32]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][32]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][32]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][32]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][32]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][32]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][32]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][32]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][32]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][32]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][32]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][32]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][32]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][32]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][32]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[0]),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][32]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32__0 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][32]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][32]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32__1 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][32]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][32]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32__2 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][32]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][32]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32__3 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][32]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][32]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32__4 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][32]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][32]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32__5 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][32]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][32]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32__6 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][32]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][32]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][3]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][3]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][3]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][3]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][3]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][3]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][3]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][3]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][3]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][3]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][3]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][3]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][3]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][3]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][3]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][3]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][3]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][3]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][3]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][3]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][3]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][3]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][3]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][3]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[29]),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][3]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][3]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][3]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][3]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][3]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][3]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][3]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][3]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][3]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][3]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][3]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][3]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][3]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][3]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][3]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][4]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][4]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][4]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][4]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][4]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][4]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][4]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][4]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][4]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][4]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][4]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][4]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][4]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][4]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][4]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][4]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][4]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][4]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][4]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][4]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][4]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][4]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][4]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][4]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[28]),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][4]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][4]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][4]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][4]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][4]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][4]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][4]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][4]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][4]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][4]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][4]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][4]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][4]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][4]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][4]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][5]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][5]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][5]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][5]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][5]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][5]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][5]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][5]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][5]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][5]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][5]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][5]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][5]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][5]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][5]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][5]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][5]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][5]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][5]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][5]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][5]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][5]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][5]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][5]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[27]),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][5]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][5]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][5]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][5]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][5]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][5]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][5]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][5]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][5]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][5]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][5]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][5]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][5]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][5]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][5]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][6]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][6]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][6]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][6]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][6]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][6]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][6]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][6]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][6]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][6]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][6]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][6]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][6]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][6]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][6]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][6]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][6]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][6]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][6]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][6]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][6]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][6]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][6]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][6]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[26]),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][6]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][6]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][6]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][6]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][6]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][6]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][6]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][6]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][6]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][6]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][6]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][6]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][6]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][6]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][6]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][7]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][7]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][7]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][7]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][7]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][7]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][7]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][7]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][7]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][7]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][7]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][7]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][7]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][7]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][7]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][7]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][7]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][7]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][7]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][7]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][7]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][7]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][7]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][7]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[25]),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][7]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][7]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][7]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][7]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][7]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][7]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][7]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][7]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][7]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][7]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][7]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][7]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][7]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][7]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][7]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][8]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][8]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][8]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][8]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][8]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][8]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][8]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][8]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][8]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][8]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][8]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][8]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][8]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][8]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][8]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][8]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][8]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][8]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][8]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][8]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][8]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][8]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][8]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][8]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[24]),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][8]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][8]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][8]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][8]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][8]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][8]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][8]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][8]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][8]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][8]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][8]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][8]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][8]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][8]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][8]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][9]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][9]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][9]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][9]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][9]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][9]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][9]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][9]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][9]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][9]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][9]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][9]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][9]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][9]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][9]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][9]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][9]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][9]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][9]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][9]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][9]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][9]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][9]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][9]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[23]),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][9]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][9]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][9]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][9]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][9]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][9]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][9]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][9]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][9]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][9]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][9]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][9]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][9]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.cnt_i_reg[2]_rep }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][9]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][9]_srl32__6_Q31_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[0]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][1]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][1]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[10]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][11]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][11]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[11]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][12]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][12]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[12]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][13]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][13]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[13]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][14]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][14]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[14]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][15]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][15]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[15]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][16]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][16]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[16]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][17]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][17]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[17]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][18]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][18]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[18]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][19]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][19]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[19]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][20]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][20]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[1]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][2]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][2]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[20]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][21]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][21]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[21]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][22]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][22]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[22]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][23]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][23]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[23]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][24]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][24]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[24]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][25]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][25]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[25]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][26]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][26]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[26]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][27]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][27]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[27]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][28]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][28]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[28]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][29]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][29]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[29]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][30]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][30]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[2]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][3]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][3]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[30]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][31]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][31]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[31]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][32]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][32]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[3]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][4]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][4]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[4]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][5]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][5]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[5]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][6]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][6]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[6]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][7]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][7]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[7]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][8]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][8]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[8]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][9]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][9]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[9]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][10]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][10]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[9]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axi_mem_rresp[1]_INST_0 
       (.I0(rnw_reg_reg),
        .I1(\INFERRED_GEN.data_reg[255][0]_mux__3_n_0 ),
        .I2(Q[7]),
        .I3(\INFERRED_GEN.data_reg[255][0]_mux__4_n_0 ),
        .O(s_axi_mem_rresp));
endmodule

(* ORIG_REF_NAME = "io_registers" *) 
module axi_em_ctrl_io_registers
   (mem_wen,
    mem_cen,
    mem_oen,
    mem_rpn,
    mem_ce,
    mem_rnw,
    Q,
    mem_dq_o,
    mem_dq_t,
    mem_qwen,
    mem_ben,
    SR,
    mem_CEN_cmb,
    s_axi_aclk,
    mem_OEN_cmb,
    mem_WEN_cmb,
    Mem_CE_int,
    mem_RNW_cmb,
    mem_dq_i,
    rdclk,
    D,
    mem_dqt_t_d_reg,
    \BEN_STORE_GEN[0].BEN_REG ,
    \BEN_STORE_GEN[2].BEN_REG );
  output mem_wen;
  output [0:0]mem_cen;
  output [0:0]mem_oen;
  output mem_rpn;
  output [0:0]mem_ce;
  output mem_rnw;
  output [15:0]Q;
  output [15:0]mem_dq_o;
  output [15:0]mem_dq_t;
  output [1:0]mem_qwen;
  output [1:0]mem_ben;
  input [0:0]SR;
  input mem_CEN_cmb;
  input s_axi_aclk;
  input mem_OEN_cmb;
  input mem_WEN_cmb;
  input Mem_CE_int;
  input mem_RNW_cmb;
  input [15:0]mem_dq_i;
  input rdclk;
  input [15:0]D;
  input [0:0]mem_dqt_t_d_reg;
  input [1:0]\BEN_STORE_GEN[0].BEN_REG ;
  input [1:0]\BEN_STORE_GEN[2].BEN_REG ;

  wire [1:0]\BEN_STORE_GEN[0].BEN_REG ;
  wire [1:0]\BEN_STORE_GEN[2].BEN_REG ;
  wire [15:0]D;
  wire Mem_CE_int;
  wire [15:0]Q;
  wire [0:0]SR;
  wire mem_CEN_cmb;
  wire mem_OEN_cmb;
  wire mem_RNW_cmb;
  wire mem_WEN_cmb;
  wire [1:0]mem_ben;
  wire [0:0]mem_ce;
  wire [0:0]mem_cen;
  wire [15:0]mem_dq_i;
  wire [15:0]mem_dq_o;
  wire [15:0]mem_dq_t;
  wire [0:0]mem_dqt_t_d_reg;
  wire [0:0]mem_oen;
  wire [1:0]mem_qwen;
  wire mem_rnw;
  wire mem_rpn;
  (* RTL_KEEP = "true" *) wire mem_wen_reg;
  wire rdclk;
  wire s_axi_aclk;

  assign mem_wen = mem_wen_reg;
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[0] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[7]),
        .Q(Q[15]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[10] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[13]),
        .Q(Q[5]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[11] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[12]),
        .Q(Q[4]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[12] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[11]),
        .Q(Q[3]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[13] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[10]),
        .Q(Q[2]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[14] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[9]),
        .Q(Q[1]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[15] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[8]),
        .Q(Q[0]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[1] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[6]),
        .Q(Q[14]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[2] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[5]),
        .Q(Q[13]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[3] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[4]),
        .Q(Q[12]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[4] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[3]),
        .Q(Q[11]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[5] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[2]),
        .Q(Q[10]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[6] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[1]),
        .Q(Q[9]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[7] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[0]),
        .Q(Q[8]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[8] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[15]),
        .Q(Q[7]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[9] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[14]),
        .Q(Q[6]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_ben_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BEN_STORE_GEN[2].BEN_REG [1]),
        .Q(mem_ben[0]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_ben_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BEN_STORE_GEN[2].BEN_REG [0]),
        .Q(mem_ben[1]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_ce_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Mem_CE_int),
        .Q(mem_ce),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_cen_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_CEN_cmb),
        .Q(mem_cen),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(mem_dq_o[7]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(mem_dq_o[13]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(mem_dq_o[12]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(mem_dq_o[11]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(mem_dq_o[10]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(mem_dq_o[9]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(mem_dq_o[8]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(mem_dq_o[6]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(mem_dq_o[5]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(mem_dq_o[4]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(mem_dq_o[3]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(mem_dq_o[2]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(mem_dq_o[1]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(mem_dq_o[0]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(mem_dq_o[15]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(mem_dq_o[14]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[7]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[13]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[12]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[11]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[10]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[9]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[8]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[6]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[5]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[4]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[3]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[2]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[1]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[0]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[15]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_dqt_t_d_reg),
        .Q(mem_dq_t[14]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_oen_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_OEN_cmb),
        .Q(mem_oen),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_qwen_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BEN_STORE_GEN[0].BEN_REG [1]),
        .Q(mem_qwen[0]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDSE \mem_qwen_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BEN_STORE_GEN[0].BEN_REG [0]),
        .Q(mem_qwen[1]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDRE mem_rnw_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_RNW_cmb),
        .Q(mem_rnw),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE mem_rpn_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(mem_rpn),
        .R(SR));
  (* IOB = "TRUE" *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE mem_wen_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_WEN_cmb),
        .Q(mem_wen_reg),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "ipic_if" *) 
module axi_em_ctrl_ipic_if
   (burst_cnt_i,
    ip2bus_rdack,
    pend_rdreq,
    pend_wrreq_reg_0,
    \FSM_sequential_crnt_state_reg[0] ,
    Bus2IP_RdReq_d1_reg,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ,
    rd_fifo_wr_en,
    pend_rdreq_reg_0,
    \s_axi_mem_rdata[7] ,
    ip2bus_addrack,
    S_0,
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    reset_fifo,
    CE,
    s_axi_aclk,
    SR,
    IP2Bus_RdAck0,
    bus2ip_burst_reg_reg,
    bus2ip_burst_reg_reg_0,
    bus2ip_wrreq_i,
    s_axi_mem_wvalid,
    out,
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ,
    single_transaction,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ,
    \FSM_sequential_crnt_state_reg[0]_0 ,
    \FSM_sequential_crnt_state_reg[3] ,
    next_state1,
    temp_bus2ip_cs,
    D);
  output [0:7]burst_cnt_i;
  output ip2bus_rdack;
  output pend_rdreq;
  output pend_wrreq_reg_0;
  output \FSM_sequential_crnt_state_reg[0] ;
  output Bus2IP_RdReq_d1_reg;
  output \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  output \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  output \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ;
  output rd_fifo_wr_en;
  output pend_rdreq_reg_0;
  output [31:0]\s_axi_mem_rdata[7] ;
  input ip2bus_addrack;
  input S_0;
  input \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  input reset_fifo;
  input CE;
  input s_axi_aclk;
  input [0:0]SR;
  input IP2Bus_RdAck0;
  input bus2ip_burst_reg_reg;
  input bus2ip_burst_reg_reg_0;
  input bus2ip_wrreq_i;
  input s_axi_mem_wvalid;
  input [0:0]out;
  input \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  input single_transaction;
  input \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ;
  input \FSM_sequential_crnt_state_reg[0]_0 ;
  input [0:0]\FSM_sequential_crnt_state_reg[3] ;
  input next_state1;
  input temp_bus2ip_cs;
  input [31:0]D;

  wire Bus2IP_RdReq_d1_reg;
  wire CE;
  wire [31:0]D;
  wire \FSM_sequential_crnt_state_reg[0] ;
  wire \FSM_sequential_crnt_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_crnt_state_reg[3] ;
  wire IP2Bus_RdAck0;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ;
  wire [0:0]SR;
  wire S_0;
  wire [0:7]burst_cnt_i;
  wire bus2ip_burst_reg_reg;
  wire bus2ip_burst_reg_reg_0;
  wire bus2ip_wrreq_i;
  wire ip2bus_addrack;
  wire ip2bus_rdack;
  wire next_state1;
  wire [0:0]out;
  wire pend_rdreq;
  wire pend_rdreq_reg_0;
  wire pend_wrreq_reg_0;
  wire rd_fifo_wr_en;
  wire reset_fifo;
  wire s_axi_aclk;
  wire [31:0]\s_axi_mem_rdata[7] ;
  wire s_axi_mem_wvalid;
  wire single_transaction;
  wire temp_bus2ip_cs;

  axi_em_ctrl_ld_arith_reg BURST_CNT
       (.CE(CE),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ),
        .S_0(S_0),
        .burst_cnt_i(burst_cnt_i),
        .ip2bus_addrack(ip2bus_addrack),
        .pend_rdreq_reg(pend_rdreq_reg_0),
        .reset_fifo(reset_fifo),
        .s_axi_aclk(s_axi_aclk));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Bus2IP_RdReq_d1_i_2
       (.I0(ip2bus_rdack),
        .I1(out),
        .O(Bus2IP_RdReq_d1_reg));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_crnt_state[0]_i_13 
       (.I0(pend_wrreq_reg_0),
        .I1(bus2ip_wrreq_i),
        .I2(s_axi_mem_wvalid),
        .O(\FSM_sequential_crnt_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \INFERRED_GEN.data_reg[255][0]_srl32_i_1 
       (.I0(ip2bus_rdack),
        .I1(temp_bus2ip_cs),
        .O(rd_fifo_wr_en));
  FDRE \IP2Bus_Data_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(\s_axi_mem_rdata[7] [31]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(\s_axi_mem_rdata[7] [21]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(\s_axi_mem_rdata[7] [20]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(\s_axi_mem_rdata[7] [19]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(\s_axi_mem_rdata[7] [18]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(\s_axi_mem_rdata[7] [17]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(\s_axi_mem_rdata[7] [16]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(\s_axi_mem_rdata[7] [15]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(\s_axi_mem_rdata[7] [14]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(\s_axi_mem_rdata[7] [13]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(\s_axi_mem_rdata[7] [12]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(\s_axi_mem_rdata[7] [30]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\s_axi_mem_rdata[7] [11]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\s_axi_mem_rdata[7] [10]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\s_axi_mem_rdata[7] [9]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\s_axi_mem_rdata[7] [8]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\s_axi_mem_rdata[7] [7]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\s_axi_mem_rdata[7] [6]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\s_axi_mem_rdata[7] [5]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\s_axi_mem_rdata[7] [4]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\s_axi_mem_rdata[7] [3]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\s_axi_mem_rdata[7] [2]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(\s_axi_mem_rdata[7] [29]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\s_axi_mem_rdata[7] [1]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\s_axi_mem_rdata[7] [0]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(\s_axi_mem_rdata[7] [28]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(\s_axi_mem_rdata[7] [27]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(\s_axi_mem_rdata[7] [26]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(\s_axi_mem_rdata[7] [25]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(\s_axi_mem_rdata[7] [24]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(\s_axi_mem_rdata[7] [23]),
        .R(SR));
  FDRE \IP2Bus_Data_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(\s_axi_mem_rdata[7] [22]),
        .R(SR));
  FDRE IP2Bus_RdAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_RdAck0),
        .Q(ip2bus_rdack),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000F7770000)) 
    \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_4 
       (.I0(pend_wrreq_reg_0),
        .I1(bus2ip_wrreq_i),
        .I2(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .I3(single_transaction),
        .I4(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .I5(\FSM_sequential_crnt_state_reg[0]_0 ),
        .O(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ));
  LUT6 #(
    .INIT(64'h00000080FFFFFFFF)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_41 
       (.I0(bus2ip_wrreq_i),
        .I1(pend_wrreq_reg_0),
        .I2(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .I3(single_transaction),
        .I4(next_state1),
        .I5(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_43 
       (.I0(s_axi_mem_wvalid),
        .I1(bus2ip_wrreq_i),
        .I2(pend_wrreq_reg_0),
        .I3(\FSM_sequential_crnt_state_reg[3] ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ));
  FDRE pend_rdreq_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_burst_reg_reg),
        .Q(pend_rdreq),
        .R(SR));
  FDRE pend_wrreq_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_burst_reg_reg_0),
        .Q(pend_wrreq_reg_0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module axi_em_ctrl_ld_arith_reg
   (burst_cnt_i,
    pend_rdreq_reg,
    ip2bus_addrack,
    S_0,
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    reset_fifo,
    CE,
    s_axi_aclk);
  output [0:7]burst_cnt_i;
  output pend_rdreq_reg;
  input ip2bus_addrack;
  input S_0;
  input \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  input reset_fifo;
  input CE;
  input s_axi_aclk;

  wire CE;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire S_0;
  wire [0:7]burst_cnt_i;
  wire [7:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_1;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire gen_cry_kill_n_4;
  wire gen_cry_kill_n_5;
  wire gen_cry_kill_n_6;
  wire ip2bus_addrack;
  wire pend_rdreq_i_4_n_0;
  wire pend_rdreq_reg;
  wire reset_fifo;
  wire s_axi_aclk;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire xorcy_out_5;
  wire xorcy_out_6;
  wire xorcy_out_7;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_7),
        .Q(burst_cnt_i[0]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_6),
        .Q(burst_cnt_i[1]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(burst_cnt_i[1]),
        .I1(ip2bus_addrack),
        .O(gen_cry_kill_n_6));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_5),
        .Q(burst_cnt_i[2]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(burst_cnt_i[2]),
        .I1(ip2bus_addrack),
        .O(gen_cry_kill_n_5));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_4),
        .Q(burst_cnt_i[3]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(burst_cnt_i[3]),
        .I1(ip2bus_addrack),
        .O(gen_cry_kill_n_4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[3].MUXCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED [3],cry[7:5]}),
        .CYINIT(1'b0),
        .DI({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED [3],gen_cry_kill_n_6,gen_cry_kill_n_5,gen_cry_kill_n_4}),
        .O({xorcy_out_7,xorcy_out_6,xorcy_out_5,xorcy_out_4}),
        .S({\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_3),
        .Q(burst_cnt_i[4]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(burst_cnt_i[4]),
        .I1(ip2bus_addrack),
        .O(gen_cry_kill_n_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[5].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_2),
        .Q(burst_cnt_i[5]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[5].MULT_AND_i1 
       (.I0(burst_cnt_i[5]),
        .I1(ip2bus_addrack),
        .O(gen_cry_kill_n_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[6].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_1),
        .Q(burst_cnt_i[6]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[6].MULT_AND_i1 
       (.I0(burst_cnt_i[6]),
        .I1(ip2bus_addrack),
        .O(gen_cry_kill_n_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_0),
        .Q(burst_cnt_i[7]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[7].MULT_AND_i1 
       (.I0(burst_cnt_i[7]),
        .I1(ip2bus_addrack),
        .O(gen_cry_kill_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[7].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry[4:1]),
        .CYINIT(ip2bus_addrack),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,gen_cry_kill_n_1,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,S_0}));
  LUT5 #(
    .INIT(32'h00000001)) 
    pend_rdreq_i_2
       (.I0(burst_cnt_i[3]),
        .I1(burst_cnt_i[2]),
        .I2(burst_cnt_i[1]),
        .I3(burst_cnt_i[0]),
        .I4(pend_rdreq_i_4_n_0),
        .O(pend_rdreq_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pend_rdreq_i_4
       (.I0(burst_cnt_i[4]),
        .I1(burst_cnt_i[5]),
        .I2(burst_cnt_i[7]),
        .I3(burst_cnt_i[6]),
        .O(pend_rdreq_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module axi_em_ctrl_ld_arith_reg__parameterized0
   (\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ,
    read_data_en_reg_reg,
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1] ,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ,
    read_data_en_reg_reg_0,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    \FSM_sequential_crnt_state_reg[0] ,
    \FSM_sequential_crnt_state_reg[1] ,
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ,
    \axi_trans_size_reg_reg[1] ,
    S_1,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    SR,
    CE,
    s_axi_aclk,
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ,
    bus2Mem_RdReq,
    bus2ip_wrreq_i,
    pend_wrreq_reg,
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ,
    bus2ip_rnw,
    temp_bus2ip_cs,
    CO,
    \FSM_sequential_crnt_state_reg[0]_0 ,
    tpacc_end,
    new_page_d1,
    read_break_reg);
  output \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ;
  output read_data_en_reg_reg;
  output \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1] ;
  output \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  output read_data_en_reg_reg_0;
  output \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  output \FSM_sequential_crnt_state_reg[0] ;
  output \FSM_sequential_crnt_state_reg[1] ;
  output \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ;
  output \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  input \axi_trans_size_reg_reg[1] ;
  input S_1;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  input [0:0]SR;
  input CE;
  input s_axi_aclk;
  input \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ;
  input bus2Mem_RdReq;
  input bus2ip_wrreq_i;
  input pend_wrreq_reg;
  input \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  input bus2ip_rnw;
  input temp_bus2ip_cs;
  input [0:0]CO;
  input \FSM_sequential_crnt_state_reg[0]_0 ;
  input tpacc_end;
  input new_page_d1;
  input read_break_reg;

  wire CE;
  wire [0:0]CO;
  wire \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1] ;
  wire \FSM_sequential_crnt_state_reg[0] ;
  wire \FSM_sequential_crnt_state_reg[0]_0 ;
  wire \FSM_sequential_crnt_state_reg[1] ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ;
  wire [0:0]SR;
  wire S_1;
  wire \axi_trans_size_reg_reg[1] ;
  wire bus2Mem_RdReq;
  wire bus2ip_rnw;
  wire bus2ip_wrreq_i;
  wire [1:1]cry;
  wire gen_cry_kill_n_0;
  wire new_page_d1;
  wire pend_wrreq_reg;
  wire read_break_reg;
  wire read_data_en_reg_reg;
  wire read_data_en_reg_reg_0;
  wire s_axi_aclk;
  wire temp_bus2ip_cs;
  wire tpacc_end;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire [3:1]\NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_DI_UNCONNECTED ;
  wire [3:2]\NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_S_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_7 
       (.I0(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ),
        .I1(bus2Mem_RdReq),
        .I2(read_data_en_reg_reg),
        .I3(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ),
        .O(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_crnt_state[1]_i_10 
       (.I0(read_data_en_reg_reg_0),
        .I1(tpacc_end),
        .I2(new_page_d1),
        .O(\FSM_sequential_crnt_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_crnt_state[1]_i_7 
       (.I0(bus2Mem_RdReq),
        .I1(read_data_en_reg_reg),
        .I2(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ),
        .O(\FSM_sequential_crnt_state_reg[0] ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_1),
        .Q(read_data_en_reg_reg),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_0),
        .Q(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_2 
       (.I0(bus2ip_wrreq_i),
        .I1(pend_wrreq_reg),
        .I2(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .I3(read_data_en_reg_reg),
        .I4(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ),
        .O(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ),
        .I1(\axi_trans_size_reg_reg[1] ),
        .O(gen_cry_kill_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    \PERBIT_GEN[1].MULT_AND_i1_i_3 
       (.I0(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ),
        .I1(read_data_en_reg_reg),
        .O(read_data_en_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \PERBIT_GEN[1].MULT_AND_i1_i_5 
       (.I0(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ),
        .I1(bus2Mem_RdReq),
        .I2(read_data_en_reg_reg),
        .I3(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ),
        .O(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[1].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_CO_UNCONNECTED [3:1],cry}),
        .CYINIT(\axi_trans_size_reg_reg[1] ),
        .DI({\NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_DI_UNCONNECTED [3:1],gen_cry_kill_n_0}),
        .O({\NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_O_UNCONNECTED [3:2],xorcy_out_1,xorcy_out_0}),
        .S({\NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_S_UNCONNECTED [3:2],\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,S_1}));
  LUT6 #(
    .INIT(64'h00000000FF7F0000)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__0 
       (.I0(bus2ip_rnw),
        .I1(temp_bus2ip_cs),
        .I2(CO),
        .I3(read_data_en_reg_reg_0),
        .I4(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ),
        .I5(\FSM_sequential_crnt_state_reg[0]_0 ),
        .O(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0111)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__0 
       (.I0(read_data_en_reg_reg),
        .I1(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ),
        .I2(pend_wrreq_reg),
        .I3(bus2ip_wrreq_i),
        .O(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_6 
       (.I0(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ),
        .I1(read_data_en_reg_reg),
        .I2(bus2Mem_RdReq),
        .I3(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ),
        .I4(read_break_reg),
        .O(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module axi_em_ctrl_ld_arith_reg__parameterized1
   (read_ack_reg_reg,
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ,
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ,
    read_ack_cmb,
    tpacc_end,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 ,
    SR,
    CE_13,
    s_axi_aclk,
    \FSM_sequential_crnt_state_reg[2] ,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ,
    bus2Mem_RdReq,
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ,
    \FSM_sequential_crnt_state_reg[0] );
  output read_ack_reg_reg;
  output \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ;
  output \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ;
  output read_ack_cmb;
  output tpacc_end;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 ;
  input [0:0]SR;
  input CE_13;
  input s_axi_aclk;
  input \FSM_sequential_crnt_state_reg[2] ;
  input \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ;
  input bus2Mem_RdReq;
  input \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ;
  input \FSM_sequential_crnt_state_reg[0] ;

  wire CE_13;
  wire \FSM_sequential_crnt_state_reg[0] ;
  wire \FSM_sequential_crnt_state_reg[2] ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[3].MUXCY_i1_i_2__1_n_0 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 ;
  wire \PERBIT_GEN[4].MULT_AND_i1_i_1__4_n_0 ;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ;
  wire S;
  wire [0:0]SR;
  wire bus2Mem_RdReq;
  wire [4:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire read_ack_cmb;
  wire read_ack_reg_reg;
  wire s_axi_aclk;
  wire [0:4]tpacc_cnt;
  wire tpacc_end;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_13),
        .D(xorcy_out_4),
        .Q(tpacc_cnt[0]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[0].XORCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED [3:1],xorcy_out_4}),
        .S({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED [3:1],\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg }));
  LUT6 #(
    .INIT(64'h0000000055555554)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__3 
       (.I0(\FSM_sequential_crnt_state_reg[2] ),
        .I1(tpacc_cnt[1]),
        .I2(read_ack_reg_reg),
        .I3(tpacc_cnt[2]),
        .I4(tpacc_cnt[4]),
        .I5(tpacc_cnt[0]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_13),
        .D(xorcy_out_3),
        .Q(tpacc_cnt[1]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(tpacc_cnt[1]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__4_n_0 ),
        .O(gen_cry_kill_n_3));
  LUT5 #(
    .INIT(32'h00000001)) 
    \PERBIT_GEN[1].MULT_AND_i1_i_4 
       (.I0(tpacc_cnt[1]),
        .I1(read_ack_reg_reg),
        .I2(tpacc_cnt[2]),
        .I3(tpacc_cnt[0]),
        .I4(tpacc_cnt[4]),
        .O(tpacc_end));
  LUT6 #(
    .INIT(64'h0000000055555554)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__3 
       (.I0(\FSM_sequential_crnt_state_reg[2] ),
        .I1(read_ack_reg_reg),
        .I2(tpacc_cnt[2]),
        .I3(tpacc_cnt[0]),
        .I4(tpacc_cnt[4]),
        .I5(tpacc_cnt[1]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_13),
        .D(xorcy_out_2),
        .Q(tpacc_cnt[2]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(tpacc_cnt[2]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__4_n_0 ),
        .O(gen_cry_kill_n_2));
  LUT6 #(
    .INIT(64'h0000000055555554)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__2 
       (.I0(\FSM_sequential_crnt_state_reg[2] ),
        .I1(tpacc_cnt[1]),
        .I2(read_ack_reg_reg),
        .I3(tpacc_cnt[0]),
        .I4(tpacc_cnt[4]),
        .I5(tpacc_cnt[2]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_13),
        .D(xorcy_out_1),
        .Q(read_ack_reg_reg),
        .S(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[3].MUXCY_i1_i_2__1 
       (.I0(read_ack_reg_reg),
        .I1(\FSM_sequential_crnt_state_reg[2] ),
        .O(\PERBIT_GEN[3].MUXCY_i1_i_2__1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_13),
        .D(xorcy_out_0),
        .Q(tpacc_cnt[4]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(tpacc_cnt[4]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__4_n_0 ),
        .O(gen_cry_kill_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_1__4 
       (.I0(tpacc_cnt[4]),
        .I1(tpacc_cnt[0]),
        .I2(tpacc_cnt[2]),
        .I3(read_ack_reg_reg),
        .I4(tpacc_cnt[1]),
        .I5(\FSM_sequential_crnt_state_reg[2] ),
        .O(\PERBIT_GEN[4].MULT_AND_i1_i_1__4_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[4].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry),
        .CYINIT(\PERBIT_GEN[4].MULT_AND_i1_i_1__4_n_0 ),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,\PERBIT_GEN[3].MUXCY_i1_i_2__1_n_0 ,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 ,S}));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAB)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1__2 
       (.I0(\FSM_sequential_crnt_state_reg[2] ),
        .I1(tpacc_cnt[1]),
        .I2(read_ack_reg_reg),
        .I3(tpacc_cnt[2]),
        .I4(tpacc_cnt[0]),
        .I5(tpacc_cnt[4]),
        .O(S));
  LUT2 #(
    .INIT(4'h2)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_3 
       (.I0(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ),
        .I1(bus2Mem_RdReq),
        .O(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_8 
       (.I0(tpacc_cnt[4]),
        .I1(tpacc_cnt[0]),
        .I2(tpacc_cnt[2]),
        .I3(read_ack_reg_reg),
        .I4(tpacc_cnt[1]),
        .I5(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .O(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE ));
  LUT6 #(
    .INIT(64'h0808FF0800000000)) 
    read_ack_reg_i_1
       (.I0(bus2Mem_RdReq),
        .I1(tpacc_end),
        .I2(\FSM_sequential_crnt_state_reg[2] ),
        .I3(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .I4(\FSM_sequential_crnt_state_reg[0] ),
        .I5(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .O(read_ack_cmb));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module axi_em_ctrl_ld_arith_reg__parameterized1_1
   (trd_cnt,
    addr_cnt_ce_cmb61_out,
    read_ack_reg_reg,
    trd_cnt_en,
    S_6,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10 ,
    SR,
    CE_11,
    s_axi_aclk,
    bus2Mem_RdReq,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ,
    CO,
    temp_bus2ip_cs,
    bus2ip_rnw);
  output [0:4]trd_cnt;
  output addr_cnt_ce_cmb61_out;
  output read_ack_reg_reg;
  input trd_cnt_en;
  input S_6;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7 ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8 ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9 ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10 ;
  input [0:0]SR;
  input CE_11;
  input s_axi_aclk;
  input bus2Mem_RdReq;
  input \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ;
  input [0:0]CO;
  input temp_bus2ip_cs;
  input bus2ip_rnw;

  wire CE_11;
  wire [0:0]CO;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10 ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8 ;
  wire \PERBIT_GEN[3].MUXCY_i1_i_2_n_0 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7 ;
  wire [0:0]SR;
  wire S_6;
  wire addr_cnt_ce_cmb61_out;
  wire bus2Mem_RdReq;
  wire bus2ip_rnw;
  wire [4:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire read_ack_reg_reg;
  wire s_axi_aclk;
  wire temp_bus2ip_cs;
  wire [0:4]trd_cnt;
  wire trd_cnt_en;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0888888888888888)) 
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_3 
       (.I0(read_ack_reg_reg),
        .I1(bus2Mem_RdReq),
        .I2(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .I3(CO),
        .I4(temp_bus2ip_cs),
        .I5(bus2ip_rnw),
        .O(addr_cnt_ce_cmb61_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_11),
        .D(xorcy_out_4),
        .Q(trd_cnt[0]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[0].XORCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED [3:1],xorcy_out_4}),
        .S({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED [3:1],\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_11),
        .D(xorcy_out_3),
        .Q(trd_cnt[1]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(trd_cnt[1]),
        .I1(trd_cnt_en),
        .O(gen_cry_kill_n_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_11),
        .D(xorcy_out_2),
        .Q(trd_cnt[2]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(trd_cnt[2]),
        .I1(trd_cnt_en),
        .O(gen_cry_kill_n_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_11),
        .D(xorcy_out_1),
        .Q(trd_cnt[3]),
        .S(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MUXCY_i1_i_2 
       (.I0(trd_cnt[3]),
        .I1(trd_cnt_en),
        .O(\PERBIT_GEN[3].MUXCY_i1_i_2_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_11),
        .D(xorcy_out_0),
        .Q(trd_cnt[4]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(trd_cnt[4]),
        .I1(trd_cnt_en),
        .O(gen_cry_kill_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_2__0 
       (.I0(trd_cnt[3]),
        .I1(trd_cnt[4]),
        .I2(trd_cnt[1]),
        .I3(trd_cnt[0]),
        .I4(trd_cnt[2]),
        .O(read_ack_reg_reg));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[4].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry),
        .CYINIT(trd_cnt_en),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,\PERBIT_GEN[3].MUXCY_i1_i_2_n_0 ,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9 ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8 ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7 ,S_6}));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module axi_em_ctrl_ld_arith_reg__parameterized1_3
   (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    twr_end,
    twr_cnt_en,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    SR,
    CE,
    s_axi_aclk);
  output [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  output twr_end;
  input twr_cnt_en;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  input [0:0]SR;
  input CE;
  input s_axi_aclk;

  wire CE;
  wire [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire S;
  wire [0:0]SR;
  wire [4:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_1;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire [4:4]p_0_in;
  wire s_axi_aclk;
  wire twr_cnt_en;
  wire twr_end;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_4),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [3]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[0].XORCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED [3:1],xorcy_out_4}),
        .S({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED [3:1],\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_3),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [2]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [2]),
        .I1(twr_cnt_en),
        .O(gen_cry_kill_n_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_2),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [1]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [1]),
        .I1(twr_cnt_en),
        .O(gen_cry_kill_n_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_1),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [0]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [0]),
        .I1(twr_cnt_en),
        .O(gen_cry_kill_n_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_0),
        .Q(p_0_in),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(p_0_in),
        .I1(twr_cnt_en),
        .O(gen_cry_kill_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_2__1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [2]),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [0]),
        .I2(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [1]),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [3]),
        .I4(p_0_in),
        .O(twr_end));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[4].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry),
        .CYINIT(twr_cnt_en),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,gen_cry_kill_n_1,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,S}));
  LUT2 #(
    .INIT(4'hB)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1__3 
       (.I0(p_0_in),
        .I1(twr_cnt_en),
        .O(S));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module axi_em_ctrl_ld_arith_reg__parameterized2
   (transaction_done_reg_reg,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ,
    SR,
    CE_15,
    s_axi_aclk,
    pend_wrreq_reg,
    bus2ip_wrreq_i,
    temp_bus2ip_cs,
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ,
    bus2Mem_RdReq,
    bus2Mem_WrReq);
  output transaction_done_reg_reg;
  output \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  input [0:0]SR;
  input CE_15;
  input s_axi_aclk;
  input pend_wrreq_reg;
  input bus2ip_wrreq_i;
  input temp_bus2ip_cs;
  input \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ;
  input bus2Mem_RdReq;
  input bus2Mem_WrReq;

  wire CE_15;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0 ;
  wire S;
  wire [0:0]SR;
  wire bus2Mem_RdReq;
  wire bus2Mem_WrReq;
  wire bus2ip_wrreq_i;
  wire [4:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_1;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire pend_wrreq_reg;
  wire s_axi_aclk;
  wire temp_bus2ip_cs;
  wire [0:4]thz_cnt;
  wire transaction_done_reg_reg;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_15),
        .D(xorcy_out_4),
        .Q(thz_cnt[0]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[0].XORCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED [3:1],xorcy_out_4}),
        .S({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED [3:1],\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg }));
  LUT5 #(
    .INIT(32'h33333332)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__5 
       (.I0(thz_cnt[4]),
        .I1(thz_cnt[0]),
        .I2(thz_cnt[1]),
        .I3(thz_cnt[3]),
        .I4(thz_cnt[2]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_15),
        .D(xorcy_out_3),
        .Q(thz_cnt[1]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(thz_cnt[1]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0 ),
        .O(gen_cry_kill_n_3));
  LUT5 #(
    .INIT(32'h0F0F0F0E)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__5 
       (.I0(thz_cnt[4]),
        .I1(thz_cnt[0]),
        .I2(thz_cnt[1]),
        .I3(thz_cnt[3]),
        .I4(thz_cnt[2]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_15),
        .D(xorcy_out_2),
        .Q(thz_cnt[2]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(thz_cnt[2]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0 ),
        .O(gen_cry_kill_n_2));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__4 
       (.I0(thz_cnt[4]),
        .I1(thz_cnt[0]),
        .I2(thz_cnt[1]),
        .I3(thz_cnt[3]),
        .I4(thz_cnt[2]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_15),
        .D(xorcy_out_1),
        .Q(thz_cnt[3]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(thz_cnt[3]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0 ),
        .O(gen_cry_kill_n_1));
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__3 
       (.I0(thz_cnt[4]),
        .I1(thz_cnt[0]),
        .I2(thz_cnt[1]),
        .I3(thz_cnt[3]),
        .I4(thz_cnt[2]),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_15),
        .D(xorcy_out_0),
        .Q(thz_cnt[4]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000001)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_3 
       (.I0(thz_cnt[2]),
        .I1(thz_cnt[3]),
        .I2(thz_cnt[1]),
        .I3(thz_cnt[0]),
        .I4(thz_cnt[4]),
        .O(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(thz_cnt[4]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0 ),
        .O(gen_cry_kill_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_1__2 
       (.I0(thz_cnt[4]),
        .I1(thz_cnt[0]),
        .I2(thz_cnt[1]),
        .I3(thz_cnt[3]),
        .I4(thz_cnt[2]),
        .O(\PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[4].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry),
        .CYINIT(\PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0 ),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,gen_cry_kill_n_1,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,S}));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1__4 
       (.I0(thz_cnt[4]),
        .I1(thz_cnt[0]),
        .I2(thz_cnt[1]),
        .I3(thz_cnt[3]),
        .I4(thz_cnt[2]),
        .O(S));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \mem_a_int[31]_i_2 
       (.I0(thz_cnt[4]),
        .I1(thz_cnt[0]),
        .I2(thz_cnt[1]),
        .I3(thz_cnt[3]),
        .I4(thz_cnt[2]),
        .I5(bus2Mem_WrReq),
        .O(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ));
  LUT6 #(
    .INIT(64'h00FF7FFF7FFF7FFF)) 
    transaction_done_reg_i_2
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(pend_wrreq_reg),
        .I2(bus2ip_wrreq_i),
        .I3(temp_bus2ip_cs),
        .I4(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ),
        .I5(bus2Mem_RdReq),
        .O(transaction_done_reg_reg));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module axi_em_ctrl_ld_arith_reg__parameterized2_0
   (\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ,
    SR,
    CE_5,
    s_axi_aclk,
    temp_bus2ip_cs);
  output \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  output \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  input [0:0]SR;
  input CE_5;
  input s_axi_aclk;
  input temp_bus2ip_cs;

  wire CE_5;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  wire S;
  wire [0:0]SR;
  wire [4:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_1;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire s_axi_aclk;
  wire temp_bus2ip_cs;
  wire [0:4]tlz_cnt;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_5),
        .D(xorcy_out_4),
        .Q(tlz_cnt[0]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[0].XORCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED [3:1],xorcy_out_4}),
        .S({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED [3:1],\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg }));
  LUT5 #(
    .INIT(32'h33333332)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__6 
       (.I0(tlz_cnt[4]),
        .I1(tlz_cnt[0]),
        .I2(tlz_cnt[1]),
        .I3(tlz_cnt[3]),
        .I4(tlz_cnt[2]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_5),
        .D(xorcy_out_3),
        .Q(tlz_cnt[1]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(tlz_cnt[1]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0 ),
        .O(gen_cry_kill_n_3));
  LUT5 #(
    .INIT(32'h0F0F0F0E)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__6 
       (.I0(tlz_cnt[4]),
        .I1(tlz_cnt[0]),
        .I2(tlz_cnt[1]),
        .I3(tlz_cnt[3]),
        .I4(tlz_cnt[2]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_5),
        .D(xorcy_out_2),
        .Q(tlz_cnt[2]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(tlz_cnt[2]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0 ),
        .O(gen_cry_kill_n_2));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__5 
       (.I0(tlz_cnt[4]),
        .I1(tlz_cnt[0]),
        .I2(tlz_cnt[1]),
        .I3(tlz_cnt[3]),
        .I4(tlz_cnt[2]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_5),
        .D(xorcy_out_1),
        .Q(tlz_cnt[3]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(tlz_cnt[3]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0 ),
        .O(gen_cry_kill_n_1));
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__4 
       (.I0(tlz_cnt[4]),
        .I1(tlz_cnt[0]),
        .I2(tlz_cnt[1]),
        .I3(tlz_cnt[3]),
        .I4(tlz_cnt[2]),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_5),
        .D(xorcy_out_0),
        .Q(tlz_cnt[4]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000001)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2__0 
       (.I0(tlz_cnt[2]),
        .I1(tlz_cnt[3]),
        .I2(tlz_cnt[1]),
        .I3(tlz_cnt[0]),
        .I4(tlz_cnt[4]),
        .O(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(tlz_cnt[4]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0 ),
        .O(gen_cry_kill_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_1__3 
       (.I0(tlz_cnt[4]),
        .I1(tlz_cnt[0]),
        .I2(tlz_cnt[1]),
        .I3(tlz_cnt[3]),
        .I4(tlz_cnt[2]),
        .O(\PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[4].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry),
        .CYINIT(\PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0 ),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,gen_cry_kill_n_1,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,S}));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1__5 
       (.I0(tlz_cnt[4]),
        .I1(tlz_cnt[0]),
        .I2(tlz_cnt[1]),
        .I3(tlz_cnt[3]),
        .I4(tlz_cnt[2]),
        .O(S));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_42 
       (.I0(temp_bus2ip_cs),
        .I1(tlz_cnt[4]),
        .I2(tlz_cnt[0]),
        .I3(tlz_cnt[1]),
        .I4(tlz_cnt[3]),
        .I5(tlz_cnt[2]),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module axi_em_ctrl_ld_arith_reg__parameterized2_2
   (\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ,
    \FSM_sequential_crnt_state_reg[1] ,
    Write_req_data_ack_cmb13_out,
    \DATA_STORE_GEN[0].WRDATA_REG ,
    cycle_cnt_en_cmb58_out,
    twph_cnt_en,
    S,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 ,
    SR,
    CE_4,
    s_axi_aclk,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    bus2ip_wrreq_i,
    pend_wrreq_reg,
    last_addr1);
  output \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  output \FSM_sequential_crnt_state_reg[1] ;
  output Write_req_data_ack_cmb13_out;
  output \DATA_STORE_GEN[0].WRDATA_REG ;
  output cycle_cnt_en_cmb58_out;
  input twph_cnt_en;
  input S;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 ;
  input [0:0]SR;
  input CE_4;
  input s_axi_aclk;
  input \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  input bus2ip_wrreq_i;
  input pend_wrreq_reg;
  input last_addr1;

  wire CE_4;
  wire \DATA_STORE_GEN[0].WRDATA_REG ;
  wire \FSM_sequential_crnt_state_reg[1] ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ;
  wire \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ;
  wire \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[3].MUXCY_i1_i_2__0_n_0 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ;
  wire \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ;
  wire S;
  wire [0:0]SR;
  wire Write_req_data_ack_cmb13_out;
  wire bus2ip_wrreq_i;
  wire [4:1]cry;
  wire cycle_cnt_en_cmb58_out;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire last_addr1;
  wire pend_wrreq_reg;
  wire s_axi_aclk;
  wire twph_cnt_en;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hA3330000A0000000)) 
    \ADDRESS_STORE_GEN[0].ADDRESS_REG_i_2 
       (.I0(\DATA_STORE_GEN[0].WRDATA_REG ),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I2(bus2ip_wrreq_i),
        .I3(pend_wrreq_reg),
        .I4(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 ),
        .I5(last_addr1),
        .O(Write_req_data_ack_cmb13_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FSM_sequential_crnt_state[1]_i_8 
       (.I0(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 ),
        .I1(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .I3(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ),
        .I4(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ),
        .I5(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ),
        .O(\FSM_sequential_crnt_state_reg[1] ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_4),
        .D(xorcy_out_4),
        .Q(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[0].XORCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED [3:1],xorcy_out_4}),
        .S({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED [3:1],\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_4),
        .D(xorcy_out_3),
        .Q(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(twph_cnt_en),
        .O(gen_cry_kill_n_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_4),
        .D(xorcy_out_2),
        .Q(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(twph_cnt_en),
        .O(gen_cry_kill_n_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_4),
        .D(xorcy_out_1),
        .Q(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MUXCY_i1_i_2__0 
       (.I0(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(twph_cnt_en),
        .O(\PERBIT_GEN[3].MUXCY_i1_i_2__0_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_4),
        .D(xorcy_out_0),
        .Q(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(twph_cnt_en),
        .O(gen_cry_kill_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_4 
       (.I0(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ),
        .I3(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .I4(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ),
        .O(\DATA_STORE_GEN[0].WRDATA_REG ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[4].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry),
        .CYINIT(twph_cnt_en),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,\PERBIT_GEN[3].MUXCY_i1_i_2__0_n_0 ,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ,S}));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_40 
       (.I0(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ),
        .I3(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ),
        .I4(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ),
        .I5(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 ),
        .O(cycle_cnt_en_cmb58_out));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module axi_em_ctrl_ld_arith_reg__parameterized3
   (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    \FSM_sequential_crnt_state_reg[3] ,
    twr_rec_end_int,
    twr_rec_cnt_en_int,
    \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ,
    SR,
    CE_14,
    s_axi_aclk,
    out);
  output [14:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  output \FSM_sequential_crnt_state_reg[3] ;
  output twr_rec_end_int;
  input twr_rec_cnt_en_int;
  input \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  input [0:0]SR;
  input CE_14;
  input s_axi_aclk;
  input [0:0]out;

  wire CE_14;
  wire \FSM_sequential_crnt_state_reg[3] ;
  wire [14:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  wire \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[14].MUXCY_i1_i_2_n_0 ;
  wire \PERBIT_GEN[15].MULT_AND_i1_i_4_n_0 ;
  wire \PERBIT_GEN[15].MULT_AND_i1_i_5_n_0 ;
  wire \PERBIT_GEN[15].MULT_AND_i1_i_6_n_0 ;
  wire \PERBIT_GEN[15].MUXCY_i1_i_1_n_0 ;
  wire \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1_0 ;
  wire [0:0]SR;
  wire [15:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_10;
  wire gen_cry_kill_n_11;
  wire gen_cry_kill_n_12;
  wire gen_cry_kill_n_13;
  wire gen_cry_kill_n_14;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire gen_cry_kill_n_4;
  wire gen_cry_kill_n_5;
  wire gen_cry_kill_n_6;
  wire gen_cry_kill_n_7;
  wire gen_cry_kill_n_8;
  wire gen_cry_kill_n_9;
  wire [0:0]out;
  wire s_axi_aclk;
  wire [15:15]twr_rec_cnt;
  wire twr_rec_cnt_en_int;
  wire twr_rec_end_int;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_10;
  wire xorcy_out_11;
  wire xorcy_out_12;
  wire xorcy_out_13;
  wire xorcy_out_14;
  wire xorcy_out_15;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire xorcy_out_5;
  wire xorcy_out_6;
  wire xorcy_out_7;
  wire xorcy_out_8;
  wire xorcy_out_9;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_crnt_state[3]_i_8 
       (.I0(twr_rec_end_int),
        .I1(out),
        .O(\FSM_sequential_crnt_state_reg[3] ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_15),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [14]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_5),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [4]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[10].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [4]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_5));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_4),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [3]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[11].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [3]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[11].MUXCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(cry[8:5]),
        .CYINIT(1'b0),
        .DI({gen_cry_kill_n_7,gen_cry_kill_n_6,gen_cry_kill_n_5,gen_cry_kill_n_4}),
        .O({xorcy_out_7,xorcy_out_6,xorcy_out_5,xorcy_out_4}),
        .S({\PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1_0 ,\PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1_0 ,\PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1_0 ,\PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_3),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [2]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[12].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [2]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_2),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [1]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[13].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [1]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_1),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [0]),
        .S(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[14].MUXCY_i1_i_2 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [0]),
        .I1(twr_rec_cnt_en_int),
        .O(\PERBIT_GEN[14].MUXCY_i1_i_2_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_0),
        .Q(twr_rec_cnt),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[15].MULT_AND_i1 
       (.I0(twr_rec_cnt),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \PERBIT_GEN[15].MULT_AND_i1_i_3 
       (.I0(\PERBIT_GEN[15].MULT_AND_i1_i_4_n_0 ),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [14]),
        .I2(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [13]),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [11]),
        .I4(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [12]),
        .I5(\PERBIT_GEN[15].MULT_AND_i1_i_5_n_0 ),
        .O(twr_rec_end_int));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PERBIT_GEN[15].MULT_AND_i1_i_4 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [9]),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [10]),
        .I2(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [7]),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [8]),
        .O(\PERBIT_GEN[15].MULT_AND_i1_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \PERBIT_GEN[15].MULT_AND_i1_i_5 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [4]),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [3]),
        .I2(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [6]),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [5]),
        .I4(\PERBIT_GEN[15].MULT_AND_i1_i_6_n_0 ),
        .O(\PERBIT_GEN[15].MULT_AND_i1_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PERBIT_GEN[15].MULT_AND_i1_i_6 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [1]),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [2]),
        .I2(twr_rec_cnt),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [0]),
        .O(\PERBIT_GEN[15].MULT_AND_i1_i_6_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[15].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry[4:1]),
        .CYINIT(twr_rec_cnt_en_int),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,\PERBIT_GEN[14].MUXCY_i1_i_2_n_0 ,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1_0 ,\PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0 ,\PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1_0 ,\PERBIT_GEN[15].MUXCY_i1_i_1_n_0 }));
  LUT2 #(
    .INIT(4'hB)) 
    \PERBIT_GEN[15].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt),
        .I1(twr_rec_cnt_en_int),
        .O(\PERBIT_GEN[15].MUXCY_i1_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_14),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [13]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [13]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_14));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_13),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [12]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [12]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_13));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_12),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [11]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [11]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_12));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[3].MUXCY_i1_CARRY4 
       (.CI(cry[12]),
        .CO({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED [3],cry[15:13]}),
        .CYINIT(1'b0),
        .DI({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED [3],gen_cry_kill_n_14,gen_cry_kill_n_13,gen_cry_kill_n_12}),
        .O({xorcy_out_15,xorcy_out_14,xorcy_out_13,xorcy_out_12}),
        .S({\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ,\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ,\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ,\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_11),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [10]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [10]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_11));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_10),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [9]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[5].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [9]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_10));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_9),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [8]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[6].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [8]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_9));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_8),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [7]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[7].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [7]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_8));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[7].MUXCY_i1_CARRY4 
       (.CI(cry[8]),
        .CO(cry[12:9]),
        .CYINIT(1'b0),
        .DI({gen_cry_kill_n_11,gen_cry_kill_n_10,gen_cry_kill_n_9,gen_cry_kill_n_8}),
        .O({xorcy_out_11,xorcy_out_10,xorcy_out_9,xorcy_out_8}),
        .S({\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ,\PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1_0 ,\PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1_0 ,\PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_7),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [6]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[8].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [6]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_7));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_14),
        .D(xorcy_out_6),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [5]),
        .S(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[9].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [5]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_6));
endmodule

(* ORIG_REF_NAME = "mem_state_machine" *) 
module axi_em_ctrl_mem_state_machine
   (out,
    Bus2IP_Mem_CS_d2_reg_0,
    transaction_done_i,
    read_break_reg,
    new_page_d1,
    read_data_en,
    read_ack,
    \s_axi_mem_bid_reg_reg[3] ,
    transaction_complete_reg_reg_0,
    \mem_a_int_reg[31] ,
    \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ,
    twr_rec_cnt_en_int,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 ,
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ,
    Mem_CE_int,
    \FSM_sequential_emc_addr_ps_reg[0] ,
    Write_req_data_ack_cmb,
    \FSM_sequential_emc_addr_ps_reg[2] ,
    enable_cs_cmb0,
    enable_cs_cmb126_out,
    Write_req_addr_ack_cmb,
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ,
    data_strobe_c,
    read_data_en_reg_reg_0,
    read_req_ack_cmb,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ,
    addr_cnt_rst,
    addr_cnt_ce,
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0 ,
    mem_OEN_cmb,
    mem_CEN_cmb,
    trd_cnt_en,
    \FSM_sequential_crnt_state_reg[1]_0 ,
    next_state1,
    mem_WEN_cmb,
    mem_RNW_cmb,
    twph_cnt_en,
    twr_cnt_en,
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ,
    CE,
    CE_0,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    S,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1 ,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,
    CE_2,
    \mem_dq_t_reg_reg[0] ,
    CE_3,
    CE_4,
    S_5,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_9 ,
    CE_10,
    CE_11,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_13 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_14 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_15 ,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16 ,
    CE_17,
    SR,
    s_axi_aclk,
    temp_bus2ip_cs,
    bus2Mem_RdReq,
    read_ack_cmb,
    s_axi_mem_wvalid,
    s_axi_mem_awvalid,
    s_axi_mem_arvalid,
    rw_flag_reg,
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    twr_rec_end_int,
    Bus2IP_RdReq_emc,
    \FSM_sequential_emc_addr_ps_reg[0]_0 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    bus2Mem_WrReq,
    single_transaction,
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ,
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ,
    Write_req_data_ack_cmb13_out,
    \burstlength_reg_reg[4] ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ,
    twr_end,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 ,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ,
    rnw_reg_reg,
    new_page_d1_reg_0,
    pend_wrreq_reg,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 ,
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ,
    new_page_access,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_6 ,
    bus2ip_wr_req_reg_reg,
    next_state181_out,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ,
    bus2ip_wrreq_i,
    pend_wrreq_reg_0,
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ,
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2 ,
    read_req_ack_cmb44_out,
    tpacc_end,
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1 ,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3 ,
    \FSM_sequential_crnt_state_reg[3]_0 ,
    pend_wrreq_reg_1,
    bus2ip_wr_req_reg_reg_0,
    bus2ip_wr_req_reg_reg_1,
    pend_rdreq,
    rdce_out_i,
    rst_rdce_cmb,
    cycle_cnt,
    \axi_trans_size_reg_reg[1] ,
    trd_cnt,
    rnw_reg_reg_0,
    mem_dqt_t_d,
    twph_cnt,
    s_axi_mem_awburst,
    s_axi_mem_arburst,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ,
    s_axi_mem_wlast,
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_1 ,
    pend_wrreq_reg_2);
  output [0:0]out;
  output [0:0]Bus2IP_Mem_CS_d2_reg_0;
  output transaction_done_i;
  output read_break_reg;
  output new_page_d1;
  output read_data_en;
  output read_ack;
  output \s_axi_mem_bid_reg_reg[3] ;
  output transaction_complete_reg_reg_0;
  output \mem_a_int_reg[31] ;
  output \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ;
  output twr_rec_cnt_en_int;
  output \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 ;
  output \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ;
  output Mem_CE_int;
  output \FSM_sequential_emc_addr_ps_reg[0] ;
  output Write_req_data_ack_cmb;
  output \FSM_sequential_emc_addr_ps_reg[2] ;
  output enable_cs_cmb0;
  output enable_cs_cmb126_out;
  output Write_req_addr_ack_cmb;
  output \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ;
  output data_strobe_c;
  output read_data_en_reg_reg_0;
  output read_req_ack_cmb;
  output [0:0]\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  output addr_cnt_rst;
  output addr_cnt_ce;
  output \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0 ;
  output mem_OEN_cmb;
  output mem_CEN_cmb;
  output trd_cnt_en;
  output \FSM_sequential_crnt_state_reg[1]_0 ;
  output next_state1;
  output mem_WEN_cmb;
  output mem_RNW_cmb;
  output twph_cnt_en;
  output twr_cnt_en;
  output [0:0]\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ;
  output CE;
  output CE_0;
  output \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  output S;
  output \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1 ;
  output \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  output CE_2;
  output [0:0]\mem_dq_t_reg_reg[0] ;
  output CE_3;
  output CE_4;
  output S_5;
  output \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ;
  output \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ;
  output \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_9 ;
  output CE_10;
  output CE_11;
  output \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 ;
  output \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_13 ;
  output \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_14 ;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_15 ;
  output \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16 ;
  output CE_17;
  input [0:0]SR;
  input s_axi_aclk;
  input temp_bus2ip_cs;
  input bus2Mem_RdReq;
  input read_ack_cmb;
  input s_axi_mem_wvalid;
  input s_axi_mem_awvalid;
  input s_axi_mem_arvalid;
  input rw_flag_reg;
  input \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ;
  input [14:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  input twr_rec_end_int;
  input Bus2IP_RdReq_emc;
  input [0:0]\FSM_sequential_emc_addr_ps_reg[0]_0 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  input bus2Mem_WrReq;
  input single_transaction;
  input \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  input \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  input \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ;
  input Write_req_data_ack_cmb13_out;
  input \burstlength_reg_reg[4] ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ;
  input twr_end;
  input \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 ;
  input \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 ;
  input \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  input rnw_reg_reg;
  input new_page_d1_reg_0;
  input pend_wrreq_reg;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 ;
  input \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ;
  input new_page_access;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_6 ;
  input bus2ip_wr_req_reg_reg;
  input next_state181_out;
  input \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ;
  input bus2ip_wrreq_i;
  input pend_wrreq_reg_0;
  input \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ;
  input \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ;
  input \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2 ;
  input read_req_ack_cmb44_out;
  input tpacc_end;
  input \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1 ;
  input \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3 ;
  input \FSM_sequential_crnt_state_reg[3]_0 ;
  input pend_wrreq_reg_1;
  input bus2ip_wr_req_reg_reg_0;
  input bus2ip_wr_req_reg_reg_1;
  input pend_rdreq;
  input rdce_out_i;
  input rst_rdce_cmb;
  input [0:0]cycle_cnt;
  input [0:0]\axi_trans_size_reg_reg[1] ;
  input [0:4]trd_cnt;
  input rnw_reg_reg_0;
  input mem_dqt_t_d;
  input [0:4]twph_cnt;
  input [1:0]s_axi_mem_awburst;
  input [1:0]s_axi_mem_arburst;
  input [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  input s_axi_mem_wlast;
  input [0:0]\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_1 ;
  input pend_wrreq_reg_2;

  wire [0:0]Bus2IP_Mem_CS_d2_reg_0;
  wire Bus2IP_RdReq_d1;
  wire Bus2IP_RdReq_emc;
  wire CE;
  wire CE_0;
  wire CE_10;
  wire CE_11;
  wire CE_17;
  wire CE_2;
  wire CE_3;
  wire CE_4;
  wire \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_5_n_0 ;
  wire \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_6_n_0 ;
  wire \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ;
  wire \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0 ;
  wire \FSM_sequential_crnt_state[0]_i_10_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_11_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_12_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_14_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_15_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_1_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_3_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_4_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_5_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_7_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_8_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_11_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_12_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_13_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_14_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_1_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_2_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_3_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_4_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_5_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_6_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_9_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_1_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_3_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_4_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_5_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_6_n_0 ;
  wire \FSM_sequential_crnt_state[3]_i_1_n_0 ;
  wire \FSM_sequential_crnt_state[3]_i_2_n_0 ;
  wire \FSM_sequential_crnt_state[3]_i_3_n_0 ;
  wire \FSM_sequential_crnt_state[3]_i_5_n_0 ;
  wire \FSM_sequential_crnt_state[3]_i_6_n_0 ;
  wire \FSM_sequential_crnt_state[3]_i_7_n_0 ;
  wire \FSM_sequential_crnt_state[4]_i_1_n_0 ;
  wire \FSM_sequential_crnt_state_reg[1]_0 ;
  wire \FSM_sequential_crnt_state_reg[3]_0 ;
  wire \FSM_sequential_emc_addr_ps_reg[0] ;
  wire [0:0]\FSM_sequential_emc_addr_ps_reg[0]_0 ;
  wire \FSM_sequential_emc_addr_ps_reg[2] ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_6 ;
  wire Mem_CE_int;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2 ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  wire [14:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_15 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ;
  wire \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_3_n_0 ;
  wire \PERBIT_GEN[15].MULT_AND_i1_i_2_n_0 ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3_n_0 ;
  wire \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[1].MULT_AND_i1_i_2_n_0 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_14 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ;
  wire \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1 ;
  wire \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_13 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ;
  wire \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ;
  wire [0:0]\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_1 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_9 ;
  wire \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2_n_0 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5_n_0 ;
  wire \PERBIT_GEN[4].MULT_AND_i1_i_2_n_0 ;
  wire \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[7].MULT_AND_i1_i_5_n_0 ;
  wire \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_11_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_12_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_13_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_14_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_15_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_16_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_17_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_18_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_19_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_20_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_21_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_22_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_23_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_25_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_27_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_29_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_30_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_31_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_32_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_35_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_36_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_37_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_39_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_3_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_6_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_7_n_0 ;
  wire \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_9_n_0 ;
  wire [0:0]\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ;
  wire [0:0]\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0 ;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_5_n_0 ;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_7_n_0 ;
  wire S;
  wire [0:0]SR;
  wire S_5;
  wire Write_req_addr_ack_cmb;
  wire Write_req_data_ack_cmb;
  wire Write_req_data_ack_cmb13_out;
  wire addr_cnt_ce;
  wire addr_cnt_rst;
  wire [0:0]\axi_trans_size_reg_reg[1] ;
  wire \burstlength_reg_reg[4] ;
  wire bus2Mem_RdReq;
  wire bus2Mem_WrReq;
  wire bus2ip_wr_req_reg_reg;
  wire bus2ip_wr_req_reg_reg_0;
  wire bus2ip_wr_req_reg_reg_1;
  wire bus2ip_wrreq_i;
  (* RTL_KEEP = "yes" *) wire [2:0]crnt_state;
  (* RTL_KEEP = "yes" *) wire [4:0]crnt_state_reg;
  wire [0:0]cycle_cnt;
  wire data_strobe_c;
  wire enable_cs_cmb0;
  wire enable_cs_cmb126_out;
  wire mem_CEN_cmb;
  wire mem_OEN_cmb;
  wire mem_RNW_cmb;
  wire mem_WEN_cmb;
  wire \mem_a_int_reg[31] ;
  wire \mem_ce_reg[0]_i_2_n_0 ;
  wire \mem_ce_reg[0]_i_3_n_0 ;
  wire \mem_ce_reg[0]_i_4_n_0 ;
  wire \mem_ce_reg[0]_i_5_n_0 ;
  wire [0:0]\mem_dq_t_reg_reg[0] ;
  wire mem_dqt_t_d;
  wire \mem_oen_reg[0]_i_2_n_0 ;
  wire \mem_oen_reg[0]_i_3_n_0 ;
  wire new_page;
  wire new_page_access;
  wire new_page_d1;
  wire new_page_d1_reg_0;
  wire next_state1;
  wire next_state10_out;
  wire next_state181_out;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire [1:1]p_0_in;
  wire pend_rdreq;
  wire pend_wrreq_reg;
  wire pend_wrreq_reg_0;
  wire pend_wrreq_reg_1;
  wire pend_wrreq_reg_2;
  wire rdce_out_i;
  wire read_ack;
  wire read_ack_cmb;
  wire read_break_reg;
  wire read_break_reg_d1;
  wire read_break_reg_d1_i_2_n_0;
  wire read_break_reg_d1_i_3_n_0;
  wire read_complete_cmb;
  wire read_complete_d_4;
  wire read_complete_d_5;
  wire read_complete_d_6;
  wire read_data_en;
  wire read_data_en_cmb;
  wire read_data_en_reg_reg_0;
  wire read_req_ack_cmb;
  wire read_req_ack_cmb44_out;
  wire rnw_reg_reg;
  wire rnw_reg_reg_0;
  wire rst_rdce_cmb;
  wire rw_flag_reg;
  wire s_axi_aclk;
  wire [1:0]s_axi_mem_arburst;
  wire s_axi_mem_arvalid;
  wire [1:0]s_axi_mem_awburst;
  wire s_axi_mem_awvalid;
  wire \s_axi_mem_bid_reg_reg[3] ;
  wire s_axi_mem_wlast;
  wire s_axi_mem_wready_INST_0_i_3_n_0;
  wire s_axi_mem_wvalid;
  wire single_transaction;
  wire temp_bus2ip_cs;
  wire thz_load;
  wire tpacc_end;
  wire transaction_complete;
  wire transaction_complete_reg;
  wire transaction_complete_reg_i_2_n_0;
  wire transaction_complete_reg_i_3_n_0;
  wire transaction_complete_reg_i_4_n_0;
  wire transaction_complete_reg_reg_0;
  wire transaction_done_cmb;
  wire transaction_done_i;
  wire [0:4]trd_cnt;
  wire trd_cnt_en;
  wire [0:4]twph_cnt;
  wire twph_cnt_en;
  wire twph_load;
  wire twr_cnt_en;
  wire twr_end;
  wire twr_rec_cnt_en_int;
  wire twr_rec_end_int;
  wire wlast;
  wire wlast_reg;
  wire wlast_reg_i_2_n_0;
  wire wlast_reg_i_3_n_0;
  wire wlast_reg_i_4_n_0;
  wire wlast_reg_i_5_n_0;

  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \ADDRESS_STORE_GEN[0].ADDRESS_REG_i_1 
       (.I0(crnt_state[0]),
        .I1(out),
        .I2(crnt_state[1]),
        .I3(crnt_state_reg[4]),
        .I4(Write_req_data_ack_cmb13_out),
        .I5(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3_n_0 ),
        .O(data_strobe_c));
  FDRE Bus2IP_Mem_CS_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(temp_bus2ip_cs),
        .Q(Bus2IP_Mem_CS_d2_reg_0),
        .R(SR));
  FDRE Bus2IP_Mem_CS_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus2IP_Mem_CS_d2_reg_0),
        .Q(p_0_in),
        .R(SR));
  FDRE Bus2IP_RdReq_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2Mem_RdReq),
        .Q(Bus2IP_RdReq_d1),
        .R(SR));
  LUT6 #(
    .INIT(64'h00004F4400004444)) 
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2 
       (.I0(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ),
        .I1(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .I2(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .I3(bus2Mem_RdReq),
        .I4(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .I5(tpacc_end),
        .O(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF01)) 
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_4 
       (.I0(crnt_state[2]),
        .I1(\mem_ce_reg[0]_i_3_n_0 ),
        .I2(crnt_state[0]),
        .I3(\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_5_n_0 ),
        .I4(\mem_ce_reg[0]_i_4_n_0 ),
        .I5(\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_6_n_0 ),
        .O(addr_cnt_rst));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_5 
       (.I0(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .I1(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .I2(bus2Mem_WrReq),
        .I3(\mem_ce_reg[0]_i_3_n_0 ),
        .I4(out),
        .I5(crnt_state[0]),
        .O(\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04040F04)) 
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_6 
       (.I0(read_data_en_reg_reg_0),
        .I1(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2 ),
        .I2(single_transaction),
        .I3(read_req_ack_cmb44_out),
        .I4(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .I5(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5_n_0 ),
        .O(\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00404040)) 
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_3 
       (.I0(read_data_en_reg_reg_0),
        .I1(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .I2(bus2Mem_RdReq),
        .I3(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .I4(new_page_access),
        .I5(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0 ),
        .O(addr_cnt_ce));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF01)) 
    \FSM_sequential_crnt_state[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(out),
        .I2(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0 ),
        .I3(\FSM_sequential_crnt_state[0]_i_3_n_0 ),
        .I4(\FSM_sequential_crnt_state[0]_i_4_n_0 ),
        .I5(\FSM_sequential_crnt_state[0]_i_5_n_0 ),
        .O(\FSM_sequential_crnt_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h007500750075FFFF)) 
    \FSM_sequential_crnt_state[0]_i_10 
       (.I0(\FSM_sequential_crnt_state_reg[3]_0 ),
        .I1(crnt_state[0]),
        .I2(bus2ip_wr_req_reg_reg),
        .I3(\FSM_sequential_crnt_state[1]_i_12_n_0 ),
        .I4(new_page_d1_reg_0),
        .I5(\FSM_sequential_crnt_state[0]_i_15_n_0 ),
        .O(\FSM_sequential_crnt_state[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \FSM_sequential_crnt_state[0]_i_11 
       (.I0(wlast_reg),
        .I1(s_axi_mem_wvalid),
        .I2(s_axi_mem_wlast),
        .I3(bus2ip_wrreq_i),
        .I4(pend_wrreq_reg_0),
        .O(\FSM_sequential_crnt_state[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_sequential_crnt_state[0]_i_12 
       (.I0(wlast_reg),
        .I1(s_axi_mem_wlast),
        .I2(s_axi_mem_wvalid),
        .O(\FSM_sequential_crnt_state[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_crnt_state[0]_i_14 
       (.I0(crnt_state_reg[4]),
        .I1(crnt_state[1]),
        .O(\FSM_sequential_crnt_state[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \FSM_sequential_crnt_state[0]_i_15 
       (.I0(crnt_state[1]),
        .I1(crnt_state_reg[4]),
        .I2(crnt_state[0]),
        .I3(out),
        .O(\FSM_sequential_crnt_state[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABAAAFABABAA)) 
    \FSM_sequential_crnt_state[0]_i_3 
       (.I0(\FSM_sequential_crnt_state[0]_i_7_n_0 ),
        .I1(crnt_state[0]),
        .I2(crnt_state[2]),
        .I3(crnt_state[1]),
        .I4(out),
        .I5(crnt_state_reg[4]),
        .O(\FSM_sequential_crnt_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFBFAAAA)) 
    \FSM_sequential_crnt_state[0]_i_4 
       (.I0(\FSM_sequential_crnt_state[0]_i_8_n_0 ),
        .I1(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(out),
        .I3(rnw_reg_reg),
        .I4(crnt_state[0]),
        .I5(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0 ),
        .O(\FSM_sequential_crnt_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \FSM_sequential_crnt_state[0]_i_5 
       (.I0(\FSM_sequential_crnt_state[0]_i_10_n_0 ),
        .I1(bus2Mem_RdReq),
        .I2(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 ),
        .I3(crnt_state[0]),
        .I4(out),
        .I5(crnt_state_reg[4]),
        .O(\FSM_sequential_crnt_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \FSM_sequential_crnt_state[0]_i_6 
       (.I0(s_axi_mem_wvalid),
        .I1(wlast_reg_i_5_n_0),
        .I2(\FSM_sequential_crnt_state[0]_i_11_n_0 ),
        .I3(wlast_reg_i_4_n_0),
        .I4(\FSM_sequential_crnt_state[0]_i_12_n_0 ),
        .I5(wlast_reg_i_2_n_0),
        .O(next_state1));
  LUT6 #(
    .INIT(64'h00000404000004FF)) 
    \FSM_sequential_crnt_state[0]_i_7 
       (.I0(crnt_state[0]),
        .I1(pend_wrreq_reg_1),
        .I2(out),
        .I3(crnt_state[2]),
        .I4(\FSM_sequential_crnt_state[0]_i_14_n_0 ),
        .I5(twr_end),
        .O(\FSM_sequential_crnt_state[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \FSM_sequential_crnt_state[0]_i_8 
       (.I0(crnt_state[1]),
        .I1(crnt_state_reg[4]),
        .I2(out),
        .I3(crnt_state[0]),
        .I4(bus2Mem_RdReq),
        .O(\FSM_sequential_crnt_state[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_crnt_state[1]_i_1 
       (.I0(\FSM_sequential_crnt_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_crnt_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_crnt_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_crnt_state[1]_i_5_n_0 ),
        .I4(\FSM_sequential_crnt_state[1]_i_6_n_0 ),
        .O(\FSM_sequential_crnt_state[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_crnt_state[1]_i_11 
       (.I0(out),
        .I1(crnt_state[0]),
        .O(\FSM_sequential_crnt_state[1]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_crnt_state[1]_i_12 
       (.I0(crnt_state_reg[4]),
        .I1(crnt_state[2]),
        .O(\FSM_sequential_crnt_state[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDDDDDDD)) 
    \FSM_sequential_crnt_state[1]_i_13 
       (.I0(crnt_state[1]),
        .I1(crnt_state_reg[4]),
        .I2(pend_wrreq_reg_0),
        .I3(bus2ip_wrreq_i),
        .I4(s_axi_mem_wvalid),
        .I5(crnt_state[0]),
        .O(\FSM_sequential_crnt_state[1]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_crnt_state[1]_i_14 
       (.I0(crnt_state[2]),
        .I1(crnt_state[1]),
        .I2(crnt_state_reg[4]),
        .O(\FSM_sequential_crnt_state[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h40404040404040FF)) 
    \FSM_sequential_crnt_state[1]_i_2 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .I2(\FSM_sequential_crnt_state[3]_i_3_n_0 ),
        .I3(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ),
        .I4(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1 ),
        .I5(\FSM_sequential_crnt_state_reg[1]_0 ),
        .O(\FSM_sequential_crnt_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44444F444F4F4F44)) 
    \FSM_sequential_crnt_state[1]_i_3 
       (.I0(\FSM_sequential_crnt_state[1]_i_9_n_0 ),
        .I1(next_state10_out),
        .I2(read_data_en_reg_reg_0),
        .I3(\mem_ce_reg[0]_i_2_n_0 ),
        .I4(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .I5(new_page_access),
        .O(\FSM_sequential_crnt_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00008F0000008800)) 
    \FSM_sequential_crnt_state[1]_i_4 
       (.I0(crnt_state[1]),
        .I1(new_page_d1_reg_0),
        .I2(bus2Mem_RdReq),
        .I3(\FSM_sequential_crnt_state[1]_i_11_n_0 ),
        .I4(crnt_state_reg[4]),
        .I5(crnt_state[2]),
        .O(\FSM_sequential_crnt_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0A00000A0B)) 
    \FSM_sequential_crnt_state[1]_i_5 
       (.I0(crnt_state[1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I2(crnt_state[0]),
        .I3(out),
        .I4(crnt_state[2]),
        .I5(crnt_state_reg[4]),
        .O(\FSM_sequential_crnt_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h010F0F0F000F000F)) 
    \FSM_sequential_crnt_state[1]_i_6 
       (.I0(twr_end),
        .I1(\FSM_sequential_crnt_state[1]_i_12_n_0 ),
        .I2(out),
        .I3(\FSM_sequential_crnt_state[1]_i_13_n_0 ),
        .I4(\FSM_sequential_crnt_state[1]_i_14_n_0 ),
        .I5(crnt_state[0]),
        .O(\FSM_sequential_crnt_state[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \FSM_sequential_crnt_state[1]_i_9 
       (.I0(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ),
        .I1(out),
        .I2(crnt_state[0]),
        .I3(crnt_state_reg[4]),
        .I4(crnt_state[1]),
        .O(\FSM_sequential_crnt_state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \FSM_sequential_crnt_state[2]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I1(\FSM_sequential_crnt_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_crnt_state[2]_i_4_n_0 ),
        .I3(crnt_state[2]),
        .I4(\FSM_sequential_crnt_state[2]_i_5_n_0 ),
        .I5(\FSM_sequential_crnt_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_crnt_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_crnt_state[2]_i_3 
       (.I0(crnt_state[0]),
        .I1(crnt_state[2]),
        .I2(crnt_state_reg[4]),
        .I3(crnt_state[1]),
        .O(\FSM_sequential_crnt_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFCCCAAAAFFFF)) 
    \FSM_sequential_crnt_state[2]_i_4 
       (.I0(read_complete_d_4),
        .I1(crnt_state[0]),
        .I2(s_axi_mem_wvalid),
        .I3(bus2Mem_WrReq),
        .I4(crnt_state_reg[4]),
        .I5(crnt_state[1]),
        .O(\FSM_sequential_crnt_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0230220002002200)) 
    \FSM_sequential_crnt_state[2]_i_5 
       (.I0(out),
        .I1(crnt_state_reg[4]),
        .I2(crnt_state[1]),
        .I3(crnt_state[2]),
        .I4(crnt_state[0]),
        .I5(twr_end),
        .O(\FSM_sequential_crnt_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000222000)) 
    \FSM_sequential_crnt_state[2]_i_6 
       (.I0(crnt_state[0]),
        .I1(crnt_state_reg[4]),
        .I2(out),
        .I3(crnt_state[1]),
        .I4(crnt_state[2]),
        .I5(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ),
        .O(\FSM_sequential_crnt_state[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \FSM_sequential_crnt_state[2]_i_8 
       (.I0(next_state1),
        .I1(bus2ip_wrreq_i),
        .I2(pend_wrreq_reg_0),
        .I3(single_transaction),
        .O(\FSM_sequential_crnt_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \FSM_sequential_crnt_state[3]_i_1 
       (.I0(\FSM_sequential_crnt_state[3]_i_2_n_0 ),
        .I1(\FSM_sequential_crnt_state[3]_i_3_n_0 ),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I3(\FSM_sequential_crnt_state[3]_i_5_n_0 ),
        .I4(\FSM_sequential_crnt_state[3]_i_6_n_0 ),
        .I5(\FSM_sequential_crnt_state[3]_i_7_n_0 ),
        .O(\FSM_sequential_crnt_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h50535F5F00030003)) 
    \FSM_sequential_crnt_state[3]_i_2 
       (.I0(read_complete_d_4),
        .I1(crnt_state[1]),
        .I2(crnt_state_reg[4]),
        .I3(\FSM_sequential_crnt_state_reg[3]_0 ),
        .I4(crnt_state[0]),
        .I5(out),
        .O(\FSM_sequential_crnt_state[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_sequential_crnt_state[3]_i_3 
       (.I0(out),
        .I1(crnt_state[2]),
        .I2(crnt_state_reg[4]),
        .I3(crnt_state[1]),
        .O(\FSM_sequential_crnt_state[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_crnt_state[3]_i_5 
       (.I0(crnt_state[0]),
        .I1(crnt_state_reg[4]),
        .I2(crnt_state[1]),
        .I3(crnt_state[2]),
        .O(\FSM_sequential_crnt_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA222000080000000)) 
    \FSM_sequential_crnt_state[3]_i_6 
       (.I0(\FSM_sequential_crnt_state[2]_i_3_n_0 ),
        .I1(bus2Mem_WrReq),
        .I2(single_transaction),
        .I3(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .I4(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .I5(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ),
        .O(\FSM_sequential_crnt_state[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00004A00)) 
    \FSM_sequential_crnt_state[3]_i_7 
       (.I0(out),
        .I1(crnt_state[0]),
        .I2(crnt_state[2]),
        .I3(crnt_state[1]),
        .I4(crnt_state_reg[4]),
        .O(\FSM_sequential_crnt_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00008000FFFF8000)) 
    \FSM_sequential_crnt_state[4]_i_1 
       (.I0(out),
        .I1(crnt_state[0]),
        .I2(crnt_state[1]),
        .I3(crnt_state[2]),
        .I4(crnt_state_reg[4]),
        .I5(read_complete_d_4),
        .O(\FSM_sequential_crnt_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00000,address_set:00001,address_rset:01010,deassert_cen:00010,deassert_rcen:01011,write:00011,write_wait:00110,wait_temp:00101,dassert_wen:00100,assert_cen:00111,wait_write_ack:01000,wr_rec_period:01001,linear_flash_sync_rd:01100,read:01101,page_read:01110,deassert_oen:01111,wait_rddata_ack:10000" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_crnt_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_crnt_state[0]_i_1_n_0 ),
        .Q(crnt_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:00000,address_set:00001,address_rset:01010,deassert_cen:00010,deassert_rcen:01011,write:00011,write_wait:00110,wait_temp:00101,dassert_wen:00100,assert_cen:00111,wait_write_ack:01000,wr_rec_period:01001,linear_flash_sync_rd:01100,read:01101,page_read:01110,deassert_oen:01111,wait_rddata_ack:10000" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_crnt_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_crnt_state[1]_i_1_n_0 ),
        .Q(crnt_state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:00000,address_set:00001,address_rset:01010,deassert_cen:00010,deassert_rcen:01011,write:00011,write_wait:00110,wait_temp:00101,dassert_wen:00100,assert_cen:00111,wait_write_ack:01000,wr_rec_period:01001,linear_flash_sync_rd:01100,read:01101,page_read:01110,deassert_oen:01111,wait_rddata_ack:10000" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_crnt_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_crnt_state[2]_i_1_n_0 ),
        .Q(crnt_state[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:00000,address_set:00001,address_rset:01010,deassert_cen:00010,deassert_rcen:01011,write:00011,write_wait:00110,wait_temp:00101,dassert_wen:00100,assert_cen:00111,wait_write_ack:01000,wr_rec_period:01001,linear_flash_sync_rd:01100,read:01101,page_read:01110,deassert_oen:01111,wait_rddata_ack:10000" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_crnt_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_crnt_state[3]_i_1_n_0 ),
        .Q(out),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:00000,address_set:00001,address_rset:01010,deassert_cen:00010,deassert_rcen:01011,write:00011,write_wait:00110,wait_temp:00101,dassert_wen:00100,assert_cen:00111,wait_write_ack:01000,wr_rec_period:01001,linear_flash_sync_rd:01100,read:01101,page_read:01110,deassert_oen:01111,wait_rddata_ack:10000" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_crnt_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_crnt_state[4]_i_1_n_0 ),
        .Q(crnt_state_reg[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \FSM_sequential_emc_addr_ps[0]_i_3 
       (.I0(Write_req_data_ack_cmb),
        .I1(s_axi_mem_wvalid),
        .I2(\FSM_sequential_emc_addr_ps_reg[0]_0 ),
        .O(\FSM_sequential_emc_addr_ps_reg[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_emc_addr_ps[2]_i_5 
       (.I0(enable_cs_cmb0),
        .I1(enable_cs_cmb126_out),
        .O(\FSM_sequential_emc_addr_ps_reg[2] ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[0].XORCY_i1_i_1 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .I1(cycle_cnt),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__0 
       (.I0(trd_cnt_en),
        .I1(trd_cnt[0]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__2 
       (.I0(twph_cnt_en),
        .I1(twph_cnt[0]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__4 
       (.I0(twr_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 [3]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_15 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__7 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [14]),
        .O(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[10].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [4]),
        .O(\PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[11].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [3]),
        .O(\PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[12].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [2]),
        .O(\PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[13].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [1]),
        .O(\PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \PERBIT_GEN[14].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [0]),
        .O(\PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0004)) 
    \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_1 
       (.I0(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ),
        .I1(next_state10_out),
        .I2(\PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_3_n_0 ),
        .I3(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0 ),
        .I4(pend_wrreq_reg_2),
        .I5(twr_rec_cnt_en_int),
        .O(CE_17));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBAAA)) 
    \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_2 
       (.I0(transaction_complete_reg_i_3_n_0),
        .I1(transaction_complete_reg_reg_0),
        .I2(transaction_complete_reg),
        .I3(pend_wrreq_reg),
        .I4(transaction_complete_reg_i_2_n_0),
        .I5(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 ),
        .O(next_state10_out));
  LUT2 #(
    .INIT(4'hB)) 
    \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_3 
       (.I0(out),
        .I1(crnt_state[0]),
        .O(\PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \PERBIT_GEN[15].MULT_AND_i1_i_1 
       (.I0(crnt_state[2]),
        .I1(crnt_state[1]),
        .I2(crnt_state_reg[4]),
        .I3(\PERBIT_GEN[15].MULT_AND_i1_i_2_n_0 ),
        .O(twr_rec_cnt_en_int));
  LUT3 #(
    .INIT(8'h8F)) 
    \PERBIT_GEN[15].MULT_AND_i1_i_2 
       (.I0(twr_rec_end_int),
        .I1(crnt_state[0]),
        .I2(out),
        .O(\PERBIT_GEN[15].MULT_AND_i1_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0002)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_1 
       (.I0(bus2ip_wr_req_reg_reg_1),
        .I1(\mem_ce_reg[0]_i_3_n_0 ),
        .I2(out),
        .I3(crnt_state[0]),
        .I4(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3_n_0 ),
        .I5(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .O(CE_0));
  LUT2 #(
    .INIT(4'hE)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3 
       (.I0(\PERBIT_GEN[7].MULT_AND_i1_i_5_n_0 ),
        .I1(\mem_a_int_reg[31] ),
        .O(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAABA0000AABAAABA)) 
    \PERBIT_GEN[1].MULT_AND_i1_i_1 
       (.I0(\PERBIT_GEN[1].MULT_AND_i1_i_2_n_0 ),
        .I1(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .I2(tpacc_end),
        .I3(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .I4(\axi_trans_size_reg_reg[1] ),
        .I5(bus2Mem_RdReq),
        .O(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ));
  LUT6 #(
    .INIT(64'h0404040444FF4444)) 
    \PERBIT_GEN[1].MULT_AND_i1_i_2 
       (.I0(read_data_en_reg_reg_0),
        .I1(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ),
        .I2(new_page_access),
        .I3(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ),
        .I4(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .I5(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .O(\PERBIT_GEN[1].MULT_AND_i1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__0 
       (.I0(trd_cnt_en),
        .I1(trd_cnt[1]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__2 
       (.I0(twph_cnt_en),
        .I1(twph_cnt[1]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__4 
       (.I0(twr_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 [2]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_14 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__7 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [13]),
        .O(\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1 
       (.I0(trd_cnt_en),
        .I1(trd_cnt[2]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__1 
       (.I0(twph_cnt_en),
        .I1(twph_cnt[2]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__3 
       (.I0(twr_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 [1]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_13 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__6 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [12]),
        .O(\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1 
       (.I0(trd_cnt_en),
        .I1(trd_cnt[3]),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h7)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__1 
       (.I0(twph_cnt_en),
        .I1(twph_cnt[3]),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_9 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__2 
       (.I0(twr_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 [0]),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12 ));
  LUT2 #(
    .INIT(4'hB)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__5 
       (.I0(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .I1(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_1 ),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__6 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [11]),
        .O(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ));
  LUT6 #(
    .INIT(64'h00000008FFFFFFFF)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1 
       (.I0(crnt_state_reg[4]),
        .I1(read_complete_d_4),
        .I2(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0 ),
        .I3(crnt_state[2]),
        .I4(crnt_state[1]),
        .I5(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ),
        .O(CE_3));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1__0 
       (.I0(twph_load),
        .I1(twph_cnt_en),
        .O(CE_4));
  LUT6 #(
    .INIT(64'h00000100FFFFFFFF)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1__1 
       (.I0(crnt_state[2]),
        .I1(crnt_state[1]),
        .I2(crnt_state_reg[4]),
        .I3(out),
        .I4(crnt_state[0]),
        .I5(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ),
        .O(CE_11));
  LUT2 #(
    .INIT(4'hE)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2 
       (.I0(out),
        .I1(crnt_state[0]),
        .O(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEFEEE)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1 
       (.I0(trd_cnt_en),
        .I1(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2_n_0 ),
        .I2(read_req_ack_cmb44_out),
        .I3(new_page_d1),
        .I4(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .O(CE));
  LUT6 #(
    .INIT(64'hFFFFFFFF00007F3F)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1__0 
       (.I0(new_page),
        .I1(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .I2(tpacc_end),
        .I3(bus2Mem_RdReq),
        .I4(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .I5(rnw_reg_reg_0),
        .O(CE_2));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1__1 
       (.I0(twr_cnt_en),
        .I1(twph_load),
        .O(CE_10));
  LUT6 #(
    .INIT(64'h04FF040404040404)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2 
       (.I0(transaction_complete_reg_reg_0),
        .I1(next_state181_out),
        .I2(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ),
        .I3(read_data_en_reg_reg_0),
        .I4(new_page_access),
        .I5(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ),
        .O(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0404FF04)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__1 
       (.I0(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ),
        .I1(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3 ),
        .I3(bus2ip_wr_req_reg_reg),
        .I4(transaction_complete_reg_reg_0),
        .I5(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5_n_0 ),
        .O(twph_load));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5 
       (.I0(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ),
        .I1(out),
        .I2(crnt_state[0]),
        .I3(crnt_state[1]),
        .I4(crnt_state_reg[4]),
        .I5(crnt_state[2]),
        .O(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000020000000E000)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_1 
       (.I0(bus2Mem_RdReq),
        .I1(crnt_state[0]),
        .I2(out),
        .I3(crnt_state[2]),
        .I4(\mem_ce_reg[0]_i_3_n_0 ),
        .I5(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .O(trd_cnt_en));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_1__0 
       (.I0(\PERBIT_GEN[4].MULT_AND_i1_i_2_n_0 ),
        .I1(twr_end),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ),
        .I3(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .I4(bus2Mem_WrReq),
        .I5(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .O(twph_cnt_en));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_1__1 
       (.I0(crnt_state_reg[4]),
        .I1(crnt_state[1]),
        .I2(crnt_state[2]),
        .I3(out),
        .I4(crnt_state[0]),
        .I5(twr_end),
        .O(twr_cnt_en));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_2 
       (.I0(crnt_state_reg[4]),
        .I1(crnt_state[1]),
        .I2(crnt_state[2]),
        .I3(crnt_state[0]),
        .I4(out),
        .O(\PERBIT_GEN[4].MULT_AND_i1_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_3 
       (.I0(crnt_state[0]),
        .I1(out),
        .I2(crnt_state[2]),
        .I3(crnt_state_reg[4]),
        .I4(crnt_state[1]),
        .O(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1 
       (.I0(trd_cnt_en),
        .I1(trd_cnt[4]),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1__1 
       (.I0(twph_cnt_en),
        .I1(twph_cnt[4]),
        .O(S_5));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1__6 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [10]),
        .O(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[5].MUXCY_i1_i_1__0 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [9]),
        .O(\PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[6].MUXCY_i1_i_1__0 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [8]),
        .O(\PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1 ));
  LUT6 #(
    .INIT(64'hAABABABABABABABA)) 
    \PERBIT_GEN[7].MULT_AND_i1_i_3 
       (.I0(\PERBIT_GEN[7].MULT_AND_i1_i_5_n_0 ),
        .I1(transaction_complete_reg_reg_0),
        .I2(next_state181_out),
        .I3(bus2ip_wrreq_i),
        .I4(pend_wrreq_reg_0),
        .I5(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ),
        .O(read_req_ack_cmb));
  LUT6 #(
    .INIT(64'h4F44000044440000)) 
    \PERBIT_GEN[7].MULT_AND_i1_i_5 
       (.I0(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .I1(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 ),
        .I2(read_data_en_reg_reg_0),
        .I3(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .I4(bus2Mem_RdReq),
        .I5(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .O(\PERBIT_GEN[7].MULT_AND_i1_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[7].MUXCY_i1_i_1__0 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [7]),
        .O(\PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[8].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [6]),
        .O(\PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[9].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [5]),
        .O(\PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_1 
       (.I0(SR),
        .I1(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_n_0 ),
        .I2(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_3_n_0 ),
        .I3(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4_n_0 ),
        .I4(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5_n_0 ),
        .I5(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_6_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10 
       (.I0(crnt_state[1]),
        .I1(crnt_state[2]),
        .I2(out),
        .I3(crnt_state[0]),
        .I4(crnt_state_reg[4]),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h44440000444F0000)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_11 
       (.I0(transaction_complete_reg_reg_0),
        .I1(pend_wrreq_reg),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ),
        .I3(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .I4(crnt_state_reg[4]),
        .I5(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF15551500)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_12 
       (.I0(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .I1(bus2Mem_RdReq),
        .I2(new_page),
        .I3(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 ),
        .I4(crnt_state_reg[1]),
        .I5(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_27_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000D0000)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_13 
       (.I0(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ),
        .I2(crnt_state[1]),
        .I3(crnt_state_reg[4]),
        .I4(crnt_state[2]),
        .I5(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFFFFE)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_14 
       (.I0(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_29_n_0 ),
        .I1(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 ),
        .I3(transaction_complete_reg_i_2_n_0),
        .I4(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_30_n_0 ),
        .I5(\mem_ce_reg[0]_i_3_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF15151500)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_15 
       (.I0(read_data_en_reg_reg_0),
        .I1(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ),
        .I2(new_page_access),
        .I3(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .I4(read_break_reg),
        .I5(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_31_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAABABABAAAAABAA)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_16 
       (.I0(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_32_n_0 ),
        .I1(crnt_state[2]),
        .I2(\mem_ce_reg[0]_i_3_n_0 ),
        .I3(crnt_state[0]),
        .I4(twr_rec_end_int),
        .I5(out),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F404)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_17 
       (.I0(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .I1(crnt_state_reg[0]),
        .I2(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 ),
        .I4(crnt_state[0]),
        .I5(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h10000010)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_18 
       (.I0(out),
        .I1(crnt_state_reg[4]),
        .I2(crnt_state[0]),
        .I3(crnt_state[1]),
        .I4(crnt_state[2]),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0008)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_19 
       (.I0(pend_wrreq_reg),
        .I1(crnt_state_reg[0]),
        .I2(\FSM_sequential_crnt_state[1]_i_12_n_0 ),
        .I3(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0 ),
        .I4(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_35_n_0 ),
        .I5(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_36_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEFEEEE)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2 
       (.I0(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_7_n_0 ),
        .I1(\FSM_sequential_crnt_state[3]_i_7_n_0 ),
        .I2(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0 ),
        .I3(crnt_state[0]),
        .I4(\burstlength_reg_reg[4] ),
        .I5(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_9_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000010FFFFFFFF)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_20 
       (.I0(crnt_state[1]),
        .I1(crnt_state_reg[4]),
        .I2(crnt_state[0]),
        .I3(out),
        .I4(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ),
        .I5(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_37_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00EAEAEAEAEAEAEA)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_21 
       (.I0(wlast_reg_i_5_n_0),
        .I1(bus2Mem_WrReq),
        .I2(s_axi_mem_wvalid),
        .I3(\FSM_sequential_crnt_state[3]_i_5_n_0 ),
        .I4(crnt_state_reg[3]),
        .I5(pend_wrreq_reg),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55F54444)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_22 
       (.I0(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_39_n_0 ),
        .I1(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 ),
        .I2(crnt_state_reg[4]),
        .I3(read_complete_d_4),
        .I4(crnt_state_reg[3]),
        .I5(\FSM_sequential_crnt_state[3]_i_3_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h11110000F1F1F000)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_23 
       (.I0(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_25_n_0 ),
        .I1(twr_end),
        .I2(\FSM_sequential_crnt_state[2]_i_3_n_0 ),
        .I3(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .I4(crnt_state_reg[3]),
        .I5(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h0000FD04)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_24 
       (.I0(crnt_state[0]),
        .I1(crnt_state[2]),
        .I2(crnt_state[1]),
        .I3(out),
        .I4(crnt_state_reg[4]),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_25 
       (.I0(crnt_state_reg[4]),
        .I1(crnt_state[1]),
        .I2(crnt_state[2]),
        .I3(crnt_state[0]),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h0000E11E)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_26 
       (.I0(crnt_state[0]),
        .I1(out),
        .I2(crnt_state[2]),
        .I3(crnt_state[1]),
        .I4(crnt_state_reg[4]),
        .O(crnt_state_reg[1]));
  LUT6 #(
    .INIT(64'h000000A000000350)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_27 
       (.I0(crnt_state[2]),
        .I1(bus2Mem_RdReq),
        .I2(crnt_state[0]),
        .I3(out),
        .I4(crnt_state_reg[4]),
        .I5(crnt_state[1]),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEAB0000)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_29 
       (.I0(twr_end),
        .I1(crnt_state[0]),
        .I2(out),
        .I3(crnt_state[2]),
        .I4(crnt_state[1]),
        .I5(crnt_state_reg[4]),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2F2FA)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_3 
       (.I0(crnt_state_reg[4]),
        .I1(read_complete_d_4),
        .I2(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10_n_0 ),
        .I3(twr_end),
        .I4(\PERBIT_GEN[4].MULT_AND_i1_i_2_n_0 ),
        .I5(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_11_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABABAAABA)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_30 
       (.I0(transaction_complete_reg_i_3_n_0),
        .I1(transaction_complete_reg_reg_0),
        .I2(transaction_complete_reg),
        .I3(bus2Mem_RdReq),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_6 ),
        .I5(bus2ip_wr_req_reg_reg),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE2AAA00000000)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_31 
       (.I0(crnt_state_reg[1]),
        .I1(temp_bus2ip_cs),
        .I2(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ),
        .I3(bus2Mem_RdReq),
        .I4(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ),
        .I5(\FSM_sequential_crnt_state[3]_i_5_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_32 
       (.I0(bus2ip_wr_req_reg_reg_0),
        .I1(crnt_state_reg[4]),
        .I2(crnt_state[1]),
        .I3(crnt_state[2]),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h0000CD38)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_33 
       (.I0(crnt_state[2]),
        .I1(crnt_state[0]),
        .I2(out),
        .I3(crnt_state[1]),
        .I4(crnt_state_reg[4]),
        .O(crnt_state_reg[0]));
  LUT6 #(
    .INIT(64'h00002E0000000000)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_35 
       (.I0(crnt_state_reg[0]),
        .I1(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 ),
        .I2(bus2Mem_RdReq),
        .I3(\FSM_sequential_crnt_state[1]_i_11_n_0 ),
        .I4(crnt_state_reg[4]),
        .I5(crnt_state[1]),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_36 
       (.I0(crnt_state_reg[4]),
        .I1(crnt_state[0]),
        .I2(crnt_state[1]),
        .I3(crnt_state[2]),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFF3FFFFEFFF)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_37 
       (.I0(twr_end),
        .I1(out),
        .I2(crnt_state[0]),
        .I3(crnt_state[1]),
        .I4(crnt_state_reg[4]),
        .I5(crnt_state[2]),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h00AA00E8)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_38 
       (.I0(crnt_state[2]),
        .I1(out),
        .I2(crnt_state[0]),
        .I3(crnt_state_reg[4]),
        .I4(crnt_state[1]),
        .O(crnt_state_reg[3]));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_39 
       (.I0(crnt_state[2]),
        .I1(crnt_state_reg[4]),
        .I2(crnt_state[0]),
        .I3(out),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4 
       (.I0(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_12_n_0 ),
        .I1(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_13_n_0 ),
        .I2(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_14_n_0 ),
        .I3(\PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_3_n_0 ),
        .I4(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_15_n_0 ),
        .I5(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_16_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5 
       (.I0(\FSM_sequential_crnt_state[3]_i_3_n_0 ),
        .I1(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_17_n_0 ),
        .I3(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_18_n_0 ),
        .I4(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_19_n_0 ),
        .I5(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_20_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF57)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_6 
       (.I0(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_21_n_0 ),
        .I1(\mem_ce_reg[0]_i_3_n_0 ),
        .I2(\PERBIT_GEN[15].MULT_AND_i1_i_2_n_0 ),
        .I3(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_22_n_0 ),
        .I4(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_23_n_0 ),
        .I5(\FSM_sequential_crnt_state[2]_i_6_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55F54444)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_7 
       (.I0(\FSM_sequential_crnt_state[0]_i_15_n_0 ),
        .I1(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 ),
        .I2(crnt_state_reg[4]),
        .I3(read_complete_d_4),
        .I4(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ),
        .I5(\FSM_sequential_crnt_state[3]_i_3_n_0 ),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h11FF10FF11FF1010)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_9 
       (.I0(transaction_complete_reg_reg_0),
        .I1(bus2ip_wr_req_reg_reg),
        .I2(next_state181_out),
        .I3(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_25_n_0 ),
        .I4(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] ),
        .I5(twr_end),
        .O(\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_9_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_complete_cmb),
        .Q(read_complete_d_6),
        .R(SR));
  LUT6 #(
    .INIT(64'h444F444F4F4F444F)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_1 
       (.I0(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .I1(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ),
        .I2(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0 ),
        .I3(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_5_n_0 ),
        .I4(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ),
        .I5(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_7_n_0 ),
        .O(read_complete_cmb));
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2 
       (.I0(crnt_state[2]),
        .I1(crnt_state[1]),
        .I2(crnt_state_reg[4]),
        .I3(crnt_state[0]),
        .I4(out),
        .O(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4 
       (.I0(crnt_state[1]),
        .I1(crnt_state_reg[4]),
        .I2(crnt_state[2]),
        .O(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_5 
       (.I0(bus2Mem_RdReq),
        .I1(crnt_state[0]),
        .I2(out),
        .O(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_7 
       (.I0(out),
        .I1(crnt_state[0]),
        .O(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_7_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \READ_COMPLETE_PIPE_GEN[1].READ_COMPLETE_PIPE 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_complete_d_6),
        .Q(read_complete_d_5),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \READ_COMPLETE_PIPE_GEN[2].READ_COMPLETE_PIPE 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_complete_d_5),
        .Q(read_complete_d_4),
        .R(SR));
  LUT6 #(
    .INIT(64'h0444044404440000)) 
    addr_sm_ns_IDLE_cmb_i_14
       (.I0(transaction_complete_reg_reg_0),
        .I1(s_axi_mem_arvalid),
        .I2(rw_flag_reg),
        .I3(s_axi_mem_awvalid),
        .I4(s_axi_mem_arburst[1]),
        .I5(s_axi_mem_arburst[0]),
        .O(enable_cs_cmb126_out));
  LUT3 #(
    .INIT(8'h0E)) 
    addr_sm_ns_IDLE_cmb_i_8
       (.I0(s_axi_mem_awburst[1]),
        .I1(s_axi_mem_awburst[0]),
        .I2(\s_axi_mem_bid_reg_reg[3] ),
        .O(enable_cs_cmb0));
  LUT6 #(
    .INIT(64'h0000000800000003)) 
    \mem_a_int[31]_i_1 
       (.I0(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ),
        .I1(crnt_state[2]),
        .I2(crnt_state[1]),
        .I3(crnt_state_reg[4]),
        .I4(out),
        .I5(crnt_state[0]),
        .O(\mem_a_int_reg[31] ));
  LUT6 #(
    .INIT(64'h000000000000FF2E)) 
    \mem_ce_reg[0]_i_1 
       (.I0(Bus2IP_RdReq_emc),
        .I1(crnt_state[0]),
        .I2(\mem_ce_reg[0]_i_2_n_0 ),
        .I3(\mem_ce_reg[0]_i_3_n_0 ),
        .I4(\mem_ce_reg[0]_i_4_n_0 ),
        .I5(\mem_ce_reg[0]_i_5_n_0 ),
        .O(Mem_CE_int));
  LUT6 #(
    .INIT(64'hAFAFABAFAAAAAAAA)) 
    \mem_ce_reg[0]_i_2 
       (.I0(read_break_reg_d1),
        .I1(pend_rdreq),
        .I2(single_transaction),
        .I3(rdce_out_i),
        .I4(rst_rdce_cmb),
        .I5(Bus2IP_RdReq_d1),
        .O(\mem_ce_reg[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mem_ce_reg[0]_i_3 
       (.I0(crnt_state_reg[4]),
        .I1(crnt_state[1]),
        .O(\mem_ce_reg[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \mem_ce_reg[0]_i_4 
       (.I0(crnt_state[0]),
        .I1(out),
        .I2(crnt_state[2]),
        .I3(crnt_state[1]),
        .O(\mem_ce_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0E030F00000F0F0F)) 
    \mem_ce_reg[0]_i_5 
       (.I0(\mem_ce_reg[0]_i_2_n_0 ),
        .I1(crnt_state[0]),
        .I2(crnt_state_reg[4]),
        .I3(crnt_state[2]),
        .I4(out),
        .I5(crnt_state[1]),
        .O(\mem_ce_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00D1)) 
    \mem_cen_reg[0]_i_1 
       (.I0(Bus2IP_RdReq_emc),
        .I1(crnt_state[0]),
        .I2(\mem_ce_reg[0]_i_2_n_0 ),
        .I3(\mem_ce_reg[0]_i_3_n_0 ),
        .I4(\mem_ce_reg[0]_i_4_n_0 ),
        .I5(\mem_ce_reg[0]_i_5_n_0 ),
        .O(mem_CEN_cmb));
  LUT6 #(
    .INIT(64'h00AA00AA0028022A)) 
    \mem_dq_t_reg[8]_i_1 
       (.I0(mem_dqt_t_d),
        .I1(crnt_state[0]),
        .I2(crnt_state[1]),
        .I3(crnt_state_reg[4]),
        .I4(crnt_state[2]),
        .I5(out),
        .O(\mem_dq_t_reg_reg[0] ));
  LUT5 #(
    .INIT(32'h0A0F0F1B)) 
    mem_dqt_t_d_i_1
       (.I0(out),
        .I1(crnt_state[2]),
        .I2(crnt_state_reg[4]),
        .I3(crnt_state[1]),
        .I4(crnt_state[0]),
        .O(mem_WEN_cmb));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEFFFFFF)) 
    \mem_oen_reg[0]_i_1 
       (.I0(\mem_oen_reg[0]_i_2_n_0 ),
        .I1(\mem_ce_reg[0]_i_2_n_0 ),
        .I2(\mem_oen_reg[0]_i_3_n_0 ),
        .I3(out),
        .I4(crnt_state[2]),
        .I5(crnt_state_reg[4]),
        .O(mem_OEN_cmb));
  LUT6 #(
    .INIT(64'hABAAAAAAABAAABAB)) 
    \mem_oen_reg[0]_i_2 
       (.I0(\mem_ce_reg[0]_i_4_n_0 ),
        .I1(crnt_state_reg[4]),
        .I2(crnt_state[1]),
        .I3(\mem_ce_reg[0]_i_2_n_0 ),
        .I4(crnt_state[0]),
        .I5(Bus2IP_RdReq_emc),
        .O(\mem_oen_reg[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \mem_oen_reg[0]_i_3 
       (.I0(crnt_state[0]),
        .I1(crnt_state[1]),
        .I2(crnt_state_reg[4]),
        .O(\mem_oen_reg[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h33222327)) 
    mem_rnw_reg_i_1
       (.I0(out),
        .I1(crnt_state_reg[4]),
        .I2(crnt_state[1]),
        .I3(crnt_state[0]),
        .I4(crnt_state[2]),
        .O(mem_RNW_cmb));
  LUT5 #(
    .INIT(32'h55FF1010)) 
    new_page_d1_i_1
       (.I0(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .I1(tpacc_end),
        .I2(new_page_access),
        .I3(read_break_reg_d1_i_3_n_0),
        .I4(new_page_d1),
        .O(new_page));
  FDRE new_page_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(new_page),
        .Q(new_page_d1),
        .R(SR));
  FDRE read_ack_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_ack_cmb),
        .Q(read_ack),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAFFFF02000200)) 
    read_break_reg_d1_i_1
       (.I0(read_break_reg_d1_i_2_n_0),
        .I1(single_transaction),
        .I2(bus2Mem_RdReq),
        .I3(Bus2IP_RdReq_d1),
        .I4(read_break_reg_d1_i_3_n_0),
        .I5(read_break_reg_d1),
        .O(read_break_reg));
  LUT5 #(
    .INIT(32'h004C0000)) 
    read_break_reg_d1_i_2
       (.I0(crnt_state[1]),
        .I1(out),
        .I2(crnt_state[0]),
        .I3(crnt_state_reg[4]),
        .I4(crnt_state[2]),
        .O(read_break_reg_d1_i_2_n_0));
  LUT5 #(
    .INIT(32'hFF08FF89)) 
    read_break_reg_d1_i_3
       (.I0(out),
        .I1(crnt_state[2]),
        .I2(crnt_state[1]),
        .I3(crnt_state_reg[4]),
        .I4(crnt_state[0]),
        .O(read_break_reg_d1_i_3_n_0));
  FDRE read_break_reg_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_break_reg),
        .Q(read_break_reg_d1),
        .R(SR));
  LUT6 #(
    .INIT(64'h4F4444444F444F44)) 
    read_data_en_reg_i_1
       (.I0(read_data_en_reg_reg_0),
        .I1(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .I2(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .I3(tpacc_end),
        .I4(bus2Mem_RdReq),
        .I5(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .O(read_data_en_cmb));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    read_data_en_reg_i_2
       (.I0(crnt_state[0]),
        .I1(out),
        .I2(crnt_state[2]),
        .I3(crnt_state_reg[4]),
        .I4(crnt_state[1]),
        .O(read_data_en_reg_reg_0));
  FDRE read_data_en_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_data_en_cmb),
        .Q(read_data_en),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    s_axi_mem_arready_INST_0_i_1
       (.I0(crnt_state[0]),
        .I1(out),
        .I2(crnt_state_reg[4]),
        .I3(crnt_state[1]),
        .I4(crnt_state[2]),
        .O(transaction_complete_reg_reg_0));
  LUT5 #(
    .INIT(32'hBFBFFFBF)) 
    s_axi_mem_awready_INST_0_i_1
       (.I0(transaction_complete_reg_reg_0),
        .I1(s_axi_mem_wvalid),
        .I2(s_axi_mem_awvalid),
        .I3(s_axi_mem_arvalid),
        .I4(rw_flag_reg),
        .O(\s_axi_mem_bid_reg_reg[3] ));
  LUT1 #(
    .INIT(2'h2)) 
    s_axi_mem_wready_INST_0_i_1
       (.I0(Write_req_addr_ack_cmb),
        .O(Write_req_data_ack_cmb));
  LUT6 #(
    .INIT(64'h0010FFFF00100010)) 
    s_axi_mem_wready_INST_0_i_2
       (.I0(s_axi_mem_wready_INST_0_i_3_n_0),
        .I1(single_transaction),
        .I2(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ),
        .I3(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ),
        .I4(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ),
        .I5(Write_req_data_ack_cmb13_out),
        .O(Write_req_addr_ack_cmb));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    s_axi_mem_wready_INST_0_i_3
       (.I0(crnt_state[2]),
        .I1(crnt_state_reg[4]),
        .I2(crnt_state[1]),
        .I3(crnt_state[0]),
        .I4(out),
        .O(s_axi_mem_wready_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFAAEA)) 
    transaction_complete_reg_i_1
       (.I0(transaction_complete_reg_i_2_n_0),
        .I1(pend_wrreq_reg),
        .I2(transaction_complete_reg),
        .I3(transaction_complete_reg_reg_0),
        .I4(transaction_complete_reg_i_3_n_0),
        .O(transaction_complete));
  LUT6 #(
    .INIT(64'h0A02080A0A020A08)) 
    transaction_complete_reg_i_2
       (.I0(transaction_complete_reg),
        .I1(crnt_state[2]),
        .I2(crnt_state_reg[4]),
        .I3(crnt_state[0]),
        .I4(out),
        .I5(crnt_state[1]),
        .O(transaction_complete_reg_i_2_n_0));
  LUT4 #(
    .INIT(16'h00F2)) 
    transaction_complete_reg_i_3
       (.I0(p_0_in),
        .I1(Bus2IP_Mem_CS_d2_reg_0),
        .I2(transaction_complete_reg),
        .I3(transaction_complete_reg_i_4_n_0),
        .O(transaction_complete_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'h0000F3DF)) 
    transaction_complete_reg_i_4
       (.I0(crnt_state[1]),
        .I1(crnt_state[2]),
        .I2(crnt_state[0]),
        .I3(out),
        .I4(crnt_state_reg[4]),
        .O(transaction_complete_reg_i_4_n_0));
  FDRE transaction_complete_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(transaction_complete),
        .Q(transaction_complete_reg),
        .R(SR));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCFCE)) 
    transaction_done_reg_i_1
       (.I0(pend_wrreq_reg),
        .I1(thz_load),
        .I2(crnt_state[0]),
        .I3(out),
        .I4(\mem_ce_reg[0]_i_3_n_0 ),
        .I5(crnt_state[2]),
        .O(transaction_done_cmb));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    transaction_done_reg_i_3
       (.I0(crnt_state[1]),
        .I1(crnt_state[2]),
        .I2(out),
        .I3(crnt_state[0]),
        .I4(read_complete_d_4),
        .I5(crnt_state_reg[4]),
        .O(thz_load));
  FDRE transaction_done_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(transaction_done_cmb),
        .Q(transaction_done_i),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAFEAAFEFEFEFAFE)) 
    wlast_reg_i_1
       (.I0(wlast_reg_i_2_n_0),
        .I1(wlast_reg_i_3_n_0),
        .I2(wlast_reg),
        .I3(wlast_reg_i_4_n_0),
        .I4(bus2Mem_WrReq),
        .I5(wlast_reg_i_5_n_0),
        .O(wlast));
  LUT6 #(
    .INIT(64'hAAA8A8A8A8AAAA8A)) 
    wlast_reg_i_2
       (.I0(wlast_reg),
        .I1(crnt_state_reg[4]),
        .I2(out),
        .I3(crnt_state[0]),
        .I4(crnt_state[1]),
        .I5(crnt_state[2]),
        .O(wlast_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wlast_reg_i_3
       (.I0(s_axi_mem_wvalid),
        .I1(s_axi_mem_wlast),
        .O(wlast_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFCF7)) 
    wlast_reg_i_4
       (.I0(crnt_state[0]),
        .I1(crnt_state[1]),
        .I2(crnt_state_reg[4]),
        .I3(crnt_state[2]),
        .I4(out),
        .O(wlast_reg_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    wlast_reg_i_5
       (.I0(crnt_state[0]),
        .I1(out),
        .I2(crnt_state[2]),
        .I3(crnt_state[1]),
        .I4(crnt_state_reg[4]),
        .O(wlast_reg_i_5_n_0));
  FDRE wlast_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wlast),
        .Q(wlast_reg),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mem_steer" *) 
module axi_em_ctrl_mem_steer
   (\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ,
    D,
    mem_dqt_t_d,
    \mem_dq_o_reg_reg[0] ,
    SR,
    data_strobe_c,
    \bus2ip_data_reg_reg[31] ,
    s_axi_aclk,
    readreq_th_reset,
    read_ack,
    Q,
    read_data_en,
    mem_WEN_cmb,
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ,
    bus2ip_reset_reg);
  output \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  output [31:0]D;
  output mem_dqt_t_d;
  output [15:0]\mem_dq_o_reg_reg[0] ;
  input [0:0]SR;
  input data_strobe_c;
  input [31:0]\bus2ip_data_reg_reg[31] ;
  input s_axi_aclk;
  input readreq_th_reset;
  input read_ack;
  input [15:0]Q;
  input read_data_en;
  input mem_WEN_cmb;
  input [1:0]\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ;
  input [0:0]bus2ip_reset_reg;

  wire [1:0]A;
  wire \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  wire [31:0]D;
  wire [1:0]\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] ;
  wire \DATA_STORE_GEN[0].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[10].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[11].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[12].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[13].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[14].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[15].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[16].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[17].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[18].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[19].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[1].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[20].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[21].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[22].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[23].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[24].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[25].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[26].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[27].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[28].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[29].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[2].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[30].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[31].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[3].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[4].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[5].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[6].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[7].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[8].WRDATA_REG__0 ;
  wire \DATA_STORE_GEN[9].WRDATA_REG__0 ;
  wire [15:0]Q;
  wire [0:0]SR;
  wire [0:1]addr_cnt_d1;
  wire [31:0]\bus2ip_data_reg_reg[31] ;
  wire [0:0]bus2ip_reset_reg;
  wire data_strobe_c;
  wire mem_WEN_cmb;
  wire [15:0]\mem_dq_o_reg_reg[0] ;
  wire mem_dqt_t_d;
  wire [6:4]mux4_out;
  wire read_ack;
  wire read_ack_d_4;
  wire read_data_en;
  wire read_data_en_d_3;
  wire readreq_th_reset;
  wire s_axi_aclk;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_ack),
        .Q(read_ack_d_4),
        .R(readreq_th_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_ack_d_4),
        .Q(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ),
        .R(readreq_th_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[0].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [7]),
        .Q(\DATA_STORE_GEN[0].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[10].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [13]),
        .Q(\DATA_STORE_GEN[10].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[11].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [12]),
        .Q(\DATA_STORE_GEN[11].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[12].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [11]),
        .Q(\DATA_STORE_GEN[12].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[13].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [10]),
        .Q(\DATA_STORE_GEN[13].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[14].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [9]),
        .Q(\DATA_STORE_GEN[14].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[15].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [8]),
        .Q(\DATA_STORE_GEN[15].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[16].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [23]),
        .Q(\DATA_STORE_GEN[16].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[17].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [22]),
        .Q(\DATA_STORE_GEN[17].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[18].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [21]),
        .Q(\DATA_STORE_GEN[18].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[19].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [20]),
        .Q(\DATA_STORE_GEN[19].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[1].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [6]),
        .Q(\DATA_STORE_GEN[1].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[20].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [19]),
        .Q(\DATA_STORE_GEN[20].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[21].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [18]),
        .Q(\DATA_STORE_GEN[21].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[22].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [17]),
        .Q(\DATA_STORE_GEN[22].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[23].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [16]),
        .Q(\DATA_STORE_GEN[23].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[24].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [31]),
        .Q(\DATA_STORE_GEN[24].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[25].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [30]),
        .Q(\DATA_STORE_GEN[25].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[26].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [29]),
        .Q(\DATA_STORE_GEN[26].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[27].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [28]),
        .Q(\DATA_STORE_GEN[27].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[28].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [27]),
        .Q(\DATA_STORE_GEN[28].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[29].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [26]),
        .Q(\DATA_STORE_GEN[29].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[2].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [5]),
        .Q(\DATA_STORE_GEN[2].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[30].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [25]),
        .Q(\DATA_STORE_GEN[30].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[31].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [24]),
        .Q(\DATA_STORE_GEN[31].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[3].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [4]),
        .Q(\DATA_STORE_GEN[3].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[4].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [3]),
        .Q(\DATA_STORE_GEN[4].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[5].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [2]),
        .Q(\DATA_STORE_GEN[5].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[6].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [1]),
        .Q(\DATA_STORE_GEN[6].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[7].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [0]),
        .Q(\DATA_STORE_GEN[7].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[8].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [15]),
        .Q(\DATA_STORE_GEN[8].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[9].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\bus2ip_data_reg_reg[31] [14]),
        .Q(\DATA_STORE_GEN[9].WRDATA_REG__0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[15]),
        .Q(D[31]),
        .R(SR));
  LUT3 #(
    .INIT(8'h10)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1 
       (.I0(A[0]),
        .I1(A[1]),
        .I2(read_data_en_d_3),
        .O(mux4_out[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[1].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[14]),
        .Q(D[30]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[2].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[13]),
        .Q(D[29]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[3].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[12]),
        .Q(D[28]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[4].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[11]),
        .Q(D[27]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[5].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[10]),
        .Q(D[26]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[6].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[9]),
        .Q(D[25]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[7].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[8]),
        .Q(D[24]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[7]),
        .Q(D[23]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[1].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[6]),
        .Q(D[22]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[2].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[5]),
        .Q(D[21]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[3].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[4]),
        .Q(D[20]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[4].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[3]),
        .Q(D[19]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[5].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[2]),
        .Q(D[18]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[6].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[1]),
        .Q(D[17]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[7].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[6]),
        .D(Q[0]),
        .Q(D[16]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[15]),
        .Q(D[15]),
        .R(SR));
  LUT3 #(
    .INIT(8'h40)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1 
       (.I0(A[1]),
        .I1(A[0]),
        .I2(read_data_en_d_3),
        .O(mux4_out[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[1].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[14]),
        .Q(D[14]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[2].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[13]),
        .Q(D[13]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[3].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[12]),
        .Q(D[12]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[4].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[11]),
        .Q(D[11]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[5].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[10]),
        .Q(D[10]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[6].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[9]),
        .Q(D[9]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[7].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[8]),
        .Q(D[8]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[7]),
        .Q(D[7]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[1].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[6]),
        .Q(D[6]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[2].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[5]),
        .Q(D[5]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[3].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[4]),
        .Q(D[4]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[4].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[3]),
        .Q(D[3]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[5].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[2]),
        .Q(D[2]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[6].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[1]),
        .Q(D[1]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[7].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(mux4_out[4]),
        .D(Q[0]),
        .Q(D[0]),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.RDDATA_EN_GEN_ASYNC[0].RDDATA_EN_REG_ASYNC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_data_en),
        .Q(read_data_en_d_3),
        .R(SR));
  FDRE \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .Q(addr_cnt_d1[0]),
        .R(bus2ip_reset_reg));
  FDRE \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .Q(addr_cnt_d1[1]),
        .R(bus2ip_reset_reg));
  FDRE \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_cnt_d1[0]),
        .Q(A[1]),
        .R(bus2ip_reset_reg));
  FDRE \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d2_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_cnt_d1[1]),
        .Q(A[0]),
        .R(bus2ip_reset_reg));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[0]_i_1 
       (.I0(\DATA_STORE_GEN[16].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[0].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [15]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[10]_i_1 
       (.I0(\DATA_STORE_GEN[26].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[10].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [5]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[11]_i_1 
       (.I0(\DATA_STORE_GEN[27].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[11].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [4]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[12]_i_1 
       (.I0(\DATA_STORE_GEN[28].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[12].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [3]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[13]_i_1 
       (.I0(\DATA_STORE_GEN[29].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[13].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [2]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[14]_i_1 
       (.I0(\DATA_STORE_GEN[30].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[14].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [1]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[15]_i_1 
       (.I0(\DATA_STORE_GEN[31].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[15].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [0]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[1]_i_1 
       (.I0(\DATA_STORE_GEN[17].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[1].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [14]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[2]_i_1 
       (.I0(\DATA_STORE_GEN[18].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[2].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [13]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[3]_i_1 
       (.I0(\DATA_STORE_GEN[19].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[3].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [12]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[4]_i_1 
       (.I0(\DATA_STORE_GEN[20].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[4].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [11]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[5]_i_1 
       (.I0(\DATA_STORE_GEN[21].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[5].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [10]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[6]_i_1 
       (.I0(\DATA_STORE_GEN[22].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[6].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [9]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[7]_i_1 
       (.I0(\DATA_STORE_GEN[23].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[7].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [8]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[8]_i_1 
       (.I0(\DATA_STORE_GEN[24].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[8].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [7]));
  LUT4 #(
    .INIT(16'h0B08)) 
    \mem_dq_o_reg[9]_i_1 
       (.I0(\DATA_STORE_GEN[25].WRDATA_REG__0 ),
        .I1(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [0]),
        .I2(\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0] [1]),
        .I3(\DATA_STORE_GEN[9].WRDATA_REG__0 ),
        .O(\mem_dq_o_reg_reg[0] [6]));
  FDSE mem_dqt_t_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_WEN_cmb),
        .Q(mem_dqt_t_d),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "select_param" *) 
module axi_em_ctrl_select_param
   (CO,
    Q,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9] ,
    S,
    bus2ip_addr_temp,
    SR,
    E,
    D,
    s_axi_aclk);
  output [0:0]CO;
  output [3:0]Q;
  input [0:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9] ;
  input [0:0]S;
  input [23:0]bus2ip_addr_temp;
  input [0:0]SR;
  input [0:0]E;
  input [27:0]D;
  input s_axi_aclk;

  wire [0:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9] ;
  wire [0:0]CO;
  wire [27:0]D;
  wire [0:0]E;
  wire [1:27]L;
  wire [3:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [23:0]bus2ip_addr_temp;
  wire neqOp_carry__0_i_1_n_0;
  wire neqOp_carry__0_i_2_n_0;
  wire neqOp_carry__0_i_3_n_0;
  wire neqOp_carry__0_i_4_n_0;
  wire neqOp_carry__0_n_0;
  wire neqOp_carry__0_n_1;
  wire neqOp_carry__0_n_2;
  wire neqOp_carry__0_n_3;
  wire neqOp_carry__1_i_2_n_0;
  wire neqOp_carry__1_n_3;
  wire neqOp_carry_i_1_n_0;
  wire neqOp_carry_i_2_n_0;
  wire neqOp_carry_i_4_n_0;
  wire neqOp_carry_n_0;
  wire neqOp_carry_n_1;
  wire neqOp_carry_n_2;
  wire neqOp_carry_n_3;
  wire s_axi_aclk;
  wire [3:0]NLW_neqOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_neqOp_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_neqOp_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_neqOp_carry__1_O_UNCONNECTED;

  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[27]),
        .Q(Q[3]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[17]),
        .Q(L[10]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[16]),
        .Q(L[11]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[15]),
        .Q(L[12]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[14]),
        .Q(L[13]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[13]),
        .Q(L[14]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[12]),
        .Q(L[15]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[11]),
        .Q(L[16]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[10]),
        .Q(L[17]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[9]),
        .Q(L[18]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[8]),
        .Q(L[19]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[26]),
        .Q(L[1]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[7]),
        .Q(L[20]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[6]),
        .Q(L[21]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[2]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[1]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[0]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(L[25]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(L[26]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(L[27]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[25]),
        .Q(L[2]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[24]),
        .Q(L[3]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[23]),
        .Q(L[4]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[22]),
        .Q(L[5]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[21]),
        .Q(L[6]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[20]),
        .Q(L[7]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[19]),
        .Q(L[8]),
        .R(SR));
  FDRE \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[18]),
        .Q(L[9]),
        .R(SR));
  CARRY4 neqOp_carry
       (.CI(1'b0),
        .CO({neqOp_carry_n_0,neqOp_carry_n_1,neqOp_carry_n_2,neqOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_neqOp_carry_O_UNCONNECTED[3:0]),
        .S({neqOp_carry_i_1_n_0,neqOp_carry_i_2_n_0,\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9] ,neqOp_carry_i_4_n_0}));
  CARRY4 neqOp_carry__0
       (.CI(neqOp_carry_n_0),
        .CO({neqOp_carry__0_n_0,neqOp_carry__0_n_1,neqOp_carry__0_n_2,neqOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_neqOp_carry__0_O_UNCONNECTED[3:0]),
        .S({neqOp_carry__0_i_1_n_0,neqOp_carry__0_i_2_n_0,neqOp_carry__0_i_3_n_0,neqOp_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    neqOp_carry__0_i_1
       (.I0(L[6]),
        .I1(bus2ip_addr_temp[18]),
        .I2(L[5]),
        .I3(bus2ip_addr_temp[19]),
        .I4(bus2ip_addr_temp[20]),
        .I5(L[4]),
        .O(neqOp_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    neqOp_carry__0_i_2
       (.I0(L[7]),
        .I1(bus2ip_addr_temp[17]),
        .I2(L[9]),
        .I3(bus2ip_addr_temp[15]),
        .I4(bus2ip_addr_temp[16]),
        .I5(L[8]),
        .O(neqOp_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    neqOp_carry__0_i_3
       (.I0(L[12]),
        .I1(bus2ip_addr_temp[12]),
        .I2(L[11]),
        .I3(bus2ip_addr_temp[13]),
        .I4(bus2ip_addr_temp[14]),
        .I5(L[10]),
        .O(neqOp_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    neqOp_carry__0_i_4
       (.I0(L[15]),
        .I1(bus2ip_addr_temp[9]),
        .I2(L[14]),
        .I3(bus2ip_addr_temp[10]),
        .I4(bus2ip_addr_temp[11]),
        .I5(L[13]),
        .O(neqOp_carry__0_i_4_n_0));
  CARRY4 neqOp_carry__1
       (.CI(neqOp_carry__0_n_0),
        .CO({NLW_neqOp_carry__1_CO_UNCONNECTED[3:2],CO,neqOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(NLW_neqOp_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,S,neqOp_carry__1_i_2_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    neqOp_carry__1_i_2
       (.I0(L[3]),
        .I1(bus2ip_addr_temp[21]),
        .I2(L[2]),
        .I3(bus2ip_addr_temp[22]),
        .I4(bus2ip_addr_temp[23]),
        .I5(L[1]),
        .O(neqOp_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    neqOp_carry_i_1
       (.I0(L[18]),
        .I1(bus2ip_addr_temp[6]),
        .I2(L[17]),
        .I3(bus2ip_addr_temp[7]),
        .I4(bus2ip_addr_temp[8]),
        .I5(L[16]),
        .O(neqOp_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    neqOp_carry_i_2
       (.I0(L[20]),
        .I1(bus2ip_addr_temp[4]),
        .I2(L[21]),
        .I3(bus2ip_addr_temp[3]),
        .I4(bus2ip_addr_temp[5]),
        .I5(L[19]),
        .O(neqOp_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    neqOp_carry_i_4
       (.I0(L[25]),
        .I1(bus2ip_addr_temp[2]),
        .I2(L[27]),
        .I3(bus2ip_addr_temp[0]),
        .I4(bus2ip_addr_temp[1]),
        .I5(L[26]),
        .O(neqOp_carry_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module axi_em_ctrl_srl_fifo_rbu_f
   (Q,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0] ,
    Bus2IP_RdReq_d1_reg,
    enable_rdce_cmb,
    s_axi_mem_rresp,
    bus2ip_addr_i,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ,
    E,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1] ,
    \rd_data_count_reg[7] ,
    s_axi_mem_rvalid,
    s_axi_mem_rdata,
    bus2ip_reset,
    s_axi_aclk,
    S,
    out,
    ip2bus_rdack,
    \burst_data_cnt_reg[7] ,
    \burst_data_cnt_reg[3] ,
    \burst_data_cnt_reg[7]_0 ,
    single_transfer_cmb,
    enable_cs_cmb126_out,
    rnw_reg_reg,
    \derived_burst_reg_reg[1] ,
    \LEN_GEN_32.derived_len_reg_reg[3] ,
    enable_cs_cmb,
    \burst_addr_cnt_reg[6] ,
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0] ,
    s_axi_mem_rready,
    rd_fifo_wr_en,
    in);
  output [0:0]Q;
  output \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0] ;
  output Bus2IP_RdReq_d1_reg;
  output enable_rdce_cmb;
  output [0:0]s_axi_mem_rresp;
  output bus2ip_addr_i;
  output \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ;
  output [0:0]E;
  output \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1] ;
  output [0:0]\rd_data_count_reg[7] ;
  output s_axi_mem_rvalid;
  output [31:0]s_axi_mem_rdata;
  input bus2ip_reset;
  input s_axi_aclk;
  input [0:0]S;
  input [2:0]out;
  input ip2bus_rdack;
  input \burst_data_cnt_reg[7] ;
  input \burst_data_cnt_reg[3] ;
  input [1:0]\burst_data_cnt_reg[7]_0 ;
  input single_transfer_cmb;
  input enable_cs_cmb126_out;
  input rnw_reg_reg;
  input [1:0]\derived_burst_reg_reg[1] ;
  input [0:0]\LEN_GEN_32.derived_len_reg_reg[3] ;
  input enable_cs_cmb;
  input \burst_addr_cnt_reg[6] ;
  input \MEM_DECODE_GEN[0].rdce_out_i_reg[0] ;
  input s_axi_mem_rready;
  input rd_fifo_wr_en;
  input [0:32]in;

  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0] ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1] ;
  wire Bus2IP_RdReq_d1_reg;
  wire CNTR_INCR_DECR_ADDN_F_I_n_0;
  wire CNTR_INCR_DECR_ADDN_F_I_n_1;
  wire CNTR_INCR_DECR_ADDN_F_I_n_12;
  wire CNTR_INCR_DECR_ADDN_F_I_n_13;
  wire CNTR_INCR_DECR_ADDN_F_I_n_14;
  wire CNTR_INCR_DECR_ADDN_F_I_n_15;
  wire CNTR_INCR_DECR_ADDN_F_I_n_16;
  wire CNTR_INCR_DECR_ADDN_F_I_n_17;
  wire CNTR_INCR_DECR_ADDN_F_I_n_18;
  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire CNTR_INCR_DECR_ADDN_F_I_n_4;
  wire CNTR_INCR_DECR_ADDN_F_I_n_5;
  wire CNTR_INCR_DECR_ADDN_F_I_n_6;
  wire [0:0]E;
  wire [0:0]\LEN_GEN_32.derived_len_reg_reg[3] ;
  wire \MEM_DECODE_GEN[0].rdce_out_i_reg[0] ;
  wire [0:0]Q;
  wire [0:0]S;
  wire \burst_addr_cnt_reg[6] ;
  wire \burst_data_cnt_reg[3] ;
  wire \burst_data_cnt_reg[7] ;
  wire [1:0]\burst_data_cnt_reg[7]_0 ;
  wire bus2ip_addr_i;
  wire bus2ip_reset;
  wire [1:0]\derived_burst_reg_reg[1] ;
  wire enable_cs_cmb;
  wire enable_cs_cmb126_out;
  wire enable_rdce_cmb;
  wire fifo_full_p1;
  wire [0:32]in;
  wire ip2bus_rdack;
  wire [2:0]out;
  wire [0:0]\rd_data_count_reg[7] ;
  wire rd_fifo_full;
  wire rd_fifo_wr_en;
  wire rnw_reg_reg;
  wire s_axi_aclk;
  wire [31:0]s_axi_mem_rdata;
  wire s_axi_mem_rready;
  wire [0:0]s_axi_mem_rresp;
  wire s_axi_mem_rvalid;
  wire single_transfer_cmb;

  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_1 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .I1(\derived_burst_reg_reg[1] [0]),
        .I2(enable_cs_cmb),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_3 
       (.I0(enable_cs_cmb),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0] ),
        .I2(\burst_addr_cnt_reg[6] ),
        .I3(\MEM_DECODE_GEN[0].rdce_out_i_reg[0] ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hAAAAA888)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_3 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .I1(\derived_burst_reg_reg[1] [0]),
        .I2(\LEN_GEN_32.derived_len_reg_reg[3] ),
        .I3(\derived_burst_reg_reg[1] [1]),
        .I4(enable_cs_cmb),
        .O(bus2ip_addr_i));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_4 
       (.I0(enable_cs_cmb),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0] ),
        .I2(\MEM_DECODE_GEN[0].rdce_out_i_reg[0] ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1] ));
  LUT6 #(
    .INIT(64'h00000000FFFF0008)) 
    Bus2IP_RdReq_d1_i_3
       (.I0(ip2bus_rdack),
        .I1(\burst_data_cnt_reg[3] ),
        .I2(\burst_data_cnt_reg[7]_0 [0]),
        .I3(\burst_data_cnt_reg[7]_0 [1]),
        .I4(rd_fifo_full),
        .I5(out[0]),
        .O(Bus2IP_RdReq_d1_reg));
  axi_em_ctrl_cntr_incr_decr_addn_f CNTR_INCR_DECR_ADDN_F_I
       (.A({CNTR_INCR_DECR_ADDN_F_I_n_12,CNTR_INCR_DECR_ADDN_F_I_n_13}),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_0,CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4,CNTR_INCR_DECR_ADDN_F_I_n_5,CNTR_INCR_DECR_ADDN_F_I_n_6,Q}),
        .S(S),
        .addr({CNTR_INCR_DECR_ADDN_F_I_n_14,CNTR_INCR_DECR_ADDN_F_I_n_15}),
        .\burst_data_cnt_reg[7] (\burst_data_cnt_reg[7] ),
        .bus2ip_reset(bus2ip_reset),
        .enable_cs_cmb(enable_cs_cmb),
        .enable_cs_cmb126_out(enable_cs_cmb126_out),
        .enable_rdce_cmb(enable_rdce_cmb),
        .fifo_full_p1(fifo_full_p1),
        .out(out),
        .\rd_data_count_reg[7] (\rd_data_count_reg[7] ),
        .s_axi_aclk(s_axi_aclk),
        .\s_axi_mem_rdata[14] ({CNTR_INCR_DECR_ADDN_F_I_n_16,CNTR_INCR_DECR_ADDN_F_I_n_17,CNTR_INCR_DECR_ADDN_F_I_n_18}),
        .s_axi_mem_rready(s_axi_mem_rready),
        .s_axi_mem_rvalid(s_axi_mem_rvalid),
        .single_transfer_cmb(single_transfer_cmb));
  axi_em_ctrl_dynshreg_f DYNSHREG_F_I
       (.A({CNTR_INCR_DECR_ADDN_F_I_n_12,CNTR_INCR_DECR_ADDN_F_I_n_13}),
        .\INFERRED_GEN.cnt_i_reg[2]_rep ({CNTR_INCR_DECR_ADDN_F_I_n_16,CNTR_INCR_DECR_ADDN_F_I_n_17,CNTR_INCR_DECR_ADDN_F_I_n_18}),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_0,CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4,CNTR_INCR_DECR_ADDN_F_I_n_5,CNTR_INCR_DECR_ADDN_F_I_n_6,Q}),
        .addr({CNTR_INCR_DECR_ADDN_F_I_n_14,CNTR_INCR_DECR_ADDN_F_I_n_15}),
        .in(in),
        .rd_fifo_wr_en(rd_fifo_wr_en),
        .rnw_reg_reg(rnw_reg_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_mem_rdata(s_axi_mem_rdata),
        .s_axi_mem_rresp(s_axi_mem_rresp));
  FDRE FIFO_Full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(rd_fifo_full),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'h0000000058085848)) 
    \PERBIT_GEN[7].MULT_AND_i1_i_2 
       (.I0(out[0]),
        .I1(ip2bus_rdack),
        .I2(out[1]),
        .I3(rd_fifo_full),
        .I4(\burst_data_cnt_reg[7] ),
        .I5(out[2]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

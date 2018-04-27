-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:prc:1.2
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY prc IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    icap_clk : IN STD_LOGIC;
    icap_reset : IN STD_LOGIC;
    icap_csib : OUT STD_LOGIC;
    icap_rdwrb : OUT STD_LOGIC;
    icap_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    icap_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    vsm_vs_main_hw_triggers : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    vsm_vs_main_rm_shutdown_req : OUT STD_LOGIC;
    vsm_vs_main_rm_shutdown_ack : IN STD_LOGIC;
    vsm_vs_main_rm_decouple : OUT STD_LOGIC;
    vsm_vs_main_rm_reset : OUT STD_LOGIC;
    vsm_vs_main_event_error : OUT STD_LOGIC;
    vsm_vs_main_sw_shutdown_req : OUT STD_LOGIC;
    vsm_vs_main_sw_startup_req : OUT STD_LOGIC;
    vsm_vs_main_m_axis_status_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    vsm_vs_main_m_axis_status_tvalid : OUT STD_LOGIC;
    cap_req : OUT STD_LOGIC;
    cap_gnt : IN STD_LOGIC;
    cap_rel : IN STD_LOGIC;
    s_axi_reg_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_reg_awvalid : IN STD_LOGIC;
    s_axi_reg_awready : OUT STD_LOGIC;
    s_axi_reg_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_reg_wvalid : IN STD_LOGIC;
    s_axi_reg_wready : OUT STD_LOGIC;
    s_axi_reg_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_reg_bvalid : OUT STD_LOGIC;
    s_axi_reg_bready : IN STD_LOGIC;
    s_axi_reg_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_reg_arvalid : IN STD_LOGIC;
    s_axi_reg_arready : OUT STD_LOGIC;
    s_axi_reg_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_reg_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_reg_rvalid : OUT STD_LOGIC;
    s_axi_reg_rready : IN STD_LOGIC;
    m_axi_mem_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_mem_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_mem_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mem_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mem_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mem_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mem_aruser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mem_arvalid : OUT STD_LOGIC;
    m_axi_mem_arready : IN STD_LOGIC;
    m_axi_mem_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_mem_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mem_rlast : IN STD_LOGIC;
    m_axi_mem_rvalid : IN STD_LOGIC;
    m_axi_mem_rready : OUT STD_LOGIC
  );
END prc;

ARCHITECTURE prc_arch OF prc IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF prc_arch: ARCHITECTURE IS "yes";
  COMPONENT prc_prc IS
    GENERIC (
      C_XDEVICEFAMILY : STRING
    );
    PORT (
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      icap_clk : IN STD_LOGIC;
      icap_reset : IN STD_LOGIC;
      icap_csib : OUT STD_LOGIC;
      icap_rdwrb : OUT STD_LOGIC;
      icap_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      icap_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      vsm_vs_main_hw_triggers : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      vsm_vs_main_rm_shutdown_req : OUT STD_LOGIC;
      vsm_vs_main_rm_shutdown_ack : IN STD_LOGIC;
      vsm_vs_main_rm_decouple : OUT STD_LOGIC;
      vsm_vs_main_rm_reset : OUT STD_LOGIC;
      vsm_vs_main_event_error : OUT STD_LOGIC;
      vsm_vs_main_sw_shutdown_req : OUT STD_LOGIC;
      vsm_vs_main_sw_startup_req : OUT STD_LOGIC;
      vsm_vs_main_m_axis_status_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      vsm_vs_main_m_axis_status_tvalid : OUT STD_LOGIC;
      cap_req : OUT STD_LOGIC;
      cap_gnt : IN STD_LOGIC;
      cap_rel : IN STD_LOGIC;
      s_axi_reg_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_reg_awvalid : IN STD_LOGIC;
      s_axi_reg_awready : OUT STD_LOGIC;
      s_axi_reg_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_reg_wvalid : IN STD_LOGIC;
      s_axi_reg_wready : OUT STD_LOGIC;
      s_axi_reg_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_reg_bvalid : OUT STD_LOGIC;
      s_axi_reg_bready : IN STD_LOGIC;
      s_axi_reg_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_reg_arvalid : IN STD_LOGIC;
      s_axi_reg_arready : OUT STD_LOGIC;
      s_axi_reg_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_reg_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_reg_rvalid : OUT STD_LOGIC;
      s_axi_reg_rready : IN STD_LOGIC;
      m_axi_mem_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_mem_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_mem_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_mem_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_mem_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_mem_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_mem_aruser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_mem_arvalid : OUT STD_LOGIC;
      m_axi_mem_arready : IN STD_LOGIC;
      m_axi_mem_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_mem_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_mem_rlast : IN STD_LOGIC;
      m_axi_mem_rvalid : IN STD_LOGIC;
      m_axi_mem_rready : OUT STD_LOGIC
    );
  END COMPONENT prc_prc;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF prc_arch: ARCHITECTURE IS "prc_prc,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF prc_arch : ARCHITECTURE IS "prc,prc_prc,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF prc_arch: ARCHITECTURE IS "prc,prc_prc,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=prc,x_ipVersion=1.2,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=zynq}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_mem_araddr: SIGNAL IS "XIL_INTERFACENAME m_axi_mem, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 4, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_reg_awaddr: SIGNAL IS "XIL_INTERFACENAME s_axi_reg, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF cap_rel: SIGNAL IS "xilinx.com:interface:cap:1.0 icap_arbiter REL";
  ATTRIBUTE X_INTERFACE_INFO OF cap_gnt: SIGNAL IS "xilinx.com:interface:cap:1.0 icap_arbiter GNT";
  ATTRIBUTE X_INTERFACE_INFO OF cap_req: SIGNAL IS "xilinx.com:interface:cap:1.0 icap_arbiter REQ";
  ATTRIBUTE X_INTERFACE_INFO OF vsm_vs_main_m_axis_status_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 vsm_vs_main_m_axis_status TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF vsm_vs_main_m_axis_status_tdata: SIGNAL IS "XIL_INTERFACENAME vsm_vs_main_m_axis_status, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF vsm_vs_main_m_axis_status_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 vsm_vs_main_m_axis_status TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF icap_o: SIGNAL IS "xilinx.com:interface:icap:1.0 ICAP i";
  ATTRIBUTE X_INTERFACE_INFO OF icap_i: SIGNAL IS "xilinx.com:interface:icap:1.0 ICAP o";
  ATTRIBUTE X_INTERFACE_INFO OF icap_rdwrb: SIGNAL IS "xilinx.com:interface:icap:1.0 ICAP rdwrb";
  ATTRIBUTE X_INTERFACE_INFO OF icap_csib: SIGNAL IS "xilinx.com:interface:icap:1.0 ICAP csib";
  ATTRIBUTE X_INTERFACE_PARAMETER OF icap_reset: SIGNAL IS "XIL_INTERFACENAME icap_reset, POLARITY ACTIVE_HIGH";
  ATTRIBUTE X_INTERFACE_INFO OF icap_reset: SIGNAL IS "xilinx.com:signal:reset:1.0 icap_reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF icap_clk: SIGNAL IS "XIL_INTERFACENAME ICAP_CLK, ASSOCIATED_BUSIF ICAP, ASSOCIATED_RESET icap_reset, FREQ_HZ 100000000, PHASE 0.000";
  ATTRIBUTE X_INTERFACE_INFO OF icap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ICAP_CLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF vsm_vs_main_m_axis_status:s_axi_reg:m_axi_mem, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
BEGIN
  U0 : prc_prc
    GENERIC MAP (
      C_XDEVICEFAMILY => "zynq"
    )
    PORT MAP (
      clk => clk,
      reset => reset,
      icap_clk => icap_clk,
      icap_reset => icap_reset,
      icap_csib => icap_csib,
      icap_rdwrb => icap_rdwrb,
      icap_i => icap_i,
      icap_o => icap_o,
      vsm_vs_main_hw_triggers => vsm_vs_main_hw_triggers,
      vsm_vs_main_rm_shutdown_req => vsm_vs_main_rm_shutdown_req,
      vsm_vs_main_rm_shutdown_ack => vsm_vs_main_rm_shutdown_ack,
      vsm_vs_main_rm_decouple => vsm_vs_main_rm_decouple,
      vsm_vs_main_rm_reset => vsm_vs_main_rm_reset,
      vsm_vs_main_event_error => vsm_vs_main_event_error,
      vsm_vs_main_sw_shutdown_req => vsm_vs_main_sw_shutdown_req,
      vsm_vs_main_sw_startup_req => vsm_vs_main_sw_startup_req,
      vsm_vs_main_m_axis_status_tdata => vsm_vs_main_m_axis_status_tdata,
      vsm_vs_main_m_axis_status_tvalid => vsm_vs_main_m_axis_status_tvalid,
      cap_req => cap_req,
      cap_gnt => cap_gnt,
      cap_rel => cap_rel,
      s_axi_reg_awaddr => s_axi_reg_awaddr,
      s_axi_reg_awvalid => s_axi_reg_awvalid,
      s_axi_reg_awready => s_axi_reg_awready,
      s_axi_reg_wdata => s_axi_reg_wdata,
      s_axi_reg_wvalid => s_axi_reg_wvalid,
      s_axi_reg_wready => s_axi_reg_wready,
      s_axi_reg_bresp => s_axi_reg_bresp,
      s_axi_reg_bvalid => s_axi_reg_bvalid,
      s_axi_reg_bready => s_axi_reg_bready,
      s_axi_reg_araddr => s_axi_reg_araddr,
      s_axi_reg_arvalid => s_axi_reg_arvalid,
      s_axi_reg_arready => s_axi_reg_arready,
      s_axi_reg_rdata => s_axi_reg_rdata,
      s_axi_reg_rresp => s_axi_reg_rresp,
      s_axi_reg_rvalid => s_axi_reg_rvalid,
      s_axi_reg_rready => s_axi_reg_rready,
      m_axi_mem_araddr => m_axi_mem_araddr,
      m_axi_mem_arlen => m_axi_mem_arlen,
      m_axi_mem_arsize => m_axi_mem_arsize,
      m_axi_mem_arburst => m_axi_mem_arburst,
      m_axi_mem_arprot => m_axi_mem_arprot,
      m_axi_mem_arcache => m_axi_mem_arcache,
      m_axi_mem_aruser => m_axi_mem_aruser,
      m_axi_mem_arvalid => m_axi_mem_arvalid,
      m_axi_mem_arready => m_axi_mem_arready,
      m_axi_mem_rdata => m_axi_mem_rdata,
      m_axi_mem_rresp => m_axi_mem_rresp,
      m_axi_mem_rlast => m_axi_mem_rlast,
      m_axi_mem_rvalid => m_axi_mem_rvalid,
      m_axi_mem_rready => m_axi_mem_rready
    );
END prc_arch;

-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Thu Apr 26 21:54:23 2018
-- Host        : dakre-VirtualBox running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim /home/dakre/dpr_rt/hw/Sources/lab/axi_em_ctrl/axi_em_ctrl_sim_netlist.vhdl
-- Design      : axi_em_ctrl
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_axi_emc_addr_gen is
  port (
    \ADDRESS_STORE_GEN[29].ADDRESS_REG\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_addr_temp : out STD_LOGIC_VECTOR ( 28 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    enable_cs_cmb : out STD_LOGIC;
    rnw_cmb : out STD_LOGIC;
    rnw_cmb0 : out STD_LOGIC;
    \burst_addr_cnt_reg[7]\ : out STD_LOGIC;
    \burst_addr_cnt_reg[6]\ : out STD_LOGIC;
    \rd_data_count_reg[6]\ : out STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    enable_cs_cmb0 : in STD_LOGIC;
    enable_cs_cmb126_out : in STD_LOGIC;
    rnw_reg_reg : in STD_LOGIC;
    s_axi_mem_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \derived_burst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \LEN_GEN_32.derived_len_reg_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \burst_addr_cnt_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    last_data_acked : in STD_LOGIC;
    \rd_data_count_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_rready : in STD_LOGIC;
    s_axi_mem_arvalid : in STD_LOGIC;
    rw_flag_reg_reg : in STD_LOGIC;
    s_axi_mem_awvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[2]\ : in STD_LOGIC;
    bus2ip_addr_i : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[2]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_axi_emc_addr_gen : entity is "axi_emc_addr_gen";
end axi_em_ctrl_axi_emc_addr_gen;

architecture STRUCTURE of axi_em_ctrl_axi_emc_addr_gen is
  signal \^address_store_gen[29].address_reg\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_4_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_4_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_4_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_3_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal addr_11_6_cmb : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^burst_addr_cnt_reg[6]\ : STD_LOGIC;
  signal \bus2ip_addr_i[12]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[13]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[14]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[15]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[16]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[17]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[18]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[19]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[20]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[21]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[22]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[23]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[24]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[25]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[26]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[27]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[28]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[29]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[30]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[31]_i_2_n_0\ : STD_LOGIC;
  signal \^bus2ip_addr_temp\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \^enable_cs_cmb\ : STD_LOGIC;
  signal \^rd_data_count_reg[6]\ : STD_LOGIC;
  signal \^rnw_cmb\ : STD_LOGIC;
  signal \^rnw_cmb0\ : STD_LOGIC;
  signal rnw_reg_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[12]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[13]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[14]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[15]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[16]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[17]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[18]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[19]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[20]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[21]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[22]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[23]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[24]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[25]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[26]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[27]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[28]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[29]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[30]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[31]_i_2\ : label is "soft_lutpair29";
begin
  \ADDRESS_STORE_GEN[29].ADDRESS_REG\ <= \^address_store_gen[29].address_reg\;
  SR(0) <= \^sr\(0);
  \burst_addr_cnt_reg[6]\ <= \^burst_addr_cnt_reg[6]\;
  bus2ip_addr_temp(28 downto 0) <= \^bus2ip_addr_temp\(28 downto 0);
  enable_cs_cmb <= \^enable_cs_cmb\;
  \rd_data_count_reg[6]\ <= \^rd_data_count_reg[6]\;
  rnw_cmb <= \^rnw_cmb\;
  rnw_cmb0 <= \^rnw_cmb0\;
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => s_axi_mem_araddr(10),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(10),
      I3 => \^enable_cs_cmb\,
      I4 => \^bus2ip_addr_temp\(7),
      I5 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2_n_0\,
      O => addr_11_6_cmb(4)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^bus2ip_addr_temp\(6),
      I1 => \^bus2ip_addr_temp\(4),
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0\,
      I3 => \^bus2ip_addr_temp\(5),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_mem_araddr(11),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(11),
      I3 => \^enable_cs_cmb\,
      I4 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_4_n_0\,
      O => addr_11_6_cmb(5)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^bus2ip_addr_temp\(8),
      I1 => \^bus2ip_addr_temp\(6),
      I2 => \^bus2ip_addr_temp\(4),
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0\,
      I4 => \^bus2ip_addr_temp\(5),
      I5 => \^bus2ip_addr_temp\(7),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_4_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFFFA0A03000"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_2_n_0\,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3_n_0\,
      I2 => \FSM_sequential_emc_addr_ps_reg[2]\,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4_n_0\,
      I4 => \^enable_cs_cmb\,
      I5 => \^address_store_gen[29].address_reg\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(2),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(2),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0155"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1]\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \derived_burst_reg_reg[1]\(0),
      I1 => \LEN_GEN_32.derived_len_reg_reg[2]\(0),
      I2 => \derived_burst_reg_reg[1]\(1),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFFFA0A03000"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_2_n_0\,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_3_n_0\,
      I2 => \FSM_sequential_emc_addr_ps_reg[2]\,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_4_n_0\,
      I4 => \^enable_cs_cmb\,
      I5 => \^bus2ip_addr_temp\(0),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(3),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(3),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0057FFFF"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1]\,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^address_store_gen[29].address_reg\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_3_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \derived_burst_reg_reg[1]\(0),
      I1 => \LEN_GEN_32.derived_len_reg_reg[2]\(1),
      I2 => \derived_burst_reg_reg[1]\(1),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_4_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFFFA0A03000"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_2_n_0\,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0\,
      I2 => \FSM_sequential_emc_addr_ps_reg[2]\,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_4_n_0\,
      I4 => \^enable_cs_cmb\,
      I5 => \^bus2ip_addr_temp\(1),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(4),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(4),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55577777FFFFFFFF"
    )
        port map (
      I0 => \^address_store_gen[29].address_reg\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\,
      I4 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1]\,
      I5 => \^bus2ip_addr_temp\(0),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \derived_burst_reg_reg[1]\(0),
      I1 => \LEN_GEN_32.derived_len_reg_reg[2]\(2),
      I2 => \derived_burst_reg_reg[1]\(1),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_4_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFF8B880000"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_2_n_0\,
      I1 => \^enable_cs_cmb\,
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0\,
      I3 => \^bus2ip_addr_temp\(1),
      I4 => bus2ip_addr_i,
      I5 => \^bus2ip_addr_temp\(2),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(5),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(5),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi_mem_araddr(6),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(6),
      I3 => \^enable_cs_cmb\,
      I4 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2_n_0\,
      I5 => \^bus2ip_addr_temp\(3),
      O => addr_11_6_cmb(0)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^bus2ip_addr_temp\(1),
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0\,
      I2 => \^bus2ip_addr_temp\(2),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => s_axi_mem_araddr(7),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(7),
      I3 => \^enable_cs_cmb\,
      I4 => \^bus2ip_addr_temp\(4),
      I5 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0\,
      O => addr_11_6_cmb(1)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^bus2ip_addr_temp\(3),
      I1 => \^bus2ip_addr_temp\(2),
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0\,
      I3 => \^bus2ip_addr_temp\(1),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => s_axi_mem_araddr(8),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(8),
      I3 => \^enable_cs_cmb\,
      I4 => \^bus2ip_addr_temp\(5),
      I5 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0\,
      O => addr_11_6_cmb(2)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \^bus2ip_addr_temp\(4),
      I1 => \^bus2ip_addr_temp\(1),
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0\,
      I3 => \^bus2ip_addr_temp\(2),
      I4 => \^bus2ip_addr_temp\(3),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi_mem_araddr(9),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(9),
      I3 => \^enable_cs_cmb\,
      I4 => \^bus2ip_addr_temp\(6),
      I5 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2_n_0\,
      O => addr_11_6_cmb(3)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFF"
    )
        port map (
      I0 => \^bus2ip_addr_temp\(5),
      I1 => \^bus2ip_addr_temp\(3),
      I2 => \^bus2ip_addr_temp\(2),
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_3_n_0\,
      I4 => \^bus2ip_addr_temp\(1),
      I5 => \^bus2ip_addr_temp\(4),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => addr_11_6_cmb(4),
      Q => \^bus2ip_addr_temp\(7),
      R => \^sr\(0)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => addr_11_6_cmb(5),
      Q => \^bus2ip_addr_temp\(8),
      R => \^sr\(0)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1_n_0\,
      Q => \^address_store_gen[29].address_reg\,
      R => \^sr\(0)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(0),
      R => \^sr\(0)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(1),
      R => \^sr\(0)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(2),
      R => \^sr\(0)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => addr_11_6_cmb(0),
      Q => \^bus2ip_addr_temp\(3),
      R => \^sr\(0)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => addr_11_6_cmb(1),
      Q => \^bus2ip_addr_temp\(4),
      R => \^sr\(0)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => addr_11_6_cmb(2),
      Q => \^bus2ip_addr_temp\(5),
      R => \^sr\(0)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => addr_11_6_cmb(3),
      Q => \^bus2ip_addr_temp\(6),
      R => \^sr\(0)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0A3A0A0"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2_n_0\,
      I1 => Q(0),
      I2 => \^enable_cs_cmb\,
      I3 => \FSM_sequential_emc_addr_ps_reg[0]\,
      I4 => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\,
      I5 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(0),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(0),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8FFFFB88B0000"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_n_0\,
      I1 => \^enable_cs_cmb\,
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_3_n_0\,
      I3 => Q(1),
      I4 => \FSM_sequential_emc_addr_ps_reg[2]_0\,
      I5 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1]\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(1),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(1),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_3_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1_n_0\,
      Q => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\,
      R => '0'
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1_n_0\,
      Q => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1]\,
      R => '0'
    );
\REG_EN_GEN.s_axi_reg_bvalid_i_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
\burst_addr_cnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \burst_addr_cnt_reg[7]_0\(5),
      I1 => \burst_addr_cnt_reg[7]_0\(3),
      I2 => \burst_addr_cnt_reg[7]_0\(0),
      I3 => \burst_addr_cnt_reg[7]_0\(1),
      I4 => \burst_addr_cnt_reg[7]_0\(2),
      I5 => \burst_addr_cnt_reg[7]_0\(4),
      O => \^burst_addr_cnt_reg[6]\
    );
\bus2ip_addr_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(12),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(12),
      O => \bus2ip_addr_i[12]_i_1_n_0\
    );
\bus2ip_addr_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(13),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(13),
      O => \bus2ip_addr_i[13]_i_1_n_0\
    );
\bus2ip_addr_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(14),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(14),
      O => \bus2ip_addr_i[14]_i_1_n_0\
    );
\bus2ip_addr_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(15),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(15),
      O => \bus2ip_addr_i[15]_i_1_n_0\
    );
\bus2ip_addr_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(16),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(16),
      O => \bus2ip_addr_i[16]_i_1_n_0\
    );
\bus2ip_addr_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(17),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(17),
      O => \bus2ip_addr_i[17]_i_1_n_0\
    );
\bus2ip_addr_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(18),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(18),
      O => \bus2ip_addr_i[18]_i_1_n_0\
    );
\bus2ip_addr_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(19),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(19),
      O => \bus2ip_addr_i[19]_i_1_n_0\
    );
\bus2ip_addr_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(20),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(20),
      O => \bus2ip_addr_i[20]_i_1_n_0\
    );
\bus2ip_addr_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(21),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(21),
      O => \bus2ip_addr_i[21]_i_1_n_0\
    );
\bus2ip_addr_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(22),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(22),
      O => \bus2ip_addr_i[22]_i_1_n_0\
    );
\bus2ip_addr_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(23),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(23),
      O => \bus2ip_addr_i[23]_i_1_n_0\
    );
\bus2ip_addr_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(24),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(24),
      O => \bus2ip_addr_i[24]_i_1_n_0\
    );
\bus2ip_addr_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(25),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(25),
      O => \bus2ip_addr_i[25]_i_1_n_0\
    );
\bus2ip_addr_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(26),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(26),
      O => \bus2ip_addr_i[26]_i_1_n_0\
    );
\bus2ip_addr_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(27),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(27),
      O => \bus2ip_addr_i[27]_i_1_n_0\
    );
\bus2ip_addr_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(28),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(28),
      O => \bus2ip_addr_i[28]_i_1_n_0\
    );
\bus2ip_addr_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(29),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(29),
      O => \bus2ip_addr_i[29]_i_1_n_0\
    );
\bus2ip_addr_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(30),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(30),
      O => \bus2ip_addr_i[30]_i_1_n_0\
    );
\bus2ip_addr_i[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010100"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => enable_cs_cmb0,
      I4 => enable_cs_cmb126_out,
      O => \^enable_cs_cmb\
    );
\bus2ip_addr_i[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_araddr(31),
      I1 => \^rnw_cmb\,
      I2 => s_axi_mem_awaddr(31),
      O => \bus2ip_addr_i[31]_i_2_n_0\
    );
\bus2ip_addr_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[12]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(9),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[13]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(10),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[14]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(11),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[15]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(12),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[16]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(13),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[17]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(14),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[18]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(15),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[19]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(16),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[20]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(17),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[21]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(18),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[22]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(19),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[23]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(20),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[24]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(21),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[25]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(22),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[26]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(23),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[27]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(24),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[28]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(25),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[29]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(26),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[30]_i_1_n_0\,
      Q => \^bus2ip_addr_temp\(27),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^enable_cs_cmb\,
      D => \bus2ip_addr_i[31]_i_2_n_0\,
      Q => \^bus2ip_addr_temp\(28),
      R => \^sr\(0)
    );
\neqOp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bus2ip_addr_temp\(28),
      I1 => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(3),
      O => S(0)
    );
neqOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^bus2ip_addr_temp\(6),
      I1 => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(2),
      I2 => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(1),
      I3 => \^bus2ip_addr_temp\(5),
      I4 => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(0),
      I5 => \^bus2ip_addr_temp\(4),
      O => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0)
    );
rnw_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DD8DCDC8D888"
    )
        port map (
      I0 => \out\(2),
      I1 => rnw_reg_reg,
      I2 => \out\(1),
      I3 => rnw_reg_i_2_n_0,
      I4 => \out\(0),
      I5 => \^rnw_cmb0\,
      O => \^rnw_cmb\
    );
rnw_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA2AAAAAAAAA"
    )
        port map (
      I0 => rnw_reg_reg,
      I1 => last_data_acked,
      I2 => \^rd_data_count_reg[6]\,
      I3 => \rd_data_count_reg[7]\(6),
      I4 => \rd_data_count_reg[7]\(7),
      I5 => s_axi_mem_rready,
      O => rnw_reg_i_2_n_0
    );
rnw_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axi_mem_arvalid,
      I1 => rw_flag_reg_reg,
      I2 => s_axi_mem_awvalid,
      O => \^rnw_cmb0\
    );
s_axi_mem_bvalid_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^burst_addr_cnt_reg[6]\,
      I1 => \burst_addr_cnt_reg[7]_0\(6),
      I2 => \burst_addr_cnt_reg[7]_0\(7),
      O => \burst_addr_cnt_reg[7]\
    );
s_axi_mem_rlast_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \rd_data_count_reg[7]\(3),
      I1 => \rd_data_count_reg[7]\(2),
      I2 => \rd_data_count_reg[7]\(0),
      I3 => \rd_data_count_reg[7]\(1),
      I4 => \rd_data_count_reg[7]\(4),
      I5 => \rd_data_count_reg[7]\(5),
      O => \^rd_data_count_reg[6]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_axi_emc_address_decode is
  port (
    Bus2IP_Mem_CS_d1_reg : out STD_LOGIC;
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]\ : out STD_LOGIC;
    Bus2IP_RdReq_d1_reg : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC;
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg\ : out STD_LOGIC;
    IP2Bus_RdAck0 : out STD_LOGIC;
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0\ : out STD_LOGIC;
    readreq_th_reset : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_burst_reg_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    addr_sm_ps_IDLE_reg_reg : out STD_LOGIC;
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]\ : out STD_LOGIC;
    next_state181_out : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_1\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_BE_reg_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ : out STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\ : out STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1\ : out STD_LOGIC;
    read_req_ack_cmb44_out : out STD_LOGIC;
    S_0 : out STD_LOGIC;
    S_1 : out STD_LOGIC;
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    single_transfer_cmb : out STD_LOGIC;
    bus2ip_burst_reg_reg_0 : out STD_LOGIC;
    \burstlength_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bus2ip_burst_reg_reg_1 : out STD_LOGIC;
    \burst_data_cnt_reg[6]\ : out STD_LOGIC;
    \in\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_fifo : out STD_LOGIC;
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    new_page_access : out STD_LOGIC;
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg\ : out STD_LOGIC;
    CE : out STD_LOGIC;
    \s_axi_mem_bresp_reg_reg[1]\ : out STD_LOGIC;
    bus2ip_rd_req_reg_reg : out STD_LOGIC;
    pend_rdreq_reg : out STD_LOGIC;
    pend_wrreq_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    pend_rdreq : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bus2ip_wr_req_reg_reg : in STD_LOGIC;
    pend_wrreq : in STD_LOGIC;
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_emc_addr_ps_reg[0]\ : in STD_LOGIC;
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ : in STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Write_req_data_ack_cmb : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_emc_addr_ps_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[1]\ : in STD_LOGIC;
    s_axi_mem_bvalid_reg_reg : in STD_LOGIC;
    s_axi_mem_bready : in STD_LOGIC;
    s_axi_mem_bvalid_reg_reg_0 : in STD_LOGIC;
    s_axi_mem_wvalid : in STD_LOGIC;
    \burst_addr_cnt_reg[6]\ : in STD_LOGIC;
    next_state174_out : in STD_LOGIC;
    cycle_End : in STD_LOGIC;
    bus2ip_wr_req_reg_reg_0 : in STD_LOGIC;
    bus2ip_wr_req_reg_reg_1 : in STD_LOGIC;
    twph_end : in STD_LOGIC;
    next_state1 : in STD_LOGIC;
    rnw_reg_reg : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    trd_end : in STD_LOGIC;
    enable_rdce_cmb : in STD_LOGIC;
    enable_cs_cmb : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    rnw_cmb : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    transaction_done_i : in STD_LOGIC;
    crnt_state_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    cycle_cnt_en_cmb58_out : in STD_LOGIC;
    bus2ip_wr_req_reg_reg_2 : in STD_LOGIC;
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    cycle_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    Cycle_cnt_en_int : in STD_LOGIC;
    \axi_trans_size_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_trans_size_reg_int : in STD_LOGIC_VECTOR ( 0 to 0 );
    type_of_xfer_reg_reg : in STD_LOGIC;
    IP2Bus_RdAck_reg : in STD_LOGIC;
    IP2Bus_RdAck_reg_0 : in STD_LOGIC;
    burst_cnt_i : in STD_LOGIC_VECTOR ( 0 to 7 );
    read_req_ack_cmb : in STD_LOGIC;
    s_axi_mem_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Write_req_addr_ack_cmb : in STD_LOGIC;
    \burst_data_cnt_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Type_of_xfer : in STD_LOGIC;
    psram_page_mode : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]\ : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]\ : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    bus2ip_addr_temp : in STD_LOGIC_VECTOR ( 19 downto 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_mem_bresp : in STD_LOGIC_VECTOR ( 0 to 0 );
    addr_sm_ps_idle_cmb : in STD_LOGIC;
    rnw_cmb0 : in STD_LOGIC;
    Bus2IP_RdReq_emc : in STD_LOGIC;
    bus2ip_burst_reg : in STD_LOGIC;
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_axi_emc_address_decode : entity is "axi_emc_address_decode";
end axi_em_ctrl_axi_emc_address_decode;

architecture STRUCTURE of axi_em_ctrl_axi_emc_address_decode is
  signal \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async\ : STD_LOGIC;
  signal \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async_0\ : STD_LOGIC;
  signal \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_3_n_0\ : STD_LOGIC;
  signal \^bus2ip_mem_cs_d1_reg\ : STD_LOGIC;
  signal Bus2IP_RdReq_d1_i_4_n_0 : STD_LOGIC;
  signal \^bus2ip_rdreq_d1_reg\ : STD_LOGIC;
  signal \EMC_CTRL_I/IPIC_IF_I/set_pend_rdreq\ : STD_LOGIC;
  signal \^fsm_sequential_crnt_state_reg[0]\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_4_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].rdce_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].rdce_out_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \^perbit_gen[7].ff_rst0_gen.fdre_i1\ : STD_LOGIC;
  signal \PERBIT_GEN[7].MULT_AND_i1_i_4_n_0\ : STD_LOGIC;
  signal \^burst_data_cnt_reg[6]\ : STD_LOGIC;
  signal \^burstlength_reg_reg[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^bus2ip_burst_reg_reg\ : STD_LOGIC;
  signal \^bus2ip_burst_reg_reg_0\ : STD_LOGIC;
  signal \^bus2ip_burst_reg_reg_1\ : STD_LOGIC;
  signal bus2ip_rd_req_reg_i_2_n_0 : STD_LOGIC;
  signal cs_reg : STD_LOGIC;
  signal \^next_state181_out\ : STD_LOGIC;
  signal rst_cs_cmb : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of Bus2IP_RdReq_d1_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[0]_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[3]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[3]_i_9\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_sequential_emc_addr_ps[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_emc_addr_ps[1]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[255][0]_srl32_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \PERBIT_GEN[7].MULT_AND_i1_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \PERBIT_GEN[7].MULT_AND_i1_i_6\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[0]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[12]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[14]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[15]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[16]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[17]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[21]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[22]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[23]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[24]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[25]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[26]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[27]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \burst_addr_cnt[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \burstlength_reg[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \burstlength_reg[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \burstlength_reg[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \burstlength_reg[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bus2ip_BE_reg[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of bus2ip_rd_req_reg_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of new_page_d1_i_2 : label is "soft_lutpair5";
begin
  \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC\ <= \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async\;
  \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0\ <= \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async_0\;
  Bus2IP_Mem_CS_d1_reg <= \^bus2ip_mem_cs_d1_reg\;
  Bus2IP_RdReq_d1_reg <= \^bus2ip_rdreq_d1_reg\;
  \FSM_sequential_crnt_state_reg[0]\ <= \^fsm_sequential_crnt_state_reg[0]\;
  \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\ <= \^perbit_gen[7].ff_rst0_gen.fdre_i1\;
  \burst_data_cnt_reg[6]\ <= \^burst_data_cnt_reg[6]\;
  \burstlength_reg_reg[3]\(3 downto 0) <= \^burstlength_reg_reg[3]\(3 downto 0);
  bus2ip_burst_reg_reg <= \^bus2ip_burst_reg_reg\;
  bus2ip_burst_reg_reg_0 <= \^bus2ip_burst_reg_reg_0\;
  bus2ip_burst_reg_reg_1 <= \^bus2ip_burst_reg_reg_1\;
  next_state181_out <= \^next_state181_out\;
\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF3313"
    )
        port map (
      I0 => pend_rdreq,
      I1 => \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async_0\,
      I2 => \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async\,
      I3 => \FSM_sequential_emc_addr_ps_reg[0]\,
      I4 => bus2ip_reset,
      O => readreq_th_reset
    );
\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Q(4),
      I1 => Q(7),
      I2 => Q(1),
      I3 => \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_3_n_0\,
      O => \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async_0\
    );
\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(6),
      I4 => Q(5),
      I5 => \^bus2ip_mem_cs_d1_reg\,
      O => \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_3_n_0\
    );
Bus2IP_RdReq_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF1D0000"
    )
        port map (
      I0 => IP2Bus_RdAck_reg,
      I1 => \out\(1),
      I2 => IP2Bus_RdAck_reg_0,
      I3 => \out\(2),
      I4 => \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async\,
      I5 => Bus2IP_RdReq_d1_i_4_n_0,
      O => \^bus2ip_rdreq_d1_reg\
    );
Bus2IP_RdReq_d1_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => pend_rdreq,
      I1 => \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_3_n_0\,
      I2 => Q(1),
      I3 => Q(7),
      I4 => Q(4),
      O => Bus2IP_RdReq_d1_i_4_n_0
    );
Cnt_p10_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => ip2bus_rdack,
      I1 => \^bus2ip_mem_cs_d1_reg\,
      I2 => \INFERRED_GEN.cnt_i_reg[0]\(0),
      O => S(0)
    );
\FSM_sequential_crnt_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C088CC88FFBBFFBB"
    )
        port map (
      I0 => \^fsm_sequential_crnt_state_reg[0]\,
      I1 => cycle_End,
      I2 => \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async_0\,
      I3 => bus2ip_wr_req_reg_reg_1,
      I4 => next_state1,
      I5 => twph_end,
      O => \FSM_sequential_crnt_state_reg[0]_0\
    );
\FSM_sequential_crnt_state[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => rnw_reg_reg,
      I1 => \^bus2ip_mem_cs_d1_reg\,
      I2 => CO(0),
      I3 => trd_end,
      O => \FSM_sequential_crnt_state_reg[0]_1\
    );
\FSM_sequential_crnt_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FEF0F0000E000"
    )
        port map (
      I0 => \^fsm_sequential_crnt_state_reg[0]\,
      I1 => next_state174_out,
      I2 => cycle_End,
      I3 => bus2ip_wr_req_reg_reg_0,
      I4 => bus2ip_wr_req_reg_reg_1,
      I5 => twph_end,
      O => \FSM_sequential_crnt_state_reg[2]\
    );
\FSM_sequential_crnt_state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\,
      I2 => pend_wrreq,
      I3 => bus2ip_wr_req_reg_reg,
      I4 => \^next_state181_out\,
      O => \FSM_sequential_crnt_state_reg[3]\
    );
\FSM_sequential_crnt_state[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^bus2ip_rdreq_d1_reg\,
      I1 => \^bus2ip_mem_cs_d1_reg\,
      O => \^fsm_sequential_crnt_state_reg[0]\
    );
\FSM_sequential_emc_addr_ps[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \FSM_sequential_emc_addr_ps[0]_i_2_n_0\,
      I1 => \out\(2),
      I2 => \FSM_sequential_emc_addr_ps_reg[0]_0\,
      I3 => \out\(1),
      I4 => \FSM_sequential_emc_addr_ps_reg[0]_1\,
      O => D(0)
    );
\FSM_sequential_emc_addr_ps[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002EEE"
    )
        port map (
      I0 => s_axi_mem_wvalid,
      I1 => \out\(0),
      I2 => \burst_addr_cnt_reg[6]\,
      I3 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      I4 => \out\(1),
      O => \FSM_sequential_emc_addr_ps[0]_i_2_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15FF1500"
    )
        port map (
      I0 => \out\(0),
      I1 => s_axi_mem_bvalid_reg_reg,
      I2 => s_axi_mem_bready,
      I3 => \out\(1),
      I4 => \FSM_sequential_emc_addr_ps[1]_i_4_n_0\,
      O => \FSM_sequential_emc_addr_ps[1]_i_3_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8830"
    )
        port map (
      I0 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      I1 => \out\(0),
      I2 => s_axi_mem_wvalid,
      I3 => \burst_addr_cnt_reg[6]\,
      O => \FSM_sequential_emc_addr_ps[1]_i_4_n_0\
    );
\FSM_sequential_emc_addr_ps_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_emc_addr_ps_reg[1]\,
      I1 => \FSM_sequential_emc_addr_ps[1]_i_3_n_0\,
      O => D(1),
      S => \out\(2)
    );
\INFERRED_GEN.data_reg[255][0]_srl32_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ip2bus_rdack,
      I1 => \^bus2ip_mem_cs_d1_reg\,
      I2 => Type_of_xfer,
      O => \in\(0)
    );
IP2Bus_RdAck_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCEC0000"
    )
        port map (
      I0 => pend_rdreq,
      I1 => \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async_0\,
      I2 => \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async\,
      I3 => \FSM_sequential_emc_addr_ps_reg[0]\,
      I4 => \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\,
      O => IP2Bus_RdAck0
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAA00000000"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => \out\(2),
      I4 => enable_cs_cmb,
      I5 => \MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0\,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => rst_cs_cmb,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BB0088CF00CC00"
    )
        port map (
      I0 => Write_req_data_ack_cmb,
      I1 => \out\(2),
      I2 => \^bus2ip_burst_reg_reg\,
      I3 => \out\(1),
      I4 => ip2bus_rdack,
      I5 => \out\(0),
      O => rst_cs_cmb
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\,
      Q => \^bus2ip_mem_cs_d1_reg\,
      R => '0'
    );
\MEM_DECODE_GEN[0].cs_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => cs_reg,
      O => \MEM_DECODE_GEN[0].cs_reg[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_reg[0]_i_1_n_0\,
      Q => cs_reg,
      R => '0'
    );
\MEM_DECODE_GEN[0].rdce_out_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA8AAA80"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0\,
      I1 => cs_reg,
      I2 => enable_rdce_cmb,
      I3 => \MEM_DECODE_GEN[0].rdce_out_i[0]_i_3_n_0\,
      I4 => \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async\,
      I5 => \FSM_sequential_emc_addr_ps_reg[0]\,
      O => \MEM_DECODE_GEN[0].rdce_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].rdce_out_i[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => rnw_cmb,
      I4 => enable_cs_cmb,
      O => \MEM_DECODE_GEN[0].rdce_out_i[0]_i_3_n_0\
    );
\MEM_DECODE_GEN[0].rdce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MEM_DECODE_GEN[0].rdce_out_i[0]_i_1_n_0\,
      Q => \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async\,
      R => '0'
    );
\PERBIT_GEN[0].XORCY_i1_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => Q(7),
      I1 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      I2 => burst_cnt_i(0),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => pend_wrreq,
      I2 => bus2ip_wr_req_reg_reg,
      O => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\
    );
\PERBIT_GEN[1].MUXCY_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => cycle_cnt(0),
      I1 => Cycle_cnt_en_int,
      I2 => \axi_trans_size_reg_reg[1]\(0),
      I3 => axi_trans_size_reg_int(0),
      I4 => \^bus2ip_rdreq_d1_reg\,
      I5 => type_of_xfer_reg_reg,
      O => S_0
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => Q(6),
      I1 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      I2 => burst_cnt_i(1),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => Q(5),
      I1 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      I2 => burst_cnt_i(2),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => Q(4),
      I1 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      I2 => burst_cnt_i(3),
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bus2ip_rdreq_d1_reg\,
      I1 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\,
      O => read_req_ack_cmb44_out
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => bus2ip_wr_req_reg_reg,
      I1 => pend_wrreq,
      I2 => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\,
      I3 => \^bus2ip_mem_cs_d1_reg\,
      O => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[4].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => Q(3),
      I1 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      I2 => burst_cnt_i(4),
      O => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[5].MUXCY_i1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => Q(2),
      I1 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      I2 => burst_cnt_i(5),
      O => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[6].MUXCY_i1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => Q(1),
      I1 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      I2 => burst_cnt_i(6),
      O => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => bus2ip_reset,
      I1 => \^bus2ip_mem_cs_d1_reg\,
      O => reset_fifo
    );
\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      I1 => p_0_in(0),
      O => CE
    );
\PERBIT_GEN[7].MULT_AND_i1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F200F2F2"
    )
        port map (
      I0 => \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async\,
      I1 => \FSM_sequential_emc_addr_ps_reg[0]\,
      I2 => bus2ip_wr_req_reg_reg,
      I3 => read_req_ack_cmb,
      I4 => \PERBIT_GEN[7].MULT_AND_i1_i_4_n_0\,
      O => \^perbit_gen[7].ff_rst0_gen.fdre_i1\
    );
\PERBIT_GEN[7].MULT_AND_i1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => bus2ip_wr_req_reg_reg,
      I1 => \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async_0\,
      I2 => \burst_addr_cnt_reg[6]\,
      I3 => Write_req_addr_ack_cmb,
      O => \PERBIT_GEN[7].MULT_AND_i1_i_4_n_0\
    );
\PERBIT_GEN[7].MULT_AND_i1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^bus2ip_rdreq_d1_reg\,
      I1 => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\,
      I2 => \^bus2ip_mem_cs_d1_reg\,
      O => \^next_state181_out\
    );
\PERBIT_GEN[7].MUXCY_i1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => burst_cnt_i(7),
      I1 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      I2 => Q(0),
      O => S_1
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBABBBB"
    )
        port map (
      I0 => cycle_cnt_en_cmb58_out,
      I1 => bus2ip_wr_req_reg_reg_2,
      I2 => next_state174_out,
      I3 => \^bus2ip_rdreq_d1_reg\,
      I4 => \^bus2ip_mem_cs_d1_reg\,
      I5 => bus2ip_wr_req_reg_reg_1,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F808F8F8F8F8F"
    )
        port map (
      I0 => \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async_0\,
      I1 => twph_end,
      I2 => bus2ip_wr_req_reg_reg_1,
      I3 => \^bus2ip_mem_cs_d1_reg\,
      I4 => \^bus2ip_rdreq_d1_reg\,
      I5 => next_state174_out,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FCB8FC00FF0000"
    )
        port map (
      I0 => \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async_0\,
      I1 => bus2ip_wr_req_reg_reg_1,
      I2 => \^fsm_sequential_crnt_state_reg[0]\,
      I3 => twph_end,
      I4 => crnt_state_reg(0),
      I5 => cycle_End,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\
    );
\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^bus2ip_mem_cs_d1_reg\,
      O => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg\
    );
\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0]\(0),
      I1 => \^bus2ip_mem_cs_d1_reg\,
      O => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg\
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => psram_page_mode,
      I1 => rnw_reg_reg,
      I2 => \^bus2ip_mem_cs_d1_reg\,
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27]\(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(19),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(27)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(9),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(17)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(8),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(16)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(7),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(15)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(6),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(14)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(5),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(13)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(4),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(12)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(3),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(11)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(2),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(10)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(1),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(9)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(0),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(8)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(18),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(26)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11]\(5),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(7)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11]\(4),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(6)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11]\(3),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(5)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11]\(2),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(4)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11]\(1),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(3)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11]\(0),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(2)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]\,
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(1)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]\,
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(17),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(25)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(16),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(24)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(15),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(23)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(14),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(22)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(13),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(21)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(12),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(20)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(11),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(19)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^bus2ip_mem_cs_d1_reg\,
      I1 => rnw_reg_reg,
      I2 => psram_page_mode,
      I3 => bus2ip_addr_temp(10),
      O => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(18)
    );
addr_sm_ns_IDLE_cmb_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^bus2ip_burst_reg_reg_0\,
      I1 => \^burstlength_reg_reg[3]\(0),
      I2 => \^burstlength_reg_reg[3]\(2),
      I3 => \^bus2ip_burst_reg_reg_1\,
      I4 => \^burstlength_reg_reg[3]\(3),
      I5 => \^burstlength_reg_reg[3]\(1),
      O => single_transfer_cmb
    );
addr_sm_ns_IDLE_cmb_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi_mem_awlen(5),
      I1 => s_axi_mem_arlen(5),
      I2 => s_axi_mem_awlen(6),
      I3 => rnw_cmb,
      I4 => s_axi_mem_arlen(6),
      O => \^bus2ip_burst_reg_reg_1\
    );
addr_sm_ns_IDLE_cmb_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi_mem_awlen(4),
      I1 => s_axi_mem_arlen(4),
      I2 => s_axi_mem_awlen(7),
      I3 => rnw_cmb,
      I4 => s_axi_mem_arlen(7),
      O => \^bus2ip_burst_reg_reg_0\
    );
addr_sm_ns_IDLE_cmb_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => s_axi_mem_bvalid_reg_reg_0,
      I1 => \out\(1),
      I2 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      I3 => \out\(0),
      I4 => s_axi_mem_wvalid,
      I5 => \burst_addr_cnt_reg[6]\,
      O => addr_sm_ps_IDLE_reg_reg
    );
\burst_addr_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => enable_cs_cmb,
      I1 => \burst_addr_cnt_reg[6]\,
      I2 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      O => E(0)
    );
\burst_data_cnt[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \burst_data_cnt_reg[7]\(7),
      I1 => \burst_data_cnt_reg[7]\(6),
      I2 => \^burst_data_cnt_reg[6]\,
      O => \^bus2ip_burst_reg_reg\
    );
\burst_data_cnt[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \burst_data_cnt_reg[7]\(3),
      I1 => \burst_data_cnt_reg[7]\(2),
      I2 => \burst_data_cnt_reg[7]\(1),
      I3 => \burst_data_cnt_reg[7]\(0),
      I4 => \burst_data_cnt_reg[7]\(4),
      I5 => \burst_data_cnt_reg[7]\(5),
      O => \^burst_data_cnt_reg[6]\
    );
\burstlength_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_arlen(0),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(0),
      O => \^burstlength_reg_reg[3]\(0)
    );
\burstlength_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_arlen(1),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(1),
      O => \^burstlength_reg_reg[3]\(1)
    );
\burstlength_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_arlen(2),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(2),
      O => \^burstlength_reg_reg[3]\(2)
    );
\burstlength_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_arlen(3),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(3),
      O => \^burstlength_reg_reg[3]\(3)
    );
\bus2ip_BE_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAC"
    )
        port map (
      I0 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      I1 => \FSM_sequential_emc_addr_ps_reg[0]_2\(0),
      I2 => rnw_cmb,
      I3 => enable_cs_cmb,
      O => \bus2ip_BE_reg_reg[0]\(0)
    );
bus2ip_rd_req_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7400000030"
    )
        port map (
      I0 => bus2ip_rd_req_reg_i_2_n_0,
      I1 => \out\(1),
      I2 => rnw_cmb0,
      I3 => \out\(0),
      I4 => \out\(2),
      I5 => Bus2IP_RdReq_emc,
      O => bus2ip_rd_req_reg_reg
    );
bus2ip_rd_req_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \burst_addr_cnt_reg[6]\,
      I1 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      O => bus2ip_rd_req_reg_i_2_n_0
    );
new_page_d1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => CO(0),
      I1 => \^bus2ip_mem_cs_d1_reg\,
      I2 => rnw_reg_reg,
      O => new_page_access
    );
pend_rdreq_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBF00FFFF0000"
    )
        port map (
      I0 => bus2ip_burst_reg,
      I1 => read_req_ack_cmb,
      I2 => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\,
      I3 => \^bus2ip_mem_cs_d1_reg\,
      I4 => \EMC_CTRL_I/IPIC_IF_I/set_pend_rdreq\,
      I5 => pend_rdreq,
      O => pend_rdreq_reg
    );
pend_rdreq_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => transaction_done_i,
      I1 => \^bus2ip_mem_cs_d1_reg\,
      I2 => \^async_mem_rdack_gen.rdack_pipe_gen_async[0].rdack_pipe_async\,
      I3 => \FSM_sequential_emc_addr_ps_reg[0]\,
      I4 => pend_rdreq,
      O => \EMC_CTRL_I/IPIC_IF_I/set_pend_rdreq\
    );
pend_wrreq_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0F0000000"
    )
        port map (
      I0 => \PERBIT_GEN[7].MULT_AND_i1_i_4_n_0\,
      I1 => bus2ip_burst_reg,
      I2 => \^bus2ip_mem_cs_d1_reg\,
      I3 => transaction_done_i,
      I4 => bus2ip_wr_req_reg_reg,
      I5 => pend_wrreq,
      O => pend_wrreq_reg
    );
\s_axi_mem_bresp_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAEA"
    )
        port map (
      I0 => s_axi_mem_bresp(0),
      I1 => Write_req_data_ack_cmb,
      I2 => \^bus2ip_mem_cs_d1_reg\,
      I3 => Type_of_xfer,
      I4 => addr_sm_ps_idle_cmb,
      O => \s_axi_mem_bresp_reg_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_cntr_incr_decr_addn_f is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    enable_rdce_cmb : out STD_LOGIC;
    \rd_data_count_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_mem_rvalid : out STD_LOGIC;
    fifo_full_p1 : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 1 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi_mem_rdata[14]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    single_transfer_cmb : in STD_LOGIC;
    enable_cs_cmb126_out : in STD_LOGIC;
    \burst_data_cnt_reg[7]\ : in STD_LOGIC;
    enable_cs_cmb : in STD_LOGIC;
    s_axi_mem_rready : in STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_cntr_incr_decr_addn_f : entity is "cntr_incr_decr_addn_f";
end axi_em_ctrl_cntr_incr_decr_addn_f;

architecture STRUCTURE of axi_em_ctrl_cntr_incr_decr_addn_f is
  signal \Cnt_p10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_p10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Cnt_p10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Cnt_p10_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Cnt_p10_carry__0_n_0\ : STD_LOGIC;
  signal \Cnt_p10_carry__0_n_1\ : STD_LOGIC;
  signal \Cnt_p10_carry__0_n_2\ : STD_LOGIC;
  signal \Cnt_p10_carry__0_n_3\ : STD_LOGIC;
  signal \Cnt_p10_carry__1_i_1_n_0\ : STD_LOGIC;
  signal Cnt_p10_carry_i_2_n_0 : STD_LOGIC;
  signal Cnt_p10_carry_i_3_n_0 : STD_LOGIC;
  signal Cnt_p10_carry_i_4_n_0 : STD_LOGIC;
  signal Cnt_p10_carry_n_0 : STD_LOGIC;
  signal Cnt_p10_carry_n_1 : STD_LOGIC;
  signal Cnt_p10_carry_n_2 : STD_LOGIC;
  signal Cnt_p10_carry_n_3 : STD_LOGIC;
  signal FIFO_Full_i_2_n_0 : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].rdce_out_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal fifo_empty : STD_LOGIC;
  signal rd_data_count0 : STD_LOGIC;
  signal \NLW_Cnt_p10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Cnt_p10_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[0]\ : label is "INFERRED_GEN.cnt_i_reg[0]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[0]_rep\ : label is "INFERRED_GEN.cnt_i_reg[0]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[1]\ : label is "INFERRED_GEN.cnt_i_reg[1]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[1]_rep\ : label is "INFERRED_GEN.cnt_i_reg[1]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[2]\ : label is "INFERRED_GEN.cnt_i_reg[2]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[2]_rep\ : label is "INFERRED_GEN.cnt_i_reg[2]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[3]\ : label is "INFERRED_GEN.cnt_i_reg[3]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[3]_rep\ : label is "INFERRED_GEN.cnt_i_reg[3]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[3]_rep__0\ : label is "INFERRED_GEN.cnt_i_reg[3]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[4]\ : label is "INFERRED_GEN.cnt_i_reg[4]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[4]_rep\ : label is "INFERRED_GEN.cnt_i_reg[4]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[4]_rep__0\ : label is "INFERRED_GEN.cnt_i_reg[4]";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[0].rdce_out_i[0]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rd_data_count[7]_i_1\ : label is "soft_lutpair42";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
Cnt_p10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Cnt_p10_carry_n_0,
      CO(2) => Cnt_p10_carry_n_1,
      CO(1) => Cnt_p10_carry_n_2,
      CO(0) => Cnt_p10_carry_n_3,
      CYINIT => rd_data_count0,
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => addr_i_p1(3 downto 0),
      S(3) => Cnt_p10_carry_i_2_n_0,
      S(2) => Cnt_p10_carry_i_3_n_0,
      S(1) => Cnt_p10_carry_i_4_n_0,
      S(0) => S(0)
    );
\Cnt_p10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Cnt_p10_carry_n_0,
      CO(3) => \Cnt_p10_carry__0_n_0\,
      CO(2) => \Cnt_p10_carry__0_n_1\,
      CO(1) => \Cnt_p10_carry__0_n_2\,
      CO(0) => \Cnt_p10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => addr_i_p1(7 downto 4),
      S(3) => \Cnt_p10_carry__0_i_1_n_0\,
      S(2) => \Cnt_p10_carry__0_i_2_n_0\,
      S(1) => \Cnt_p10_carry__0_i_3_n_0\,
      S(0) => \Cnt_p10_carry__0_i_4_n_0\
    );
\Cnt_p10_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(7),
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => \Cnt_p10_carry__0_i_1_n_0\
    );
\Cnt_p10_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(6),
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => \Cnt_p10_carry__0_i_2_n_0\
    );
\Cnt_p10_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(5),
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => \Cnt_p10_carry__0_i_3_n_0\
    );
\Cnt_p10_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(4),
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => \Cnt_p10_carry__0_i_4_n_0\
    );
\Cnt_p10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Cnt_p10_carry__0_n_0\,
      CO(3 downto 0) => \NLW_Cnt_p10_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_Cnt_p10_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => addr_i_p1(8),
      S(3 downto 1) => B"000",
      S(0) => \Cnt_p10_carry__1_i_1_n_0\
    );
\Cnt_p10_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_mem_rready,
      I1 => fifo_empty,
      O => \Cnt_p10_carry__1_i_1_n_0\
    );
Cnt_p10_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_mem_rready,
      I1 => fifo_empty,
      O => rd_data_count0
    );
Cnt_p10_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(3),
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => Cnt_p10_carry_i_2_n_0
    );
Cnt_p10_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(2),
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => Cnt_p10_carry_i_3_n_0
    );
Cnt_p10_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(1),
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => Cnt_p10_carry_i_4_n_0
    );
FIFO_Full_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => addr_i_p1(5),
      I1 => addr_i_p1(7),
      I2 => addr_i_p1(1),
      I3 => FIFO_Full_i_2_n_0,
      O => fifo_full_p1
    );
FIFO_Full_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => addr_i_p1(6),
      I1 => addr_i_p1(2),
      I2 => addr_i_p1(8),
      I3 => addr_i_p1(0),
      I4 => addr_i_p1(3),
      I5 => addr_i_p1(4),
      O => FIFO_Full_i_2_n_0
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[0]_rep\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \s_axi_mem_rdata[14]\(0),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \^q\(1),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[1]_rep\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \s_axi_mem_rdata[14]\(1),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \^q\(2),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[2]_rep\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \s_axi_mem_rdata[14]\(2),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(3),
      Q => \^q\(3),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[3]_rep\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(3),
      Q => A(0),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[3]_rep__0\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(3),
      Q => addr(0),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(4),
      Q => \^q\(4),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[4]_rep\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(4),
      Q => A(1),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[4]_rep__0\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(4),
      Q => addr(1),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(5),
      Q => \^q\(5),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(6),
      Q => \^q\(6),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(7),
      Q => \^q\(7),
      S => bus2ip_reset
    );
\INFERRED_GEN.cnt_i_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(8),
      Q => fifo_empty,
      S => bus2ip_reset
    );
\MEM_DECODE_GEN[0].rdce_out_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF400040"
    )
        port map (
      I0 => \out\(0),
      I1 => single_transfer_cmb,
      I2 => enable_cs_cmb126_out,
      I3 => \out\(1),
      I4 => \MEM_DECODE_GEN[0].rdce_out_i[0]_i_4_n_0\,
      I5 => \out\(2),
      O => enable_rdce_cmb
    );
\MEM_DECODE_GEN[0].rdce_out_i[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => fifo_empty,
      I1 => \burst_data_cnt_reg[7]\,
      I2 => \out\(0),
      O => \MEM_DECODE_GEN[0].rdce_out_i[0]_i_4_n_0\
    );
\rd_data_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => enable_cs_cmb,
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => \rd_data_count_reg[7]\(0)
    );
s_axi_mem_rvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_empty,
      O => s_axi_mem_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_dynshreg_f is
  port (
    s_axi_mem_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_mem_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rnw_reg_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_fifo_wr_en : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 0 to 32 );
    \INFERRED_GEN.cnt_i_reg[2]_rep\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_dynshreg_f : entity is "dynshreg_f";
end axi_em_ctrl_dynshreg_f;

architecture STRUCTURE of axi_em_ctrl_dynshreg_f is
  signal \INFERRED_GEN.data_reg[255][0]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32_n_1\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][0]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][10]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][11]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][12]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][13]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][14]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][15]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][16]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][17]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][18]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][19]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][1]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][20]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][21]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][22]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][23]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][24]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][25]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][26]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][27]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][28]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][29]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][2]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][30]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][31]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][32]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][3]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][4]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][5]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][6]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][7]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][8]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][9]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__6 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[0]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[10]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[11]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[12]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[13]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[14]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[15]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[16]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[17]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[18]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[19]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[1]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[20]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[21]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[22]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[23]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[24]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[25]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[26]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[27]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[28]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[29]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[2]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[30]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[31]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[3]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[4]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[5]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[6]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[7]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[8]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[9]_INST_0\ : label is "soft_lutpair47";
begin
\INFERRED_GEN.data_reg[255][0]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][0]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][0]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][0]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][0]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][0]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][0]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][0]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][0]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][0]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][0]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][0]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][0]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][0]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][0]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][0]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][0]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][0]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][0]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][0]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][0]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][0]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][0]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][0]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(32),
      Q => \INFERRED_GEN.data_reg[255][0]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][0]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][0]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][0]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][0]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][0]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][0]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][0]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][0]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][0]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][0]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][0]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][0]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][0]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][0]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][0]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][0]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][0]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][0]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][0]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][0]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][0]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][0]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][0]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][0]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][0]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][0]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][0]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][0]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][0]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][10]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][10]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][10]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][10]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][10]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][10]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][10]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][10]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][10]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][10]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][10]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][10]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][10]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][10]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][10]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][10]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][10]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][10]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][10]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][10]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][10]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][10]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][10]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][10]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][10]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(22),
      Q => \INFERRED_GEN.data_reg[255][10]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][10]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][10]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][10]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][10]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][10]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][10]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][10]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][10]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][10]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][10]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][10]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][10]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][10]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][10]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][10]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][10]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][10]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][10]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][10]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][10]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][10]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][10]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][10]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][10]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][10]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][10]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][10]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][10]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][10]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][11]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][11]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][11]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][11]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][11]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][11]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][11]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][11]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][11]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][11]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][11]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][11]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][11]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][11]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][11]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][11]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][11]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][11]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][11]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][11]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][11]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][11]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][11]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][11]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][11]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(21),
      Q => \INFERRED_GEN.data_reg[255][11]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][11]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][11]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][11]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][11]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][11]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][11]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][11]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][11]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][11]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][11]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][11]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][11]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][11]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][11]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][11]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][11]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][11]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][11]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][11]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][11]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][11]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][11]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][11]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][11]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][11]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][11]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][11]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][11]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][11]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][12]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][12]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][12]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][12]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][12]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][12]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][12]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][12]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][12]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][12]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][12]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][12]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][12]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][12]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][12]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][12]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][12]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][12]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][12]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][12]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][12]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][12]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][12]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][12]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][12]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(20),
      Q => \INFERRED_GEN.data_reg[255][12]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][12]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][12]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][12]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][12]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][12]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][12]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][12]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][12]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][12]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][12]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][12]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][12]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][12]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][12]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][12]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][12]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][12]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][12]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][12]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][12]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][12]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][12]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][12]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][12]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][12]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][12]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][12]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][12]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][12]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][13]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][13]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][13]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][13]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][13]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][13]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][13]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][13]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][13]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][13]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][13]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][13]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][13]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][13]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][13]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][13]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][13]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][13]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][13]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][13]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][13]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][13]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][13]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][13]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][13]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(19),
      Q => \INFERRED_GEN.data_reg[255][13]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][13]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][13]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][13]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][13]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][13]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][13]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][13]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][13]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][13]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][13]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][13]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][13]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][13]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][13]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][13]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][13]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][13]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][13]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][13]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][13]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][13]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][13]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][13]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][13]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][13]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][13]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][13]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][13]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][13]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][14]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][14]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][14]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][14]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][14]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][14]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][14]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][14]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][14]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][14]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][14]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][14]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][14]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][14]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][14]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][14]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][14]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][14]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][14]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][14]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][14]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][14]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][14]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][14]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][14]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(18),
      Q => \INFERRED_GEN.data_reg[255][14]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][14]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][14]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][14]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][14]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][14]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][14]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][14]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][14]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][14]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][14]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][14]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][14]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][14]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][14]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][14]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][14]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][14]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][14]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][14]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][14]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][14]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][14]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][14]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][14]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][14]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][14]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][14]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][14]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][14]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][15]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][15]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][15]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][15]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][15]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][15]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][15]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][15]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][15]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][15]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][15]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][15]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][15]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][15]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][15]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][15]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][15]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][15]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][15]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][15]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][15]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][15]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][15]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][15]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][15]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(17),
      Q => \INFERRED_GEN.data_reg[255][15]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][15]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][15]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][15]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][15]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][15]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][15]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][15]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][15]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][15]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][15]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][15]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][15]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][15]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][15]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][15]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][15]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][15]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][15]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][15]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][15]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][15]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][15]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][15]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][15]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][15]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][15]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][15]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][15]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][15]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][16]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][16]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][16]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][16]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][16]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][16]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][16]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][16]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][16]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][16]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][16]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][16]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][16]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][16]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][16]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][16]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][16]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][16]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][16]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][16]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][16]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][16]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][16]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][16]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][16]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(16),
      Q => \INFERRED_GEN.data_reg[255][16]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][16]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][16]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][16]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][16]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][16]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][16]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][16]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][16]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][16]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][16]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][16]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][16]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][16]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][16]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][16]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][16]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][16]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][16]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][16]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][16]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][16]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][16]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][16]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][16]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][16]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][16]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][16]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][16]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][16]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][17]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][17]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][17]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][17]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][17]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][17]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][17]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][17]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][17]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][17]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][17]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][17]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][17]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][17]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][17]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][17]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][17]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][17]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][17]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][17]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][17]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][17]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][17]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][17]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][17]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(15),
      Q => \INFERRED_GEN.data_reg[255][17]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][17]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][17]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][17]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][17]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][17]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][17]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][17]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][17]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][17]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][17]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][17]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][17]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][17]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][17]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][17]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][17]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][17]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][17]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][17]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][17]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][17]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][17]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][17]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][17]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][17]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][17]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][17]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][17]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][17]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][18]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][18]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][18]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][18]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][18]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][18]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][18]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][18]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][18]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][18]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][18]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][18]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][18]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][18]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][18]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][18]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][18]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][18]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][18]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][18]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][18]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][18]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][18]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][18]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][18]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(14),
      Q => \INFERRED_GEN.data_reg[255][18]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][18]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][18]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][18]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][18]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][18]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][18]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][18]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][18]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][18]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][18]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][18]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][18]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][18]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][18]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][18]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][18]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][18]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][18]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][18]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][18]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][18]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][18]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][18]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][18]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][18]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][18]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][18]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][18]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][18]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][19]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][19]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][19]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][19]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][19]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][19]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][19]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][19]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][19]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][19]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][19]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][19]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][19]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][19]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][19]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][19]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][19]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][19]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][19]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][19]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][19]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][19]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][19]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][19]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][19]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(13),
      Q => \INFERRED_GEN.data_reg[255][19]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][19]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][19]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][19]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][19]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][19]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][19]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][19]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][19]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][19]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][19]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][19]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][19]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][19]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][19]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][19]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][19]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][19]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][19]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][19]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][19]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][19]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][19]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][19]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][19]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][19]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][19]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][19]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][19]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][19]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][1]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][1]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][1]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][1]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][1]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][1]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][1]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][1]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][1]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][1]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][1]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][1]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][1]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][1]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][1]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][1]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][1]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][1]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][1]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][1]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][1]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][1]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][1]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][1]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(31),
      Q => \INFERRED_GEN.data_reg[255][1]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][1]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][1]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][1]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][1]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][1]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][1]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][1]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][1]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][1]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][1]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][1]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][1]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][1]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][1]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][1]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][1]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][1]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][1]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][1]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][1]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][1]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][1]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][1]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][1]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][1]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][1]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][1]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][1]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][1]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][20]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][20]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][20]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][20]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][20]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][20]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][20]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][20]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][20]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][20]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][20]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][20]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][20]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][20]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][20]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][20]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][20]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][20]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][20]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][20]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][20]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][20]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][20]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][20]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][20]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(12),
      Q => \INFERRED_GEN.data_reg[255][20]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][20]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][20]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][20]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][20]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][20]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][20]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][20]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][20]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][20]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][20]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][20]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][20]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][20]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][20]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][20]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][20]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][20]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][20]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][20]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][20]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][20]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][20]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][20]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][20]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][20]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][20]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][20]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][20]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][20]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][21]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][21]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][21]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][21]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][21]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][21]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][21]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][21]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][21]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][21]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][21]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][21]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][21]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][21]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][21]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][21]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][21]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][21]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][21]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][21]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][21]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][21]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][21]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][21]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][21]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(11),
      Q => \INFERRED_GEN.data_reg[255][21]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][21]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][21]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][21]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][21]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][21]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][21]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][21]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][21]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][21]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][21]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][21]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][21]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][21]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][21]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][21]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][21]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][21]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][21]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][21]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][21]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][21]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][21]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][21]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][21]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][21]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][21]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][21]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][21]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][21]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][22]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][22]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][22]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][22]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][22]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][22]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][22]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][22]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][22]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][22]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][22]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][22]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][22]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][22]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][22]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][22]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][22]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][22]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][22]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][22]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][22]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][22]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][22]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][22]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][22]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(10),
      Q => \INFERRED_GEN.data_reg[255][22]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][22]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][22]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][22]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][22]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][22]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][22]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][22]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][22]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][22]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][22]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][22]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][22]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][22]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][22]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][22]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][22]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][22]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][22]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][22]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][22]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][22]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][22]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][22]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][22]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][22]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][22]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][22]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][22]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][22]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][23]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][23]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][23]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][23]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][23]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][23]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][23]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][23]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][23]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][23]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][23]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][23]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][23]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][23]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][23]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][23]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][23]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][23]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][23]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][23]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][23]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][23]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][23]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][23]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][23]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(9),
      Q => \INFERRED_GEN.data_reg[255][23]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][23]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][23]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][23]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][23]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][23]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][23]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][23]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][23]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][23]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][23]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][23]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][23]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][23]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][23]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][23]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][23]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][23]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][23]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][23]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][23]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][23]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][23]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][23]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][23]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][23]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][23]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][23]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][23]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][23]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][24]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][24]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][24]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][24]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][24]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][24]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][24]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][24]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][24]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][24]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][24]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][24]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][24]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][24]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][24]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][24]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][24]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][24]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][24]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][24]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][24]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][24]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][24]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][24]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][24]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(8),
      Q => \INFERRED_GEN.data_reg[255][24]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][24]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][24]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][24]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][24]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][24]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][24]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][24]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][24]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][24]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][24]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][24]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][24]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][24]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][24]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][24]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][24]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][24]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][24]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][24]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][24]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][24]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][24]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][24]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][24]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][24]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][24]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][24]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][24]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][24]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][25]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][25]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][25]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][25]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][25]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][25]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][25]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][25]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][25]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][25]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][25]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][25]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][25]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][25]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][25]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][25]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][25]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][25]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][25]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][25]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][25]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][25]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][25]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][25]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][25]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(7),
      Q => \INFERRED_GEN.data_reg[255][25]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][25]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][25]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][25]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][25]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][25]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][25]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][25]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][25]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][25]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][25]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][25]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][25]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][25]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][25]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][25]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][25]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][25]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][25]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][25]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][25]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][25]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][25]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][25]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][25]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][25]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][25]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][25]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][25]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][25]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][26]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][26]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][26]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][26]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][26]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][26]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][26]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][26]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][26]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][26]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][26]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][26]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][26]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][26]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][26]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][26]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][26]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][26]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][26]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][26]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][26]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][26]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][26]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][26]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][26]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(6),
      Q => \INFERRED_GEN.data_reg[255][26]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][26]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][26]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][26]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][26]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][26]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][26]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][26]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][26]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][26]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][26]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][26]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][26]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][26]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][26]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][26]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][26]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][26]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][26]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][26]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][26]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][26]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][26]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][26]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][26]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][26]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][26]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][26]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][26]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][26]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][27]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][27]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][27]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][27]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][27]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][27]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][27]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][27]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][27]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][27]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][27]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][27]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][27]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][27]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][27]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][27]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][27]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][27]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][27]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][27]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][27]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][27]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][27]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][27]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][27]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(5),
      Q => \INFERRED_GEN.data_reg[255][27]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][27]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][27]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][27]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][27]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][27]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][27]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][27]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][27]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][27]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][27]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][27]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][27]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][27]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][27]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][27]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][27]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][27]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][27]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][27]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][27]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][27]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][27]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][27]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][27]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][27]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][27]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][27]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][27]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][27]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][28]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][28]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][28]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][28]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][28]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][28]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][28]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][28]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][28]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][28]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][28]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][28]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][28]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][28]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][28]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][28]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][28]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][28]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][28]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][28]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][28]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][28]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][28]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][28]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][28]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(4),
      Q => \INFERRED_GEN.data_reg[255][28]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][28]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][28]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][28]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][28]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][28]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][28]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][28]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][28]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][28]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][28]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][28]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][28]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][28]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][28]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][28]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][28]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][28]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][28]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][28]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][28]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][28]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][28]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][28]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][28]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][28]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][28]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][28]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][28]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][28]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][29]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][29]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][29]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][29]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][29]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][29]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][29]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][29]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][29]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][29]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][29]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][29]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][29]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][29]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][29]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][29]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][29]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][29]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][29]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][29]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][29]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][29]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][29]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][29]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][29]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(3),
      Q => \INFERRED_GEN.data_reg[255][29]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][29]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][29]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][29]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][29]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][29]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][29]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][29]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][29]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][29]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][29]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][29]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][29]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][29]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][29]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][29]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][29]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][29]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][29]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][29]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][29]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][29]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][29]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][29]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][29]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][29]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][29]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][29]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][29]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][29]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][2]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][2]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][2]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][2]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][2]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][2]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][2]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][2]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][2]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][2]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][2]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][2]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][2]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][2]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][2]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][2]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][2]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][2]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][2]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][2]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][2]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][2]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][2]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][2]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][2]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(30),
      Q => \INFERRED_GEN.data_reg[255][2]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][2]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][2]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][2]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][2]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][2]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][2]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][2]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][2]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][2]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][2]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][2]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][2]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][2]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][2]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][2]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][2]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][2]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][2]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][2]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][2]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][2]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][2]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][2]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][2]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][2]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][2]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][2]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][2]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][2]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][30]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][30]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][30]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][30]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][30]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][30]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][30]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][30]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][30]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][30]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][30]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][30]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][30]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][30]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][30]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][30]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][30]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][30]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][30]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][30]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][30]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][30]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][30]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][30]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][30]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(2),
      Q => \INFERRED_GEN.data_reg[255][30]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][30]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][30]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][30]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][30]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][30]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][30]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][30]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][30]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][30]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][30]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][30]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][30]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][30]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][30]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][30]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][30]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][30]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][30]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][30]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][30]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][30]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][30]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][30]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][30]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][30]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][30]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][30]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][30]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][30]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][31]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][31]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][31]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][31]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][31]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][31]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][31]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][31]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][31]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][31]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][31]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][31]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][31]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][31]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][31]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][31]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][31]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][31]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][31]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][31]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][31]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][31]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][31]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][31]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(1),
      Q => \INFERRED_GEN.data_reg[255][31]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][31]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][31]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][31]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][31]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][31]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][31]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][31]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][31]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][31]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][31]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][31]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][31]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][31]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][31]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][31]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][31]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][31]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][31]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][31]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][31]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][31]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][31]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][31]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][31]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][31]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][31]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][31]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][31]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][31]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][32]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][32]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][32]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][32]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][32]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][32]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][32]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][32]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][32]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][32]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][32]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][32]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][32]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][32]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][32]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][32]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][32]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][32]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][32]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][32]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][32]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][32]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][32]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][32]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][32]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(0),
      Q => \INFERRED_GEN.data_reg[255][32]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][32]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][32]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][32]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][32]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][32]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][32]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][32]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][32]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][32]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][32]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][32]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][32]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][32]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][32]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][32]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][32]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][32]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][32]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][32]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][32]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][32]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][32]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][32]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][32]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][32]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][32]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][32]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][32]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][32]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][3]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][3]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][3]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][3]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][3]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][3]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][3]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][3]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][3]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][3]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][3]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][3]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][3]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][3]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][3]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][3]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][3]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][3]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][3]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][3]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][3]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][3]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][3]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][3]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][3]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(29),
      Q => \INFERRED_GEN.data_reg[255][3]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][3]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][3]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][3]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][3]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][3]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][3]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][3]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][3]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][3]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][3]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][3]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][3]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][3]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][3]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][3]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][3]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][3]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][3]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][3]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][3]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][3]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][3]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][3]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][3]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][3]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][3]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][3]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][3]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][3]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][4]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][4]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][4]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][4]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][4]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][4]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][4]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][4]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][4]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][4]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][4]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][4]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][4]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][4]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][4]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][4]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][4]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][4]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][4]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][4]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][4]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][4]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][4]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][4]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][4]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(28),
      Q => \INFERRED_GEN.data_reg[255][4]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][4]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][4]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][4]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][4]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][4]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][4]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][4]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][4]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][4]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][4]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][4]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][4]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][4]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][4]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][4]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][4]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][4]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][4]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][4]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][4]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][4]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][4]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][4]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][4]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][4]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][4]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][4]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][4]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][4]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][5]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][5]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][5]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][5]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][5]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][5]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][5]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][5]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][5]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][5]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][5]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][5]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][5]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][5]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][5]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][5]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][5]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][5]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][5]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][5]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][5]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][5]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][5]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][5]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][5]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(27),
      Q => \INFERRED_GEN.data_reg[255][5]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][5]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][5]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][5]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][5]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][5]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][5]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][5]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][5]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][5]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][5]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][5]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][5]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][5]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][5]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][5]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][5]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][5]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][5]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][5]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][5]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][5]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][5]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][5]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][5]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][5]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][5]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][5]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][5]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][5]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][6]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][6]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][6]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][6]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][6]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][6]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][6]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][6]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][6]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][6]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][6]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][6]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][6]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][6]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][6]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][6]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][6]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][6]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][6]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][6]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][6]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][6]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][6]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][6]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][6]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(26),
      Q => \INFERRED_GEN.data_reg[255][6]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][6]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][6]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][6]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][6]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][6]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][6]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][6]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][6]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][6]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][6]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][6]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][6]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][6]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][6]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][6]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][6]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][6]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][6]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][6]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][6]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][6]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][6]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][6]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][6]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][6]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][6]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][6]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][6]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][6]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][7]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][7]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][7]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][7]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][7]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][7]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][7]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][7]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][7]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][7]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][7]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][7]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][7]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][7]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][7]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][7]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][7]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][7]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][7]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][7]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][7]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][7]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][7]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][7]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][7]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(25),
      Q => \INFERRED_GEN.data_reg[255][7]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][7]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][7]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][7]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][7]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][7]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][7]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][7]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][7]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][7]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][7]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][7]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][7]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][7]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][7]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][7]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][7]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][7]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][7]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][7]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][7]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][7]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][7]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][7]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][7]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][7]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][7]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][7]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][7]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][7]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][8]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][8]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][8]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][8]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][8]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][8]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][8]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][8]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][8]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][8]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][8]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][8]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][8]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][8]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][8]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][8]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][8]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][8]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][8]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][8]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][8]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][8]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][8]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][8]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][8]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(24),
      Q => \INFERRED_GEN.data_reg[255][8]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][8]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][8]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][8]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][8]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][8]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][8]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][8]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][8]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][8]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][8]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][8]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][8]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][8]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][8]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][8]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][8]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][8]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][8]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][8]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][8]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][8]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][8]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][8]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][8]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][8]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][8]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][8]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][8]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][8]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][9]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][9]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][9]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][9]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][9]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][9]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][9]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][9]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][9]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][9]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][9]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][9]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][9]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][9]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][9]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][9]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][9]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][9]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][9]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][9]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][9]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][9]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][9]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][9]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][9]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(23),
      Q => \INFERRED_GEN.data_reg[255][9]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][9]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][9]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][9]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][9]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][9]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][9]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][9]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][9]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][9]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][9]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][9]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][9]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][9]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][9]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][9]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][9]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][9]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][9]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][9]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][9]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][9]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][9]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][9]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][9]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][9]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][9]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.cnt_i_reg[2]_rep\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][9]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][9]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][9]_srl32__6_Q31_UNCONNECTED\
    );
\s_axi_mem_rdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][1]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][1]_mux__3_n_0\,
      O => s_axi_mem_rdata(0)
    );
\s_axi_mem_rdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][11]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][11]_mux__3_n_0\,
      O => s_axi_mem_rdata(10)
    );
\s_axi_mem_rdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][12]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][12]_mux__3_n_0\,
      O => s_axi_mem_rdata(11)
    );
\s_axi_mem_rdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][13]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][13]_mux__3_n_0\,
      O => s_axi_mem_rdata(12)
    );
\s_axi_mem_rdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][14]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][14]_mux__3_n_0\,
      O => s_axi_mem_rdata(13)
    );
\s_axi_mem_rdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][15]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][15]_mux__3_n_0\,
      O => s_axi_mem_rdata(14)
    );
\s_axi_mem_rdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][16]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][16]_mux__3_n_0\,
      O => s_axi_mem_rdata(15)
    );
\s_axi_mem_rdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][17]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][17]_mux__3_n_0\,
      O => s_axi_mem_rdata(16)
    );
\s_axi_mem_rdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][18]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][18]_mux__3_n_0\,
      O => s_axi_mem_rdata(17)
    );
\s_axi_mem_rdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][19]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][19]_mux__3_n_0\,
      O => s_axi_mem_rdata(18)
    );
\s_axi_mem_rdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][20]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][20]_mux__3_n_0\,
      O => s_axi_mem_rdata(19)
    );
\s_axi_mem_rdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][2]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][2]_mux__3_n_0\,
      O => s_axi_mem_rdata(1)
    );
\s_axi_mem_rdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][21]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][21]_mux__3_n_0\,
      O => s_axi_mem_rdata(20)
    );
\s_axi_mem_rdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][22]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][22]_mux__3_n_0\,
      O => s_axi_mem_rdata(21)
    );
\s_axi_mem_rdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][23]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][23]_mux__3_n_0\,
      O => s_axi_mem_rdata(22)
    );
\s_axi_mem_rdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][24]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][24]_mux__3_n_0\,
      O => s_axi_mem_rdata(23)
    );
\s_axi_mem_rdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][25]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][25]_mux__3_n_0\,
      O => s_axi_mem_rdata(24)
    );
\s_axi_mem_rdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][26]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][26]_mux__3_n_0\,
      O => s_axi_mem_rdata(25)
    );
\s_axi_mem_rdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][27]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][27]_mux__3_n_0\,
      O => s_axi_mem_rdata(26)
    );
\s_axi_mem_rdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][28]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][28]_mux__3_n_0\,
      O => s_axi_mem_rdata(27)
    );
\s_axi_mem_rdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][29]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][29]_mux__3_n_0\,
      O => s_axi_mem_rdata(28)
    );
\s_axi_mem_rdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][30]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][30]_mux__3_n_0\,
      O => s_axi_mem_rdata(29)
    );
\s_axi_mem_rdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][3]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][3]_mux__3_n_0\,
      O => s_axi_mem_rdata(2)
    );
\s_axi_mem_rdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][31]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][31]_mux__3_n_0\,
      O => s_axi_mem_rdata(30)
    );
\s_axi_mem_rdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][32]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][32]_mux__3_n_0\,
      O => s_axi_mem_rdata(31)
    );
\s_axi_mem_rdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][4]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][4]_mux__3_n_0\,
      O => s_axi_mem_rdata(3)
    );
\s_axi_mem_rdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][5]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][5]_mux__3_n_0\,
      O => s_axi_mem_rdata(4)
    );
\s_axi_mem_rdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][6]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][6]_mux__3_n_0\,
      O => s_axi_mem_rdata(5)
    );
\s_axi_mem_rdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][7]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][7]_mux__3_n_0\,
      O => s_axi_mem_rdata(6)
    );
\s_axi_mem_rdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][8]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][8]_mux__3_n_0\,
      O => s_axi_mem_rdata(7)
    );
\s_axi_mem_rdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][9]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][9]_mux__3_n_0\,
      O => s_axi_mem_rdata(8)
    );
\s_axi_mem_rdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][10]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][10]_mux__3_n_0\,
      O => s_axi_mem_rdata(9)
    );
\s_axi_mem_rresp[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => rnw_reg_reg,
      I1 => \INFERRED_GEN.data_reg[255][0]_mux__3_n_0\,
      I2 => Q(7),
      I3 => \INFERRED_GEN.data_reg[255][0]_mux__4_n_0\,
      O => s_axi_mem_rresp(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_io_registers is
  port (
    mem_wen : out STD_LOGIC;
    mem_cen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_oen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rpn : out STD_LOGIC;
    mem_ce : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rnw : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mem_dq_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mem_dq_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mem_qwen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_ben : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    mem_CEN_cmb : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    mem_OEN_cmb : in STD_LOGIC;
    mem_WEN_cmb : in STD_LOGIC;
    Mem_CE_int : in STD_LOGIC;
    mem_RNW_cmb : in STD_LOGIC;
    mem_dq_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rdclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mem_dqt_t_d_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \BEN_STORE_GEN[0].BEN_REG\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \BEN_STORE_GEN[2].BEN_REG\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_io_registers : entity is "io_registers";
end axi_em_ctrl_io_registers;

architecture STRUCTURE of axi_em_ctrl_io_registers is
  signal mem_wen_reg : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of mem_wen_reg : signal is "true";
  attribute IOB : string;
  attribute IOB of \Mem_DQ_I_v_reg[0]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[10]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[11]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[12]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[13]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[14]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[15]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[1]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[2]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[3]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[4]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[5]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[6]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[7]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[8]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[9]\ : label is "TRUE";
  attribute IOB of \mem_ben_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \mem_ben_reg_reg[1]\ : label is "TRUE";
  attribute IOB of \mem_ce_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \mem_cen_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[10]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[11]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[12]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[13]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[14]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[15]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[1]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[2]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[3]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[4]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[5]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[6]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[7]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[8]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[9]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[10]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[11]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[12]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[13]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[14]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[15]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[1]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[2]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[3]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[4]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[5]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[6]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[7]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[8]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[9]\ : label is "TRUE";
  attribute IOB of \mem_oen_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \mem_qwen_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \mem_qwen_reg_reg[1]\ : label is "TRUE";
  attribute IOB of mem_rnw_reg_reg : label is "TRUE";
  attribute IOB of mem_rpn_reg_reg : label is "TRUE";
  attribute IOB of mem_wen_reg_reg : label is "TRUE";
  attribute KEEP : string;
  attribute KEEP of mem_wen_reg_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of mem_wen_reg_reg : label is "no";
begin
  mem_wen <= mem_wen_reg;
\Mem_DQ_I_v_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(7),
      Q => Q(15),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(13),
      Q => Q(5),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(12),
      Q => Q(4),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(11),
      Q => Q(3),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(10),
      Q => Q(2),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(9),
      Q => Q(1),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(8),
      Q => Q(0),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(6),
      Q => Q(14),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(5),
      Q => Q(13),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(4),
      Q => Q(12),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(3),
      Q => Q(11),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(2),
      Q => Q(10),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(1),
      Q => Q(9),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(0),
      Q => Q(8),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(15),
      Q => Q(7),
      R => SR(0)
    );
\Mem_DQ_I_v_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(14),
      Q => Q(6),
      R => SR(0)
    );
\mem_ben_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BEN_STORE_GEN[2].BEN_REG\(1),
      Q => mem_ben(0),
      S => SR(0)
    );
\mem_ben_reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BEN_STORE_GEN[2].BEN_REG\(0),
      Q => mem_ben(1),
      S => SR(0)
    );
\mem_ce_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Mem_CE_int,
      Q => mem_ce(0),
      R => SR(0)
    );
\mem_cen_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_CEN_cmb,
      Q => mem_cen(0),
      S => SR(0)
    );
\mem_dq_o_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(15),
      Q => mem_dq_o(7),
      R => SR(0)
    );
\mem_dq_o_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(5),
      Q => mem_dq_o(13),
      R => SR(0)
    );
\mem_dq_o_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(4),
      Q => mem_dq_o(12),
      R => SR(0)
    );
\mem_dq_o_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(3),
      Q => mem_dq_o(11),
      R => SR(0)
    );
\mem_dq_o_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(2),
      Q => mem_dq_o(10),
      R => SR(0)
    );
\mem_dq_o_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(1),
      Q => mem_dq_o(9),
      R => SR(0)
    );
\mem_dq_o_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => mem_dq_o(8),
      R => SR(0)
    );
\mem_dq_o_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(14),
      Q => mem_dq_o(6),
      R => SR(0)
    );
\mem_dq_o_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(13),
      Q => mem_dq_o(5),
      R => SR(0)
    );
\mem_dq_o_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(12),
      Q => mem_dq_o(4),
      R => SR(0)
    );
\mem_dq_o_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(11),
      Q => mem_dq_o(3),
      R => SR(0)
    );
\mem_dq_o_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(10),
      Q => mem_dq_o(2),
      R => SR(0)
    );
\mem_dq_o_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(9),
      Q => mem_dq_o(1),
      R => SR(0)
    );
\mem_dq_o_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(8),
      Q => mem_dq_o(0),
      R => SR(0)
    );
\mem_dq_o_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(7),
      Q => mem_dq_o(15),
      R => SR(0)
    );
\mem_dq_o_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(6),
      Q => mem_dq_o(14),
      R => SR(0)
    );
\mem_dq_t_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(7),
      S => SR(0)
    );
\mem_dq_t_reg_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(13),
      S => SR(0)
    );
\mem_dq_t_reg_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(12),
      S => SR(0)
    );
\mem_dq_t_reg_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(11),
      S => SR(0)
    );
\mem_dq_t_reg_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(10),
      S => SR(0)
    );
\mem_dq_t_reg_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(9),
      S => SR(0)
    );
\mem_dq_t_reg_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(8),
      S => SR(0)
    );
\mem_dq_t_reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(6),
      S => SR(0)
    );
\mem_dq_t_reg_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(5),
      S => SR(0)
    );
\mem_dq_t_reg_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(4),
      S => SR(0)
    );
\mem_dq_t_reg_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(3),
      S => SR(0)
    );
\mem_dq_t_reg_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(2),
      S => SR(0)
    );
\mem_dq_t_reg_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(1),
      S => SR(0)
    );
\mem_dq_t_reg_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(0),
      S => SR(0)
    );
\mem_dq_t_reg_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(15),
      S => SR(0)
    );
\mem_dq_t_reg_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_dqt_t_d_reg(0),
      Q => mem_dq_t(14),
      S => SR(0)
    );
\mem_oen_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_OEN_cmb,
      Q => mem_oen(0),
      S => SR(0)
    );
\mem_qwen_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BEN_STORE_GEN[0].BEN_REG\(1),
      Q => mem_qwen(0),
      S => SR(0)
    );
\mem_qwen_reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BEN_STORE_GEN[0].BEN_REG\(0),
      Q => mem_qwen(1),
      S => SR(0)
    );
mem_rnw_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_RNW_cmb,
      Q => mem_rnw,
      R => SR(0)
    );
mem_rpn_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '1',
      Q => mem_rpn,
      R => SR(0)
    );
mem_wen_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_WEN_cmb,
      Q => mem_wen_reg,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_ld_arith_reg is
  port (
    burst_cnt_i : out STD_LOGIC_VECTOR ( 0 to 7 );
    pend_rdreq_reg : out STD_LOGIC;
    ip2bus_addrack : in STD_LOGIC;
    S_0 : in STD_LOGIC;
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    reset_fifo : in STD_LOGIC;
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_ld_arith_reg : entity is "ld_arith_reg";
end axi_em_ctrl_ld_arith_reg;

architecture STRUCTURE of axi_em_ctrl_ld_arith_reg is
  signal \^burst_cnt_i\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal cry : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_1 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal gen_cry_kill_n_4 : STD_LOGIC;
  signal gen_cry_kill_n_5 : STD_LOGIC;
  signal gen_cry_kill_n_6 : STD_LOGIC;
  signal pend_rdreq_i_4_n_0 : STD_LOGIC;
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal xorcy_out_5 : STD_LOGIC;
  signal xorcy_out_6 : STD_LOGIC;
  signal xorcy_out_7 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[3].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[3].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[5].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[5].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[5].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[5].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[6].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[6].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[6].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[6].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[7].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[7].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[7].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[7].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[7].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
begin
  burst_cnt_i(0 to 7) <= \^burst_cnt_i\(0 to 7);
\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_7,
      Q => \^burst_cnt_i\(0),
      R => reset_fifo
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_6,
      Q => \^burst_cnt_i\(1),
      R => reset_fifo
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^burst_cnt_i\(1),
      I1 => ip2bus_addrack,
      O => gen_cry_kill_n_6
    );
\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_5,
      Q => \^burst_cnt_i\(2),
      R => reset_fifo
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^burst_cnt_i\(2),
      I1 => ip2bus_addrack,
      O => gen_cry_kill_n_5
    );
\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_4,
      Q => \^burst_cnt_i\(3),
      R => reset_fifo
    );
\PERBIT_GEN[3].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^burst_cnt_i\(3),
      I1 => ip2bus_addrack,
      O => gen_cry_kill_n_4
    );
\PERBIT_GEN[3].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3) => \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED\(3),
      CO(2 downto 0) => cry(7 downto 5),
      CYINIT => '0',
      DI(3) => \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => gen_cry_kill_n_6,
      DI(1) => gen_cry_kill_n_5,
      DI(0) => gen_cry_kill_n_4,
      O(3) => xorcy_out_7,
      O(2) => xorcy_out_6,
      O(1) => xorcy_out_5,
      O(0) => xorcy_out_4,
      S(3) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_3,
      Q => \^burst_cnt_i\(4),
      R => reset_fifo
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^burst_cnt_i\(4),
      I1 => ip2bus_addrack,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[5].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_2,
      Q => \^burst_cnt_i\(5),
      R => reset_fifo
    );
\PERBIT_GEN[5].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^burst_cnt_i\(5),
      I1 => ip2bus_addrack,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[6].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_1,
      Q => \^burst_cnt_i\(6),
      R => reset_fifo
    );
\PERBIT_GEN[6].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^burst_cnt_i\(6),
      I1 => ip2bus_addrack,
      O => gen_cry_kill_n_1
    );
\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_0,
      Q => \^burst_cnt_i\(7),
      R => reset_fifo
    );
\PERBIT_GEN[7].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^burst_cnt_i\(7),
      I1 => ip2bus_addrack,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[7].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => ip2bus_addrack,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => gen_cry_kill_n_1,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => S_0
    );
pend_rdreq_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^burst_cnt_i\(3),
      I1 => \^burst_cnt_i\(2),
      I2 => \^burst_cnt_i\(1),
      I3 => \^burst_cnt_i\(0),
      I4 => pend_rdreq_i_4_n_0,
      O => pend_rdreq_reg
    );
pend_rdreq_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^burst_cnt_i\(4),
      I1 => \^burst_cnt_i\(5),
      I2 => \^burst_cnt_i\(7),
      I3 => \^burst_cnt_i\(6),
      O => pend_rdreq_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_em_ctrl_ld_arith_reg__parameterized0\ is
  port (
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ : out STD_LOGIC;
    read_data_en_reg_reg : out STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    read_data_en_reg_reg_0 : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]\ : out STD_LOGIC;
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ : out STD_LOGIC;
    \axi_trans_size_reg_reg[1]\ : in STD_LOGIC;
    S_1 : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    pend_wrreq_reg : in STD_LOGIC;
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    bus2ip_rnw : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_crnt_state_reg[0]_0\ : in STD_LOGIC;
    tpacc_end : in STD_LOGIC;
    new_page_d1 : in STD_LOGIC;
    read_break_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_em_ctrl_ld_arith_reg__parameterized0\ : entity is "ld_arith_reg";
end \axi_em_ctrl_ld_arith_reg__parameterized0\;

architecture STRUCTURE of \axi_em_ctrl_ld_arith_reg__parameterized0\ is
  signal \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\ : STD_LOGIC;
  signal \^read_complete_pipe_gen[0].read_complete_pipe\ : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal \^read_data_en_reg_reg\ : STD_LOGIC;
  signal \^read_data_en_reg_reg_0\ : STD_LOGIC;
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_7\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[1]_i_7\ : label is "soft_lutpair79";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_2\ : label is "soft_lutpair77";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute SOFT_HLUTNM of \PERBIT_GEN[1].MULT_AND_i1_i_5\ : label is "soft_lutpair78";
  attribute BOX_TYPE of \PERBIT_GEN[1].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute SOFT_HLUTNM of \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_6\ : label is "soft_lutpair78";
begin
  \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ <= \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\;
  \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ <= \^read_complete_pipe_gen[0].read_complete_pipe\;
  read_data_en_reg_reg <= \^read_data_en_reg_reg\;
  read_data_en_reg_reg_0 <= \^read_data_en_reg_reg_0\;
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\,
      I1 => bus2Mem_RdReq,
      I2 => \^read_data_en_reg_reg\,
      I3 => \^read_complete_pipe_gen[0].read_complete_pipe\,
      O => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]\
    );
\FSM_sequential_crnt_state[1]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^read_data_en_reg_reg_0\,
      I1 => tpacc_end,
      I2 => new_page_d1,
      O => \FSM_sequential_crnt_state_reg[1]\
    );
\FSM_sequential_crnt_state[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => bus2Mem_RdReq,
      I1 => \^read_data_en_reg_reg\,
      I2 => \^read_complete_pipe_gen[0].read_complete_pipe\,
      O => \FSM_sequential_crnt_state_reg[0]\
    );
\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_1,
      Q => \^read_data_en_reg_reg\,
      R => SR(0)
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_0,
      Q => \^read_complete_pipe_gen[0].read_complete_pipe\,
      R => SR(0)
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => bus2ip_wrreq_i,
      I1 => pend_wrreq_reg,
      I2 => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\,
      I3 => \^read_data_en_reg_reg\,
      I4 => \^read_complete_pipe_gen[0].read_complete_pipe\,
      O => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^read_complete_pipe_gen[0].read_complete_pipe\,
      I1 => \axi_trans_size_reg_reg[1]\,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[1].MULT_AND_i1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^read_complete_pipe_gen[0].read_complete_pipe\,
      I1 => \^read_data_en_reg_reg\,
      O => \^read_data_en_reg_reg_0\
    );
\PERBIT_GEN[1].MULT_AND_i1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\,
      I1 => bus2Mem_RdReq,
      I2 => \^read_data_en_reg_reg\,
      I3 => \^read_complete_pipe_gen[0].read_complete_pipe\,
      O => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\
    );
\PERBIT_GEN[1].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => cry(1),
      CYINIT => \axi_trans_size_reg_reg[1]\,
      DI(3 downto 1) => \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => gen_cry_kill_n_0,
      O(3 downto 2) => \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_O_UNCONNECTED\(3 downto 2),
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3 downto 2) => \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => S_1
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF7F0000"
    )
        port map (
      I0 => bus2ip_rnw,
      I1 => temp_bus2ip_cs,
      I2 => CO(0),
      I3 => \^read_data_en_reg_reg_0\,
      I4 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\,
      I5 => \FSM_sequential_crnt_state_reg[0]_0\,
      O => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
        port map (
      I0 => \^read_data_en_reg_reg\,
      I1 => \^read_complete_pipe_gen[0].read_complete_pipe\,
      I2 => pend_wrreq_reg,
      I3 => bus2ip_wrreq_i,
      O => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => \^read_complete_pipe_gen[0].read_complete_pipe\,
      I1 => \^read_data_en_reg_reg\,
      I2 => bus2Mem_RdReq,
      I3 => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\,
      I4 => read_break_reg,
      O => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_em_ctrl_ld_arith_reg__parameterized1\ is
  port (
    read_ack_reg_reg : out STD_LOGIC;
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ : out STD_LOGIC;
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ : out STD_LOGIC;
    read_ack_cmb : out STD_LOGIC;
    tpacc_end : out STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CE_13 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[2]\ : in STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_em_ctrl_ld_arith_reg__parameterized1\ : entity is "ld_arith_reg";
end \axi_em_ctrl_ld_arith_reg__parameterized1\;

architecture STRUCTURE of \axi_em_ctrl_ld_arith_reg__parameterized1\ is
  signal \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[3].MUXCY_i1_i_2__1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].MULT_AND_i1_i_1__4_n_0\ : STD_LOGIC;
  signal \^read_complete_pipe_gen[0].read_complete_pipe\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal \^read_ack_reg_reg\ : STD_LOGIC;
  signal tpacc_cnt : STD_LOGIC_VECTOR ( 0 to 4 );
  signal \^tpacc_end\ : STD_LOGIC;
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
begin
  \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ <= \^read_complete_pipe_gen[0].read_complete_pipe\;
  read_ack_reg_reg <= \^read_ack_reg_reg\;
  tpacc_end <= \^tpacc_end\;
\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_13,
      D => xorcy_out_4,
      Q => tpacc_cnt(0),
      S => SR(0)
    );
\PERBIT_GEN[0].XORCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => xorcy_out_4,
      S(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[0].XORCY_i1_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555554"
    )
        port map (
      I0 => \FSM_sequential_crnt_state_reg[2]\,
      I1 => tpacc_cnt(1),
      I2 => \^read_ack_reg_reg\,
      I3 => tpacc_cnt(2),
      I4 => tpacc_cnt(4),
      I5 => tpacc_cnt(0),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_13,
      D => xorcy_out_3,
      Q => tpacc_cnt(1),
      S => SR(0)
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tpacc_cnt(1),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__4_n_0\,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[1].MULT_AND_i1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => tpacc_cnt(1),
      I1 => \^read_ack_reg_reg\,
      I2 => tpacc_cnt(2),
      I3 => tpacc_cnt(0),
      I4 => tpacc_cnt(4),
      O => \^tpacc_end\
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555554"
    )
        port map (
      I0 => \FSM_sequential_crnt_state_reg[2]\,
      I1 => \^read_ack_reg_reg\,
      I2 => tpacc_cnt(2),
      I3 => tpacc_cnt(0),
      I4 => tpacc_cnt(4),
      I5 => tpacc_cnt(1),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_13,
      D => xorcy_out_2,
      Q => tpacc_cnt(2),
      S => SR(0)
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tpacc_cnt(2),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__4_n_0\,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555554"
    )
        port map (
      I0 => \FSM_sequential_crnt_state_reg[2]\,
      I1 => tpacc_cnt(1),
      I2 => \^read_ack_reg_reg\,
      I3 => tpacc_cnt(0),
      I4 => tpacc_cnt(4),
      I5 => tpacc_cnt(2),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_13,
      D => xorcy_out_1,
      Q => \^read_ack_reg_reg\,
      S => SR(0)
    );
\PERBIT_GEN[3].MUXCY_i1_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^read_ack_reg_reg\,
      I1 => \FSM_sequential_crnt_state_reg[2]\,
      O => \PERBIT_GEN[3].MUXCY_i1_i_2__1_n_0\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_13,
      D => xorcy_out_0,
      Q => tpacc_cnt(4),
      S => SR(0)
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tpacc_cnt(4),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__4_n_0\,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[4].MULT_AND_i1_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => tpacc_cnt(4),
      I1 => tpacc_cnt(0),
      I2 => tpacc_cnt(2),
      I3 => \^read_ack_reg_reg\,
      I4 => tpacc_cnt(1),
      I5 => \FSM_sequential_crnt_state_reg[2]\,
      O => \PERBIT_GEN[4].MULT_AND_i1_i_1__4_n_0\
    );
\PERBIT_GEN[4].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => \PERBIT_GEN[4].MULT_AND_i1_i_1__4_n_0\,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => \PERBIT_GEN[3].MUXCY_i1_i_2__1_n_0\,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12\,
      S(0) => S
    );
\PERBIT_GEN[4].MUXCY_i1_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAAB"
    )
        port map (
      I0 => \FSM_sequential_crnt_state_reg[2]\,
      I1 => tpacc_cnt(1),
      I2 => \^read_ack_reg_reg\,
      I3 => tpacc_cnt(2),
      I4 => tpacc_cnt(0),
      I5 => tpacc_cnt(4),
      O => S
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^read_complete_pipe_gen[0].read_complete_pipe\,
      I1 => bus2Mem_RdReq,
      O => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => tpacc_cnt(4),
      I1 => tpacc_cnt(0),
      I2 => tpacc_cnt(2),
      I3 => \^read_ack_reg_reg\,
      I4 => tpacc_cnt(1),
      I5 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      O => \^read_complete_pipe_gen[0].read_complete_pipe\
    );
read_ack_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808FF0800000000"
    )
        port map (
      I0 => bus2Mem_RdReq,
      I1 => \^tpacc_end\,
      I2 => \FSM_sequential_crnt_state_reg[2]\,
      I3 => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\,
      I4 => \FSM_sequential_crnt_state_reg[0]\,
      I5 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      O => read_ack_cmb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_em_ctrl_ld_arith_reg__parameterized1_1\ is
  port (
    trd_cnt : out STD_LOGIC_VECTOR ( 0 to 4 );
    addr_cnt_ce_cmb61_out : out STD_LOGIC;
    read_ack_reg_reg : out STD_LOGIC;
    trd_cnt_en : in STD_LOGIC;
    S_6 : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CE_11 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_bus2ip_cs : in STD_LOGIC;
    bus2ip_rnw : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_em_ctrl_ld_arith_reg__parameterized1_1\ : entity is "ld_arith_reg";
end \axi_em_ctrl_ld_arith_reg__parameterized1_1\;

architecture STRUCTURE of \axi_em_ctrl_ld_arith_reg__parameterized1_1\ is
  signal \PERBIT_GEN[3].MUXCY_i1_i_2_n_0\ : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal \^read_ack_reg_reg\ : STD_LOGIC;
  signal \^trd_cnt\ : STD_LOGIC_VECTOR ( 0 to 4 );
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
begin
  read_ack_reg_reg <= \^read_ack_reg_reg\;
  trd_cnt(0 to 4) <= \^trd_cnt\(0 to 4);
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888888888888888"
    )
        port map (
      I0 => \^read_ack_reg_reg\,
      I1 => bus2Mem_RdReq,
      I2 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      I3 => CO(0),
      I4 => temp_bus2ip_cs,
      I5 => bus2ip_rnw,
      O => addr_cnt_ce_cmb61_out
    );
\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_11,
      D => xorcy_out_4,
      Q => \^trd_cnt\(0),
      S => SR(0)
    );
\PERBIT_GEN[0].XORCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => xorcy_out_4,
      S(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10\
    );
\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_11,
      D => xorcy_out_3,
      Q => \^trd_cnt\(1),
      S => SR(0)
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^trd_cnt\(1),
      I1 => trd_cnt_en,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_11,
      D => xorcy_out_2,
      Q => \^trd_cnt\(2),
      S => SR(0)
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^trd_cnt\(2),
      I1 => trd_cnt_en,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_11,
      D => xorcy_out_1,
      Q => \^trd_cnt\(3),
      S => SR(0)
    );
\PERBIT_GEN[3].MUXCY_i1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^trd_cnt\(3),
      I1 => trd_cnt_en,
      O => \PERBIT_GEN[3].MUXCY_i1_i_2_n_0\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_11,
      D => xorcy_out_0,
      Q => \^trd_cnt\(4),
      S => SR(0)
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^trd_cnt\(4),
      I1 => trd_cnt_en,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[4].MULT_AND_i1_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^trd_cnt\(3),
      I1 => \^trd_cnt\(4),
      I2 => \^trd_cnt\(1),
      I3 => \^trd_cnt\(0),
      I4 => \^trd_cnt\(2),
      O => \^read_ack_reg_reg\
    );
\PERBIT_GEN[4].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => trd_cnt_en,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => \PERBIT_GEN[3].MUXCY_i1_i_2_n_0\,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9\,
      S(2) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8\,
      S(1) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7\,
      S(0) => S_6
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_em_ctrl_ld_arith_reg__parameterized1_3\ is
  port (
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    twr_end : out STD_LOGIC;
    twr_cnt_en : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_em_ctrl_ld_arith_reg__parameterized1_3\ : entity is "ld_arith_reg";
end \axi_em_ctrl_ld_arith_reg__parameterized1_3\;

architecture STRUCTURE of \axi_em_ctrl_ld_arith_reg__parameterized1_3\ is
  signal \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_1 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[3].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[3].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
begin
  \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(3 downto 0) <= \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(3 downto 0);
\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_4,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(3),
      S => SR(0)
    );
\PERBIT_GEN[0].XORCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => xorcy_out_4,
      S(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_3,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(2),
      S => SR(0)
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(2),
      I1 => twr_cnt_en,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_2,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(1),
      S => SR(0)
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(1),
      I1 => twr_cnt_en,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_1,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(0),
      S => SR(0)
    );
\PERBIT_GEN[3].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(0),
      I1 => twr_cnt_en,
      O => gen_cry_kill_n_1
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_0,
      Q => p_0_in(4),
      S => SR(0)
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(4),
      I1 => twr_cnt_en,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[4].MULT_AND_i1_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(2),
      I1 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(0),
      I2 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(1),
      I3 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(3),
      I4 => p_0_in(4),
      O => twr_end
    );
\PERBIT_GEN[4].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => twr_cnt_en,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => gen_cry_kill_n_1,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => S
    );
\PERBIT_GEN[4].MUXCY_i1_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_0_in(4),
      I1 => twr_cnt_en,
      O => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_em_ctrl_ld_arith_reg__parameterized2\ is
  port (
    transaction_done_reg_reg : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CE_15 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    pend_wrreq_reg : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC;
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    bus2Mem_WrReq : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_em_ctrl_ld_arith_reg__parameterized2\ : entity is "ld_arith_reg";
end \axi_em_ctrl_ld_arith_reg__parameterized2\;

architecture STRUCTURE of \axi_em_ctrl_ld_arith_reg__parameterized2\ is
  signal \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_1 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal thz_cnt : STD_LOGIC_VECTOR ( 0 to 4 );
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[3].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[3].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
begin
  \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\;
\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_15,
      D => xorcy_out_4,
      Q => thz_cnt(0),
      R => SR(0)
    );
\PERBIT_GEN[0].XORCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => xorcy_out_4,
      S(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[0].XORCY_i1_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333332"
    )
        port map (
      I0 => thz_cnt(4),
      I1 => thz_cnt(0),
      I2 => thz_cnt(1),
      I3 => thz_cnt(3),
      I4 => thz_cnt(2),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_15,
      D => xorcy_out_3,
      Q => thz_cnt(1),
      R => SR(0)
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => thz_cnt(1),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0\,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F0E"
    )
        port map (
      I0 => thz_cnt(4),
      I1 => thz_cnt(0),
      I2 => thz_cnt(1),
      I3 => thz_cnt(3),
      I4 => thz_cnt(2),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_15,
      D => xorcy_out_2,
      Q => thz_cnt(2),
      R => SR(0)
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => thz_cnt(2),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0\,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => thz_cnt(4),
      I1 => thz_cnt(0),
      I2 => thz_cnt(1),
      I3 => thz_cnt(3),
      I4 => thz_cnt(2),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_15,
      D => xorcy_out_1,
      Q => thz_cnt(3),
      R => SR(0)
    );
\PERBIT_GEN[3].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => thz_cnt(3),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0\,
      O => gen_cry_kill_n_1
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => thz_cnt(4),
      I1 => thz_cnt(0),
      I2 => thz_cnt(1),
      I3 => thz_cnt(3),
      I4 => thz_cnt(2),
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_15,
      D => xorcy_out_0,
      Q => thz_cnt(4),
      R => SR(0)
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => thz_cnt(2),
      I1 => thz_cnt(3),
      I2 => thz_cnt(1),
      I3 => thz_cnt(0),
      I4 => thz_cnt(4),
      O => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => thz_cnt(4),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0\,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[4].MULT_AND_i1_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => thz_cnt(4),
      I1 => thz_cnt(0),
      I2 => thz_cnt(1),
      I3 => thz_cnt(3),
      I4 => thz_cnt(2),
      O => \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0\
    );
\PERBIT_GEN[4].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0\,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => gen_cry_kill_n_1,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => S
    );
\PERBIT_GEN[4].MUXCY_i1_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => thz_cnt(4),
      I1 => thz_cnt(0),
      I2 => thz_cnt(1),
      I3 => thz_cnt(3),
      I4 => thz_cnt(2),
      O => S
    );
\mem_a_int[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => thz_cnt(4),
      I1 => thz_cnt(0),
      I2 => thz_cnt(1),
      I3 => thz_cnt(3),
      I4 => thz_cnt(2),
      I5 => bus2Mem_WrReq,
      O => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\
    );
transaction_done_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF7FFF7FFF7FFF"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      I1 => pend_wrreq_reg,
      I2 => bus2ip_wrreq_i,
      I3 => temp_bus2ip_cs,
      I4 => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\,
      I5 => bus2Mem_RdReq,
      O => transaction_done_reg_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_em_ctrl_ld_arith_reg__parameterized2_0\ is
  port (
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CE_5 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_em_ctrl_ld_arith_reg__parameterized2_0\ : entity is "ld_arith_reg";
end \axi_em_ctrl_ld_arith_reg__parameterized2_0\;

architecture STRUCTURE of \axi_em_ctrl_ld_arith_reg__parameterized2_0\ is
  signal \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_1 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal tlz_cnt : STD_LOGIC_VECTOR ( 0 to 4 );
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[3].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[3].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
begin
\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_5,
      D => xorcy_out_4,
      Q => tlz_cnt(0),
      R => SR(0)
    );
\PERBIT_GEN[0].XORCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => xorcy_out_4,
      S(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[0].XORCY_i1_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333332"
    )
        port map (
      I0 => tlz_cnt(4),
      I1 => tlz_cnt(0),
      I2 => tlz_cnt(1),
      I3 => tlz_cnt(3),
      I4 => tlz_cnt(2),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_5,
      D => xorcy_out_3,
      Q => tlz_cnt(1),
      R => SR(0)
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlz_cnt(1),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0\,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F0E"
    )
        port map (
      I0 => tlz_cnt(4),
      I1 => tlz_cnt(0),
      I2 => tlz_cnt(1),
      I3 => tlz_cnt(3),
      I4 => tlz_cnt(2),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_5,
      D => xorcy_out_2,
      Q => tlz_cnt(2),
      R => SR(0)
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlz_cnt(2),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0\,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => tlz_cnt(4),
      I1 => tlz_cnt(0),
      I2 => tlz_cnt(1),
      I3 => tlz_cnt(3),
      I4 => tlz_cnt(2),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_5,
      D => xorcy_out_1,
      Q => tlz_cnt(3),
      R => SR(0)
    );
\PERBIT_GEN[3].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlz_cnt(3),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0\,
      O => gen_cry_kill_n_1
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => tlz_cnt(4),
      I1 => tlz_cnt(0),
      I2 => tlz_cnt(1),
      I3 => tlz_cnt(3),
      I4 => tlz_cnt(2),
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_5,
      D => xorcy_out_0,
      Q => tlz_cnt(4),
      R => SR(0)
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => tlz_cnt(2),
      I1 => tlz_cnt(3),
      I2 => tlz_cnt(1),
      I3 => tlz_cnt(0),
      I4 => tlz_cnt(4),
      O => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlz_cnt(4),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0\,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[4].MULT_AND_i1_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => tlz_cnt(4),
      I1 => tlz_cnt(0),
      I2 => tlz_cnt(1),
      I3 => tlz_cnt(3),
      I4 => tlz_cnt(2),
      O => \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0\
    );
\PERBIT_GEN[4].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0\,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => gen_cry_kill_n_1,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => S
    );
\PERBIT_GEN[4].MUXCY_i1_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => tlz_cnt(4),
      I1 => tlz_cnt(0),
      I2 => tlz_cnt(1),
      I3 => tlz_cnt(3),
      I4 => tlz_cnt(2),
      O => S
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => temp_bus2ip_cs,
      I1 => tlz_cnt(4),
      I2 => tlz_cnt(0),
      I3 => tlz_cnt(1),
      I4 => tlz_cnt(3),
      I5 => tlz_cnt(2),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_em_ctrl_ld_arith_reg__parameterized2_2\ is
  port (
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]\ : out STD_LOGIC;
    Write_req_data_ack_cmb13_out : out STD_LOGIC;
    \DATA_STORE_GEN[0].WRDATA_REG\ : out STD_LOGIC;
    cycle_cnt_en_cmb58_out : out STD_LOGIC;
    twph_cnt_en : in STD_LOGIC;
    S : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CE_4 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    pend_wrreq_reg : in STD_LOGIC;
    last_addr1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_em_ctrl_ld_arith_reg__parameterized2_2\ : entity is "ld_arith_reg";
end \axi_em_ctrl_ld_arith_reg__parameterized2_2\;

architecture STRUCTURE of \axi_em_ctrl_ld_arith_reg__parameterized2_2\ is
  signal \^data_store_gen[0].wrdata_reg\ : STD_LOGIC;
  signal \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \^perbit_gen[2].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \^perbit_gen[3].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \PERBIT_GEN[3].MUXCY_i1_i_2__0_n_0\ : STD_LOGIC;
  signal \^perbit_gen[4].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
begin
  \DATA_STORE_GEN[0].WRDATA_REG\ <= \^data_store_gen[0].wrdata_reg\;
  \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\;
  \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\;
  \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[2].ff_rst0_gen.fdre_i1_0\;
  \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[3].ff_rst0_gen.fdre_i1_0\;
  \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[4].ff_rst0_gen.fdre_i1_0\;
\ADDRESS_STORE_GEN[0].ADDRESS_REG_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A3330000A0000000"
    )
        port map (
      I0 => \^data_store_gen[0].wrdata_reg\,
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I2 => bus2ip_wrreq_i,
      I3 => pend_wrreq_reg,
      I4 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1\,
      I5 => last_addr1,
      O => Write_req_data_ack_cmb13_out
    );
\FSM_sequential_crnt_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1\,
      I1 => \^perbit_gen[2].ff_rst0_gen.fdre_i1_0\,
      I2 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      I3 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I4 => \^perbit_gen[4].ff_rst0_gen.fdre_i1_0\,
      I5 => \^perbit_gen[3].ff_rst0_gen.fdre_i1_0\,
      O => \FSM_sequential_crnt_state_reg[1]\
    );
\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_4,
      D => xorcy_out_4,
      Q => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      R => SR(0)
    );
\PERBIT_GEN[0].XORCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => xorcy_out_4,
      S(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3\
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_4,
      D => xorcy_out_3,
      Q => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      R => SR(0)
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I1 => twph_cnt_en,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_4,
      D => xorcy_out_2,
      Q => \^perbit_gen[2].ff_rst0_gen.fdre_i1_0\,
      R => SR(0)
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[2].ff_rst0_gen.fdre_i1_0\,
      I1 => twph_cnt_en,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_4,
      D => xorcy_out_1,
      Q => \^perbit_gen[3].ff_rst0_gen.fdre_i1_0\,
      R => SR(0)
    );
\PERBIT_GEN[3].MUXCY_i1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[3].ff_rst0_gen.fdre_i1_0\,
      I1 => twph_cnt_en,
      O => \PERBIT_GEN[3].MUXCY_i1_i_2__0_n_0\
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_4,
      D => xorcy_out_0,
      Q => \^perbit_gen[4].ff_rst0_gen.fdre_i1_0\,
      R => SR(0)
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[4].ff_rst0_gen.fdre_i1_0\,
      I1 => twph_cnt_en,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[4].MULT_AND_i1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^perbit_gen[3].ff_rst0_gen.fdre_i1_0\,
      I1 => \^perbit_gen[4].ff_rst0_gen.fdre_i1_0\,
      I2 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I3 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      I4 => \^perbit_gen[2].ff_rst0_gen.fdre_i1_0\,
      O => \^data_store_gen[0].wrdata_reg\
    );
\PERBIT_GEN[4].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => twph_cnt_en,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => \PERBIT_GEN[3].MUXCY_i1_i_2__0_n_0\,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2\,
      S(2) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1\,
      S(1) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0\,
      S(0) => S
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^perbit_gen[2].ff_rst0_gen.fdre_i1_0\,
      I1 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      I2 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I3 => \^perbit_gen[4].ff_rst0_gen.fdre_i1_0\,
      I4 => \^perbit_gen[3].ff_rst0_gen.fdre_i1_0\,
      I5 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1\,
      O => cycle_cnt_en_cmb58_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_em_ctrl_ld_arith_reg__parameterized3\ is
  port (
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \FSM_sequential_crnt_state_reg[3]\ : out STD_LOGIC;
    twr_rec_end_int : out STD_LOGIC;
    twr_rec_cnt_en_int : in STD_LOGIC;
    \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CE_14 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_em_ctrl_ld_arith_reg__parameterized3\ : entity is "ld_arith_reg";
end \axi_em_ctrl_ld_arith_reg__parameterized3\;

architecture STRUCTURE of \axi_em_ctrl_ld_arith_reg__parameterized3\ is
  signal \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \PERBIT_GEN[14].MUXCY_i1_i_2_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[15].MULT_AND_i1_i_4_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[15].MULT_AND_i1_i_5_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[15].MULT_AND_i1_i_6_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[15].MUXCY_i1_i_1_n_0\ : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_10 : STD_LOGIC;
  signal gen_cry_kill_n_11 : STD_LOGIC;
  signal gen_cry_kill_n_12 : STD_LOGIC;
  signal gen_cry_kill_n_13 : STD_LOGIC;
  signal gen_cry_kill_n_14 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal gen_cry_kill_n_4 : STD_LOGIC;
  signal gen_cry_kill_n_5 : STD_LOGIC;
  signal gen_cry_kill_n_6 : STD_LOGIC;
  signal gen_cry_kill_n_7 : STD_LOGIC;
  signal gen_cry_kill_n_8 : STD_LOGIC;
  signal gen_cry_kill_n_9 : STD_LOGIC;
  signal twr_rec_cnt : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \^twr_rec_end_int\ : STD_LOGIC;
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_10 : STD_LOGIC;
  signal xorcy_out_11 : STD_LOGIC;
  signal xorcy_out_12 : STD_LOGIC;
  signal xorcy_out_13 : STD_LOGIC;
  signal xorcy_out_14 : STD_LOGIC;
  signal xorcy_out_15 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal xorcy_out_5 : STD_LOGIC;
  signal xorcy_out_6 : STD_LOGIC;
  signal xorcy_out_7 : STD_LOGIC;
  signal xorcy_out_8 : STD_LOGIC;
  signal xorcy_out_9 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[10].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[10].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[10].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[11].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[11].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[11].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[11].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[11].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[12].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[12].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[12].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[13].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[13].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[13].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[15].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[15].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[15].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[15].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[15].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[3].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[3].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[5].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[5].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[5].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[6].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[6].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[6].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[7].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[7].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[7].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[7].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[7].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[8].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[8].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[8].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[9].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[9].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[9].MULT_AND_i1\ : label is "LO:O";
begin
  \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(14 downto 0) <= \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(14 downto 0);
  twr_rec_end_int <= \^twr_rec_end_int\;
\FSM_sequential_crnt_state[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^twr_rec_end_int\,
      I1 => \out\(0),
      O => \FSM_sequential_crnt_state_reg[3]\
    );
\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_15,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(14),
      S => SR(0)
    );
\PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_5,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(4),
      S => SR(0)
    );
\PERBIT_GEN[10].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(4),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_5
    );
\PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_4,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(3),
      S => SR(0)
    );
\PERBIT_GEN[11].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(3),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_4
    );
\PERBIT_GEN[11].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3 downto 0) => cry(8 downto 5),
      CYINIT => '0',
      DI(3) => gen_cry_kill_n_7,
      DI(2) => gen_cry_kill_n_6,
      DI(1) => gen_cry_kill_n_5,
      DI(0) => gen_cry_kill_n_4,
      O(3) => xorcy_out_7,
      O(2) => xorcy_out_6,
      O(1) => xorcy_out_5,
      O(0) => xorcy_out_4,
      S(3) => \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1_0\,
      S(2) => \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1_0\,
      S(1) => \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1_0\,
      S(0) => \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1_0\
    );
\PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_3,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(2),
      S => SR(0)
    );
\PERBIT_GEN[12].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(2),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_2,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(1),
      S => SR(0)
    );
\PERBIT_GEN[13].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(1),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_1,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(0),
      S => SR(0)
    );
\PERBIT_GEN[14].MUXCY_i1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(0),
      I1 => twr_rec_cnt_en_int,
      O => \PERBIT_GEN[14].MUXCY_i1_i_2_n_0\
    );
\PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_0,
      Q => twr_rec_cnt(15),
      S => SR(0)
    );
\PERBIT_GEN[15].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => twr_rec_cnt(15),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[15].MULT_AND_i1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \PERBIT_GEN[15].MULT_AND_i1_i_4_n_0\,
      I1 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(14),
      I2 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(13),
      I3 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(11),
      I4 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(12),
      I5 => \PERBIT_GEN[15].MULT_AND_i1_i_5_n_0\,
      O => \^twr_rec_end_int\
    );
\PERBIT_GEN[15].MULT_AND_i1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(9),
      I1 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(10),
      I2 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(7),
      I3 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(8),
      O => \PERBIT_GEN[15].MULT_AND_i1_i_4_n_0\
    );
\PERBIT_GEN[15].MULT_AND_i1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(4),
      I1 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(3),
      I2 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(6),
      I3 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(5),
      I4 => \PERBIT_GEN[15].MULT_AND_i1_i_6_n_0\,
      O => \PERBIT_GEN[15].MULT_AND_i1_i_5_n_0\
    );
\PERBIT_GEN[15].MULT_AND_i1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(1),
      I1 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(2),
      I2 => twr_rec_cnt(15),
      I3 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(0),
      O => \PERBIT_GEN[15].MULT_AND_i1_i_6_n_0\
    );
\PERBIT_GEN[15].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => twr_rec_cnt_en_int,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => \PERBIT_GEN[14].MUXCY_i1_i_2_n_0\,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1_0\,
      S(2) => \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0\,
      S(1) => \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1_0\,
      S(0) => \PERBIT_GEN[15].MUXCY_i1_i_1_n_0\
    );
\PERBIT_GEN[15].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => twr_rec_cnt(15),
      I1 => twr_rec_cnt_en_int,
      O => \PERBIT_GEN[15].MUXCY_i1_i_1_n_0\
    );
\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_14,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(13),
      S => SR(0)
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(13),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_14
    );
\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_13,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(12),
      S => SR(0)
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(12),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_13
    );
\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_12,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(11),
      S => SR(0)
    );
\PERBIT_GEN[3].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(11),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_12
    );
\PERBIT_GEN[3].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(12),
      CO(3) => \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED\(3),
      CO(2 downto 0) => cry(15 downto 13),
      CYINIT => '0',
      DI(3) => \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => gen_cry_kill_n_14,
      DI(1) => gen_cry_kill_n_13,
      DI(0) => gen_cry_kill_n_12,
      O(3) => xorcy_out_15,
      O(2) => xorcy_out_14,
      O(1) => xorcy_out_13,
      O(0) => xorcy_out_12,
      S(3) => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\,
      S(2) => \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0\,
      S(1) => \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0\,
      S(0) => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_11,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(10),
      S => SR(0)
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(10),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_11
    );
\PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_10,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(9),
      S => SR(0)
    );
\PERBIT_GEN[5].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(9),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_10
    );
\PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_9,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(8),
      S => SR(0)
    );
\PERBIT_GEN[6].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(8),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_9
    );
\PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_8,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(7),
      S => SR(0)
    );
\PERBIT_GEN[7].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(7),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_8
    );
\PERBIT_GEN[7].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(8),
      CO(3 downto 0) => cry(12 downto 9),
      CYINIT => '0',
      DI(3) => gen_cry_kill_n_11,
      DI(2) => gen_cry_kill_n_10,
      DI(1) => gen_cry_kill_n_9,
      DI(0) => gen_cry_kill_n_8,
      O(3) => xorcy_out_11,
      O(2) => xorcy_out_10,
      O(1) => xorcy_out_9,
      O(0) => xorcy_out_8,
      S(3) => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0\,
      S(2) => \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1_0\,
      S(1) => \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1_0\,
      S(0) => \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1_0\
    );
\PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_7,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(6),
      S => SR(0)
    );
\PERBIT_GEN[8].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(6),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_7
    );
\PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_14,
      D => xorcy_out_6,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(5),
      S => SR(0)
    );
\PERBIT_GEN[9].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(5),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_6
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_mem_state_machine is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IP_Mem_CS_d2_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    transaction_done_i : out STD_LOGIC;
    read_break_reg : out STD_LOGIC;
    new_page_d1 : out STD_LOGIC;
    read_data_en : out STD_LOGIC;
    read_ack : out STD_LOGIC;
    \s_axi_mem_bid_reg_reg[3]\ : out STD_LOGIC;
    transaction_complete_reg_reg_0 : out STD_LOGIC;
    \mem_a_int_reg[31]\ : out STD_LOGIC;
    \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    twr_rec_cnt_en_int : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ : out STD_LOGIC;
    Mem_CE_int : out STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]\ : out STD_LOGIC;
    Write_req_data_ack_cmb : out STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[2]\ : out STD_LOGIC;
    enable_cs_cmb0 : out STD_LOGIC;
    enable_cs_cmb126_out : out STD_LOGIC;
    Write_req_addr_ack_cmb : out STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\ : out STD_LOGIC;
    data_strobe_c : out STD_LOGIC;
    read_data_en_reg_reg_0 : out STD_LOGIC;
    read_req_ack_cmb : out STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    addr_cnt_rst : out STD_LOGIC;
    addr_cnt_ce : out STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0\ : out STD_LOGIC;
    mem_OEN_cmb : out STD_LOGIC;
    mem_CEN_cmb : out STD_LOGIC;
    trd_cnt_en : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]_0\ : out STD_LOGIC;
    next_state1 : out STD_LOGIC;
    mem_WEN_cmb : out STD_LOGIC;
    mem_RNW_cmb : out STD_LOGIC;
    twph_cnt_en : out STD_LOGIC;
    twr_cnt_en : out STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CE : out STD_LOGIC;
    CE_0 : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    S : out STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1\ : out STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    CE_2 : out STD_LOGIC;
    \mem_dq_t_reg_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CE_3 : out STD_LOGIC;
    CE_4 : out STD_LOGIC;
    S_5 : out STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6\ : out STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7\ : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8\ : out STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_9\ : out STD_LOGIC;
    CE_10 : out STD_LOGIC;
    CE_11 : out STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12\ : out STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_13\ : out STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_14\ : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_15\ : out STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16\ : out STD_LOGIC;
    CE_17 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    read_ack_cmb : in STD_LOGIC;
    s_axi_mem_wvalid : in STD_LOGIC;
    s_axi_mem_awvalid : in STD_LOGIC;
    s_axi_mem_arvalid : in STD_LOGIC;
    rw_flag_reg : in STD_LOGIC;
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    twr_rec_end_int : in STD_LOGIC;
    Bus2IP_RdReq_emc : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ : in STD_LOGIC;
    bus2Mem_WrReq : in STD_LOGIC;
    single_transaction : in STD_LOGIC;
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ : in STD_LOGIC;
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC;
    Write_req_data_ack_cmb13_out : in STD_LOGIC;
    \burstlength_reg_reg[4]\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\ : in STD_LOGIC;
    twr_end : in STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\ : in STD_LOGIC;
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC;
    rnw_reg_reg : in STD_LOGIC;
    new_page_d1_reg_0 : in STD_LOGIC;
    pend_wrreq_reg : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5\ : in STD_LOGIC;
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    new_page_access : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_6\ : in STD_LOGIC;
    bus2ip_wr_req_reg_reg : in STD_LOGIC;
    next_state181_out : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\ : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    pend_wrreq_reg_0 : in STD_LOGIC;
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\ : in STD_LOGIC;
    read_req_ack_cmb44_out : in STD_LOGIC;
    tpacc_end : in STD_LOGIC;
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]_0\ : in STD_LOGIC;
    pend_wrreq_reg_1 : in STD_LOGIC;
    bus2ip_wr_req_reg_reg_0 : in STD_LOGIC;
    bus2ip_wr_req_reg_reg_1 : in STD_LOGIC;
    pend_rdreq : in STD_LOGIC;
    rdce_out_i : in STD_LOGIC;
    rst_rdce_cmb : in STD_LOGIC;
    cycle_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_trans_size_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    trd_cnt : in STD_LOGIC_VECTOR ( 0 to 4 );
    rnw_reg_reg_0 : in STD_LOGIC;
    mem_dqt_t_d : in STD_LOGIC;
    twph_cnt : in STD_LOGIC_VECTOR ( 0 to 4 );
    s_axi_mem_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_wlast : in STD_LOGIC;
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    pend_wrreq_reg_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_mem_state_machine : entity is "mem_state_machine";
end axi_em_ctrl_mem_state_machine;

architecture STRUCTURE of axi_em_ctrl_mem_state_machine is
  signal \^bus2ip_mem_cs_d2_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Bus2IP_RdReq_d1 : STD_LOGIC;
  signal \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_5_n_0\ : STD_LOGIC;
  signal \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_6_n_0\ : STD_LOGIC;
  signal \^datawidth_match_gen.addr_cnt_i_reg[0]\ : STD_LOGIC;
  signal \^datawidth_match_gen.addr_cnt_i_reg[0]_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_crnt_state_reg[1]_0\ : STD_LOGIC;
  signal \^perbit_gen[0].ff_rst0_gen.fdre_i1\ : STD_LOGIC;
  signal \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_3_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[15].MULT_AND_i1_i_2_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].MULT_AND_i1_i_2_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].MULT_AND_i1_i_2_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[7].MULT_AND_i1_i_5_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_11_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_12_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_13_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_14_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_15_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_16_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_17_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_18_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_19_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_20_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_21_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_22_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_23_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_25_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_27_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_29_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_30_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_31_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_32_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_35_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_36_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_37_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_39_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_3_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_6_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_7_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_9_n_0\ : STD_LOGIC;
  signal \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^read_complete_pipe_gen[0].read_complete_pipe_0\ : STD_LOGIC;
  signal \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0\ : STD_LOGIC;
  signal \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_5_n_0\ : STD_LOGIC;
  signal \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_7_n_0\ : STD_LOGIC;
  signal \^write_req_addr_ack_cmb\ : STD_LOGIC;
  signal \^write_req_data_ack_cmb\ : STD_LOGIC;
  signal crnt_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of crnt_state : signal is "yes";
  signal crnt_state_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of crnt_state_reg : signal is "yes";
  signal \^enable_cs_cmb0\ : STD_LOGIC;
  signal \^enable_cs_cmb126_out\ : STD_LOGIC;
  signal \^mem_a_int_reg[31]\ : STD_LOGIC;
  signal \mem_ce_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_ce_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \mem_ce_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \mem_ce_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \mem_oen_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_oen_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal new_page : STD_LOGIC;
  signal \^new_page_d1\ : STD_LOGIC;
  signal \^next_state1\ : STD_LOGIC;
  signal next_state10_out : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^read_break_reg\ : STD_LOGIC;
  signal read_break_reg_d1 : STD_LOGIC;
  signal read_break_reg_d1_i_2_n_0 : STD_LOGIC;
  signal read_break_reg_d1_i_3_n_0 : STD_LOGIC;
  signal read_complete_cmb : STD_LOGIC;
  signal read_complete_d_4 : STD_LOGIC;
  signal read_complete_d_5 : STD_LOGIC;
  signal read_complete_d_6 : STD_LOGIC;
  signal read_data_en_cmb : STD_LOGIC;
  signal \^read_data_en_reg_reg_0\ : STD_LOGIC;
  signal \^s_axi_mem_bid_reg_reg[3]\ : STD_LOGIC;
  signal s_axi_mem_wready_INST_0_i_3_n_0 : STD_LOGIC;
  signal thz_load : STD_LOGIC;
  signal transaction_complete : STD_LOGIC;
  signal transaction_complete_reg : STD_LOGIC;
  signal transaction_complete_reg_i_2_n_0 : STD_LOGIC;
  signal transaction_complete_reg_i_3_n_0 : STD_LOGIC;
  signal transaction_complete_reg_i_4_n_0 : STD_LOGIC;
  signal \^transaction_complete_reg_reg_0\ : STD_LOGIC;
  signal transaction_done_cmb : STD_LOGIC;
  signal \^trd_cnt_en\ : STD_LOGIC;
  signal \^twph_cnt_en\ : STD_LOGIC;
  signal twph_load : STD_LOGIC;
  signal \^twr_cnt_en\ : STD_LOGIC;
  signal \^twr_rec_cnt_en_int\ : STD_LOGIC;
  signal wlast : STD_LOGIC;
  signal wlast_reg : STD_LOGIC;
  signal wlast_reg_i_2_n_0 : STD_LOGIC;
  signal wlast_reg_i_3_n_0 : STD_LOGIC;
  signal wlast_reg_i_4_n_0 : STD_LOGIC;
  signal wlast_reg_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[0]_i_11\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[0]_i_12\ : label is "soft_lutpair84";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_crnt_state_reg[0]\ : label is "idle:00000,address_set:00001,address_rset:01010,deassert_cen:00010,deassert_rcen:01011,write:00011,write_wait:00110,wait_temp:00101,dassert_wen:00100,assert_cen:00111,wait_write_ack:01000,wr_rec_period:01001,linear_flash_sync_rd:01100,read:01101,page_read:01110,deassert_oen:01111,wait_rddata_ack:10000";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_crnt_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_crnt_state_reg[1]\ : label is "idle:00000,address_set:00001,address_rset:01010,deassert_cen:00010,deassert_rcen:01011,write:00011,write_wait:00110,wait_temp:00101,dassert_wen:00100,assert_cen:00111,wait_write_ack:01000,wr_rec_period:01001,linear_flash_sync_rd:01100,read:01101,page_read:01110,deassert_oen:01111,wait_rddata_ack:10000";
  attribute KEEP of \FSM_sequential_crnt_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_crnt_state_reg[2]\ : label is "idle:00000,address_set:00001,address_rset:01010,deassert_cen:00010,deassert_rcen:01011,write:00011,write_wait:00110,wait_temp:00101,dassert_wen:00100,assert_cen:00111,wait_write_ack:01000,wr_rec_period:01001,linear_flash_sync_rd:01100,read:01101,page_read:01110,deassert_oen:01111,wait_rddata_ack:10000";
  attribute KEEP of \FSM_sequential_crnt_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_crnt_state_reg[3]\ : label is "idle:00000,address_set:00001,address_rset:01010,deassert_cen:00010,deassert_rcen:01011,write:00011,write_wait:00110,wait_temp:00101,dassert_wen:00100,assert_cen:00111,wait_write_ack:01000,wr_rec_period:01001,linear_flash_sync_rd:01100,read:01101,page_read:01110,deassert_oen:01111,wait_rddata_ack:10000";
  attribute KEEP of \FSM_sequential_crnt_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_crnt_state_reg[4]\ : label is "idle:00000,address_set:00001,address_rset:01010,deassert_cen:00010,deassert_rcen:01011,write:00011,write_wait:00110,wait_temp:00101,dassert_wen:00100,assert_cen:00111,wait_write_ack:01000,wr_rec_period:01001,linear_flash_sync_rd:01100,read:01101,page_read:01110,deassert_oen:01111,wait_rddata_ack:10000";
  attribute KEEP of \FSM_sequential_crnt_state_reg[4]\ : label is "yes";
  attribute SOFT_HLUTNM of \FSM_sequential_emc_addr_ps[0]_i_3\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1__0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1__1\ : label is "soft_lutpair86";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ : label is "FDR";
  attribute BOX_TYPE of \READ_COMPLETE_PIPE_GEN[1].READ_COMPLETE_PIPE\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \READ_COMPLETE_PIPE_GEN[1].READ_COMPLETE_PIPE\ : label is "FDR";
  attribute BOX_TYPE of \READ_COMPLETE_PIPE_GEN[2].READ_COMPLETE_PIPE\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \READ_COMPLETE_PIPE_GEN[2].READ_COMPLETE_PIPE\ : label is "FDR";
  attribute SOFT_HLUTNM of wlast_reg_i_3 : label is "soft_lutpair85";
begin
  Bus2IP_Mem_CS_d2_reg_0(0) <= \^bus2ip_mem_cs_d2_reg_0\(0);
  \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\ <= \^datawidth_match_gen.addr_cnt_i_reg[0]\;
  \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0\ <= \^datawidth_match_gen.addr_cnt_i_reg[0]_0\;
  \FSM_sequential_crnt_state_reg[1]_0\ <= \^fsm_sequential_crnt_state_reg[1]_0\;
  \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ <= \^perbit_gen[0].ff_rst0_gen.fdre_i1\;
  \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\(0) <= \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]\(0);
  \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ <= \^read_complete_pipe_gen[0].read_complete_pipe_0\;
  Write_req_addr_ack_cmb <= \^write_req_addr_ack_cmb\;
  Write_req_data_ack_cmb <= \^write_req_data_ack_cmb\;
  enable_cs_cmb0 <= \^enable_cs_cmb0\;
  enable_cs_cmb126_out <= \^enable_cs_cmb126_out\;
  \mem_a_int_reg[31]\ <= \^mem_a_int_reg[31]\;
  new_page_d1 <= \^new_page_d1\;
  next_state1 <= \^next_state1\;
  \out\(0) <= \^out\(0);
  read_break_reg <= \^read_break_reg\;
  read_data_en_reg_reg_0 <= \^read_data_en_reg_reg_0\;
  \s_axi_mem_bid_reg_reg[3]\ <= \^s_axi_mem_bid_reg_reg[3]\;
  transaction_complete_reg_reg_0 <= \^transaction_complete_reg_reg_0\;
  trd_cnt_en <= \^trd_cnt_en\;
  twph_cnt_en <= \^twph_cnt_en\;
  twr_cnt_en <= \^twr_cnt_en\;
  twr_rec_cnt_en_int <= \^twr_rec_cnt_en_int\;
\ADDRESS_STORE_GEN[0].ADDRESS_REG_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => crnt_state(0),
      I1 => \^out\(0),
      I2 => crnt_state(1),
      I3 => crnt_state_reg(4),
      I4 => Write_req_data_ack_cmb13_out,
      I5 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3_n_0\,
      O => data_strobe_c
    );
Bus2IP_Mem_CS_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => temp_bus2ip_cs,
      Q => \^bus2ip_mem_cs_d2_reg_0\(0),
      R => SR(0)
    );
Bus2IP_Mem_CS_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^bus2ip_mem_cs_d2_reg_0\(0),
      Q => p_0_in(1),
      R => SR(0)
    );
Bus2IP_RdReq_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2Mem_RdReq,
      Q => Bus2IP_RdReq_d1,
      R => SR(0)
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004F4400004444"
    )
        port map (
      I0 => \^datawidth_match_gen.addr_cnt_i_reg[0]\,
      I1 => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\,
      I2 => \^read_complete_pipe_gen[0].read_complete_pipe_0\,
      I3 => bus2Mem_RdReq,
      I4 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      I5 => tpacc_end,
      O => \^datawidth_match_gen.addr_cnt_i_reg[0]_0\
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF01"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \mem_ce_reg[0]_i_3_n_0\,
      I2 => crnt_state(0),
      I3 => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_5_n_0\,
      I4 => \mem_ce_reg[0]_i_4_n_0\,
      I5 => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_6_n_0\,
      O => addr_cnt_rst
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      I1 => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\,
      I2 => bus2Mem_WrReq,
      I3 => \mem_ce_reg[0]_i_3_n_0\,
      I4 => \^out\(0),
      I5 => crnt_state(0),
      O => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_5_n_0\
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF04040F04"
    )
        port map (
      I0 => \^read_data_en_reg_reg_0\,
      I1 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\,
      I2 => single_transaction,
      I3 => read_req_ack_cmb44_out,
      I4 => \^read_complete_pipe_gen[0].read_complete_pipe_0\,
      I5 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5_n_0\,
      O => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_6_n_0\
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00404040"
    )
        port map (
      I0 => \^read_data_en_reg_reg_0\,
      I1 => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\,
      I2 => bus2Mem_RdReq,
      I3 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      I4 => new_page_access,
      I5 => \^datawidth_match_gen.addr_cnt_i_reg[0]_0\,
      O => addr_cnt_ce
    );
\FSM_sequential_crnt_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF01"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      I1 => \^out\(0),
      I2 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0\,
      I3 => \FSM_sequential_crnt_state[0]_i_3_n_0\,
      I4 => \FSM_sequential_crnt_state[0]_i_4_n_0\,
      I5 => \FSM_sequential_crnt_state[0]_i_5_n_0\,
      O => \FSM_sequential_crnt_state[0]_i_1_n_0\
    );
\FSM_sequential_crnt_state[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007500750075FFFF"
    )
        port map (
      I0 => \FSM_sequential_crnt_state_reg[3]_0\,
      I1 => crnt_state(0),
      I2 => bus2ip_wr_req_reg_reg,
      I3 => \FSM_sequential_crnt_state[1]_i_12_n_0\,
      I4 => new_page_d1_reg_0,
      I5 => \FSM_sequential_crnt_state[0]_i_15_n_0\,
      O => \FSM_sequential_crnt_state[0]_i_10_n_0\
    );
\FSM_sequential_crnt_state[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => wlast_reg,
      I1 => s_axi_mem_wvalid,
      I2 => s_axi_mem_wlast,
      I3 => bus2ip_wrreq_i,
      I4 => pend_wrreq_reg_0,
      O => \FSM_sequential_crnt_state[0]_i_11_n_0\
    );
\FSM_sequential_crnt_state[0]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => wlast_reg,
      I1 => s_axi_mem_wlast,
      I2 => s_axi_mem_wvalid,
      O => \FSM_sequential_crnt_state[0]_i_12_n_0\
    );
\FSM_sequential_crnt_state[0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => crnt_state_reg(4),
      I1 => crnt_state(1),
      O => \FSM_sequential_crnt_state[0]_i_14_n_0\
    );
\FSM_sequential_crnt_state[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => crnt_state(1),
      I1 => crnt_state_reg(4),
      I2 => crnt_state(0),
      I3 => \^out\(0),
      O => \FSM_sequential_crnt_state[0]_i_15_n_0\
    );
\FSM_sequential_crnt_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAABAAAFABABAA"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[0]_i_7_n_0\,
      I1 => crnt_state(0),
      I2 => crnt_state(2),
      I3 => crnt_state(1),
      I4 => \^out\(0),
      I5 => crnt_state_reg(4),
      O => \FSM_sequential_crnt_state[0]_i_3_n_0\
    );
\FSM_sequential_crnt_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFBFAAAA"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[0]_i_8_n_0\,
      I1 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\,
      I2 => \^out\(0),
      I3 => rnw_reg_reg,
      I4 => crnt_state(0),
      I5 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0\,
      O => \FSM_sequential_crnt_state[0]_i_4_n_0\
    );
\FSM_sequential_crnt_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAABAAAAA"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[0]_i_10_n_0\,
      I1 => bus2Mem_RdReq,
      I2 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1\,
      I3 => crnt_state(0),
      I4 => \^out\(0),
      I5 => crnt_state_reg(4),
      O => \FSM_sequential_crnt_state[0]_i_5_n_0\
    );
\FSM_sequential_crnt_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAFFBABA"
    )
        port map (
      I0 => s_axi_mem_wvalid,
      I1 => wlast_reg_i_5_n_0,
      I2 => \FSM_sequential_crnt_state[0]_i_11_n_0\,
      I3 => wlast_reg_i_4_n_0,
      I4 => \FSM_sequential_crnt_state[0]_i_12_n_0\,
      I5 => wlast_reg_i_2_n_0,
      O => \^next_state1\
    );
\FSM_sequential_crnt_state[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000404000004FF"
    )
        port map (
      I0 => crnt_state(0),
      I1 => pend_wrreq_reg_1,
      I2 => \^out\(0),
      I3 => crnt_state(2),
      I4 => \FSM_sequential_crnt_state[0]_i_14_n_0\,
      I5 => twr_end,
      O => \FSM_sequential_crnt_state[0]_i_7_n_0\
    );
\FSM_sequential_crnt_state[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => crnt_state(1),
      I1 => crnt_state_reg(4),
      I2 => \^out\(0),
      I3 => crnt_state(0),
      I4 => bus2Mem_RdReq,
      O => \FSM_sequential_crnt_state[0]_i_8_n_0\
    );
\FSM_sequential_crnt_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_crnt_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_crnt_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_crnt_state[1]_i_5_n_0\,
      I4 => \FSM_sequential_crnt_state[1]_i_6_n_0\,
      O => \FSM_sequential_crnt_state[1]_i_1_n_0\
    );
\FSM_sequential_crnt_state[1]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(0),
      I1 => crnt_state(0),
      O => \FSM_sequential_crnt_state[1]_i_11_n_0\
    );
\FSM_sequential_crnt_state[1]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => crnt_state_reg(4),
      I1 => crnt_state(2),
      O => \FSM_sequential_crnt_state[1]_i_12_n_0\
    );
\FSM_sequential_crnt_state[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDDDDDDD"
    )
        port map (
      I0 => crnt_state(1),
      I1 => crnt_state_reg(4),
      I2 => pend_wrreq_reg_0,
      I3 => bus2ip_wrreq_i,
      I4 => s_axi_mem_wvalid,
      I5 => crnt_state(0),
      O => \FSM_sequential_crnt_state[1]_i_13_n_0\
    );
\FSM_sequential_crnt_state[1]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => crnt_state(2),
      I1 => crnt_state(1),
      I2 => crnt_state_reg(4),
      O => \FSM_sequential_crnt_state[1]_i_14_n_0\
    );
\FSM_sequential_crnt_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40404040404040FF"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\,
      I1 => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\,
      I2 => \FSM_sequential_crnt_state[3]_i_3_n_0\,
      I3 => \^datawidth_match_gen.addr_cnt_i_reg[0]\,
      I4 => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1\,
      I5 => \^fsm_sequential_crnt_state_reg[1]_0\,
      O => \FSM_sequential_crnt_state[1]_i_2_n_0\
    );
\FSM_sequential_crnt_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F444F4F4F44"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[1]_i_9_n_0\,
      I1 => next_state10_out,
      I2 => \^read_data_en_reg_reg_0\,
      I3 => \mem_ce_reg[0]_i_2_n_0\,
      I4 => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\,
      I5 => new_page_access,
      O => \FSM_sequential_crnt_state[1]_i_3_n_0\
    );
\FSM_sequential_crnt_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008F0000008800"
    )
        port map (
      I0 => crnt_state(1),
      I1 => new_page_d1_reg_0,
      I2 => bus2Mem_RdReq,
      I3 => \FSM_sequential_crnt_state[1]_i_11_n_0\,
      I4 => crnt_state_reg(4),
      I5 => crnt_state(2),
      O => \FSM_sequential_crnt_state[1]_i_4_n_0\
    );
\FSM_sequential_crnt_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A0A00000A0B"
    )
        port map (
      I0 => crnt_state(1),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\,
      I2 => crnt_state(0),
      I3 => \^out\(0),
      I4 => crnt_state(2),
      I5 => crnt_state_reg(4),
      O => \FSM_sequential_crnt_state[1]_i_5_n_0\
    );
\FSM_sequential_crnt_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010F0F0F000F000F"
    )
        port map (
      I0 => twr_end,
      I1 => \FSM_sequential_crnt_state[1]_i_12_n_0\,
      I2 => \^out\(0),
      I3 => \FSM_sequential_crnt_state[1]_i_13_n_0\,
      I4 => \FSM_sequential_crnt_state[1]_i_14_n_0\,
      I5 => crnt_state(0),
      O => \FSM_sequential_crnt_state[1]_i_6_n_0\
    );
\FSM_sequential_crnt_state[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\,
      I1 => \^out\(0),
      I2 => crnt_state(0),
      I3 => crnt_state_reg(4),
      I4 => crnt_state(1),
      O => \FSM_sequential_crnt_state[1]_i_9_n_0\
    );
\FSM_sequential_crnt_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I1 => \FSM_sequential_crnt_state[2]_i_3_n_0\,
      I2 => \FSM_sequential_crnt_state[2]_i_4_n_0\,
      I3 => crnt_state(2),
      I4 => \FSM_sequential_crnt_state[2]_i_5_n_0\,
      I5 => \FSM_sequential_crnt_state[2]_i_6_n_0\,
      O => \FSM_sequential_crnt_state[2]_i_1_n_0\
    );
\FSM_sequential_crnt_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => crnt_state(0),
      I1 => crnt_state(2),
      I2 => crnt_state_reg(4),
      I3 => crnt_state(1),
      O => \FSM_sequential_crnt_state[2]_i_3_n_0\
    );
\FSM_sequential_crnt_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCCCAAAAFFFF"
    )
        port map (
      I0 => read_complete_d_4,
      I1 => crnt_state(0),
      I2 => s_axi_mem_wvalid,
      I3 => bus2Mem_WrReq,
      I4 => crnt_state_reg(4),
      I5 => crnt_state(1),
      O => \FSM_sequential_crnt_state[2]_i_4_n_0\
    );
\FSM_sequential_crnt_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0230220002002200"
    )
        port map (
      I0 => \^out\(0),
      I1 => crnt_state_reg(4),
      I2 => crnt_state(1),
      I3 => crnt_state(2),
      I4 => crnt_state(0),
      I5 => twr_end,
      O => \FSM_sequential_crnt_state[2]_i_5_n_0\
    );
\FSM_sequential_crnt_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000222000"
    )
        port map (
      I0 => crnt_state(0),
      I1 => crnt_state_reg(4),
      I2 => \^out\(0),
      I3 => crnt_state(1),
      I4 => crnt_state(2),
      I5 => \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\,
      O => \FSM_sequential_crnt_state[2]_i_6_n_0\
    );
\FSM_sequential_crnt_state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => \^next_state1\,
      I1 => bus2ip_wrreq_i,
      I2 => pend_wrreq_reg_0,
      I3 => single_transaction,
      O => \^fsm_sequential_crnt_state_reg[1]_0\
    );
\FSM_sequential_crnt_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[3]_i_2_n_0\,
      I1 => \FSM_sequential_crnt_state[3]_i_3_n_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\,
      I3 => \FSM_sequential_crnt_state[3]_i_5_n_0\,
      I4 => \FSM_sequential_crnt_state[3]_i_6_n_0\,
      I5 => \FSM_sequential_crnt_state[3]_i_7_n_0\,
      O => \FSM_sequential_crnt_state[3]_i_1_n_0\
    );
\FSM_sequential_crnt_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50535F5F00030003"
    )
        port map (
      I0 => read_complete_d_4,
      I1 => crnt_state(1),
      I2 => crnt_state_reg(4),
      I3 => \FSM_sequential_crnt_state_reg[3]_0\,
      I4 => crnt_state(0),
      I5 => \^out\(0),
      O => \FSM_sequential_crnt_state[3]_i_2_n_0\
    );
\FSM_sequential_crnt_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^out\(0),
      I1 => crnt_state(2),
      I2 => crnt_state_reg(4),
      I3 => crnt_state(1),
      O => \FSM_sequential_crnt_state[3]_i_3_n_0\
    );
\FSM_sequential_crnt_state[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => crnt_state(0),
      I1 => crnt_state_reg(4),
      I2 => crnt_state(1),
      I3 => crnt_state(2),
      O => \FSM_sequential_crnt_state[3]_i_5_n_0\
    );
\FSM_sequential_crnt_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A222000080000000"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[2]_i_3_n_0\,
      I1 => bus2Mem_WrReq,
      I2 => single_transaction,
      I3 => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\,
      I4 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      I5 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\,
      O => \FSM_sequential_crnt_state[3]_i_6_n_0\
    );
\FSM_sequential_crnt_state[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004A00"
    )
        port map (
      I0 => \^out\(0),
      I1 => crnt_state(0),
      I2 => crnt_state(2),
      I3 => crnt_state(1),
      I4 => crnt_state_reg(4),
      O => \FSM_sequential_crnt_state[3]_i_7_n_0\
    );
\FSM_sequential_crnt_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008000FFFF8000"
    )
        port map (
      I0 => \^out\(0),
      I1 => crnt_state(0),
      I2 => crnt_state(1),
      I3 => crnt_state(2),
      I4 => crnt_state_reg(4),
      I5 => read_complete_d_4,
      O => \FSM_sequential_crnt_state[4]_i_1_n_0\
    );
\FSM_sequential_crnt_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_crnt_state[0]_i_1_n_0\,
      Q => crnt_state(0),
      R => SR(0)
    );
\FSM_sequential_crnt_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_crnt_state[1]_i_1_n_0\,
      Q => crnt_state(1),
      R => SR(0)
    );
\FSM_sequential_crnt_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_crnt_state[2]_i_1_n_0\,
      Q => crnt_state(2),
      R => SR(0)
    );
\FSM_sequential_crnt_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_crnt_state[3]_i_1_n_0\,
      Q => \^out\(0),
      R => SR(0)
    );
\FSM_sequential_crnt_state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_crnt_state[4]_i_1_n_0\,
      Q => crnt_state_reg(4),
      R => SR(0)
    );
\FSM_sequential_emc_addr_ps[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^write_req_data_ack_cmb\,
      I1 => s_axi_mem_wvalid,
      I2 => \FSM_sequential_emc_addr_ps_reg[0]_0\(0),
      O => \FSM_sequential_emc_addr_ps_reg[0]\
    );
\FSM_sequential_emc_addr_ps[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^enable_cs_cmb0\,
      I1 => \^enable_cs_cmb126_out\,
      O => \FSM_sequential_emc_addr_ps_reg[2]\
    );
\PERBIT_GEN[0].XORCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst0_gen.fdre_i1\,
      I1 => cycle_cnt(0),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[0].XORCY_i1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^trd_cnt_en\,
      I1 => trd_cnt(0),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1\
    );
\PERBIT_GEN[0].XORCY_i1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twph_cnt_en\,
      I1 => twph_cnt(0),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8\
    );
\PERBIT_GEN[0].XORCY_i1_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(3),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_15\
    );
\PERBIT_GEN[0].XORCY_i1_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(14),
      O => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[10].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(4),
      O => \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[11].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(3),
      O => \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[12].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(2),
      O => \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[13].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(1),
      O => \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[14].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(0),
      O => \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0004"
    )
        port map (
      I0 => \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\,
      I1 => next_state10_out,
      I2 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_3_n_0\,
      I3 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0\,
      I4 => pend_wrreq_reg_2,
      I5 => \^twr_rec_cnt_en_int\,
      O => CE_17
    );
\PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBAAA"
    )
        port map (
      I0 => transaction_complete_reg_i_3_n_0,
      I1 => \^transaction_complete_reg_reg_0\,
      I2 => transaction_complete_reg,
      I3 => pend_wrreq_reg,
      I4 => transaction_complete_reg_i_2_n_0,
      I5 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5\,
      O => next_state10_out
    );
\PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^out\(0),
      I1 => crnt_state(0),
      O => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_3_n_0\
    );
\PERBIT_GEN[15].MULT_AND_i1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => crnt_state(2),
      I1 => crnt_state(1),
      I2 => crnt_state_reg(4),
      I3 => \PERBIT_GEN[15].MULT_AND_i1_i_2_n_0\,
      O => \^twr_rec_cnt_en_int\
    );
\PERBIT_GEN[15].MULT_AND_i1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => twr_rec_end_int,
      I1 => crnt_state(0),
      I2 => \^out\(0),
      O => \PERBIT_GEN[15].MULT_AND_i1_i_2_n_0\
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0002"
    )
        port map (
      I0 => bus2ip_wr_req_reg_reg_1,
      I1 => \mem_ce_reg[0]_i_3_n_0\,
      I2 => \^out\(0),
      I3 => crnt_state(0),
      I4 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3_n_0\,
      I5 => \^perbit_gen[0].ff_rst0_gen.fdre_i1\,
      O => CE_0
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \PERBIT_GEN[7].MULT_AND_i1_i_5_n_0\,
      I1 => \^mem_a_int_reg[31]\,
      O => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3_n_0\
    );
\PERBIT_GEN[1].MULT_AND_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABA0000AABAAABA"
    )
        port map (
      I0 => \PERBIT_GEN[1].MULT_AND_i1_i_2_n_0\,
      I1 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      I2 => tpacc_end,
      I3 => \^read_complete_pipe_gen[0].read_complete_pipe_0\,
      I4 => \axi_trans_size_reg_reg[1]\(0),
      I5 => bus2Mem_RdReq,
      O => \^perbit_gen[0].ff_rst0_gen.fdre_i1\
    );
\PERBIT_GEN[1].MULT_AND_i1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040444FF4444"
    )
        port map (
      I0 => \^read_data_en_reg_reg_0\,
      I1 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\,
      I2 => new_page_access,
      I3 => \^datawidth_match_gen.addr_cnt_i_reg[0]\,
      I4 => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\,
      I5 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      O => \PERBIT_GEN[1].MULT_AND_i1_i_2_n_0\
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^trd_cnt_en\,
      I1 => trd_cnt(1),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twph_cnt_en\,
      I1 => twph_cnt(1),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7\
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(2),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_14\
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(13),
      O => \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[2].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^trd_cnt_en\,
      I1 => trd_cnt(2),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twph_cnt_en\,
      I1 => twph_cnt(2),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6\
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(1),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_13\
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(12),
      O => \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[3].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^trd_cnt_en\,
      I1 => trd_cnt(3),
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^twph_cnt_en\,
      I1 => twph_cnt(3),
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_9\
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(0),
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12\
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^read_complete_pipe_gen[0].read_complete_pipe_0\,
      I1 => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_1\(0),
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16\
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(11),
      O => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000008FFFFFFFF"
    )
        port map (
      I0 => crnt_state_reg(4),
      I1 => read_complete_d_4,
      I2 => \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0\,
      I3 => crnt_state(2),
      I4 => crnt_state(1),
      I5 => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\,
      O => CE_3
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => twph_load,
      I1 => \^twph_cnt_en\,
      O => CE_4
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000100FFFFFFFF"
    )
        port map (
      I0 => crnt_state(2),
      I1 => crnt_state(1),
      I2 => crnt_state_reg(4),
      I3 => \^out\(0),
      I4 => crnt_state(0),
      I5 => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\,
      O => CE_11
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(0),
      I1 => crnt_state(0),
      O => \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEFEEE"
    )
        port map (
      I0 => \^trd_cnt_en\,
      I1 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2_n_0\,
      I2 => read_req_ack_cmb44_out,
      I3 => \^new_page_d1\,
      I4 => \^read_complete_pipe_gen[0].read_complete_pipe_0\,
      O => CE
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00007F3F"
    )
        port map (
      I0 => new_page,
      I1 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      I2 => tpacc_end,
      I3 => bus2Mem_RdReq,
      I4 => \^read_complete_pipe_gen[0].read_complete_pipe_0\,
      I5 => rnw_reg_reg_0,
      O => CE_2
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^twr_cnt_en\,
      I1 => twph_load,
      O => CE_10
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FF040404040404"
    )
        port map (
      I0 => \^transaction_complete_reg_reg_0\,
      I1 => next_state181_out,
      I2 => \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\,
      I3 => \^read_data_en_reg_reg_0\,
      I4 => new_page_access,
      I5 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\,
      O => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2_n_0\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0404FF04"
    )
        port map (
      I0 => \^datawidth_match_gen.addr_cnt_i_reg[0]\,
      I1 => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\,
      I2 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3\,
      I3 => bus2ip_wr_req_reg_reg,
      I4 => \^transaction_complete_reg_reg_0\,
      I5 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5_n_0\,
      O => twph_load
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\,
      I1 => \^out\(0),
      I2 => crnt_state(0),
      I3 => crnt_state(1),
      I4 => crnt_state_reg(4),
      I5 => crnt_state(2),
      O => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5_n_0\
    );
\PERBIT_GEN[4].MULT_AND_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000020000000E000"
    )
        port map (
      I0 => bus2Mem_RdReq,
      I1 => crnt_state(0),
      I2 => \^out\(0),
      I3 => crnt_state(2),
      I4 => \mem_ce_reg[0]_i_3_n_0\,
      I5 => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\,
      O => \^trd_cnt_en\
    );
\PERBIT_GEN[4].MULT_AND_i1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F4444444F444F"
    )
        port map (
      I0 => \PERBIT_GEN[4].MULT_AND_i1_i_2_n_0\,
      I1 => twr_end,
      I2 => \^datawidth_match_gen.addr_cnt_i_reg[0]\,
      I3 => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\,
      I4 => bus2Mem_WrReq,
      I5 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      O => \^twph_cnt_en\
    );
\PERBIT_GEN[4].MULT_AND_i1_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => crnt_state_reg(4),
      I1 => crnt_state(1),
      I2 => crnt_state(2),
      I3 => \^out\(0),
      I4 => crnt_state(0),
      I5 => twr_end,
      O => \^twr_cnt_en\
    );
\PERBIT_GEN[4].MULT_AND_i1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => crnt_state_reg(4),
      I1 => crnt_state(1),
      I2 => crnt_state(2),
      I3 => crnt_state(0),
      I4 => \^out\(0),
      O => \PERBIT_GEN[4].MULT_AND_i1_i_2_n_0\
    );
\PERBIT_GEN[4].MULT_AND_i1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => crnt_state(0),
      I1 => \^out\(0),
      I2 => crnt_state(2),
      I3 => crnt_state_reg(4),
      I4 => crnt_state(1),
      O => \^datawidth_match_gen.addr_cnt_i_reg[0]\
    );
\PERBIT_GEN[4].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^trd_cnt_en\,
      I1 => trd_cnt(4),
      O => S
    );
\PERBIT_GEN[4].MUXCY_i1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twph_cnt_en\,
      I1 => twph_cnt(4),
      O => S_5
    );
\PERBIT_GEN[4].MUXCY_i1_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(10),
      O => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[5].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(9),
      O => \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[6].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(8),
      O => \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[7].MULT_AND_i1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABABABABABABA"
    )
        port map (
      I0 => \PERBIT_GEN[7].MULT_AND_i1_i_5_n_0\,
      I1 => \^transaction_complete_reg_reg_0\,
      I2 => next_state181_out,
      I3 => bus2ip_wrreq_i,
      I4 => pend_wrreq_reg_0,
      I5 => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\,
      O => read_req_ack_cmb
    );
\PERBIT_GEN[7].MULT_AND_i1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F44000044440000"
    )
        port map (
      I0 => \^read_complete_pipe_gen[0].read_complete_pipe_0\,
      I1 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1\,
      I2 => \^read_data_en_reg_reg_0\,
      I3 => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\,
      I4 => bus2Mem_RdReq,
      I5 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      O => \PERBIT_GEN[7].MULT_AND_i1_i_5_n_0\
    );
\PERBIT_GEN[7].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(7),
      O => \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[8].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(6),
      O => \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[9].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_rec_cnt_en_int\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(5),
      O => \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => SR(0),
      I1 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_n_0\,
      I2 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_3_n_0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4_n_0\,
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5_n_0\,
      I5 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_6_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\(0)
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => crnt_state(1),
      I1 => crnt_state(2),
      I2 => \^out\(0),
      I3 => crnt_state(0),
      I4 => crnt_state_reg(4),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44440000444F0000"
    )
        port map (
      I0 => \^transaction_complete_reg_reg_0\,
      I1 => pend_wrreq_reg,
      I2 => \^datawidth_match_gen.addr_cnt_i_reg[0]\,
      I3 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      I4 => crnt_state_reg(4),
      I5 => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_11_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15551500"
    )
        port map (
      I0 => \^read_complete_pipe_gen[0].read_complete_pipe_0\,
      I1 => bus2Mem_RdReq,
      I2 => new_page,
      I3 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1\,
      I4 => crnt_state_reg(1),
      I5 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_27_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_12_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000D0000"
    )
        port map (
      I0 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\,
      I2 => crnt_state(1),
      I3 => crnt_state_reg(4),
      I4 => crnt_state(2),
      I5 => \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_13_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFFFFFFE"
    )
        port map (
      I0 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_29_n_0\,
      I1 => \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5\,
      I3 => transaction_complete_reg_i_2_n_0,
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_30_n_0\,
      I5 => \mem_ce_reg[0]_i_3_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_14_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15151500"
    )
        port map (
      I0 => \^read_data_en_reg_reg_0\,
      I1 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\,
      I2 => new_page_access,
      I3 => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\,
      I4 => \^read_break_reg\,
      I5 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_31_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_15_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAAAABAA"
    )
        port map (
      I0 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_32_n_0\,
      I1 => crnt_state(2),
      I2 => \mem_ce_reg[0]_i_3_n_0\,
      I3 => crnt_state(0),
      I4 => twr_rec_end_int,
      I5 => \^out\(0),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_16_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F404"
    )
        port map (
      I0 => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\,
      I1 => crnt_state_reg(0),
      I2 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\,
      I4 => crnt_state(0),
      I5 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_17_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000010"
    )
        port map (
      I0 => \^out\(0),
      I1 => crnt_state_reg(4),
      I2 => crnt_state(0),
      I3 => crnt_state(1),
      I4 => crnt_state(2),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_18_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0008"
    )
        port map (
      I0 => pend_wrreq_reg,
      I1 => crnt_state_reg(0),
      I2 => \FSM_sequential_crnt_state[1]_i_12_n_0\,
      I3 => \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0\,
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_35_n_0\,
      I5 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_36_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_19_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEFEEEE"
    )
        port map (
      I0 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_7_n_0\,
      I1 => \FSM_sequential_crnt_state[3]_i_7_n_0\,
      I2 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0\,
      I3 => crnt_state(0),
      I4 => \burstlength_reg_reg[4]\,
      I5 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_9_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000010FFFFFFFF"
    )
        port map (
      I0 => crnt_state(1),
      I1 => crnt_state_reg(4),
      I2 => crnt_state(0),
      I3 => \^out\(0),
      I4 => \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\,
      I5 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_37_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_20_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EAEAEAEAEAEAEA"
    )
        port map (
      I0 => wlast_reg_i_5_n_0,
      I1 => bus2Mem_WrReq,
      I2 => s_axi_mem_wvalid,
      I3 => \FSM_sequential_crnt_state[3]_i_5_n_0\,
      I4 => crnt_state_reg(3),
      I5 => pend_wrreq_reg,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_21_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55F54444"
    )
        port map (
      I0 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_39_n_0\,
      I1 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1\,
      I2 => crnt_state_reg(4),
      I3 => read_complete_d_4,
      I4 => crnt_state_reg(3),
      I5 => \FSM_sequential_crnt_state[3]_i_3_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_22_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11110000F1F1F000"
    )
        port map (
      I0 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_25_n_0\,
      I1 => twr_end,
      I2 => \FSM_sequential_crnt_state[2]_i_3_n_0\,
      I3 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      I4 => crnt_state_reg(3),
      I5 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_23_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FD04"
    )
        port map (
      I0 => crnt_state(0),
      I1 => crnt_state(2),
      I2 => crnt_state(1),
      I3 => \^out\(0),
      I4 => crnt_state_reg(4),
      O => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]\(0)
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => crnt_state_reg(4),
      I1 => crnt_state(1),
      I2 => crnt_state(2),
      I3 => crnt_state(0),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_25_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E11E"
    )
        port map (
      I0 => crnt_state(0),
      I1 => \^out\(0),
      I2 => crnt_state(2),
      I3 => crnt_state(1),
      I4 => crnt_state_reg(4),
      O => crnt_state_reg(1)
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A000000350"
    )
        port map (
      I0 => crnt_state(2),
      I1 => bus2Mem_RdReq,
      I2 => crnt_state(0),
      I3 => \^out\(0),
      I4 => crnt_state_reg(4),
      I5 => crnt_state(1),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_27_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEAB0000"
    )
        port map (
      I0 => twr_end,
      I1 => crnt_state(0),
      I2 => \^out\(0),
      I3 => crnt_state(2),
      I4 => crnt_state(1),
      I5 => crnt_state_reg(4),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_29_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2F2FA"
    )
        port map (
      I0 => crnt_state_reg(4),
      I1 => read_complete_d_4,
      I2 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10_n_0\,
      I3 => twr_end,
      I4 => \PERBIT_GEN[4].MULT_AND_i1_i_2_n_0\,
      I5 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_11_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_3_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABABAAABA"
    )
        port map (
      I0 => transaction_complete_reg_i_3_n_0,
      I1 => \^transaction_complete_reg_reg_0\,
      I2 => transaction_complete_reg,
      I3 => bus2Mem_RdReq,
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_6\,
      I5 => bus2ip_wr_req_reg_reg,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_30_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE2AAA00000000"
    )
        port map (
      I0 => crnt_state_reg(1),
      I1 => temp_bus2ip_cs,
      I2 => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\,
      I3 => bus2Mem_RdReq,
      I4 => \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\,
      I5 => \FSM_sequential_crnt_state[3]_i_5_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_31_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => bus2ip_wr_req_reg_reg_0,
      I1 => crnt_state_reg(4),
      I2 => crnt_state(1),
      I3 => crnt_state(2),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_32_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CD38"
    )
        port map (
      I0 => crnt_state(2),
      I1 => crnt_state(0),
      I2 => \^out\(0),
      I3 => crnt_state(1),
      I4 => crnt_state_reg(4),
      O => crnt_state_reg(0)
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002E0000000000"
    )
        port map (
      I0 => crnt_state_reg(0),
      I1 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1\,
      I2 => bus2Mem_RdReq,
      I3 => \FSM_sequential_crnt_state[1]_i_11_n_0\,
      I4 => crnt_state_reg(4),
      I5 => crnt_state(1),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_35_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => crnt_state_reg(4),
      I1 => crnt_state(0),
      I2 => crnt_state(1),
      I3 => crnt_state(2),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_36_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFF3FFFFEFFF"
    )
        port map (
      I0 => twr_end,
      I1 => \^out\(0),
      I2 => crnt_state(0),
      I3 => crnt_state(1),
      I4 => crnt_state_reg(4),
      I5 => crnt_state(2),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_37_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA00E8"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \^out\(0),
      I2 => crnt_state(0),
      I3 => crnt_state_reg(4),
      I4 => crnt_state(1),
      O => crnt_state_reg(3)
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => crnt_state(2),
      I1 => crnt_state_reg(4),
      I2 => crnt_state(0),
      I3 => \^out\(0),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_39_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEFE"
    )
        port map (
      I0 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_12_n_0\,
      I1 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_13_n_0\,
      I2 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_14_n_0\,
      I3 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_3_n_0\,
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_15_n_0\,
      I5 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_16_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[3]_i_3_n_0\,
      I1 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\,
      I2 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_17_n_0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_18_n_0\,
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_19_n_0\,
      I5 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_20_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF57"
    )
        port map (
      I0 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_21_n_0\,
      I1 => \mem_ce_reg[0]_i_3_n_0\,
      I2 => \PERBIT_GEN[15].MULT_AND_i1_i_2_n_0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_22_n_0\,
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_23_n_0\,
      I5 => \FSM_sequential_crnt_state[2]_i_6_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_6_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55F54444"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[0]_i_15_n_0\,
      I1 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1\,
      I2 => crnt_state_reg(4),
      I3 => read_complete_d_4,
      I4 => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]\(0),
      I5 => \FSM_sequential_crnt_state[3]_i_3_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_7_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11FF10FF11FF1010"
    )
        port map (
      I0 => \^transaction_complete_reg_reg_0\,
      I1 => bus2ip_wr_req_reg_reg,
      I2 => next_state181_out,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_25_n_0\,
      I4 => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]\(0),
      I5 => twr_end,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_9_n_0\
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_complete_cmb,
      Q => read_complete_d_6,
      R => SR(0)
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F444F4F4F444F"
    )
        port map (
      I0 => \^read_complete_pipe_gen[0].read_complete_pipe_0\,
      I1 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0\,
      I2 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0\,
      I3 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_5_n_0\,
      I4 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\,
      I5 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_7_n_0\,
      O => read_complete_cmb
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
        port map (
      I0 => crnt_state(2),
      I1 => crnt_state(1),
      I2 => crnt_state_reg(4),
      I3 => crnt_state(0),
      I4 => \^out\(0),
      O => \^read_complete_pipe_gen[0].read_complete_pipe_0\
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => crnt_state(1),
      I1 => crnt_state_reg(4),
      I2 => crnt_state(2),
      O => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0\
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => bus2Mem_RdReq,
      I1 => crnt_state(0),
      I2 => \^out\(0),
      O => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_5_n_0\
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^out\(0),
      I1 => crnt_state(0),
      O => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_7_n_0\
    );
\READ_COMPLETE_PIPE_GEN[1].READ_COMPLETE_PIPE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_complete_d_6,
      Q => read_complete_d_5,
      R => SR(0)
    );
\READ_COMPLETE_PIPE_GEN[2].READ_COMPLETE_PIPE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_complete_d_5,
      Q => read_complete_d_4,
      R => SR(0)
    );
addr_sm_ns_IDLE_cmb_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444044404440000"
    )
        port map (
      I0 => \^transaction_complete_reg_reg_0\,
      I1 => s_axi_mem_arvalid,
      I2 => rw_flag_reg,
      I3 => s_axi_mem_awvalid,
      I4 => s_axi_mem_arburst(1),
      I5 => s_axi_mem_arburst(0),
      O => \^enable_cs_cmb126_out\
    );
addr_sm_ns_IDLE_cmb_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axi_mem_awburst(1),
      I1 => s_axi_mem_awburst(0),
      I2 => \^s_axi_mem_bid_reg_reg[3]\,
      O => \^enable_cs_cmb0\
    );
\mem_a_int[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000003"
    )
        port map (
      I0 => \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\,
      I1 => crnt_state(2),
      I2 => crnt_state(1),
      I3 => crnt_state_reg(4),
      I4 => \^out\(0),
      I5 => crnt_state(0),
      O => \^mem_a_int_reg[31]\
    );
\mem_ce_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF2E"
    )
        port map (
      I0 => Bus2IP_RdReq_emc,
      I1 => crnt_state(0),
      I2 => \mem_ce_reg[0]_i_2_n_0\,
      I3 => \mem_ce_reg[0]_i_3_n_0\,
      I4 => \mem_ce_reg[0]_i_4_n_0\,
      I5 => \mem_ce_reg[0]_i_5_n_0\,
      O => Mem_CE_int
    );
\mem_ce_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABAFAAAAAAAA"
    )
        port map (
      I0 => read_break_reg_d1,
      I1 => pend_rdreq,
      I2 => single_transaction,
      I3 => rdce_out_i,
      I4 => rst_rdce_cmb,
      I5 => Bus2IP_RdReq_d1,
      O => \mem_ce_reg[0]_i_2_n_0\
    );
\mem_ce_reg[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => crnt_state_reg(4),
      I1 => crnt_state(1),
      O => \mem_ce_reg[0]_i_3_n_0\
    );
\mem_ce_reg[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => crnt_state(0),
      I1 => \^out\(0),
      I2 => crnt_state(2),
      I3 => crnt_state(1),
      O => \mem_ce_reg[0]_i_4_n_0\
    );
\mem_ce_reg[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E030F00000F0F0F"
    )
        port map (
      I0 => \mem_ce_reg[0]_i_2_n_0\,
      I1 => crnt_state(0),
      I2 => crnt_state_reg(4),
      I3 => crnt_state(2),
      I4 => \^out\(0),
      I5 => crnt_state(1),
      O => \mem_ce_reg[0]_i_5_n_0\
    );
\mem_cen_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF00D1"
    )
        port map (
      I0 => Bus2IP_RdReq_emc,
      I1 => crnt_state(0),
      I2 => \mem_ce_reg[0]_i_2_n_0\,
      I3 => \mem_ce_reg[0]_i_3_n_0\,
      I4 => \mem_ce_reg[0]_i_4_n_0\,
      I5 => \mem_ce_reg[0]_i_5_n_0\,
      O => mem_CEN_cmb
    );
\mem_dq_t_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00AA0028022A"
    )
        port map (
      I0 => mem_dqt_t_d,
      I1 => crnt_state(0),
      I2 => crnt_state(1),
      I3 => crnt_state_reg(4),
      I4 => crnt_state(2),
      I5 => \^out\(0),
      O => \mem_dq_t_reg_reg[0]\(0)
    );
mem_dqt_t_d_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0F0F1B"
    )
        port map (
      I0 => \^out\(0),
      I1 => crnt_state(2),
      I2 => crnt_state_reg(4),
      I3 => crnt_state(1),
      I4 => crnt_state(0),
      O => mem_WEN_cmb
    );
\mem_oen_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEAEFFFFFF"
    )
        port map (
      I0 => \mem_oen_reg[0]_i_2_n_0\,
      I1 => \mem_ce_reg[0]_i_2_n_0\,
      I2 => \mem_oen_reg[0]_i_3_n_0\,
      I3 => \^out\(0),
      I4 => crnt_state(2),
      I5 => crnt_state_reg(4),
      O => mem_OEN_cmb
    );
\mem_oen_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAABAAABAB"
    )
        port map (
      I0 => \mem_ce_reg[0]_i_4_n_0\,
      I1 => crnt_state_reg(4),
      I2 => crnt_state(1),
      I3 => \mem_ce_reg[0]_i_2_n_0\,
      I4 => crnt_state(0),
      I5 => Bus2IP_RdReq_emc,
      O => \mem_oen_reg[0]_i_2_n_0\
    );
\mem_oen_reg[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => crnt_state(0),
      I1 => crnt_state(1),
      I2 => crnt_state_reg(4),
      O => \mem_oen_reg[0]_i_3_n_0\
    );
mem_rnw_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33222327"
    )
        port map (
      I0 => \^out\(0),
      I1 => crnt_state_reg(4),
      I2 => crnt_state(1),
      I3 => crnt_state(0),
      I4 => crnt_state(2),
      O => mem_RNW_cmb
    );
new_page_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55FF1010"
    )
        port map (
      I0 => \^read_complete_pipe_gen[0].read_complete_pipe_0\,
      I1 => tpacc_end,
      I2 => new_page_access,
      I3 => read_break_reg_d1_i_3_n_0,
      I4 => \^new_page_d1\,
      O => new_page
    );
new_page_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => new_page,
      Q => \^new_page_d1\,
      R => SR(0)
    );
read_ack_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_ack_cmb,
      Q => read_ack,
      R => SR(0)
    );
read_break_reg_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFF02000200"
    )
        port map (
      I0 => read_break_reg_d1_i_2_n_0,
      I1 => single_transaction,
      I2 => bus2Mem_RdReq,
      I3 => Bus2IP_RdReq_d1,
      I4 => read_break_reg_d1_i_3_n_0,
      I5 => read_break_reg_d1,
      O => \^read_break_reg\
    );
read_break_reg_d1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"004C0000"
    )
        port map (
      I0 => crnt_state(1),
      I1 => \^out\(0),
      I2 => crnt_state(0),
      I3 => crnt_state_reg(4),
      I4 => crnt_state(2),
      O => read_break_reg_d1_i_2_n_0
    );
read_break_reg_d1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF08FF89"
    )
        port map (
      I0 => \^out\(0),
      I1 => crnt_state(2),
      I2 => crnt_state(1),
      I3 => crnt_state_reg(4),
      I4 => crnt_state(0),
      O => read_break_reg_d1_i_3_n_0
    );
read_break_reg_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^read_break_reg\,
      Q => read_break_reg_d1,
      R => SR(0)
    );
read_data_en_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4444444F444F44"
    )
        port map (
      I0 => \^read_data_en_reg_reg_0\,
      I1 => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\,
      I2 => \^read_complete_pipe_gen[0].read_complete_pipe_0\,
      I3 => tpacc_end,
      I4 => bus2Mem_RdReq,
      I5 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      O => read_data_en_cmb
    );
read_data_en_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => crnt_state(0),
      I1 => \^out\(0),
      I2 => crnt_state(2),
      I3 => crnt_state_reg(4),
      I4 => crnt_state(1),
      O => \^read_data_en_reg_reg_0\
    );
read_data_en_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_data_en_cmb,
      Q => read_data_en,
      R => SR(0)
    );
s_axi_mem_arready_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => crnt_state(0),
      I1 => \^out\(0),
      I2 => crnt_state_reg(4),
      I3 => crnt_state(1),
      I4 => crnt_state(2),
      O => \^transaction_complete_reg_reg_0\
    );
s_axi_mem_awready_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFFFBF"
    )
        port map (
      I0 => \^transaction_complete_reg_reg_0\,
      I1 => s_axi_mem_wvalid,
      I2 => s_axi_mem_awvalid,
      I3 => s_axi_mem_arvalid,
      I4 => rw_flag_reg,
      O => \^s_axi_mem_bid_reg_reg[3]\
    );
s_axi_mem_wready_INST_0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^write_req_addr_ack_cmb\,
      O => \^write_req_data_ack_cmb\
    );
s_axi_mem_wready_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010FFFF00100010"
    )
        port map (
      I0 => s_axi_mem_wready_INST_0_i_3_n_0,
      I1 => single_transaction,
      I2 => \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\,
      I3 => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0\,
      I4 => \^datawidth_match_gen.addr_cnt_i_reg[0]\,
      I5 => Write_req_data_ack_cmb13_out,
      O => \^write_req_addr_ack_cmb\
    );
s_axi_mem_wready_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => crnt_state(2),
      I1 => crnt_state_reg(4),
      I2 => crnt_state(1),
      I3 => crnt_state(0),
      I4 => \^out\(0),
      O => s_axi_mem_wready_INST_0_i_3_n_0
    );
transaction_complete_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAEA"
    )
        port map (
      I0 => transaction_complete_reg_i_2_n_0,
      I1 => pend_wrreq_reg,
      I2 => transaction_complete_reg,
      I3 => \^transaction_complete_reg_reg_0\,
      I4 => transaction_complete_reg_i_3_n_0,
      O => transaction_complete
    );
transaction_complete_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A02080A0A020A08"
    )
        port map (
      I0 => transaction_complete_reg,
      I1 => crnt_state(2),
      I2 => crnt_state_reg(4),
      I3 => crnt_state(0),
      I4 => \^out\(0),
      I5 => crnt_state(1),
      O => transaction_complete_reg_i_2_n_0
    );
transaction_complete_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \^bus2ip_mem_cs_d2_reg_0\(0),
      I2 => transaction_complete_reg,
      I3 => transaction_complete_reg_i_4_n_0,
      O => transaction_complete_reg_i_3_n_0
    );
transaction_complete_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F3DF"
    )
        port map (
      I0 => crnt_state(1),
      I1 => crnt_state(2),
      I2 => crnt_state(0),
      I3 => \^out\(0),
      I4 => crnt_state_reg(4),
      O => transaction_complete_reg_i_4_n_0
    );
transaction_complete_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => transaction_complete,
      Q => transaction_complete_reg,
      R => SR(0)
    );
transaction_done_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCFCE"
    )
        port map (
      I0 => pend_wrreq_reg,
      I1 => thz_load,
      I2 => crnt_state(0),
      I3 => \^out\(0),
      I4 => \mem_ce_reg[0]_i_3_n_0\,
      I5 => crnt_state(2),
      O => transaction_done_cmb
    );
transaction_done_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => crnt_state(1),
      I1 => crnt_state(2),
      I2 => \^out\(0),
      I3 => crnt_state(0),
      I4 => read_complete_d_4,
      I5 => crnt_state_reg(4),
      O => thz_load
    );
transaction_done_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => transaction_done_cmb,
      Q => transaction_done_i,
      R => SR(0)
    );
wlast_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEAAFEFEFEFAFE"
    )
        port map (
      I0 => wlast_reg_i_2_n_0,
      I1 => wlast_reg_i_3_n_0,
      I2 => wlast_reg,
      I3 => wlast_reg_i_4_n_0,
      I4 => bus2Mem_WrReq,
      I5 => wlast_reg_i_5_n_0,
      O => wlast
    );
wlast_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8A8A8A8AAAA8A"
    )
        port map (
      I0 => wlast_reg,
      I1 => crnt_state_reg(4),
      I2 => \^out\(0),
      I3 => crnt_state(0),
      I4 => crnt_state(1),
      I5 => crnt_state(2),
      O => wlast_reg_i_2_n_0
    );
wlast_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_mem_wvalid,
      I1 => s_axi_mem_wlast,
      O => wlast_reg_i_3_n_0
    );
wlast_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFCF7"
    )
        port map (
      I0 => crnt_state(0),
      I1 => crnt_state(1),
      I2 => crnt_state_reg(4),
      I3 => crnt_state(2),
      I4 => \^out\(0),
      O => wlast_reg_i_4_n_0
    );
wlast_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => crnt_state(0),
      I1 => \^out\(0),
      I2 => crnt_state(2),
      I3 => crnt_state(1),
      I4 => crnt_state_reg(4),
      O => wlast_reg_i_5_n_0
    );
wlast_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => wlast,
      Q => wlast_reg,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_mem_steer is
  port (
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_dqt_t_d : out STD_LOGIC;
    \mem_dq_o_reg_reg[0]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_strobe_c : in STD_LOGIC;
    \bus2ip_data_reg_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    readreq_th_reset : in STD_LOGIC;
    read_ack : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    read_data_en : in STD_LOGIC;
    mem_WEN_cmb : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bus2ip_reset_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_mem_steer : entity is "mem_steer";
end axi_em_ctrl_mem_steer;

architecture STRUCTURE of axi_em_ctrl_mem_steer is
  signal A : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \DATA_STORE_GEN[0].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[10].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[11].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[12].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[13].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[14].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[15].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[16].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[17].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[18].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[19].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[1].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[20].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[21].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[22].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[23].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[24].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[25].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[26].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[27].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[28].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[29].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[2].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[30].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[31].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[3].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[4].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[5].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[6].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[7].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[8].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[9].WRDATA_REG__0\ : STD_LOGIC;
  signal addr_cnt_d1 : STD_LOGIC_VECTOR ( 0 to 1 );
  signal mux4_out : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal read_ack_d_4 : STD_LOGIC;
  signal read_data_en_d_3 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC\ : label is "FDR";
  attribute BOX_TYPE of \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC\ : label is "FDR";
  attribute BOX_TYPE of \DATA_STORE_GEN[0].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[10].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[11].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[12].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[13].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[14].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[15].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[16].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[17].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[18].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[19].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[1].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[20].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[21].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[22].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[23].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[24].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[25].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[26].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[27].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[28].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[29].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[2].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[30].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[31].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[3].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[4].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[5].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[6].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[7].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[8].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[9].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[1].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[2].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[3].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[4].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[5].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[6].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[7].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[1].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[2].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[3].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[4].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[5].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[6].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[7].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[1].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[2].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[3].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[4].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[5].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[6].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[7].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[1].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[2].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[3].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[4].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[5].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[6].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[7].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.RDDATA_EN_GEN_ASYNC[0].RDDATA_EN_REG_ASYNC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.RDDATA_EN_GEN_ASYNC[0].RDDATA_EN_REG_ASYNC\ : label is "FDR";
begin
\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_ack,
      Q => read_ack_d_4,
      R => readreq_th_reset
    );
\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_ack_d_4,
      Q => \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\,
      R => readreq_th_reset
    );
\DATA_STORE_GEN[0].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(7),
      Q => \DATA_STORE_GEN[0].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[10].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(13),
      Q => \DATA_STORE_GEN[10].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[11].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(12),
      Q => \DATA_STORE_GEN[11].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[12].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(11),
      Q => \DATA_STORE_GEN[12].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[13].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(10),
      Q => \DATA_STORE_GEN[13].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[14].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(9),
      Q => \DATA_STORE_GEN[14].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[15].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(8),
      Q => \DATA_STORE_GEN[15].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[16].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(23),
      Q => \DATA_STORE_GEN[16].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[17].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(22),
      Q => \DATA_STORE_GEN[17].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[18].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(21),
      Q => \DATA_STORE_GEN[18].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[19].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(20),
      Q => \DATA_STORE_GEN[19].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[1].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(6),
      Q => \DATA_STORE_GEN[1].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[20].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(19),
      Q => \DATA_STORE_GEN[20].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[21].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(18),
      Q => \DATA_STORE_GEN[21].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[22].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(17),
      Q => \DATA_STORE_GEN[22].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[23].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(16),
      Q => \DATA_STORE_GEN[23].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[24].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(31),
      Q => \DATA_STORE_GEN[24].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[25].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(30),
      Q => \DATA_STORE_GEN[25].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[26].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(29),
      Q => \DATA_STORE_GEN[26].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[27].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(28),
      Q => \DATA_STORE_GEN[27].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[28].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(27),
      Q => \DATA_STORE_GEN[28].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[29].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(26),
      Q => \DATA_STORE_GEN[29].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[2].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(5),
      Q => \DATA_STORE_GEN[2].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[30].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(25),
      Q => \DATA_STORE_GEN[30].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[31].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(24),
      Q => \DATA_STORE_GEN[31].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[3].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(4),
      Q => \DATA_STORE_GEN[3].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[4].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(3),
      Q => \DATA_STORE_GEN[4].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[5].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(2),
      Q => \DATA_STORE_GEN[5].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[6].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(1),
      Q => \DATA_STORE_GEN[6].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[7].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(0),
      Q => \DATA_STORE_GEN[7].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[8].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(15),
      Q => \DATA_STORE_GEN[8].WRDATA_REG__0\,
      R => SR(0)
    );
\DATA_STORE_GEN[9].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \bus2ip_data_reg_reg[31]\(14),
      Q => \DATA_STORE_GEN[9].WRDATA_REG__0\,
      R => SR(0)
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(15),
      Q => D(31),
      R => SR(0)
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => A(0),
      I1 => A(1),
      I2 => read_data_en_d_3,
      O => mux4_out(6)
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[1].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(14),
      Q => D(30),
      R => SR(0)
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[2].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(13),
      Q => D(29),
      R => SR(0)
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[3].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(12),
      Q => D(28),
      R => SR(0)
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[4].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(11),
      Q => D(27),
      R => SR(0)
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[5].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(10),
      Q => D(26),
      R => SR(0)
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[6].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(9),
      Q => D(25),
      R => SR(0)
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[7].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(8),
      Q => D(24),
      R => SR(0)
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(7),
      Q => D(23),
      R => SR(0)
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[1].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(6),
      Q => D(22),
      R => SR(0)
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[2].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(5),
      Q => D(21),
      R => SR(0)
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[3].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(4),
      Q => D(20),
      R => SR(0)
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[4].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(3),
      Q => D(19),
      R => SR(0)
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[5].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(2),
      Q => D(18),
      R => SR(0)
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[6].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(1),
      Q => D(17),
      R => SR(0)
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[7].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(6),
      D => Q(0),
      Q => D(16),
      R => SR(0)
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(15),
      Q => D(15),
      R => SR(0)
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => A(1),
      I1 => A(0),
      I2 => read_data_en_d_3,
      O => mux4_out(4)
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[1].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(14),
      Q => D(14),
      R => SR(0)
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[2].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(13),
      Q => D(13),
      R => SR(0)
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[3].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(12),
      Q => D(12),
      R => SR(0)
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[4].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(11),
      Q => D(11),
      R => SR(0)
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[5].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(10),
      Q => D(10),
      R => SR(0)
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[6].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(9),
      Q => D(9),
      R => SR(0)
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[7].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(8),
      Q => D(8),
      R => SR(0)
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(7),
      Q => D(7),
      R => SR(0)
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[1].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(6),
      Q => D(6),
      R => SR(0)
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[2].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(5),
      Q => D(5),
      R => SR(0)
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[3].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(4),
      Q => D(4),
      R => SR(0)
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[4].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(3),
      Q => D(3),
      R => SR(0)
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[5].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(2),
      Q => D(2),
      R => SR(0)
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[6].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(1),
      Q => D(1),
      R => SR(0)
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[7].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => mux4_out(4),
      D => Q(0),
      Q => D(0),
      R => SR(0)
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.RDDATA_EN_GEN_ASYNC[0].RDDATA_EN_REG_ASYNC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_data_en,
      Q => read_data_en_d_3,
      R => SR(0)
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      Q => addr_cnt_d1(0),
      R => bus2ip_reset_reg(0)
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      Q => addr_cnt_d1(1),
      R => bus2ip_reset_reg(0)
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_cnt_d1(0),
      Q => A(1),
      R => bus2ip_reset_reg(0)
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_cnt_d1(1),
      Q => A(0),
      R => bus2ip_reset_reg(0)
    );
\mem_dq_o_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[16].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[0].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(15)
    );
\mem_dq_o_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[26].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[10].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(5)
    );
\mem_dq_o_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[27].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[11].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(4)
    );
\mem_dq_o_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[28].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[12].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(3)
    );
\mem_dq_o_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[29].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[13].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(2)
    );
\mem_dq_o_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[30].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[14].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(1)
    );
\mem_dq_o_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[31].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[15].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(0)
    );
\mem_dq_o_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[17].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[1].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(14)
    );
\mem_dq_o_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[18].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[2].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(13)
    );
\mem_dq_o_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[19].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[3].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(12)
    );
\mem_dq_o_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[20].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[4].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(11)
    );
\mem_dq_o_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[21].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[5].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(10)
    );
\mem_dq_o_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[22].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[6].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(9)
    );
\mem_dq_o_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[23].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[7].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(8)
    );
\mem_dq_o_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[24].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[8].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(7)
    );
\mem_dq_o_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \DATA_STORE_GEN[25].WRDATA_REG__0\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1),
      I3 => \DATA_STORE_GEN[9].WRDATA_REG__0\,
      O => \mem_dq_o_reg_reg[0]\(6)
    );
mem_dqt_t_d_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_WEN_cmb,
      Q => mem_dqt_t_d,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_select_param is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_addr_temp : in STD_LOGIC_VECTOR ( 23 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_select_param : entity is "select_param";
end axi_em_ctrl_select_param;

architecture STRUCTURE of axi_em_ctrl_select_param is
  signal L : STD_LOGIC_VECTOR ( 1 to 27 );
  signal \neqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \neqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \neqOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \neqOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \neqOp_carry__0_n_0\ : STD_LOGIC;
  signal \neqOp_carry__0_n_1\ : STD_LOGIC;
  signal \neqOp_carry__0_n_2\ : STD_LOGIC;
  signal \neqOp_carry__0_n_3\ : STD_LOGIC;
  signal \neqOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \neqOp_carry__1_n_3\ : STD_LOGIC;
  signal neqOp_carry_i_1_n_0 : STD_LOGIC;
  signal neqOp_carry_i_2_n_0 : STD_LOGIC;
  signal neqOp_carry_i_4_n_0 : STD_LOGIC;
  signal neqOp_carry_n_0 : STD_LOGIC;
  signal neqOp_carry_n_1 : STD_LOGIC;
  signal neqOp_carry_n_2 : STD_LOGIC;
  signal neqOp_carry_n_3 : STD_LOGIC;
  signal NLW_neqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_neqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_neqOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_neqOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(27),
      Q => Q(3),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(17),
      Q => L(10),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(16),
      Q => L(11),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(15),
      Q => L(12),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(14),
      Q => L(13),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(13),
      Q => L(14),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(12),
      Q => L(15),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(11),
      Q => L(16),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(10),
      Q => L(17),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(9),
      Q => L(18),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(8),
      Q => L(19),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(26),
      Q => L(1),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(7),
      Q => L(20),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(6),
      Q => L(21),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(5),
      Q => Q(2),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(4),
      Q => Q(1),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(3),
      Q => Q(0),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(2),
      Q => L(25),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(1),
      Q => L(26),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(0),
      Q => L(27),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(25),
      Q => L(2),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(24),
      Q => L(3),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(23),
      Q => L(4),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(22),
      Q => L(5),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(21),
      Q => L(6),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(20),
      Q => L(7),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(19),
      Q => L(8),
      R => SR(0)
    );
\SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(18),
      Q => L(9),
      R => SR(0)
    );
neqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => neqOp_carry_n_0,
      CO(2) => neqOp_carry_n_1,
      CO(1) => neqOp_carry_n_2,
      CO(0) => neqOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_neqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => neqOp_carry_i_1_n_0,
      S(2) => neqOp_carry_i_2_n_0,
      S(1) => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9]\(0),
      S(0) => neqOp_carry_i_4_n_0
    );
\neqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => neqOp_carry_n_0,
      CO(3) => \neqOp_carry__0_n_0\,
      CO(2) => \neqOp_carry__0_n_1\,
      CO(1) => \neqOp_carry__0_n_2\,
      CO(0) => \neqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_neqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \neqOp_carry__0_i_1_n_0\,
      S(2) => \neqOp_carry__0_i_2_n_0\,
      S(1) => \neqOp_carry__0_i_3_n_0\,
      S(0) => \neqOp_carry__0_i_4_n_0\
    );
\neqOp_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => L(6),
      I1 => bus2ip_addr_temp(18),
      I2 => L(5),
      I3 => bus2ip_addr_temp(19),
      I4 => bus2ip_addr_temp(20),
      I5 => L(4),
      O => \neqOp_carry__0_i_1_n_0\
    );
\neqOp_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => L(7),
      I1 => bus2ip_addr_temp(17),
      I2 => L(9),
      I3 => bus2ip_addr_temp(15),
      I4 => bus2ip_addr_temp(16),
      I5 => L(8),
      O => \neqOp_carry__0_i_2_n_0\
    );
\neqOp_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => L(12),
      I1 => bus2ip_addr_temp(12),
      I2 => L(11),
      I3 => bus2ip_addr_temp(13),
      I4 => bus2ip_addr_temp(14),
      I5 => L(10),
      O => \neqOp_carry__0_i_3_n_0\
    );
\neqOp_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => L(15),
      I1 => bus2ip_addr_temp(9),
      I2 => L(14),
      I3 => bus2ip_addr_temp(10),
      I4 => bus2ip_addr_temp(11),
      I5 => L(13),
      O => \neqOp_carry__0_i_4_n_0\
    );
\neqOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \neqOp_carry__0_n_0\,
      CO(3 downto 2) => \NLW_neqOp_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => CO(0),
      CO(0) => \neqOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_neqOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => S(0),
      S(0) => \neqOp_carry__1_i_2_n_0\
    );
\neqOp_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => L(3),
      I1 => bus2ip_addr_temp(21),
      I2 => L(2),
      I3 => bus2ip_addr_temp(22),
      I4 => bus2ip_addr_temp(23),
      I5 => L(1),
      O => \neqOp_carry__1_i_2_n_0\
    );
neqOp_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => L(18),
      I1 => bus2ip_addr_temp(6),
      I2 => L(17),
      I3 => bus2ip_addr_temp(7),
      I4 => bus2ip_addr_temp(8),
      I5 => L(16),
      O => neqOp_carry_i_1_n_0
    );
neqOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => L(20),
      I1 => bus2ip_addr_temp(4),
      I2 => L(21),
      I3 => bus2ip_addr_temp(3),
      I4 => bus2ip_addr_temp(5),
      I5 => L(19),
      O => neqOp_carry_i_2_n_0
    );
neqOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => L(25),
      I1 => bus2ip_addr_temp(2),
      I2 => L(27),
      I3 => bus2ip_addr_temp(0),
      I4 => bus2ip_addr_temp(1),
      I5 => L(26),
      O => neqOp_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_addr_counter_mux is
  port (
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ : out STD_LOGIC;
    cycle_cnt : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDRESS_STORE_GEN[0].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[1].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[2].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[3].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[4].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[5].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[6].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[7].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[8].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[9].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[10].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[11].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[12].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[13].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[14].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[15].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[16].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[17].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[18].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[19].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[20].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[21].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[22].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[23].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[24].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[25].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[26].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[27].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[28].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[29].ADDRESS_REG__0\ : out STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    read_data_en_reg_reg : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]\ : out STD_LOGIC;
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]\ : out STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ : out STD_LOGIC;
    \mem_ben_reg_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_trans_size_reg_reg[1]\ : in STD_LOGIC;
    S_1 : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    data_strobe_c : in STD_LOGIC;
    bus2ip_addr_temp : in STD_LOGIC_VECTOR ( 29 downto 0 );
    bus2ip_ben_fixed : in STD_LOGIC_VECTOR ( 0 to 3 );
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    pend_wrreq_reg : in STD_LOGIC;
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    bus2ip_rnw : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_crnt_state_reg[0]_0\ : in STD_LOGIC;
    tpacc_end : in STD_LOGIC;
    new_page_d1 : in STD_LOGIC;
    read_break_reg : in STD_LOGIC;
    mem_WEN_cmb : in STD_LOGIC;
    \bus2ip_BE_reg_reg[3]\ : in STD_LOGIC;
    \bus2ip_BE_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    addr_cnt_ce : in STD_LOGIC;
    addr_cnt_rst : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_1\ : in STD_LOGIC;
    addr_cnt_ce_cmb61_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_addr_counter_mux : entity is "addr_counter_mux";
end axi_em_ctrl_addr_counter_mux;

architecture STRUCTURE of axi_em_ctrl_addr_counter_mux is
  signal \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[0]\ : STD_LOGIC;
  signal \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bus2ip_ben_int : STD_LOGIC_VECTOR ( 0 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[0].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[10].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[11].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[12].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[13].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[14].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[15].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[16].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[17].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[18].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[19].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[1].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[20].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[21].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[22].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[23].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[24].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[25].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[26].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[27].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[28].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[29].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[2].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[3].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[4].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[5].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[6].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[7].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[8].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[9].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \BEN_STORE_GEN[0].BEN_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \BEN_STORE_GEN[1].BEN_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \BEN_STORE_GEN[2].BEN_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \BEN_STORE_GEN[3].BEN_REG\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mem_ben_reg[0]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \mem_ben_reg[1]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \mem_qwen_reg[0]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \mem_qwen_reg[1]_i_1\ : label is "soft_lutpair81";
begin
  \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]\ <= \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[0]\;
  \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\(0) <= \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]\(0);
\ADDRESS_STORE_GEN[0].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(29),
      Q => \ADDRESS_STORE_GEN[0].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[10].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(19),
      Q => \ADDRESS_STORE_GEN[10].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[11].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(18),
      Q => \ADDRESS_STORE_GEN[11].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[12].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(17),
      Q => \ADDRESS_STORE_GEN[12].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[13].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(16),
      Q => \ADDRESS_STORE_GEN[13].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[14].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(15),
      Q => \ADDRESS_STORE_GEN[14].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[15].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(14),
      Q => \ADDRESS_STORE_GEN[15].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[16].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(13),
      Q => \ADDRESS_STORE_GEN[16].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[17].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(12),
      Q => \ADDRESS_STORE_GEN[17].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[18].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(11),
      Q => \ADDRESS_STORE_GEN[18].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[19].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(10),
      Q => \ADDRESS_STORE_GEN[19].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[1].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(28),
      Q => \ADDRESS_STORE_GEN[1].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[20].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(9),
      Q => \ADDRESS_STORE_GEN[20].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[21].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(8),
      Q => \ADDRESS_STORE_GEN[21].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[22].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(7),
      Q => \ADDRESS_STORE_GEN[22].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[23].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(6),
      Q => \ADDRESS_STORE_GEN[23].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[24].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(5),
      Q => \ADDRESS_STORE_GEN[24].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[25].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(4),
      Q => \ADDRESS_STORE_GEN[25].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[26].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(3),
      Q => \ADDRESS_STORE_GEN[26].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[27].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(2),
      Q => \ADDRESS_STORE_GEN[27].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[28].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(1),
      Q => \ADDRESS_STORE_GEN[28].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[29].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(0),
      Q => \ADDRESS_STORE_GEN[29].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[2].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(27),
      Q => \ADDRESS_STORE_GEN[2].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[3].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(26),
      Q => \ADDRESS_STORE_GEN[3].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[4].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(25),
      Q => \ADDRESS_STORE_GEN[4].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[5].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(24),
      Q => \ADDRESS_STORE_GEN[5].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[6].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(23),
      Q => \ADDRESS_STORE_GEN[6].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[7].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(22),
      Q => \ADDRESS_STORE_GEN[7].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[8].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(21),
      Q => \ADDRESS_STORE_GEN[8].ADDRESS_REG__0\,
      R => SR(0)
    );
\ADDRESS_STORE_GEN[9].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(20),
      Q => \ADDRESS_STORE_GEN[9].ADDRESS_REG__0\,
      R => SR(0)
    );
\BEN_STORE_GEN[0].BEN_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_ben_fixed(0),
      Q => bus2ip_ben_int(0),
      R => SR(0)
    );
\BEN_STORE_GEN[1].BEN_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_ben_fixed(1),
      Q => bus2ip_ben_int(1),
      R => SR(0)
    );
\BEN_STORE_GEN[2].BEN_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_ben_fixed(2),
      Q => bus2ip_ben_int(2),
      R => SR(0)
    );
\BEN_STORE_GEN[3].BEN_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_ben_fixed(3),
      Q => bus2ip_ben_int(3),
      R => SR(0)
    );
\DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I\: entity work.\axi_em_ctrl_ld_arith_reg__parameterized0\
     port map (
      CE => CE,
      CO(0) => CO(0),
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]\ => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\,
      \FSM_sequential_crnt_state_reg[0]\ => \FSM_sequential_crnt_state_reg[0]\,
      \FSM_sequential_crnt_state_reg[0]_0\ => \FSM_sequential_crnt_state_reg[0]_0\,
      \FSM_sequential_crnt_state_reg[1]\ => \FSM_sequential_crnt_state_reg[1]\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\,
      \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\,
      \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\,
      \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\,
      SR(0) => SR(0),
      S_1 => S_1,
      \axi_trans_size_reg_reg[1]\ => \axi_trans_size_reg_reg[1]\,
      bus2Mem_RdReq => bus2Mem_RdReq,
      bus2ip_rnw => bus2ip_rnw,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      new_page_d1 => new_page_d1,
      pend_wrreq_reg => pend_wrreq_reg,
      read_break_reg => read_break_reg,
      read_data_en_reg_reg => cycle_cnt(0),
      read_data_en_reg_reg_0 => read_data_en_reg_reg,
      s_axi_aclk => s_axi_aclk,
      temp_bus2ip_cs => temp_bus2ip_cs,
      tpacc_end => tpacc_end
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007757000088A8"
    )
        port map (
      I0 => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]\(0),
      I1 => \FSM_sequential_crnt_state_reg[0]_1\,
      I2 => addr_cnt_ce_cmb61_out,
      I3 => \FSM_sequential_crnt_state_reg[0]_0\,
      I4 => addr_cnt_rst,
      I5 => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[0]\,
      O => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_1_n_0\
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020200FF0202FF00"
    )
        port map (
      I0 => \bus2ip_BE_reg_reg[3]\,
      I1 => \bus2ip_BE_reg_reg[1]\(0),
      I2 => \bus2ip_BE_reg_reg[1]\(1),
      I3 => addr_cnt_ce,
      I4 => addr_cnt_rst,
      I5 => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]\(0),
      O => \DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_1_n_0\
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_1_n_0\,
      Q => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[0]\,
      R => SR(0)
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_1_n_0\,
      Q => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]\(0),
      R => SR(0)
    );
\mem_ben_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => bus2ip_ben_int(2),
      I1 => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]\(0),
      I2 => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[0]\,
      I3 => bus2ip_ben_int(0),
      O => \mem_ben_reg_reg[0]\(1)
    );
\mem_ben_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => bus2ip_ben_int(3),
      I1 => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]\(0),
      I2 => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[0]\,
      I3 => bus2ip_ben_int(1),
      O => \mem_ben_reg_reg[0]\(0)
    );
\mem_qwen_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFBFFFB"
    )
        port map (
      I0 => mem_WEN_cmb,
      I1 => bus2ip_ben_int(0),
      I2 => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[0]\,
      I3 => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]\(0),
      I4 => bus2ip_ben_int(2),
      O => D(1)
    );
\mem_qwen_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFBFFFB"
    )
        port map (
      I0 => mem_WEN_cmb,
      I1 => bus2ip_ben_int(1),
      I2 => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[0]\,
      I3 => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]\(0),
      I4 => bus2ip_ben_int(3),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_counters is
  port (
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    twph_cnt : out STD_LOGIC_VECTOR ( 0 to 4 );
    trd_cnt : out STD_LOGIC_VECTOR ( 0 to 4 );
    read_ack_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    transaction_done_reg_reg : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ : out STD_LOGIC;
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]\ : out STD_LOGIC;
    twr_rec_end_int : out STD_LOGIC;
    Write_req_data_ack_cmb13_out : out STD_LOGIC;
    \DATA_STORE_GEN[0].WRDATA_REG\ : out STD_LOGIC;
    addr_cnt_ce_cmb61_out : out STD_LOGIC;
    read_ack_reg_reg_0 : out STD_LOGIC;
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ : out STD_LOGIC;
    read_ack_cmb : out STD_LOGIC;
    tpacc_end : out STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ : out STD_LOGIC;
    cycle_cnt_en_cmb58_out : out STD_LOGIC;
    twr_end : out STD_LOGIC;
    twr_cnt_en : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    twph_cnt_en : in STD_LOGIC;
    S : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3\ : in STD_LOGIC;
    CE_4 : in STD_LOGIC;
    CE_5 : in STD_LOGIC;
    trd_cnt_en : in STD_LOGIC;
    S_6 : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10\ : in STD_LOGIC;
    CE_11 : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12\ : in STD_LOGIC;
    CE_13 : in STD_LOGIC;
    twr_rec_cnt_en_int : in STD_LOGIC;
    \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2\ : in STD_LOGIC;
    CE_14 : in STD_LOGIC;
    CE_15 : in STD_LOGIC;
    pend_wrreq_reg : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[2]\ : in STD_LOGIC;
    bus2Mem_WrReq : in STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : in STD_LOGIC;
    last_addr1 : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_counters : entity is "counters";
end axi_em_ctrl_counters;

architecture STRUCTURE of axi_em_ctrl_counters is
  signal \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \^read_ack_reg_reg_0\ : STD_LOGIC;
begin
  \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\;
  read_ack_reg_reg_0 <= \^read_ack_reg_reg_0\;
THZCNT_I: entity work.\axi_em_ctrl_ld_arith_reg__parameterized2\
     port map (
      CE_15 => CE_15,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\,
      \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      SR(0) => SR(0),
      bus2Mem_RdReq => bus2Mem_RdReq,
      bus2Mem_WrReq => bus2Mem_WrReq,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      pend_wrreq_reg => pend_wrreq_reg,
      s_axi_aclk => s_axi_aclk,
      temp_bus2ip_cs => temp_bus2ip_cs,
      transaction_done_reg_reg => transaction_done_reg_reg
    );
TLZCNT_I: entity work.\axi_em_ctrl_ld_arith_reg__parameterized2_0\
     port map (
      CE_5 => CE_5,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\,
      SR(0) => SR(0),
      s_axi_aclk => s_axi_aclk,
      temp_bus2ip_cs => temp_bus2ip_cs
    );
TPACCCNT_I: entity work.\axi_em_ctrl_ld_arith_reg__parameterized1\
     port map (
      CE_13 => CE_13,
      \FSM_sequential_crnt_state_reg[0]\ => \FSM_sequential_crnt_state_reg[0]\,
      \FSM_sequential_crnt_state_reg[2]\ => \FSM_sequential_crnt_state_reg[2]\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\ => \^read_ack_reg_reg_0\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12\,
      \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\,
      \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\,
      SR(0) => SR(0),
      bus2Mem_RdReq => bus2Mem_RdReq,
      read_ack_cmb => read_ack_cmb,
      read_ack_reg_reg => read_ack_reg_reg(0),
      s_axi_aclk => s_axi_aclk,
      tpacc_end => tpacc_end
    );
TRDCNT_I: entity work.\axi_em_ctrl_ld_arith_reg__parameterized1_1\
     port map (
      CE_11 => CE_11,
      CO(0) => CO(0),
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7\,
      SR(0) => SR(0),
      S_6 => S_6,
      addr_cnt_ce_cmb61_out => addr_cnt_ce_cmb61_out,
      bus2Mem_RdReq => bus2Mem_RdReq,
      bus2ip_rnw => bus2ip_rnw,
      read_ack_reg_reg => \^read_ack_reg_reg_0\,
      s_axi_aclk => s_axi_aclk,
      temp_bus2ip_cs => temp_bus2ip_cs,
      trd_cnt(0 to 4) => trd_cnt(0 to 4),
      trd_cnt_en => trd_cnt_en
    );
TWPHCNT_I: entity work.\axi_em_ctrl_ld_arith_reg__parameterized2_2\
     port map (
      CE_4 => CE_4,
      \DATA_STORE_GEN[0].WRDATA_REG\ => \DATA_STORE_GEN[0].WRDATA_REG\,
      \FSM_sequential_crnt_state_reg[1]\ => \FSM_sequential_crnt_state_reg[1]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ => twph_cnt(0),
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ => twph_cnt(1),
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1\ => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2\,
      \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ => twph_cnt(2),
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1\,
      \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0\ => twph_cnt(3),
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0\,
      \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0\ => twph_cnt(4),
      S => S,
      SR(0) => SR(0),
      Write_req_data_ack_cmb13_out => Write_req_data_ack_cmb13_out,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      cycle_cnt_en_cmb58_out => cycle_cnt_en_cmb58_out,
      last_addr1 => last_addr1,
      pend_wrreq_reg => pend_wrreq_reg,
      s_axi_aclk => s_axi_aclk,
      twph_cnt_en => twph_cnt_en
    );
TWRCNT_I: entity work.\axi_em_ctrl_ld_arith_reg__parameterized1_3\
     port map (
      CE => CE,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(3 downto 0) => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\(3 downto 0),
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      SR(0) => SR(0),
      s_axi_aclk => s_axi_aclk,
      twr_cnt_en => twr_cnt_en,
      twr_end => twr_end
    );
T_WRREC_CNT_I: entity work.\axi_em_ctrl_ld_arith_reg__parameterized3\
     port map (
      CE_14 => CE_14,
      \FSM_sequential_crnt_state_reg[3]\ => \FSM_sequential_crnt_state_reg[3]\,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(14 downto 0) => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(14 downto 0),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2\,
      \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1\,
      SR(0) => SR(0),
      \out\(0) => \out\(0),
      s_axi_aclk => s_axi_aclk,
      twr_rec_cnt_en_int => twr_rec_cnt_en_int,
      twr_rec_end_int => twr_rec_end_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_ipic_if is
  port (
    burst_cnt_i : out STD_LOGIC_VECTOR ( 0 to 7 );
    ip2bus_rdack : out STD_LOGIC;
    pend_rdreq : out STD_LOGIC;
    pend_wrreq_reg_0 : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]\ : out STD_LOGIC;
    Bus2IP_RdReq_d1_reg : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ : out STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\ : out STD_LOGIC;
    rd_fifo_wr_en : out STD_LOGIC;
    pend_rdreq_reg_0 : out STD_LOGIC;
    \s_axi_mem_rdata[7]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_addrack : in STD_LOGIC;
    S_0 : in STD_LOGIC;
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    reset_fifo : in STD_LOGIC;
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    IP2Bus_RdAck0 : in STD_LOGIC;
    bus2ip_burst_reg_reg : in STD_LOGIC;
    bus2ip_burst_reg_reg_0 : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    s_axi_mem_wvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    single_transaction : in STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    next_state1 : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_ipic_if : entity is "ipic_if";
end axi_em_ctrl_ipic_if;

architecture STRUCTURE of axi_em_ctrl_ipic_if is
  signal \^ip2bus_rdack\ : STD_LOGIC;
  signal \^pend_wrreq_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus2IP_RdReq_d1_i_2 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[0]_i_13\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[255][0]_srl32_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_43\ : label is "soft_lutpair82";
begin
  ip2bus_rdack <= \^ip2bus_rdack\;
  pend_wrreq_reg_0 <= \^pend_wrreq_reg_0\;
BURST_CNT: entity work.axi_em_ctrl_ld_arith_reg
     port map (
      CE => CE,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      S_0 => S_0,
      burst_cnt_i(0 to 7) => burst_cnt_i(0 to 7),
      ip2bus_addrack => ip2bus_addrack,
      pend_rdreq_reg => pend_rdreq_reg_0,
      reset_fifo => reset_fifo,
      s_axi_aclk => s_axi_aclk
    );
Bus2IP_RdReq_d1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ip2bus_rdack\,
      I1 => \out\(0),
      O => Bus2IP_RdReq_d1_reg
    );
\FSM_sequential_crnt_state[0]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^pend_wrreq_reg_0\,
      I1 => bus2ip_wrreq_i,
      I2 => s_axi_mem_wvalid,
      O => \FSM_sequential_crnt_state_reg[0]\
    );
\INFERRED_GEN.data_reg[255][0]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ip2bus_rdack\,
      I1 => temp_bus2ip_cs,
      O => rd_fifo_wr_en
    );
\IP2Bus_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(31),
      Q => \s_axi_mem_rdata[7]\(31),
      R => SR(0)
    );
\IP2Bus_Data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(21),
      Q => \s_axi_mem_rdata[7]\(21),
      R => SR(0)
    );
\IP2Bus_Data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(20),
      Q => \s_axi_mem_rdata[7]\(20),
      R => SR(0)
    );
\IP2Bus_Data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(19),
      Q => \s_axi_mem_rdata[7]\(19),
      R => SR(0)
    );
\IP2Bus_Data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(18),
      Q => \s_axi_mem_rdata[7]\(18),
      R => SR(0)
    );
\IP2Bus_Data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(17),
      Q => \s_axi_mem_rdata[7]\(17),
      R => SR(0)
    );
\IP2Bus_Data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(16),
      Q => \s_axi_mem_rdata[7]\(16),
      R => SR(0)
    );
\IP2Bus_Data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(15),
      Q => \s_axi_mem_rdata[7]\(15),
      R => SR(0)
    );
\IP2Bus_Data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(14),
      Q => \s_axi_mem_rdata[7]\(14),
      R => SR(0)
    );
\IP2Bus_Data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(13),
      Q => \s_axi_mem_rdata[7]\(13),
      R => SR(0)
    );
\IP2Bus_Data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(12),
      Q => \s_axi_mem_rdata[7]\(12),
      R => SR(0)
    );
\IP2Bus_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(30),
      Q => \s_axi_mem_rdata[7]\(30),
      R => SR(0)
    );
\IP2Bus_Data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(11),
      Q => \s_axi_mem_rdata[7]\(11),
      R => SR(0)
    );
\IP2Bus_Data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(10),
      Q => \s_axi_mem_rdata[7]\(10),
      R => SR(0)
    );
\IP2Bus_Data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(9),
      Q => \s_axi_mem_rdata[7]\(9),
      R => SR(0)
    );
\IP2Bus_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(8),
      Q => \s_axi_mem_rdata[7]\(8),
      R => SR(0)
    );
\IP2Bus_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(7),
      Q => \s_axi_mem_rdata[7]\(7),
      R => SR(0)
    );
\IP2Bus_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(6),
      Q => \s_axi_mem_rdata[7]\(6),
      R => SR(0)
    );
\IP2Bus_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(5),
      Q => \s_axi_mem_rdata[7]\(5),
      R => SR(0)
    );
\IP2Bus_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(4),
      Q => \s_axi_mem_rdata[7]\(4),
      R => SR(0)
    );
\IP2Bus_Data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(3),
      Q => \s_axi_mem_rdata[7]\(3),
      R => SR(0)
    );
\IP2Bus_Data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(2),
      Q => \s_axi_mem_rdata[7]\(2),
      R => SR(0)
    );
\IP2Bus_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(29),
      Q => \s_axi_mem_rdata[7]\(29),
      R => SR(0)
    );
\IP2Bus_Data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(1),
      Q => \s_axi_mem_rdata[7]\(1),
      R => SR(0)
    );
\IP2Bus_Data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => \s_axi_mem_rdata[7]\(0),
      R => SR(0)
    );
\IP2Bus_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(28),
      Q => \s_axi_mem_rdata[7]\(28),
      R => SR(0)
    );
\IP2Bus_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(27),
      Q => \s_axi_mem_rdata[7]\(27),
      R => SR(0)
    );
\IP2Bus_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(26),
      Q => \s_axi_mem_rdata[7]\(26),
      R => SR(0)
    );
\IP2Bus_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(25),
      Q => \s_axi_mem_rdata[7]\(25),
      R => SR(0)
    );
\IP2Bus_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(24),
      Q => \s_axi_mem_rdata[7]\(24),
      R => SR(0)
    );
\IP2Bus_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(23),
      Q => \s_axi_mem_rdata[7]\(23),
      R => SR(0)
    );
\IP2Bus_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(22),
      Q => \s_axi_mem_rdata[7]\(22),
      R => SR(0)
    );
IP2Bus_RdAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_RdAck0,
      Q => \^ip2bus_rdack\,
      R => SR(0)
    );
\PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7770000"
    )
        port map (
      I0 => \^pend_wrreq_reg_0\,
      I1 => bus2ip_wrreq_i,
      I2 => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\,
      I3 => single_transaction,
      I4 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      I5 => \FSM_sequential_crnt_state_reg[0]_0\,
      O => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000080FFFFFFFF"
    )
        port map (
      I0 => bus2ip_wrreq_i,
      I1 => \^pend_wrreq_reg_0\,
      I2 => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\,
      I3 => single_transaction,
      I4 => next_state1,
      I5 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axi_mem_wvalid,
      I1 => bus2ip_wrreq_i,
      I2 => \^pend_wrreq_reg_0\,
      I3 => \FSM_sequential_crnt_state_reg[3]\(0),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\
    );
pend_rdreq_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_burst_reg_reg,
      Q => pend_rdreq,
      R => SR(0)
    );
pend_wrreq_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_burst_reg_reg_0,
      Q => \^pend_wrreq_reg_0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_srl_fifo_rbu_f is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]\ : out STD_LOGIC;
    Bus2IP_RdReq_d1_reg : out STD_LOGIC;
    enable_rdce_cmb : out STD_LOGIC;
    s_axi_mem_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_addr_i : out STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]\ : out STD_LOGIC;
    \rd_data_count_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_mem_rvalid : out STD_LOGIC;
    s_axi_mem_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ip2bus_rdack : in STD_LOGIC;
    \burst_data_cnt_reg[7]\ : in STD_LOGIC;
    \burst_data_cnt_reg[3]\ : in STD_LOGIC;
    \burst_data_cnt_reg[7]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    single_transfer_cmb : in STD_LOGIC;
    enable_cs_cmb126_out : in STD_LOGIC;
    rnw_reg_reg : in STD_LOGIC;
    \derived_burst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \LEN_GEN_32.derived_len_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    enable_cs_cmb : in STD_LOGIC;
    \burst_addr_cnt_reg[6]\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\ : in STD_LOGIC;
    s_axi_mem_rready : in STD_LOGIC;
    rd_fifo_wr_en : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 0 to 32 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_srl_fifo_rbu_f : entity is "srl_fifo_rbu_f";
end axi_em_ctrl_srl_fifo_rbu_f;

architecture STRUCTURE of axi_em_ctrl_srl_fifo_rbu_f is
  signal \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[6]\ : STD_LOGIC;
  signal \^bus2ip_addr_gen_data_wdth_32.internal_count_reg[0]\ : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_0 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_1 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_12 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_13 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_14 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_15 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_16 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_17 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_18 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_3 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_4 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_5 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_6 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifo_full_p1 : STD_LOGIC;
  signal rd_fifo_full : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_3\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_3\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_4\ : label is "soft_lutpair60";
begin
  \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]\ <= \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[6]\;
  \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]\ <= \^bus2ip_addr_gen_data_wdth_32.internal_count_reg[0]\;
  Q(0) <= \^q\(0);
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[6]\,
      I1 => \derived_burst_reg_reg[1]\(0),
      I2 => enable_cs_cmb,
      O => E(0)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => enable_cs_cmb,
      I1 => \^bus2ip_addr_gen_data_wdth_32.internal_count_reg[0]\,
      I2 => \burst_addr_cnt_reg[6]\,
      I3 => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\,
      O => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[6]\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA888"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[6]\,
      I1 => \derived_burst_reg_reg[1]\(0),
      I2 => \LEN_GEN_32.derived_len_reg_reg[3]\(0),
      I3 => \derived_burst_reg_reg[1]\(1),
      I4 => enable_cs_cmb,
      O => bus2ip_addr_i
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => enable_cs_cmb,
      I1 => \^bus2ip_addr_gen_data_wdth_32.internal_count_reg[0]\,
      I2 => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]\
    );
Bus2IP_RdReq_d1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0008"
    )
        port map (
      I0 => ip2bus_rdack,
      I1 => \burst_data_cnt_reg[3]\,
      I2 => \burst_data_cnt_reg[7]_0\(0),
      I3 => \burst_data_cnt_reg[7]_0\(1),
      I4 => rd_fifo_full,
      I5 => \out\(0),
      O => Bus2IP_RdReq_d1_reg
    );
CNTR_INCR_DECR_ADDN_F_I: entity work.axi_em_ctrl_cntr_incr_decr_addn_f
     port map (
      A(1) => CNTR_INCR_DECR_ADDN_F_I_n_12,
      A(0) => CNTR_INCR_DECR_ADDN_F_I_n_13,
      Q(7) => CNTR_INCR_DECR_ADDN_F_I_n_0,
      Q(6) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(5) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      Q(4) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      Q(3) => CNTR_INCR_DECR_ADDN_F_I_n_4,
      Q(2) => CNTR_INCR_DECR_ADDN_F_I_n_5,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_6,
      Q(0) => \^q\(0),
      S(0) => S(0),
      addr(1) => CNTR_INCR_DECR_ADDN_F_I_n_14,
      addr(0) => CNTR_INCR_DECR_ADDN_F_I_n_15,
      \burst_data_cnt_reg[7]\ => \burst_data_cnt_reg[7]\,
      bus2ip_reset => bus2ip_reset,
      enable_cs_cmb => enable_cs_cmb,
      enable_cs_cmb126_out => enable_cs_cmb126_out,
      enable_rdce_cmb => enable_rdce_cmb,
      fifo_full_p1 => fifo_full_p1,
      \out\(2 downto 0) => \out\(2 downto 0),
      \rd_data_count_reg[7]\(0) => \rd_data_count_reg[7]\(0),
      s_axi_aclk => s_axi_aclk,
      \s_axi_mem_rdata[14]\(2) => CNTR_INCR_DECR_ADDN_F_I_n_16,
      \s_axi_mem_rdata[14]\(1) => CNTR_INCR_DECR_ADDN_F_I_n_17,
      \s_axi_mem_rdata[14]\(0) => CNTR_INCR_DECR_ADDN_F_I_n_18,
      s_axi_mem_rready => s_axi_mem_rready,
      s_axi_mem_rvalid => s_axi_mem_rvalid,
      single_transfer_cmb => single_transfer_cmb
    );
DYNSHREG_F_I: entity work.axi_em_ctrl_dynshreg_f
     port map (
      A(1) => CNTR_INCR_DECR_ADDN_F_I_n_12,
      A(0) => CNTR_INCR_DECR_ADDN_F_I_n_13,
      \INFERRED_GEN.cnt_i_reg[2]_rep\(2) => CNTR_INCR_DECR_ADDN_F_I_n_16,
      \INFERRED_GEN.cnt_i_reg[2]_rep\(1) => CNTR_INCR_DECR_ADDN_F_I_n_17,
      \INFERRED_GEN.cnt_i_reg[2]_rep\(0) => CNTR_INCR_DECR_ADDN_F_I_n_18,
      Q(7) => CNTR_INCR_DECR_ADDN_F_I_n_0,
      Q(6) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(5) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      Q(4) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      Q(3) => CNTR_INCR_DECR_ADDN_F_I_n_4,
      Q(2) => CNTR_INCR_DECR_ADDN_F_I_n_5,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_6,
      Q(0) => \^q\(0),
      addr(1) => CNTR_INCR_DECR_ADDN_F_I_n_14,
      addr(0) => CNTR_INCR_DECR_ADDN_F_I_n_15,
      \in\(0 to 32) => \in\(0 to 32),
      rd_fifo_wr_en => rd_fifo_wr_en,
      rnw_reg_reg => rnw_reg_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_mem_rdata(31 downto 0) => s_axi_mem_rdata(31 downto 0),
      s_axi_mem_rresp(0) => s_axi_mem_rresp(0)
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => rd_fifo_full,
      R => bus2ip_reset
    );
\PERBIT_GEN[7].MULT_AND_i1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000058085848"
    )
        port map (
      I0 => \out\(0),
      I1 => ip2bus_rdack,
      I2 => \out\(1),
      I3 => rd_fifo_full,
      I4 => \burst_data_cnt_reg[7]\,
      I5 => \out\(2),
      O => \^bus2ip_addr_gen_data_wdth_32.internal_count_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_EMC is
  port (
    burst_cnt_i : out STD_LOGIC_VECTOR ( 0 to 7 );
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Cycle_cnt_en_int : out STD_LOGIC;
    \ADDRESS_STORE_GEN[0].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[1].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[2].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[3].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[4].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[5].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[6].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[7].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[8].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[9].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[10].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[11].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[12].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[13].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[14].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[15].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[16].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[17].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[18].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[19].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[20].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[21].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[22].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[23].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[24].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[25].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[26].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[27].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[28].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[29].ADDRESS_REG__0\ : out STD_LOGIC;
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ : out STD_LOGIC;
    mem_wen : out STD_LOGIC;
    Bus2IP_Mem_CS_d2_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_rdack : out STD_LOGIC;
    transaction_done_i : out STD_LOGIC;
    mem_cen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_oen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rpn : out STD_LOGIC;
    mem_ce : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rnw : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    pend_rdreq : out STD_LOGIC;
    pend_wrreq : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    trd_end : out STD_LOGIC;
    \s_axi_mem_bid_reg_reg[3]\ : out STD_LOGIC;
    transaction_complete_reg_reg : out STD_LOGIC;
    \mem_a_int_reg[31]\ : out STD_LOGIC;
    twph_end : out STD_LOGIC;
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ : out STD_LOGIC;
    cycle_End : out STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]\ : out STD_LOGIC;
    Write_req_data_ack_cmb : out STD_LOGIC;
    Bus2IP_RdReq_d1_reg : out STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[2]\ : out STD_LOGIC;
    enable_cs_cmb0 : out STD_LOGIC;
    enable_cs_cmb126_out : out STD_LOGIC;
    Write_req_addr_ack_cmb : out STD_LOGIC;
    pend_rdreq_reg : out STD_LOGIC;
    read_req_ack_cmb : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]\ : out STD_LOGIC;
    next_state1 : out STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\ : out STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1\ : out STD_LOGIC;
    rd_fifo_wr_en : out STD_LOGIC;
    cycle_cnt_en_cmb58_out : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_mem_rdata[7]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_dq_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mem_dq_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mem_qwen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_ben : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ip2bus_addrack : in STD_LOGIC;
    S_0 : in STD_LOGIC;
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    reset_fifo : in STD_LOGIC;
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_1 : in STD_LOGIC;
    bus2ip_addr_temp : in STD_LOGIC_VECTOR ( 29 downto 0 );
    bus2ip_ben_fixed : in STD_LOGIC_VECTOR ( 0 to 3 );
    \bus2ip_data_reg_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    readreq_th_reset : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC;
    IP2Bus_RdAck0 : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_burst_reg_reg : in STD_LOGIC;
    bus2ip_burst_reg_reg_0 : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    s_axi_mem_wvalid : in STD_LOGIC;
    s_axi_mem_awvalid : in STD_LOGIC;
    s_axi_mem_arvalid : in STD_LOGIC;
    rw_flag_reg : in STD_LOGIC;
    bus2Mem_WrReq : in STD_LOGIC;
    Bus2IP_RdReq_emc : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ : in STD_LOGIC;
    single_transaction : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ : in STD_LOGIC;
    \burstlength_reg_reg[4]\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\ : in STD_LOGIC;
    rnw_reg_reg : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5\ : in STD_LOGIC;
    new_page_access : in STD_LOGIC;
    bus2ip_wr_req_reg_reg : in STD_LOGIC;
    next_state181_out : in STD_LOGIC;
    read_req_ack_cmb44_out : in STD_LOGIC;
    bus2ip_rnw : in STD_LOGIC;
    last_addr1 : in STD_LOGIC;
    rdce_out_i : in STD_LOGIC;
    rst_rdce_cmb : in STD_LOGIC;
    \axi_trans_size_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_mem_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_wlast : in STD_LOGIC;
    \bus2ip_BE_reg_reg[3]\ : in STD_LOGIC;
    \bus2ip_BE_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 27 downto 0 );
    mem_dq_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rdclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_EMC : entity is "EMC";
end axi_em_ctrl_EMC;

architecture STRUCTURE of axi_em_ctrl_EMC is
  signal ADDR_COUNTER_MUX_I_n_32 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_33 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_34 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_36 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_37 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_38 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_39 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_42 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_44 : STD_LOGIC;
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal COUNTERS_I_n_30 : STD_LOGIC;
  signal COUNTERS_I_n_33 : STD_LOGIC;
  signal COUNTERS_I_n_35 : STD_LOGIC;
  signal COUNTERS_I_n_36 : STD_LOGIC;
  signal COUNTERS_I_n_42 : STD_LOGIC;
  signal COUNTERS_I_n_45 : STD_LOGIC;
  signal \^cycle_cnt_en_int\ : STD_LOGIC;
  signal \DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/CE\ : STD_LOGIC;
  signal \DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal IO_REGISTERS_I_n_10 : STD_LOGIC;
  signal IO_REGISTERS_I_n_11 : STD_LOGIC;
  signal IO_REGISTERS_I_n_12 : STD_LOGIC;
  signal IO_REGISTERS_I_n_13 : STD_LOGIC;
  signal IO_REGISTERS_I_n_14 : STD_LOGIC;
  signal IO_REGISTERS_I_n_15 : STD_LOGIC;
  signal IO_REGISTERS_I_n_16 : STD_LOGIC;
  signal IO_REGISTERS_I_n_17 : STD_LOGIC;
  signal IO_REGISTERS_I_n_18 : STD_LOGIC;
  signal IO_REGISTERS_I_n_19 : STD_LOGIC;
  signal IO_REGISTERS_I_n_20 : STD_LOGIC;
  signal IO_REGISTERS_I_n_21 : STD_LOGIC;
  signal IO_REGISTERS_I_n_6 : STD_LOGIC;
  signal IO_REGISTERS_I_n_7 : STD_LOGIC;
  signal IO_REGISTERS_I_n_8 : STD_LOGIC;
  signal IO_REGISTERS_I_n_9 : STD_LOGIC;
  signal IPIC_IF_I_n_11 : STD_LOGIC;
  signal IPIC_IF_I_n_13 : STD_LOGIC;
  signal IPIC_IF_I_n_14 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_0 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_10 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_12 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_13 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_14 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_15 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_16 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_17 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_18 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_19 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_20 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_21 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_22 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_23 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_24 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_25 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_26 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_34 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_36 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_41 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_51 : STD_LOGIC;
  signal Mem_BEN_int : STD_LOGIC_VECTOR ( 0 to 1 );
  signal Mem_CE_int : STD_LOGIC;
  signal Mem_DQ_O_int : STD_LOGIC_VECTOR ( 0 to 15 );
  signal \^perbit_gen[0].ff_rst0_gen.fdre_i1\ : STD_LOGIC;
  signal \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]_1\ : STD_LOGIC;
  signal \^read_complete_pipe_gen[0].read_complete_pipe_0\ : STD_LOGIC;
  signal \THZCNT_I/CE\ : STD_LOGIC;
  signal \TLZCNT_I/CE\ : STD_LOGIC;
  signal \TPACCCNT_I/CE\ : STD_LOGIC;
  signal \TPACCCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TRDCNT_I/CE\ : STD_LOGIC;
  signal \TRDCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TRDCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TRDCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TRDCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TRDCNT_I/S\ : STD_LOGIC;
  signal \TWPHCNT_I/CE\ : STD_LOGIC;
  signal \TWPHCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TWPHCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TWPHCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TWPHCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TWPHCNT_I/S\ : STD_LOGIC;
  signal \TWRCNT_I/CE\ : STD_LOGIC;
  signal \TWRCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TWRCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TWRCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TWRCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/CE\ : STD_LOGIC;
  signal Write_req_data_ack_cmb13_out : STD_LOGIC;
  signal addr_cnt_ce : STD_LOGIC;
  signal addr_cnt_ce_cmb61_out : STD_LOGIC;
  signal addr_cnt_rst : STD_LOGIC;
  signal \^cycle_end\ : STD_LOGIC;
  signal cycle_cnt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data_strobe_c : STD_LOGIC;
  signal mem2Bus_Data : STD_LOGIC_VECTOR ( 0 to 31 );
  signal mem_CEN_cmb : STD_LOGIC;
  signal mem_OEN_cmb : STD_LOGIC;
  signal mem_RNW_cmb : STD_LOGIC;
  signal mem_WEN_cmb : STD_LOGIC;
  signal mem_dq_t_int : STD_LOGIC_VECTOR ( 15 to 15 );
  signal mem_dqt_t_d : STD_LOGIC;
  signal mem_qwen_int : STD_LOGIC_VECTOR ( 0 to 1 );
  signal new_page_d1 : STD_LOGIC;
  signal \^next_state1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \^pend_rdreq\ : STD_LOGIC;
  signal \^pend_rdreq_reg\ : STD_LOGIC;
  signal \^pend_wrreq\ : STD_LOGIC;
  signal read_ack : STD_LOGIC;
  signal read_ack_cmb : STD_LOGIC;
  signal read_break_reg : STD_LOGIC;
  signal read_data_en : STD_LOGIC;
  signal tpacc_cnt : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tpacc_end : STD_LOGIC;
  signal trd_cnt : STD_LOGIC_VECTOR ( 0 to 4 );
  signal trd_cnt_en : STD_LOGIC;
  signal \^trd_end\ : STD_LOGIC;
  signal twph_cnt : STD_LOGIC_VECTOR ( 0 to 4 );
  signal twph_cnt_en : STD_LOGIC;
  signal \^twph_end\ : STD_LOGIC;
  signal twr_cnt_en : STD_LOGIC;
  signal twr_end : STD_LOGIC;
  signal twr_rec_cnt : STD_LOGIC_VECTOR ( 0 to 14 );
  signal twr_rec_cnt_en_int : STD_LOGIC;
  signal twr_rec_end_int : STD_LOGIC;
begin
  CO(0) <= \^co\(0);
  Cycle_cnt_en_int <= \^cycle_cnt_en_int\;
  \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ <= \^perbit_gen[0].ff_rst0_gen.fdre_i1\;
  \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\;
  \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1\ <= \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]_1\;
  \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ <= \^read_complete_pipe_gen[0].read_complete_pipe_0\;
  cycle_End <= \^cycle_end\;
  next_state1 <= \^next_state1\;
  pend_rdreq <= \^pend_rdreq\;
  pend_rdreq_reg <= \^pend_rdreq_reg\;
  pend_wrreq <= \^pend_wrreq\;
  trd_end <= \^trd_end\;
  twph_end <= \^twph_end\;
ADDR_COUNTER_MUX_I: entity work.axi_em_ctrl_addr_counter_mux
     port map (
      \ADDRESS_STORE_GEN[0].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[0].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[10].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[10].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[11].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[11].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[12].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[12].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[13].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[13].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[14].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[14].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[15].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[15].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[16].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[16].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[17].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[17].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[18].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[18].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[19].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[19].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[1].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[1].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[20].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[20].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[21].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[21].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[22].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[22].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[23].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[23].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[24].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[24].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[25].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[25].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[26].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[26].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[27].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[27].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[28].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[28].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[29].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[29].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[2].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[2].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[3].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[3].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[4].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[4].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[5].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[5].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[6].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[6].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[7].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[7].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[8].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[8].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[9].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[9].ADDRESS_REG__0\,
      CE => \DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/CE\,
      CO(0) => \^co\(0),
      D(1) => mem_qwen_int(0),
      D(0) => mem_qwen_int(1),
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\ => ADDR_COUNTER_MUX_I_n_32,
      \FSM_sequential_crnt_state_reg[0]\ => ADDR_COUNTER_MUX_I_n_37,
      \FSM_sequential_crnt_state_reg[0]_0\ => MEM_STATE_MACHINE_I_n_36,
      \FSM_sequential_crnt_state_reg[0]_1\ => MEM_STATE_MACHINE_I_n_41,
      \FSM_sequential_crnt_state_reg[1]\ => ADDR_COUNTER_MUX_I_n_38,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ => ADDR_COUNTER_MUX_I_n_33,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ => ADDR_COUNTER_MUX_I_n_34,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ => ADDR_COUNTER_MUX_I_n_36,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ => ADDR_COUNTER_MUX_I_n_44,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ => \^twph_end\,
      \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ => \^trd_end\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]\ => ADDR_COUNTER_MUX_I_n_42,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\(0) => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]_1\,
      \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\(0),
      \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ => ADDR_COUNTER_MUX_I_n_39,
      SR(0) => SR(0),
      S_1 => S_1,
      addr_cnt_ce => addr_cnt_ce,
      addr_cnt_ce_cmb61_out => addr_cnt_ce_cmb61_out,
      addr_cnt_rst => addr_cnt_rst,
      \axi_trans_size_reg_reg[1]\ => \^cycle_cnt_en_int\,
      bus2Mem_RdReq => bus2Mem_RdReq,
      \bus2ip_BE_reg_reg[1]\(1 downto 0) => \bus2ip_BE_reg_reg[1]\(1 downto 0),
      \bus2ip_BE_reg_reg[3]\ => \bus2ip_BE_reg_reg[3]\,
      bus2ip_addr_temp(29 downto 0) => bus2ip_addr_temp(29 downto 0),
      bus2ip_ben_fixed(0 to 3) => bus2ip_ben_fixed(0 to 3),
      bus2ip_rnw => bus2ip_rnw,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      cycle_cnt(0) => cycle_cnt(0),
      data_strobe_c => data_strobe_c,
      mem_WEN_cmb => mem_WEN_cmb,
      \mem_ben_reg_reg[0]\(1) => Mem_BEN_int(0),
      \mem_ben_reg_reg[0]\(0) => Mem_BEN_int(1),
      new_page_d1 => new_page_d1,
      pend_wrreq_reg => \^pend_wrreq\,
      read_break_reg => read_break_reg,
      read_data_en_reg_reg => \^cycle_end\,
      s_axi_aclk => s_axi_aclk,
      temp_bus2ip_cs => temp_bus2ip_cs,
      tpacc_end => tpacc_end
    );
COUNTERS_I: entity work.axi_em_ctrl_counters
     port map (
      CE => \TWRCNT_I/CE\,
      CE_11 => \TRDCNT_I/CE\,
      CE_13 => \TPACCCNT_I/CE\,
      CE_14 => \T_WRREC_CNT_I/CE\,
      CE_15 => \THZCNT_I/CE\,
      CE_4 => \TWPHCNT_I/CE\,
      CE_5 => \TLZCNT_I/CE\,
      CO(0) => \^co\(0),
      \DATA_STORE_GEN[0].WRDATA_REG\ => \^twph_end\,
      \FSM_sequential_crnt_state_reg[0]\ => MEM_STATE_MACHINE_I_n_36,
      \FSM_sequential_crnt_state_reg[1]\ => COUNTERS_I_n_35,
      \FSM_sequential_crnt_state_reg[2]\ => MEM_STATE_MACHINE_I_n_26,
      \FSM_sequential_crnt_state_reg[3]\ => COUNTERS_I_n_36,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ => \^perbit_gen[0].ff_rst0_gen.fdre_i1\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\(3) => p_0_in(0),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\(2) => p_0_in(1),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\(1) => p_0_in(2),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\(0) => p_0_in(3),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(14) => twr_rec_cnt(0),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(13) => twr_rec_cnt(1),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(12) => twr_rec_cnt(2),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(11) => twr_rec_cnt(3),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(10) => twr_rec_cnt(4),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(9) => twr_rec_cnt(5),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(8) => twr_rec_cnt(6),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(7) => twr_rec_cnt(7),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(6) => twr_rec_cnt(8),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(5) => twr_rec_cnt(9),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(4) => twr_rec_cnt(10),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(3) => twr_rec_cnt(11),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(2) => twr_rec_cnt(12),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(1) => twr_rec_cnt(13),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(0) => twr_rec_cnt(14),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ => COUNTERS_I_n_33,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2\ => MEM_STATE_MACHINE_I_n_12,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \TWRCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10\ => \TRDCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3\ => \TWPHCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_22,
      \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_23,
      \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_24,
      \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_25,
      \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_10,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ => \^cycle_end\,
      \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_13,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \TWRCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2\ => \TWPHCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9\ => \TRDCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_14,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \TWRCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1\ => \TWPHCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8\ => \TRDCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_15,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \TWRCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0\ => \TWPHCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12\ => \TPACCCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7\ => \TRDCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_16,
      \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_17,
      \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_18,
      \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_19,
      \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_20,
      \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_21,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ => COUNTERS_I_n_45,
      \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ => \^read_complete_pipe_gen[0].read_complete_pipe_0\,
      \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ => COUNTERS_I_n_42,
      S => \TWPHCNT_I/S\,
      SR(0) => SR(0),
      S_6 => \TRDCNT_I/S\,
      Write_req_data_ack_cmb13_out => Write_req_data_ack_cmb13_out,
      addr_cnt_ce_cmb61_out => addr_cnt_ce_cmb61_out,
      bus2Mem_RdReq => bus2Mem_RdReq,
      bus2Mem_WrReq => bus2Mem_WrReq,
      bus2ip_rnw => bus2ip_rnw,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      cycle_cnt_en_cmb58_out => cycle_cnt_en_cmb58_out,
      last_addr1 => last_addr1,
      \out\(0) => MEM_STATE_MACHINE_I_n_0,
      pend_wrreq_reg => \^pend_wrreq\,
      read_ack_cmb => read_ack_cmb,
      read_ack_reg_reg(0) => tpacc_cnt(3),
      read_ack_reg_reg_0 => \^trd_end\,
      s_axi_aclk => s_axi_aclk,
      temp_bus2ip_cs => temp_bus2ip_cs,
      tpacc_end => tpacc_end,
      transaction_done_reg_reg => COUNTERS_I_n_30,
      trd_cnt(0 to 4) => trd_cnt(0 to 4),
      trd_cnt_en => trd_cnt_en,
      twph_cnt(0 to 4) => twph_cnt(0 to 4),
      twph_cnt_en => twph_cnt_en,
      twr_cnt_en => twr_cnt_en,
      twr_end => twr_end,
      twr_rec_cnt_en_int => twr_rec_cnt_en_int,
      twr_rec_end_int => twr_rec_end_int
    );
IO_REGISTERS_I: entity work.axi_em_ctrl_io_registers
     port map (
      \BEN_STORE_GEN[0].BEN_REG\(1) => mem_qwen_int(0),
      \BEN_STORE_GEN[0].BEN_REG\(0) => mem_qwen_int(1),
      \BEN_STORE_GEN[2].BEN_REG\(1) => Mem_BEN_int(0),
      \BEN_STORE_GEN[2].BEN_REG\(0) => Mem_BEN_int(1),
      D(15) => Mem_DQ_O_int(0),
      D(14) => Mem_DQ_O_int(1),
      D(13) => Mem_DQ_O_int(2),
      D(12) => Mem_DQ_O_int(3),
      D(11) => Mem_DQ_O_int(4),
      D(10) => Mem_DQ_O_int(5),
      D(9) => Mem_DQ_O_int(6),
      D(8) => Mem_DQ_O_int(7),
      D(7) => Mem_DQ_O_int(8),
      D(6) => Mem_DQ_O_int(9),
      D(5) => Mem_DQ_O_int(10),
      D(4) => Mem_DQ_O_int(11),
      D(3) => Mem_DQ_O_int(12),
      D(2) => Mem_DQ_O_int(13),
      D(1) => Mem_DQ_O_int(14),
      D(0) => Mem_DQ_O_int(15),
      Mem_CE_int => Mem_CE_int,
      Q(15) => IO_REGISTERS_I_n_6,
      Q(14) => IO_REGISTERS_I_n_7,
      Q(13) => IO_REGISTERS_I_n_8,
      Q(12) => IO_REGISTERS_I_n_9,
      Q(11) => IO_REGISTERS_I_n_10,
      Q(10) => IO_REGISTERS_I_n_11,
      Q(9) => IO_REGISTERS_I_n_12,
      Q(8) => IO_REGISTERS_I_n_13,
      Q(7) => IO_REGISTERS_I_n_14,
      Q(6) => IO_REGISTERS_I_n_15,
      Q(5) => IO_REGISTERS_I_n_16,
      Q(4) => IO_REGISTERS_I_n_17,
      Q(3) => IO_REGISTERS_I_n_18,
      Q(2) => IO_REGISTERS_I_n_19,
      Q(1) => IO_REGISTERS_I_n_20,
      Q(0) => IO_REGISTERS_I_n_21,
      SR(0) => SR(0),
      mem_CEN_cmb => mem_CEN_cmb,
      mem_OEN_cmb => mem_OEN_cmb,
      mem_RNW_cmb => mem_RNW_cmb,
      mem_WEN_cmb => mem_WEN_cmb,
      mem_ben(1 downto 0) => mem_ben(1 downto 0),
      mem_ce(0) => mem_ce(0),
      mem_cen(0) => mem_cen(0),
      mem_dq_i(15 downto 0) => mem_dq_i(15 downto 0),
      mem_dq_o(15 downto 0) => mem_dq_o(15 downto 0),
      mem_dq_t(15 downto 0) => mem_dq_t(15 downto 0),
      mem_dqt_t_d_reg(0) => mem_dq_t_int(15),
      mem_oen(0) => mem_oen(0),
      mem_qwen(1 downto 0) => mem_qwen(1 downto 0),
      mem_rnw => mem_rnw,
      mem_rpn => mem_rpn,
      mem_wen => mem_wen,
      rdclk => rdclk,
      s_axi_aclk => s_axi_aclk
    );
IPIC_IF_I: entity work.axi_em_ctrl_ipic_if
     port map (
      Bus2IP_RdReq_d1_reg => Bus2IP_RdReq_d1_reg,
      CE => CE,
      D(31) => mem2Bus_Data(0),
      D(30) => mem2Bus_Data(1),
      D(29) => mem2Bus_Data(2),
      D(28) => mem2Bus_Data(3),
      D(27) => mem2Bus_Data(4),
      D(26) => mem2Bus_Data(5),
      D(25) => mem2Bus_Data(6),
      D(24) => mem2Bus_Data(7),
      D(23) => mem2Bus_Data(8),
      D(22) => mem2Bus_Data(9),
      D(21) => mem2Bus_Data(10),
      D(20) => mem2Bus_Data(11),
      D(19) => mem2Bus_Data(12),
      D(18) => mem2Bus_Data(13),
      D(17) => mem2Bus_Data(14),
      D(16) => mem2Bus_Data(15),
      D(15) => mem2Bus_Data(16),
      D(14) => mem2Bus_Data(17),
      D(13) => mem2Bus_Data(18),
      D(12) => mem2Bus_Data(19),
      D(11) => mem2Bus_Data(20),
      D(10) => mem2Bus_Data(21),
      D(9) => mem2Bus_Data(22),
      D(8) => mem2Bus_Data(23),
      D(7) => mem2Bus_Data(24),
      D(6) => mem2Bus_Data(25),
      D(5) => mem2Bus_Data(26),
      D(4) => mem2Bus_Data(27),
      D(3) => mem2Bus_Data(28),
      D(2) => mem2Bus_Data(29),
      D(1) => mem2Bus_Data(30),
      D(0) => mem2Bus_Data(31),
      \FSM_sequential_crnt_state_reg[0]\ => IPIC_IF_I_n_11,
      \FSM_sequential_crnt_state_reg[0]_0\ => MEM_STATE_MACHINE_I_n_34,
      \FSM_sequential_crnt_state_reg[3]\(0) => MEM_STATE_MACHINE_I_n_0,
      IP2Bus_RdAck0 => IP2Bus_RdAck0,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ => IPIC_IF_I_n_13,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ => \^cycle_end\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ => \^twph_end\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ => IPIC_IF_I_n_14,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\,
      SR(0) => SR(0),
      S_0 => S_0,
      burst_cnt_i(0 to 7) => burst_cnt_i(0 to 7),
      bus2ip_burst_reg_reg => bus2ip_burst_reg_reg,
      bus2ip_burst_reg_reg_0 => bus2ip_burst_reg_reg_0,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      ip2bus_addrack => ip2bus_addrack,
      ip2bus_rdack => ip2bus_rdack,
      next_state1 => \^next_state1\,
      \out\(0) => \out\(0),
      pend_rdreq => \^pend_rdreq\,
      pend_rdreq_reg_0 => \^pend_rdreq_reg\,
      pend_wrreq_reg_0 => \^pend_wrreq\,
      rd_fifo_wr_en => rd_fifo_wr_en,
      reset_fifo => reset_fifo,
      s_axi_aclk => s_axi_aclk,
      \s_axi_mem_rdata[7]\(31 downto 0) => \s_axi_mem_rdata[7]\(31 downto 0),
      s_axi_mem_wvalid => s_axi_mem_wvalid,
      single_transaction => single_transaction,
      temp_bus2ip_cs => temp_bus2ip_cs
    );
MEM_STATE_MACHINE_I: entity work.axi_em_ctrl_mem_state_machine
     port map (
      Bus2IP_Mem_CS_d2_reg_0(0) => Bus2IP_Mem_CS_d2_reg(0),
      Bus2IP_RdReq_emc => Bus2IP_RdReq_emc,
      CE => \TRDCNT_I/CE\,
      CE_0 => \DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/CE\,
      CE_10 => \TWRCNT_I/CE\,
      CE_11 => \TLZCNT_I/CE\,
      CE_17 => \T_WRREC_CNT_I/CE\,
      CE_2 => \TPACCCNT_I/CE\,
      CE_3 => \THZCNT_I/CE\,
      CE_4 => \TWPHCNT_I/CE\,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\ => MEM_STATE_MACHINE_I_n_34,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0\ => MEM_STATE_MACHINE_I_n_41,
      \FSM_sequential_crnt_state_reg[1]_0\ => \FSM_sequential_crnt_state_reg[1]\,
      \FSM_sequential_crnt_state_reg[3]_0\ => COUNTERS_I_n_36,
      \FSM_sequential_emc_addr_ps_reg[0]\ => \FSM_sequential_emc_addr_ps_reg[0]\,
      \FSM_sequential_emc_addr_ps_reg[0]_0\(0) => \out\(0),
      \FSM_sequential_emc_addr_ps_reg[2]\ => \FSM_sequential_emc_addr_ps_reg[2]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_6\ => COUNTERS_I_n_45,
      Mem_CE_int => Mem_CE_int,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ => \^cycle_cnt_en_int\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ => ADDR_COUNTER_MUX_I_n_37,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\ => ADDR_COUNTER_MUX_I_n_36,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\ => ADDR_COUNTER_MUX_I_n_32,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3\ => ADDR_COUNTER_MUX_I_n_44,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_12,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(14) => twr_rec_cnt(0),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(13) => twr_rec_cnt(1),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(12) => twr_rec_cnt(2),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(11) => twr_rec_cnt(3),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(10) => twr_rec_cnt(4),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(9) => twr_rec_cnt(5),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(8) => twr_rec_cnt(6),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(7) => twr_rec_cnt(7),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(6) => twr_rec_cnt(8),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(5) => twr_rec_cnt(9),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(4) => twr_rec_cnt(10),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(3) => twr_rec_cnt(11),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(2) => twr_rec_cnt(12),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(1) => twr_rec_cnt(13),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(0) => twr_rec_cnt(14),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(3) => p_0_in(0),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(2) => p_0_in(1),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(1) => p_0_in(2),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(0) => p_0_in(3),
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1\ => \TRDCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_15\ => \TWRCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8\ => \TWPHCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_22,
      \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_23,
      \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_24,
      \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_25,
      \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_10,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ => \^cycle_end\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ => ADDR_COUNTER_MUX_I_n_39,
      \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_13,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \TRDCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_14\ => \TWRCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7\ => \TWPHCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ => \^perbit_gen[0].ff_rst0_gen.fdre_i1\,
      \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1\ => COUNTERS_I_n_35,
      \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_14,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \TRDCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_13\ => \TWRCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6\ => \TWPHCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ => \^twph_end\,
      \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0\ => \^pend_rdreq_reg\,
      \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_15,
      \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\ => \^trd_end\,
      \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_1\(0) => tpacc_cnt(3),
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \TRDCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_12\ => \TWRCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16\ => \TPACCCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_9\ => \TWPHCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\ => COUNTERS_I_n_33,
      \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_16,
      \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0\ => COUNTERS_I_n_42,
      \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1\ => \^read_complete_pipe_gen[0].read_complete_pipe_0\,
      \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_17,
      \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_18,
      \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_19,
      \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_20,
      \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_21,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\(0) => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\(0),
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\(0) => MEM_STATE_MACHINE_I_n_51,
      \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ => MEM_STATE_MACHINE_I_n_26,
      S => \TRDCNT_I/S\,
      SR(0) => SR(0),
      S_5 => \TWPHCNT_I/S\,
      Write_req_addr_ack_cmb => Write_req_addr_ack_cmb,
      Write_req_data_ack_cmb => Write_req_data_ack_cmb,
      Write_req_data_ack_cmb13_out => Write_req_data_ack_cmb13_out,
      addr_cnt_ce => addr_cnt_ce,
      addr_cnt_rst => addr_cnt_rst,
      \axi_trans_size_reg_reg[1]\(0) => \axi_trans_size_reg_reg[1]\(0),
      \burstlength_reg_reg[4]\ => \burstlength_reg_reg[4]\,
      bus2Mem_RdReq => bus2Mem_RdReq,
      bus2Mem_WrReq => bus2Mem_WrReq,
      bus2ip_wr_req_reg_reg => bus2ip_wr_req_reg_reg,
      bus2ip_wr_req_reg_reg_0 => IPIC_IF_I_n_14,
      bus2ip_wr_req_reg_reg_1 => ADDR_COUNTER_MUX_I_n_33,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      cycle_cnt(0) => cycle_cnt(0),
      data_strobe_c => data_strobe_c,
      enable_cs_cmb0 => enable_cs_cmb0,
      enable_cs_cmb126_out => enable_cs_cmb126_out,
      mem_CEN_cmb => mem_CEN_cmb,
      mem_OEN_cmb => mem_OEN_cmb,
      mem_RNW_cmb => mem_RNW_cmb,
      mem_WEN_cmb => mem_WEN_cmb,
      \mem_a_int_reg[31]\ => \mem_a_int_reg[31]\,
      \mem_dq_t_reg_reg[0]\(0) => mem_dq_t_int(15),
      mem_dqt_t_d => mem_dqt_t_d,
      new_page_access => new_page_access,
      new_page_d1 => new_page_d1,
      new_page_d1_reg_0 => ADDR_COUNTER_MUX_I_n_38,
      next_state1 => \^next_state1\,
      next_state181_out => next_state181_out,
      \out\(0) => MEM_STATE_MACHINE_I_n_0,
      pend_rdreq => \^pend_rdreq\,
      pend_wrreq_reg => COUNTERS_I_n_30,
      pend_wrreq_reg_0 => \^pend_wrreq\,
      pend_wrreq_reg_1 => IPIC_IF_I_n_11,
      pend_wrreq_reg_2 => IPIC_IF_I_n_13,
      rdce_out_i => rdce_out_i,
      read_ack => read_ack,
      read_ack_cmb => read_ack_cmb,
      read_break_reg => read_break_reg,
      read_data_en => read_data_en,
      read_data_en_reg_reg_0 => MEM_STATE_MACHINE_I_n_36,
      read_req_ack_cmb => read_req_ack_cmb,
      read_req_ack_cmb44_out => read_req_ack_cmb44_out,
      rnw_reg_reg => rnw_reg_reg,
      rnw_reg_reg_0 => ADDR_COUNTER_MUX_I_n_34,
      rst_rdce_cmb => rst_rdce_cmb,
      rw_flag_reg => rw_flag_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_mem_arburst(1 downto 0) => s_axi_mem_arburst(1 downto 0),
      s_axi_mem_arvalid => s_axi_mem_arvalid,
      s_axi_mem_awburst(1 downto 0) => s_axi_mem_awburst(1 downto 0),
      s_axi_mem_awvalid => s_axi_mem_awvalid,
      \s_axi_mem_bid_reg_reg[3]\ => \s_axi_mem_bid_reg_reg[3]\,
      s_axi_mem_wlast => s_axi_mem_wlast,
      s_axi_mem_wvalid => s_axi_mem_wvalid,
      single_transaction => single_transaction,
      temp_bus2ip_cs => temp_bus2ip_cs,
      tpacc_end => tpacc_end,
      transaction_complete_reg_reg_0 => transaction_complete_reg_reg,
      transaction_done_i => transaction_done_i,
      trd_cnt(0 to 4) => trd_cnt(0 to 4),
      trd_cnt_en => trd_cnt_en,
      twph_cnt(0 to 4) => twph_cnt(0 to 4),
      twph_cnt_en => twph_cnt_en,
      twr_cnt_en => twr_cnt_en,
      twr_end => twr_end,
      twr_rec_cnt_en_int => twr_rec_cnt_en_int,
      twr_rec_end_int => twr_rec_end_int
    );
MEM_STEER_I: entity work.axi_em_ctrl_mem_steer
     port map (
      \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ => \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\,
      D(31) => mem2Bus_Data(0),
      D(30) => mem2Bus_Data(1),
      D(29) => mem2Bus_Data(2),
      D(28) => mem2Bus_Data(3),
      D(27) => mem2Bus_Data(4),
      D(26) => mem2Bus_Data(5),
      D(25) => mem2Bus_Data(6),
      D(24) => mem2Bus_Data(7),
      D(23) => mem2Bus_Data(8),
      D(22) => mem2Bus_Data(9),
      D(21) => mem2Bus_Data(10),
      D(20) => mem2Bus_Data(11),
      D(19) => mem2Bus_Data(12),
      D(18) => mem2Bus_Data(13),
      D(17) => mem2Bus_Data(14),
      D(16) => mem2Bus_Data(15),
      D(15) => mem2Bus_Data(16),
      D(14) => mem2Bus_Data(17),
      D(13) => mem2Bus_Data(18),
      D(12) => mem2Bus_Data(19),
      D(11) => mem2Bus_Data(20),
      D(10) => mem2Bus_Data(21),
      D(9) => mem2Bus_Data(22),
      D(8) => mem2Bus_Data(23),
      D(7) => mem2Bus_Data(24),
      D(6) => mem2Bus_Data(25),
      D(5) => mem2Bus_Data(26),
      D(4) => mem2Bus_Data(27),
      D(3) => mem2Bus_Data(28),
      D(2) => mem2Bus_Data(29),
      D(1) => mem2Bus_Data(30),
      D(0) => mem2Bus_Data(31),
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(1) => ADDR_COUNTER_MUX_I_n_42,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0) => \^rddata_path_mux_gen.async_addr_cnt_gen.addr_cnt_d1_reg[1]_1\,
      Q(15) => IO_REGISTERS_I_n_6,
      Q(14) => IO_REGISTERS_I_n_7,
      Q(13) => IO_REGISTERS_I_n_8,
      Q(12) => IO_REGISTERS_I_n_9,
      Q(11) => IO_REGISTERS_I_n_10,
      Q(10) => IO_REGISTERS_I_n_11,
      Q(9) => IO_REGISTERS_I_n_12,
      Q(8) => IO_REGISTERS_I_n_13,
      Q(7) => IO_REGISTERS_I_n_14,
      Q(6) => IO_REGISTERS_I_n_15,
      Q(5) => IO_REGISTERS_I_n_16,
      Q(4) => IO_REGISTERS_I_n_17,
      Q(3) => IO_REGISTERS_I_n_18,
      Q(2) => IO_REGISTERS_I_n_19,
      Q(1) => IO_REGISTERS_I_n_20,
      Q(0) => IO_REGISTERS_I_n_21,
      SR(0) => SR(0),
      \bus2ip_data_reg_reg[31]\(31 downto 0) => \bus2ip_data_reg_reg[31]\(31 downto 0),
      bus2ip_reset_reg(0) => MEM_STATE_MACHINE_I_n_51,
      data_strobe_c => data_strobe_c,
      mem_WEN_cmb => mem_WEN_cmb,
      \mem_dq_o_reg_reg[0]\(15) => Mem_DQ_O_int(0),
      \mem_dq_o_reg_reg[0]\(14) => Mem_DQ_O_int(1),
      \mem_dq_o_reg_reg[0]\(13) => Mem_DQ_O_int(2),
      \mem_dq_o_reg_reg[0]\(12) => Mem_DQ_O_int(3),
      \mem_dq_o_reg_reg[0]\(11) => Mem_DQ_O_int(4),
      \mem_dq_o_reg_reg[0]\(10) => Mem_DQ_O_int(5),
      \mem_dq_o_reg_reg[0]\(9) => Mem_DQ_O_int(6),
      \mem_dq_o_reg_reg[0]\(8) => Mem_DQ_O_int(7),
      \mem_dq_o_reg_reg[0]\(7) => Mem_DQ_O_int(8),
      \mem_dq_o_reg_reg[0]\(6) => Mem_DQ_O_int(9),
      \mem_dq_o_reg_reg[0]\(5) => Mem_DQ_O_int(10),
      \mem_dq_o_reg_reg[0]\(4) => Mem_DQ_O_int(11),
      \mem_dq_o_reg_reg[0]\(3) => Mem_DQ_O_int(12),
      \mem_dq_o_reg_reg[0]\(2) => Mem_DQ_O_int(13),
      \mem_dq_o_reg_reg[0]\(1) => Mem_DQ_O_int(14),
      \mem_dq_o_reg_reg[0]\(0) => Mem_DQ_O_int(15),
      mem_dqt_t_d => mem_dqt_t_d,
      read_ack => read_ack,
      read_data_en => read_data_en,
      readreq_th_reset => readreq_th_reset,
      s_axi_aclk => s_axi_aclk
    );
SELECT_PARAM_I: entity work.axi_em_ctrl_select_param
     port map (
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9]\(0) => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9]\(0),
      CO(0) => \^co\(0),
      D(27 downto 0) => D(27 downto 0),
      E(0) => E(0),
      Q(3 downto 0) => Q(3 downto 0),
      S(0) => S(0),
      SR(0) => SR(0),
      bus2ip_addr_temp(23 downto 3) => bus2ip_addr_temp(28 downto 8),
      bus2ip_addr_temp(2 downto 0) => bus2ip_addr_temp(4 downto 2),
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_axi_emc_native_interface is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_addr_temp : out STD_LOGIC_VECTOR ( 29 downto 0 );
    temp_bus2ip_cs : out STD_LOGIC;
    rdce_out_i : out STD_LOGIC;
    s_axi_mem_bvalid : out STD_LOGIC;
    Bus2IP_RdReq_emc : out STD_LOGIC;
    rw_flag_reg : out STD_LOGIC;
    s_axi_mem_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_wrreq_i : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_crnt_state_reg[0]\ : out STD_LOGIC;
    bus2Mem_RdReq : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC;
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    IP2Bus_RdAck0 : out STD_LOGIC;
    single_transaction : out STD_LOGIC;
    rst_rdce_cmb : out STD_LOGIC;
    readreq_th_reset : out STD_LOGIC;
    s_axi_mem_wready : out STD_LOGIC;
    last_addr1 : out STD_LOGIC;
    ip2bus_addrack : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[2]\ : out STD_LOGIC;
    bus2Mem_WrReq : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]\ : out STD_LOGIC;
    next_state181_out : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_1\ : out STD_LOGIC;
    s_axi_mem_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_mem_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ : out STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\ : out STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1\ : out STD_LOGIC;
    read_req_ack_cmb44_out : out STD_LOGIC;
    S_0 : out STD_LOGIC;
    \axi_trans_size_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_1 : out STD_LOGIC;
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    s_axi_mem_rvalid : out STD_LOGIC;
    s_axi_mem_rlast : out STD_LOGIC;
    reset_fifo : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    new_page_access : out STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]\ : out STD_LOGIC;
    bus2ip_ben_fixed : out STD_LOGIC_VECTOR ( 0 to 3 );
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg\ : out STD_LOGIC;
    CE : out STD_LOGIC;
    pend_rdreq_reg : out STD_LOGIC;
    pend_wrreq_reg : out STD_LOGIC;
    s_axi_mem_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DATA_STORE_GEN[24].WRDATA_REG\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_mem_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_awsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rw_flag_reg_reg_0 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    pend_rdreq : in STD_LOGIC;
    pend_wrreq : in STD_LOGIC;
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    Write_req_data_ack_cmb : in STD_LOGIC;
    \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    enable_cs_cmb0 : in STD_LOGIC;
    enable_cs_cmb126_out : in STD_LOGIC;
    s_axi_mem_bready : in STD_LOGIC;
    s_axi_mem_wvalid : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]_0\ : in STD_LOGIC;
    rw_flag_reg_reg_1 : in STD_LOGIC;
    cycle_End : in STD_LOGIC;
    bus2ip_wr_req_reg_reg_0 : in STD_LOGIC;
    twph_end : in STD_LOGIC;
    next_state1 : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    trd_end : in STD_LOGIC;
    s_axi_mem_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_rready : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_2\ : in STD_LOGIC;
    s_axi_mem_arvalid : in STD_LOGIC;
    s_axi_mem_awvalid : in STD_LOGIC;
    transaction_done_i : in STD_LOGIC;
    crnt_state_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    cycle_cnt_en_cmb58_out : in STD_LOGIC;
    bus2ip_wr_req_reg_reg_1 : in STD_LOGIC;
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    cycle_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    Cycle_cnt_en_int : in STD_LOGIC;
    IP2Bus_RdAck_reg : in STD_LOGIC;
    burst_cnt_i : in STD_LOGIC_VECTOR ( 0 to 7 );
    read_req_ack_cmb : in STD_LOGIC;
    s_axi_mem_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Write_req_addr_ack_cmb : in STD_LOGIC;
    psram_page_mode : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    rd_fifo_wr_en : in STD_LOGIC;
    \IP2Bus_Data_reg[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_axi_emc_native_interface : entity is "axi_emc_native_interface";
end axi_em_ctrl_axi_emc_native_interface;

architecture STRUCTURE of axi_em_ctrl_axi_emc_native_interface is
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_10 : STD_LOGIC;
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_11 : STD_LOGIC;
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_12 : STD_LOGIC;
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_13 : STD_LOGIC;
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_14 : STD_LOGIC;
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21 : STD_LOGIC;
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_22 : STD_LOGIC;
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_37 : STD_LOGIC;
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_42 : STD_LOGIC;
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_43 : STD_LOGIC;
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_78 : STD_LOGIC;
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_79 : STD_LOGIC;
  signal AXI_EMC_ADDR_GEN_INSTANCE_I_n_36 : STD_LOGIC;
  signal AXI_EMC_ADDR_GEN_INSTANCE_I_n_37 : STD_LOGIC;
  signal \^bus2ip_rdreq_emc\ : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \EMC_CTRL_I/MEM_STATE_MACHINE_I/next_state174_out\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \LEN_GEN_32.derived_len_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \LEN_GEN_32.derived_len_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \LEN_GEN_32.derived_len_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \LEN_GEN_32.derived_len_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].MUXCY_i1_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal RDATA_FIFO_I_n_0 : STD_LOGIC;
  signal RDATA_FIFO_I_n_2 : STD_LOGIC;
  signal RDATA_FIFO_I_n_6 : STD_LOGIC;
  signal RDATA_FIFO_I_n_7 : STD_LOGIC;
  signal RDATA_FIFO_I_n_8 : STD_LOGIC;
  signal RDATA_FIFO_I_n_9 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Type_of_xfer : STD_LOGIC;
  signal Type_of_xfer_cmb : STD_LOGIC;
  signal addr_sm_ns_IDLE_cmb_i_10_n_0 : STD_LOGIC;
  signal addr_sm_ns_IDLE_cmb_i_11_n_0 : STD_LOGIC;
  signal addr_sm_ns_IDLE_cmb_i_12_n_0 : STD_LOGIC;
  signal addr_sm_ns_IDLE_cmb_i_15_n_0 : STD_LOGIC;
  signal addr_sm_ns_IDLE_cmb_i_17_n_0 : STD_LOGIC;
  signal addr_sm_ns_IDLE_cmb_i_1_n_0 : STD_LOGIC;
  signal addr_sm_ns_IDLE_cmb_i_2_n_0 : STD_LOGIC;
  signal addr_sm_ns_IDLE_cmb_i_4_n_0 : STD_LOGIC;
  signal addr_sm_ns_IDLE_cmb_i_7_n_0 : STD_LOGIC;
  signal addr_sm_ns_IDLE_cmb_i_9_n_0 : STD_LOGIC;
  signal addr_sm_ns_IDLE_cmb_n_0 : STD_LOGIC;
  signal addr_sm_ps_IDLE_reg : STD_LOGIC;
  signal addr_sm_ps_idle_cmb : STD_LOGIC;
  signal \axi_trans_size_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_trans_size_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal axi_trans_size_reg_int : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axi_trans_size_reg_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \burst_addr_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \burst_addr_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \burst_addr_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \burst_addr_cnt_reg__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \burst_addr_cnt_reg__1\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal burst_data_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \burst_data_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \burst_data_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \burst_data_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal burst_length_cmb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^bus2mem_wrreq\ : STD_LOGIC;
  signal \bus2ip_BE_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal bus2ip_addr_i : STD_LOGIC;
  signal \^bus2ip_addr_temp\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal bus2ip_burst_reg : STD_LOGIC;
  signal bus2ip_burst_reg_i_1_n_0 : STD_LOGIC;
  signal bus2ip_burstlength : STD_LOGIC_VECTOR ( 0 to 7 );
  signal bus2ip_data_reg0 : STD_LOGIC;
  signal \^bus2ip_rnw\ : STD_LOGIC;
  signal bus2ip_wr_req_cmb0 : STD_LOGIC;
  signal bus2ip_wr_req_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus2ip_wrreq_i\ : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal derived_burst_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \derived_burst_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \derived_burst_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal derived_len_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal derived_size_reg : STD_LOGIC;
  signal \derived_size_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \derived_size_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \derived_size_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal emc_addr_ns : STD_LOGIC_VECTOR ( 2 to 2 );
  signal emc_addr_ps : STD_LOGIC_VECTOR ( 2 downto 1 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of emc_addr_ps : signal is "yes";
  signal enable_cs_cmb : STD_LOGIC;
  signal enable_rdce_cmb : STD_LOGIC;
  signal \^ip2bus_addrack\ : STD_LOGIC;
  signal \^last_addr1\ : STD_LOGIC;
  signal last_data_acked : STD_LOGIC;
  signal last_data_acked_i_1_n_0 : STD_LOGIC;
  signal last_data_acked_i_2_n_0 : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  signal p_0_in1_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rd_data_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \rd_data_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \rd_data_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_fifo_data_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rnw_cmb : STD_LOGIC;
  signal rnw_cmb0 : STD_LOGIC;
  signal \^rst_rdce_cmb\ : STD_LOGIC;
  signal \^rw_flag_reg\ : STD_LOGIC;
  signal rw_flag_reg_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_mem_arready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_mem_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_mem_bvalid\ : STD_LOGIC;
  signal s_axi_mem_bvalid_reg_i_1_n_0 : STD_LOGIC;
  signal single_transfer_cmb : STD_LOGIC;
  signal temp_bus2ip_be : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BEN_STORE_GEN[0].BEN_REG_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \BEN_STORE_GEN[1].BEN_REG_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \BEN_STORE_GEN[2].BEN_REG_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \BEN_STORE_GEN[3].BEN_REG_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \FSM_sequential_emc_addr_ps[2]_i_6\ : label is "soft_lutpair66";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_emc_addr_ps_reg[0]\ : label is "idle:000,rd:010,rd_last:001,wr:011,wr_wait:100,wr_last:101,resp:110";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_emc_addr_ps_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_emc_addr_ps_reg[1]\ : label is "idle:000,rd:010,rd_last:001,wr:011,wr_wait:100,wr_last:101,resp:110";
  attribute KEEP of \FSM_sequential_emc_addr_ps_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_emc_addr_ps_reg[2]\ : label is "idle:000,rd:010,rd_last:001,wr:011,wr_wait:100,wr_last:101,resp:110";
  attribute KEEP of \FSM_sequential_emc_addr_ps_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \LEN_GEN_32.derived_len_reg[3]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \PERBIT_GEN[1].MUXCY_i1_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of addr_sm_ns_IDLE_cmb_i_15 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of addr_sm_ns_IDLE_cmb_i_6 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \axi_trans_size_reg[0]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \burst_addr_cnt[5]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \burst_data_cnt[4]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \burst_data_cnt[5]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \burstlength_reg[5]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \burstlength_reg[6]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \burstlength_reg[7]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \bus2ip_BE_reg[1]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \bus2ip_BE_reg[3]_i_3\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \bus2ip_BE_reg[3]_i_4\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \bus2ip_BE_reg[3]_i_5\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \derived_burst_reg[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \derived_size_reg[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \derived_size_reg[1]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of last_data_acked_i_2 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rd_data_count[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \rd_data_count[1]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \rd_data_count[4]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rd_data_count[5]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rd_data_count[7]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of s_axi_mem_bvalid_reg_i_1 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of s_axi_mem_rlast_INST_0 : label is "soft_lutpair70";
begin
  Bus2IP_RdReq_emc <= \^bus2ip_rdreq_emc\;
  E(0) <= \^e\(0);
  Q(1 downto 0) <= \^q\(1 downto 0);
  SR(0) <= \^sr\(0);
  \axi_trans_size_reg_reg[1]_0\(0) <= \^axi_trans_size_reg_reg[1]_0\(0);
  bus2Mem_WrReq <= \^bus2mem_wrreq\;
  bus2ip_addr_temp(29 downto 0) <= \^bus2ip_addr_temp\(29 downto 0);
  bus2ip_rnw <= \^bus2ip_rnw\;
  bus2ip_wrreq_i <= \^bus2ip_wrreq_i\;
  ip2bus_addrack <= \^ip2bus_addrack\;
  last_addr1 <= \^last_addr1\;
  \out\(0) <= \^out\(0);
  rst_rdce_cmb <= \^rst_rdce_cmb\;
  rw_flag_reg <= \^rw_flag_reg\;
  s_axi_mem_arready(0) <= \^s_axi_mem_arready\(0);
  s_axi_mem_bresp(0) <= \^s_axi_mem_bresp\(0);
  s_axi_mem_bvalid <= \^s_axi_mem_bvalid\;
AXI_EMC_ADDRESS_DECODE_INSTANCE_I: entity work.axi_em_ctrl_axi_emc_address_decode
     port map (
      \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC\ => rdce_out_i,
      \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0\ => single_transaction,
      \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ => \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\,
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11]\(5 downto 0) => \^bus2ip_addr_temp\(9 downto 4),
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]\ => \^bus2ip_addr_temp\(2),
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]\ => \^bus2ip_addr_temp\(3),
      Bus2IP_Mem_CS_d1_reg => temp_bus2ip_cs,
      Bus2IP_RdReq_d1_reg => bus2Mem_RdReq,
      Bus2IP_RdReq_emc => \^bus2ip_rdreq_emc\,
      CE => CE,
      CO(0) => CO(0),
      Cycle_cnt_en_int => Cycle_cnt_en_int,
      D(1) => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_12,
      D(0) => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_13,
      E(0) => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21,
      \FSM_sequential_crnt_state_reg[0]\ => \FSM_sequential_crnt_state_reg[0]\,
      \FSM_sequential_crnt_state_reg[0]_0\ => \FSM_sequential_crnt_state_reg[0]_0\,
      \FSM_sequential_crnt_state_reg[0]_1\ => \FSM_sequential_crnt_state_reg[0]_1\,
      \FSM_sequential_crnt_state_reg[2]\ => \FSM_sequential_crnt_state_reg[2]\,
      \FSM_sequential_crnt_state_reg[3]\ => \FSM_sequential_crnt_state_reg[3]\,
      \FSM_sequential_emc_addr_ps_reg[0]\ => \^rst_rdce_cmb\,
      \FSM_sequential_emc_addr_ps_reg[0]_0\ => \FSM_sequential_emc_addr_ps_reg[0]_0\,
      \FSM_sequential_emc_addr_ps_reg[0]_1\ => \FSM_sequential_emc_addr_ps[0]_i_4_n_0\,
      \FSM_sequential_emc_addr_ps_reg[0]_2\(0) => bus2ip_data_reg0,
      \FSM_sequential_emc_addr_ps_reg[1]\ => \FSM_sequential_emc_addr_ps[1]_i_2_n_0\,
      \INFERRED_GEN.cnt_i_reg[0]\(0) => RDATA_FIFO_I_n_0,
      IP2Bus_RdAck0 => IP2Bus_RdAck0,
      IP2Bus_RdAck_reg => IP2Bus_RdAck_reg,
      IP2Bus_RdAck_reg_0 => RDATA_FIFO_I_n_2,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\,
      \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\ => \^ip2bus_addrack\,
      Q(7) => bus2ip_burstlength(0),
      Q(6) => bus2ip_burstlength(1),
      Q(5) => bus2ip_burstlength(2),
      Q(4) => bus2ip_burstlength(3),
      Q(3) => bus2ip_burstlength(4),
      Q(2) => bus2ip_burstlength(5),
      Q(1) => bus2ip_burstlength(6),
      Q(0) => bus2ip_burstlength(7),
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1\,
      \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0]\(0) => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0]\(0),
      \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg\ => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg\,
      \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg\ => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg\,
      S(0) => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_10,
      \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(27 downto 0) => D(27 downto 0),
      \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27]\(0) => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27]\(0),
      S_0 => S_0,
      S_1 => S_1,
      Type_of_xfer => Type_of_xfer,
      Write_req_addr_ack_cmb => Write_req_addr_ack_cmb,
      Write_req_data_ack_cmb => Write_req_data_ack_cmb,
      addr_sm_ps_IDLE_reg_reg => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_14,
      addr_sm_ps_idle_cmb => addr_sm_ps_idle_cmb,
      axi_trans_size_reg_int(0) => axi_trans_size_reg_int(0),
      \axi_trans_size_reg_reg[1]\(0) => \^axi_trans_size_reg_reg[1]_0\(0),
      \burst_addr_cnt_reg[6]\ => \^last_addr1\,
      burst_cnt_i(0 to 7) => burst_cnt_i(0 to 7),
      \burst_data_cnt_reg[6]\ => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_43,
      \burst_data_cnt_reg[7]\(7 downto 0) => burst_data_cnt(7 downto 0),
      \burstlength_reg_reg[3]\(3 downto 0) => burst_length_cmb(3 downto 0),
      \bus2ip_BE_reg_reg[0]\(0) => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_22,
      bus2ip_addr_temp(19 downto 0) => \^bus2ip_addr_temp\(29 downto 10),
      bus2ip_burst_reg => bus2ip_burst_reg,
      bus2ip_burst_reg_reg => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_11,
      bus2ip_burst_reg_reg_0 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_37,
      bus2ip_burst_reg_reg_1 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_42,
      bus2ip_rd_req_reg_reg => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_79,
      bus2ip_reset => bus2ip_reset,
      bus2ip_wr_req_reg_reg => \^bus2ip_wrreq_i\,
      bus2ip_wr_req_reg_reg_0 => bus2ip_wr_req_reg_reg_0,
      bus2ip_wr_req_reg_reg_1 => \^bus2mem_wrreq\,
      bus2ip_wr_req_reg_reg_2 => bus2ip_wr_req_reg_reg_1,
      crnt_state_reg(0) => crnt_state_reg(0),
      cycle_End => cycle_End,
      cycle_cnt(0) => cycle_cnt(0),
      cycle_cnt_en_cmb58_out => cycle_cnt_en_cmb58_out,
      enable_cs_cmb => enable_cs_cmb,
      enable_rdce_cmb => enable_rdce_cmb,
      \in\(0) => rd_fifo_data_in(0),
      ip2bus_rdack => ip2bus_rdack,
      new_page_access => new_page_access,
      next_state1 => next_state1,
      next_state174_out => \EMC_CTRL_I/MEM_STATE_MACHINE_I/next_state174_out\,
      next_state181_out => next_state181_out,
      \out\(2 downto 1) => emc_addr_ps(2 downto 1),
      \out\(0) => \^out\(0),
      p_0_in(0) => p_0_in(0),
      pend_rdreq => pend_rdreq,
      pend_rdreq_reg => pend_rdreq_reg,
      pend_wrreq => pend_wrreq,
      pend_wrreq_reg => pend_wrreq_reg,
      psram_page_mode => psram_page_mode,
      read_req_ack_cmb => read_req_ack_cmb,
      read_req_ack_cmb44_out => read_req_ack_cmb44_out,
      readreq_th_reset => readreq_th_reset,
      reset_fifo => reset_fifo,
      rnw_cmb => rnw_cmb,
      rnw_cmb0 => rnw_cmb0,
      rnw_reg_reg => \^bus2ip_rnw\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_mem_arlen(7 downto 0) => s_axi_mem_arlen(7 downto 0),
      s_axi_mem_awlen(7 downto 0) => s_axi_mem_awlen(7 downto 0),
      s_axi_mem_bready => s_axi_mem_bready,
      s_axi_mem_bresp(0) => \^s_axi_mem_bresp\(0),
      \s_axi_mem_bresp_reg_reg[1]\ => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_78,
      s_axi_mem_bvalid_reg_reg => \^s_axi_mem_bvalid\,
      s_axi_mem_bvalid_reg_reg_0 => addr_sm_ns_IDLE_cmb_i_15_n_0,
      s_axi_mem_wvalid => s_axi_mem_wvalid,
      single_transfer_cmb => single_transfer_cmb,
      transaction_done_i => transaction_done_i,
      trd_end => trd_end,
      twph_end => twph_end,
      type_of_xfer_reg_reg => \PERBIT_GEN[1].MUXCY_i1_i_2_n_0\
    );
AXI_EMC_ADDR_GEN_INSTANCE_I: entity work.axi_em_ctrl_axi_emc_addr_gen
     port map (
      \ADDRESS_STORE_GEN[29].ADDRESS_REG\ => \^bus2ip_addr_temp\(0),
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0) => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0),
      E(0) => RDATA_FIFO_I_n_7,
      \FSM_sequential_emc_addr_ps_reg[0]\ => \^rst_rdce_cmb\,
      \FSM_sequential_emc_addr_ps_reg[2]\ => RDATA_FIFO_I_n_6,
      \FSM_sequential_emc_addr_ps_reg[2]_0\ => RDATA_FIFO_I_n_8,
      \LEN_GEN_32.derived_len_reg_reg[2]\(2 downto 0) => derived_len_reg(2 downto 0),
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\ => \^ip2bus_addrack\,
      Q(1) => \derived_size_reg_reg_n_0_[1]\,
      Q(0) => \derived_size_reg_reg_n_0_[0]\,
      S(0) => S(0),
      \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(3 downto 0) => \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(3 downto 0),
      SR(0) => \^sr\(0),
      \burst_addr_cnt_reg[6]\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_36,
      \burst_addr_cnt_reg[7]\ => \^last_addr1\,
      \burst_addr_cnt_reg[7]_0\(7 downto 1) => \burst_addr_cnt_reg__1\(7 downto 1),
      \burst_addr_cnt_reg[7]_0\(0) => \burst_addr_cnt_reg__0\(0),
      bus2ip_addr_i => bus2ip_addr_i,
      bus2ip_addr_temp(28 downto 0) => \^bus2ip_addr_temp\(29 downto 1),
      \derived_burst_reg_reg[1]\(1 downto 0) => derived_burst_reg(1 downto 0),
      enable_cs_cmb => enable_cs_cmb,
      enable_cs_cmb0 => enable_cs_cmb0,
      enable_cs_cmb126_out => enable_cs_cmb126_out,
      last_data_acked => last_data_acked,
      \out\(2 downto 1) => emc_addr_ps(2 downto 1),
      \out\(0) => \^out\(0),
      \rd_data_count_reg[6]\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_37,
      \rd_data_count_reg[7]\(7 downto 0) => \rd_data_count_reg__0\(7 downto 0),
      rnw_cmb => rnw_cmb,
      rnw_cmb0 => rnw_cmb0,
      rnw_reg_reg => \^bus2ip_rnw\,
      rw_flag_reg_reg => \^rw_flag_reg\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_mem_araddr(31 downto 0) => s_axi_mem_araddr(31 downto 0),
      s_axi_mem_arvalid => s_axi_mem_arvalid,
      s_axi_mem_awaddr(31 downto 0) => s_axi_mem_awaddr(31 downto 0),
      s_axi_mem_awvalid => s_axi_mem_awvalid,
      s_axi_mem_rready => s_axi_mem_rready
    );
\BEN_STORE_GEN[0].BEN_REG_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Type_of_xfer,
      I1 => \^q\(0),
      O => bus2ip_ben_fixed(0)
    );
\BEN_STORE_GEN[1].BEN_REG_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Type_of_xfer,
      I1 => \^q\(1),
      O => bus2ip_ben_fixed(1)
    );
\BEN_STORE_GEN[2].BEN_REG_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Type_of_xfer,
      I1 => temp_bus2ip_be(2),
      O => bus2ip_ben_fixed(2)
    );
\BEN_STORE_GEN[3].BEN_REG_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Type_of_xfer,
      I1 => temp_bus2ip_be(3),
      O => bus2ip_ben_fixed(3)
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => temp_bus2ip_be(3),
      I1 => temp_bus2ip_be(2),
      I2 => Type_of_xfer,
      O => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]\
    );
\FSM_sequential_crnt_state[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^last_addr1\,
      I1 => temp_bus2ip_be(3),
      I2 => \^q\(0),
      I3 => temp_bus2ip_be(2),
      I4 => \^q\(1),
      O => \EMC_CTRL_I/MEM_STATE_MACHINE_I/next_state174_out\
    );
\FSM_sequential_emc_addr_ps[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8BB88"
    )
        port map (
      I0 => p_1_in,
      I1 => \^out\(0),
      I2 => single_transfer_cmb,
      I3 => enable_cs_cmb0,
      I4 => enable_cs_cmb126_out,
      O => \FSM_sequential_emc_addr_ps[0]_i_4_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888B8B8B88"
    )
        port map (
      I0 => addr_sm_ns_IDLE_cmb_i_12_n_0,
      I1 => emc_addr_ps(1),
      I2 => single_transfer_cmb,
      I3 => enable_cs_cmb0,
      I4 => enable_cs_cmb126_out,
      I5 => \^out\(0),
      O => \FSM_sequential_emc_addr_ps[1]_i_2_n_0\
    );
\FSM_sequential_emc_addr_ps[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202020200F000000"
    )
        port map (
      I0 => Write_req_data_ack_cmb,
      I1 => \FSM_sequential_emc_addr_ps[2]_i_4_n_0\,
      I2 => emc_addr_ps(1),
      I3 => single_transfer_cmb,
      I4 => rw_flag_reg_reg_1,
      I5 => \^out\(0),
      O => \FSM_sequential_emc_addr_ps[2]_i_2_n_0\
    );
\FSM_sequential_emc_addr_ps[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F7F7F707F"
    )
        port map (
      I0 => \^s_axi_mem_bvalid\,
      I1 => s_axi_mem_bready,
      I2 => emc_addr_ps(1),
      I3 => s_axi_mem_wvalid,
      I4 => \^last_addr1\,
      I5 => \^out\(0),
      O => \FSM_sequential_emc_addr_ps[2]_i_3_n_0\
    );
\FSM_sequential_emc_addr_ps[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => s_axi_mem_wvalid,
      I1 => \FSM_sequential_emc_addr_ps[2]_i_6_n_0\,
      I2 => \burst_addr_cnt_reg__1\(7),
      I3 => \burst_addr_cnt_reg__1\(5),
      I4 => \burst_addr_cnt_reg__1\(6),
      I5 => \burst_addr_cnt_reg__1\(3),
      O => \FSM_sequential_emc_addr_ps[2]_i_4_n_0\
    );
\FSM_sequential_emc_addr_ps[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \burst_addr_cnt_reg__0\(0),
      I1 => \burst_addr_cnt_reg__1\(1),
      I2 => \burst_addr_cnt_reg__1\(4),
      I3 => \burst_addr_cnt_reg__1\(2),
      O => \FSM_sequential_emc_addr_ps[2]_i_6_n_0\
    );
\FSM_sequential_emc_addr_ps_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_13,
      Q => \^out\(0),
      R => \^sr\(0)
    );
\FSM_sequential_emc_addr_ps_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_12,
      Q => emc_addr_ps(1),
      R => \^sr\(0)
    );
\FSM_sequential_emc_addr_ps_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_emc_addr_ps_reg[2]_i_1_n_0\,
      Q => emc_addr_ps(2),
      R => \^sr\(0)
    );
\FSM_sequential_emc_addr_ps_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_emc_addr_ps[2]_i_2_n_0\,
      I1 => \FSM_sequential_emc_addr_ps[2]_i_3_n_0\,
      O => \FSM_sequential_emc_addr_ps_reg[2]_i_1_n_0\,
      S => emc_addr_ps(2)
    );
\LEN_GEN_32.derived_len_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => burst_length_cmb(0),
      I1 => p_0_in1_in,
      I2 => burst_length_cmb(1),
      I3 => \derived_size_reg[0]_i_1_n_0\,
      I4 => burst_length_cmb(2),
      O => \LEN_GEN_32.derived_len_reg[0]_i_1_n_0\
    );
\LEN_GEN_32.derived_len_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => burst_length_cmb(1),
      I1 => p_0_in1_in,
      I2 => burst_length_cmb(2),
      I3 => \derived_size_reg[0]_i_1_n_0\,
      I4 => burst_length_cmb(3),
      O => \LEN_GEN_32.derived_len_reg[1]_i_1_n_0\
    );
\LEN_GEN_32.derived_len_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8000000B800"
    )
        port map (
      I0 => s_axi_mem_arsize(0),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awsize(0),
      I3 => burst_length_cmb(3),
      I4 => p_0_in1_in,
      I5 => burst_length_cmb(2),
      O => \LEN_GEN_32.derived_len_reg[2]_i_1_n_0\
    );
\LEN_GEN_32.derived_len_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => s_axi_mem_awlen(3),
      I1 => s_axi_mem_arlen(3),
      I2 => s_axi_mem_awsize(1),
      I3 => rnw_cmb,
      I4 => s_axi_mem_arsize(1),
      O => \LEN_GEN_32.derived_len_reg[3]_i_1_n_0\
    );
\LEN_GEN_32.derived_len_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => enable_cs_cmb,
      D => \LEN_GEN_32.derived_len_reg[0]_i_1_n_0\,
      Q => derived_len_reg(0),
      R => '0'
    );
\LEN_GEN_32.derived_len_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => enable_cs_cmb,
      D => \LEN_GEN_32.derived_len_reg[1]_i_1_n_0\,
      Q => derived_len_reg(1),
      R => '0'
    );
\LEN_GEN_32.derived_len_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => enable_cs_cmb,
      D => \LEN_GEN_32.derived_len_reg[2]_i_1_n_0\,
      Q => derived_len_reg(2),
      R => '0'
    );
\LEN_GEN_32.derived_len_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => enable_cs_cmb,
      D => \LEN_GEN_32.derived_len_reg[3]_i_1_n_0\,
      Q => derived_len_reg(3),
      R => '0'
    );
\PERBIT_GEN[1].MUXCY_i1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A800"
    )
        port map (
      I0 => Type_of_xfer,
      I1 => temp_bus2ip_be(2),
      I2 => temp_bus2ip_be(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \PERBIT_GEN[1].MUXCY_i1_i_2_n_0\
    );
\PERBIT_GEN[4].MULT_AND_i1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bus2ip_wrreq_i\,
      I1 => pend_wrreq,
      O => \^bus2mem_wrreq\
    );
RDATA_FIFO_I: entity work.axi_em_ctrl_srl_fifo_rbu_f
     port map (
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]\ => RDATA_FIFO_I_n_6,
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]\ => \^rst_rdce_cmb\,
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]\ => RDATA_FIFO_I_n_8,
      Bus2IP_RdReq_d1_reg => RDATA_FIFO_I_n_2,
      E(0) => RDATA_FIFO_I_n_7,
      \LEN_GEN_32.derived_len_reg_reg[3]\(0) => derived_len_reg(3),
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\ => \^ip2bus_addrack\,
      Q(0) => RDATA_FIFO_I_n_0,
      S(0) => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_10,
      \burst_addr_cnt_reg[6]\ => \^last_addr1\,
      \burst_data_cnt_reg[3]\ => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_43,
      \burst_data_cnt_reg[7]\ => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_11,
      \burst_data_cnt_reg[7]_0\(1 downto 0) => burst_data_cnt(7 downto 6),
      bus2ip_addr_i => bus2ip_addr_i,
      bus2ip_reset => bus2ip_reset,
      \derived_burst_reg_reg[1]\(1 downto 0) => derived_burst_reg(1 downto 0),
      enable_cs_cmb => enable_cs_cmb,
      enable_cs_cmb126_out => enable_cs_cmb126_out,
      enable_rdce_cmb => enable_rdce_cmb,
      \in\(0) => \IP2Bus_Data_reg[0]\(7),
      \in\(1) => \IP2Bus_Data_reg[0]\(6),
      \in\(2) => \IP2Bus_Data_reg[0]\(5),
      \in\(3) => \IP2Bus_Data_reg[0]\(4),
      \in\(4) => \IP2Bus_Data_reg[0]\(3),
      \in\(5) => \IP2Bus_Data_reg[0]\(2),
      \in\(6) => \IP2Bus_Data_reg[0]\(1),
      \in\(7) => \IP2Bus_Data_reg[0]\(0),
      \in\(8) => \IP2Bus_Data_reg[0]\(15),
      \in\(9) => \IP2Bus_Data_reg[0]\(14),
      \in\(10) => \IP2Bus_Data_reg[0]\(13),
      \in\(11) => \IP2Bus_Data_reg[0]\(12),
      \in\(12) => \IP2Bus_Data_reg[0]\(11),
      \in\(13) => \IP2Bus_Data_reg[0]\(10),
      \in\(14) => \IP2Bus_Data_reg[0]\(9),
      \in\(15) => \IP2Bus_Data_reg[0]\(8),
      \in\(16) => \IP2Bus_Data_reg[0]\(23),
      \in\(17) => \IP2Bus_Data_reg[0]\(22),
      \in\(18) => \IP2Bus_Data_reg[0]\(21),
      \in\(19) => \IP2Bus_Data_reg[0]\(20),
      \in\(20) => \IP2Bus_Data_reg[0]\(19),
      \in\(21) => \IP2Bus_Data_reg[0]\(18),
      \in\(22) => \IP2Bus_Data_reg[0]\(17),
      \in\(23) => \IP2Bus_Data_reg[0]\(16),
      \in\(24) => \IP2Bus_Data_reg[0]\(31),
      \in\(25) => \IP2Bus_Data_reg[0]\(30),
      \in\(26) => \IP2Bus_Data_reg[0]\(29),
      \in\(27) => \IP2Bus_Data_reg[0]\(28),
      \in\(28) => \IP2Bus_Data_reg[0]\(27),
      \in\(29) => \IP2Bus_Data_reg[0]\(26),
      \in\(30) => \IP2Bus_Data_reg[0]\(25),
      \in\(31) => \IP2Bus_Data_reg[0]\(24),
      \in\(32) => rd_fifo_data_in(0),
      ip2bus_rdack => ip2bus_rdack,
      \out\(2 downto 1) => emc_addr_ps(2 downto 1),
      \out\(0) => \^out\(0),
      \rd_data_count_reg[7]\(0) => RDATA_FIFO_I_n_9,
      rd_fifo_wr_en => rd_fifo_wr_en,
      rnw_reg_reg => \^bus2ip_rnw\,
      s_axi_aclk => s_axi_aclk,
      s_axi_mem_rdata(31 downto 0) => s_axi_mem_rdata(31 downto 0),
      s_axi_mem_rready => s_axi_mem_rready,
      s_axi_mem_rresp(0) => s_axi_mem_rresp(0),
      s_axi_mem_rvalid => s_axi_mem_rvalid,
      single_transfer_cmb => single_transfer_cmb
    );
addr_sm_ns_IDLE_cmb: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000305050003"
    )
        port map (
      I0 => addr_sm_ns_IDLE_cmb_i_1_n_0,
      I1 => addr_sm_ns_IDLE_cmb_i_2_n_0,
      I2 => emc_addr_ns(2),
      I3 => addr_sm_ns_IDLE_cmb_i_4_n_0,
      I4 => emc_addr_ps(2),
      I5 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_14,
      O => addr_sm_ns_IDLE_cmb_n_0
    );
addr_sm_ns_IDLE_cmb_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7F7F70"
    )
        port map (
      I0 => \^s_axi_mem_bvalid\,
      I1 => s_axi_mem_bready,
      I2 => emc_addr_ps(1),
      I3 => s_axi_mem_wvalid,
      I4 => \^out\(0),
      O => addr_sm_ns_IDLE_cmb_i_1_n_0
    );
addr_sm_ns_IDLE_cmb_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \FSM_sequential_emc_addr_ps[2]_i_4_n_0\,
      I1 => Write_req_data_ack_cmb,
      O => addr_sm_ns_IDLE_cmb_i_10_n_0
    );
addr_sm_ns_IDLE_cmb_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => burst_length_cmb(1),
      I1 => burst_length_cmb(3),
      I2 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_42,
      I3 => addr_sm_ns_IDLE_cmb_i_17_n_0,
      I4 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_37,
      I5 => enable_cs_cmb0,
      O => addr_sm_ns_IDLE_cmb_i_11_n_0
    );
addr_sm_ns_IDLE_cmb_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFB0"
    )
        port map (
      I0 => \FSM_sequential_emc_addr_ps[2]_i_4_n_0\,
      I1 => Write_req_data_ack_cmb,
      I2 => \^out\(0),
      I3 => p_1_in,
      O => addr_sm_ns_IDLE_cmb_i_12_n_0
    );
addr_sm_ns_IDLE_cmb_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^s_axi_mem_bvalid\,
      I1 => s_axi_mem_bready,
      O => addr_sm_ns_IDLE_cmb_i_15_n_0
    );
addr_sm_ns_IDLE_cmb_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => s_axi_mem_awlen(0),
      I1 => s_axi_mem_arlen(0),
      I2 => s_axi_mem_awlen(2),
      I3 => rnw_cmb,
      I4 => s_axi_mem_arlen(2),
      O => addr_sm_ns_IDLE_cmb_i_17_n_0
    );
addr_sm_ns_IDLE_cmb_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \FSM_sequential_emc_addr_ps_reg[0]_0\,
      I1 => emc_addr_ps(1),
      I2 => p_1_in,
      I3 => \^out\(0),
      I4 => addr_sm_ns_IDLE_cmb_i_7_n_0,
      I5 => enable_cs_cmb0,
      O => addr_sm_ns_IDLE_cmb_i_2_n_0
    );
addr_sm_ns_IDLE_cmb_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B888B8888BB8888"
    )
        port map (
      I0 => addr_sm_ns_IDLE_cmb_i_9_n_0,
      I1 => emc_addr_ps(2),
      I2 => addr_sm_ns_IDLE_cmb_i_10_n_0,
      I3 => emc_addr_ps(1),
      I4 => addr_sm_ns_IDLE_cmb_i_11_n_0,
      I5 => \^out\(0),
      O => emc_addr_ns(2)
    );
addr_sm_ns_IDLE_cmb_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888B8B8B88"
    )
        port map (
      I0 => addr_sm_ns_IDLE_cmb_i_12_n_0,
      I1 => emc_addr_ps(1),
      I2 => single_transfer_cmb,
      I3 => enable_cs_cmb126_out,
      I4 => enable_cs_cmb0,
      I5 => \^out\(0),
      O => addr_sm_ns_IDLE_cmb_i_4_n_0
    );
addr_sm_ns_IDLE_cmb_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
        port map (
      I0 => last_data_acked,
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_37,
      I2 => \rd_data_count_reg__0\(6),
      I3 => \rd_data_count_reg__0\(7),
      I4 => s_axi_mem_rready,
      O => p_1_in
    );
addr_sm_ns_IDLE_cmb_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => burst_length_cmb(1),
      I1 => burst_length_cmb(3),
      I2 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_42,
      I3 => addr_sm_ns_IDLE_cmb_i_17_n_0,
      I4 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_37,
      I5 => enable_cs_cmb126_out,
      O => addr_sm_ns_IDLE_cmb_i_7_n_0
    );
addr_sm_ns_IDLE_cmb_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F707F7F7F7F"
    )
        port map (
      I0 => \^s_axi_mem_bvalid\,
      I1 => s_axi_mem_bready,
      I2 => emc_addr_ps(1),
      I3 => \^out\(0),
      I4 => \^last_addr1\,
      I5 => s_axi_mem_wvalid,
      O => addr_sm_ns_IDLE_cmb_i_9_n_0
    );
addr_sm_ps_IDLE_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_sm_ns_IDLE_cmb_n_0,
      Q => addr_sm_ps_IDLE_reg,
      S => \^sr\(0)
    );
\axi_trans_size_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_mem_arsize(0),
      I1 => enable_cs_cmb,
      I2 => rnw_cmb,
      I3 => axi_trans_size_reg_int(0),
      O => \axi_trans_size_reg[0]_i_1_n_0\
    );
\axi_trans_size_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_mem_arsize(1),
      I1 => enable_cs_cmb,
      I2 => rnw_cmb,
      I3 => \^axi_trans_size_reg_reg[1]_0\(0),
      O => \axi_trans_size_reg[1]_i_1_n_0\
    );
\axi_trans_size_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_trans_size_reg[0]_i_1_n_0\,
      Q => axi_trans_size_reg_int(0),
      R => \^sr\(0)
    );
\axi_trans_size_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_trans_size_reg[1]_i_1_n_0\,
      Q => \^axi_trans_size_reg_reg[1]_0\(0),
      R => \^sr\(0)
    );
\burst_addr_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => s_axi_mem_arlen(0),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(0),
      I3 => enable_cs_cmb,
      I4 => \burst_addr_cnt_reg__0\(0),
      O => \p_0_in__0__0\(0)
    );
\burst_addr_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi_mem_arlen(1),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(1),
      I3 => enable_cs_cmb,
      I4 => \burst_addr_cnt_reg__0\(0),
      I5 => \burst_addr_cnt_reg__1\(1),
      O => \p_0_in__0__0\(1)
    );
\burst_addr_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => burst_length_cmb(2),
      I1 => enable_cs_cmb,
      I2 => \burst_addr_cnt_reg__0\(0),
      I3 => \burst_addr_cnt_reg__1\(1),
      I4 => \burst_addr_cnt_reg__1\(2),
      O => \p_0_in__0__0\(2)
    );
\burst_addr_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => burst_length_cmb(3),
      I1 => enable_cs_cmb,
      I2 => \burst_addr_cnt_reg__1\(2),
      I3 => \burst_addr_cnt_reg__1\(1),
      I4 => \burst_addr_cnt_reg__0\(0),
      I5 => \burst_addr_cnt_reg__1\(3),
      O => \p_0_in__0__0\(3)
    );
\burst_addr_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi_mem_arlen(4),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(4),
      I3 => enable_cs_cmb,
      I4 => \burst_addr_cnt_reg__1\(4),
      I5 => \burst_addr_cnt[4]_i_2_n_0\,
      O => \p_0_in__0__0\(4)
    );
\burst_addr_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \burst_addr_cnt_reg__1\(3),
      I1 => \burst_addr_cnt_reg__0\(0),
      I2 => \burst_addr_cnt_reg__1\(1),
      I3 => \burst_addr_cnt_reg__1\(2),
      O => \burst_addr_cnt[4]_i_2_n_0\
    );
\burst_addr_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi_mem_arlen(5),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(5),
      I3 => enable_cs_cmb,
      I4 => \burst_addr_cnt[5]_i_2_n_0\,
      I5 => \burst_addr_cnt_reg__1\(5),
      O => \p_0_in__0__0\(5)
    );
\burst_addr_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \burst_addr_cnt_reg__1\(4),
      I1 => \burst_addr_cnt_reg__1\(2),
      I2 => \burst_addr_cnt_reg__1\(1),
      I3 => \burst_addr_cnt_reg__0\(0),
      I4 => \burst_addr_cnt_reg__1\(3),
      O => \burst_addr_cnt[5]_i_2_n_0\
    );
\burst_addr_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi_mem_arlen(6),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(6),
      I3 => enable_cs_cmb,
      I4 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_36,
      I5 => \burst_addr_cnt_reg__1\(6),
      O => \p_0_in__0__0\(6)
    );
\burst_addr_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => s_axi_mem_arlen(7),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(7),
      I3 => enable_cs_cmb,
      I4 => \burst_addr_cnt_reg__1\(7),
      I5 => \burst_addr_cnt[7]_i_3_n_0\,
      O => \p_0_in__0__0\(7)
    );
\burst_addr_cnt[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \burst_addr_cnt_reg__1\(6),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_36,
      O => \burst_addr_cnt[7]_i_3_n_0\
    );
\burst_addr_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21,
      D => \p_0_in__0__0\(0),
      Q => \burst_addr_cnt_reg__0\(0),
      R => '0'
    );
\burst_addr_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21,
      D => \p_0_in__0__0\(1),
      Q => \burst_addr_cnt_reg__1\(1),
      R => '0'
    );
\burst_addr_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21,
      D => \p_0_in__0__0\(2),
      Q => \burst_addr_cnt_reg__1\(2),
      R => '0'
    );
\burst_addr_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21,
      D => \p_0_in__0__0\(3),
      Q => \burst_addr_cnt_reg__1\(3),
      R => '0'
    );
\burst_addr_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21,
      D => \p_0_in__0__0\(4),
      Q => \burst_addr_cnt_reg__1\(4),
      R => '0'
    );
\burst_addr_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21,
      D => \p_0_in__0__0\(5),
      Q => \burst_addr_cnt_reg__1\(5),
      R => '0'
    );
\burst_addr_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21,
      D => \p_0_in__0__0\(6),
      Q => \burst_addr_cnt_reg__1\(6),
      R => '0'
    );
\burst_addr_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_21,
      D => \p_0_in__0__0\(7),
      Q => \burst_addr_cnt_reg__1\(7),
      R => '0'
    );
\burst_data_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => s_axi_mem_arlen(0),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(0),
      I3 => enable_cs_cmb,
      I4 => burst_data_cnt(0),
      O => p_2_in(0)
    );
\burst_data_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi_mem_arlen(1),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(1),
      I3 => enable_cs_cmb,
      I4 => burst_data_cnt(1),
      I5 => burst_data_cnt(0),
      O => p_2_in(1)
    );
\burst_data_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => burst_length_cmb(2),
      I1 => enable_cs_cmb,
      I2 => burst_data_cnt(2),
      I3 => burst_data_cnt(0),
      I4 => burst_data_cnt(1),
      O => p_2_in(2)
    );
\burst_data_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => burst_length_cmb(3),
      I1 => enable_cs_cmb,
      I2 => burst_data_cnt(3),
      I3 => burst_data_cnt(2),
      I4 => burst_data_cnt(1),
      I5 => burst_data_cnt(0),
      O => p_2_in(3)
    );
\burst_data_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi_mem_arlen(4),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(4),
      I3 => enable_cs_cmb,
      I4 => burst_data_cnt(4),
      I5 => \burst_data_cnt[4]_i_2_n_0\,
      O => p_2_in(4)
    );
\burst_data_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => burst_data_cnt(3),
      I1 => burst_data_cnt(2),
      I2 => burst_data_cnt(1),
      I3 => burst_data_cnt(0),
      O => \burst_data_cnt[4]_i_2_n_0\
    );
\burst_data_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => s_axi_mem_arlen(5),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(5),
      I3 => enable_cs_cmb,
      I4 => burst_data_cnt(5),
      I5 => \burst_data_cnt[5]_i_2_n_0\,
      O => p_2_in(5)
    );
\burst_data_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => burst_data_cnt(4),
      I1 => burst_data_cnt(0),
      I2 => burst_data_cnt(1),
      I3 => burst_data_cnt(2),
      I4 => burst_data_cnt(3),
      O => \burst_data_cnt[5]_i_2_n_0\
    );
\burst_data_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => s_axi_mem_arlen(6),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(6),
      I3 => enable_cs_cmb,
      I4 => burst_data_cnt(6),
      I5 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_43,
      O => p_2_in(6)
    );
\burst_data_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_11,
      I1 => ip2bus_rdack,
      I2 => enable_cs_cmb,
      O => \burst_data_cnt[7]_i_1_n_0\
    );
\burst_data_cnt[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88BB8B8"
    )
        port map (
      I0 => data(7),
      I1 => enable_cs_cmb,
      I2 => burst_data_cnt(7),
      I3 => burst_data_cnt(6),
      I4 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_43,
      O => p_2_in(7)
    );
\burst_data_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(0),
      Q => burst_data_cnt(0),
      R => \^sr\(0)
    );
\burst_data_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(1),
      Q => burst_data_cnt(1),
      R => \^sr\(0)
    );
\burst_data_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(2),
      Q => burst_data_cnt(2),
      R => \^sr\(0)
    );
\burst_data_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(3),
      Q => burst_data_cnt(3),
      R => \^sr\(0)
    );
\burst_data_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(4),
      Q => burst_data_cnt(4),
      R => \^sr\(0)
    );
\burst_data_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(5),
      Q => burst_data_cnt(5),
      R => \^sr\(0)
    );
\burst_data_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(6),
      Q => burst_data_cnt(6),
      R => \^sr\(0)
    );
\burst_data_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(7),
      Q => burst_data_cnt(7),
      R => \^sr\(0)
    );
\burstlength_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_arlen(4),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(4),
      O => data(4)
    );
\burstlength_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_arlen(5),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(5),
      O => data(5)
    );
\burstlength_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_arlen(6),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(6),
      O => data(6)
    );
\burstlength_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_arlen(7),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awlen(7),
      O => data(7)
    );
\burstlength_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => enable_cs_cmb,
      D => burst_length_cmb(0),
      Q => bus2ip_burstlength(7),
      R => \^sr\(0)
    );
\burstlength_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => enable_cs_cmb,
      D => burst_length_cmb(1),
      Q => bus2ip_burstlength(6),
      R => \^sr\(0)
    );
\burstlength_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => enable_cs_cmb,
      D => burst_length_cmb(2),
      Q => bus2ip_burstlength(5),
      R => \^sr\(0)
    );
\burstlength_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => enable_cs_cmb,
      D => burst_length_cmb(3),
      Q => bus2ip_burstlength(4),
      R => \^sr\(0)
    );
\burstlength_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => enable_cs_cmb,
      D => data(4),
      Q => bus2ip_burstlength(3),
      R => \^sr\(0)
    );
\burstlength_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => enable_cs_cmb,
      D => data(5),
      Q => bus2ip_burstlength(2),
      R => \^sr\(0)
    );
\burstlength_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => enable_cs_cmb,
      D => data(6),
      Q => bus2ip_burstlength(1),
      R => \^sr\(0)
    );
\burstlength_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => enable_cs_cmb,
      D => data(7),
      Q => bus2ip_burstlength(0),
      R => \^sr\(0)
    );
\bus2ip_BE_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB8B8B888B"
    )
        port map (
      I0 => s_axi_mem_wstrb(0),
      I1 => \bus2ip_BE_reg[3]_i_3_n_0\,
      I2 => \bus2ip_BE_reg[1]_i_2_n_0\,
      I3 => s_axi_mem_araddr(0),
      I4 => \bus2ip_BE_reg[3]_i_5_n_0\,
      I5 => \bus2ip_BE_reg[0]_i_2_n_0\,
      O => \bus2ip_BE_reg[0]_i_1_n_0\
    );
\bus2ip_BE_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55554540"
    )
        port map (
      I0 => enable_cs_cmb,
      I1 => temp_bus2ip_be(2),
      I2 => \derived_size_reg_reg_n_0_[0]\,
      I3 => temp_bus2ip_be(3),
      I4 => \derived_size_reg_reg_n_0_[1]\,
      O => \bus2ip_BE_reg[0]_i_2_n_0\
    );
\bus2ip_BE_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB8B8B8B88"
    )
        port map (
      I0 => s_axi_mem_wstrb(1),
      I1 => \bus2ip_BE_reg[3]_i_3_n_0\,
      I2 => \bus2ip_BE_reg[1]_i_2_n_0\,
      I3 => s_axi_mem_araddr(0),
      I4 => \bus2ip_BE_reg[3]_i_5_n_0\,
      I5 => \bus2ip_BE_reg[1]_i_3_n_0\,
      O => \bus2ip_BE_reg[1]_i_1_n_0\
    );
\bus2ip_BE_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4700FFFF"
    )
        port map (
      I0 => s_axi_mem_arsize(1),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awsize(1),
      I3 => s_axi_mem_araddr(1),
      I4 => enable_cs_cmb,
      O => \bus2ip_BE_reg[1]_i_2_n_0\
    );
\bus2ip_BE_reg[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55554540"
    )
        port map (
      I0 => enable_cs_cmb,
      I1 => temp_bus2ip_be(3),
      I2 => \derived_size_reg_reg_n_0_[0]\,
      I3 => \^q\(0),
      I4 => \derived_size_reg_reg_n_0_[1]\,
      O => \bus2ip_BE_reg[1]_i_3_n_0\
    );
\bus2ip_BE_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBB8B8888"
    )
        port map (
      I0 => s_axi_mem_wstrb(2),
      I1 => \bus2ip_BE_reg[3]_i_3_n_0\,
      I2 => s_axi_mem_araddr(0),
      I3 => \bus2ip_BE_reg[3]_i_5_n_0\,
      I4 => \bus2ip_BE_reg[3]_i_4_n_0\,
      I5 => \bus2ip_BE_reg[2]_i_2_n_0\,
      O => \bus2ip_BE_reg[2]_i_1_n_0\
    );
\bus2ip_BE_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55554540"
    )
        port map (
      I0 => enable_cs_cmb,
      I1 => \^q\(0),
      I2 => \derived_size_reg_reg_n_0_[0]\,
      I3 => \^q\(1),
      I4 => \derived_size_reg_reg_n_0_[1]\,
      O => \bus2ip_BE_reg[2]_i_2_n_0\
    );
\bus2ip_BE_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8B888"
    )
        port map (
      I0 => s_axi_mem_wstrb(3),
      I1 => \bus2ip_BE_reg[3]_i_3_n_0\,
      I2 => \bus2ip_BE_reg[3]_i_4_n_0\,
      I3 => s_axi_mem_araddr(0),
      I4 => \bus2ip_BE_reg[3]_i_5_n_0\,
      I5 => \bus2ip_BE_reg[3]_i_6_n_0\,
      O => \bus2ip_BE_reg[3]_i_2_n_0\
    );
\bus2ip_BE_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bus2ip_data_reg0,
      I1 => rnw_cmb,
      O => \bus2ip_BE_reg[3]_i_3_n_0\
    );
\bus2ip_BE_reg[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8A80"
    )
        port map (
      I0 => enable_cs_cmb,
      I1 => s_axi_mem_arsize(1),
      I2 => rnw_cmb,
      I3 => s_axi_mem_awsize(1),
      I4 => s_axi_mem_araddr(1),
      O => \bus2ip_BE_reg[3]_i_4_n_0\
    );
\bus2ip_BE_reg[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi_mem_awsize(0),
      I1 => s_axi_mem_arsize(0),
      I2 => s_axi_mem_awsize(1),
      I3 => rnw_cmb,
      I4 => s_axi_mem_arsize(1),
      O => \bus2ip_BE_reg[3]_i_5_n_0\
    );
\bus2ip_BE_reg[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55554540"
    )
        port map (
      I0 => enable_cs_cmb,
      I1 => \^q\(1),
      I2 => \derived_size_reg_reg_n_0_[0]\,
      I3 => temp_bus2ip_be(2),
      I4 => \derived_size_reg_reg_n_0_[1]\,
      O => \bus2ip_BE_reg[3]_i_6_n_0\
    );
\bus2ip_BE_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_22,
      D => \bus2ip_BE_reg[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \^sr\(0)
    );
\bus2ip_BE_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_22,
      D => \bus2ip_BE_reg[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \^sr\(0)
    );
\bus2ip_BE_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_22,
      D => \bus2ip_BE_reg[2]_i_1_n_0\,
      Q => temp_bus2ip_be(2),
      R => \^sr\(0)
    );
\bus2ip_BE_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_22,
      D => \bus2ip_BE_reg[3]_i_2_n_0\,
      Q => temp_bus2ip_be(3),
      R => \^sr\(0)
    );
bus2ip_burst_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3A300000"
    )
        port map (
      I0 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_11,
      I1 => single_transfer_cmb,
      I2 => enable_cs_cmb,
      I3 => bus2ip_burst_reg,
      I4 => s_axi_aresetn,
      O => bus2ip_burst_reg_i_1_n_0
    );
bus2ip_burst_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_burst_reg_i_1_n_0,
      Q => bus2ip_burst_reg,
      R => '0'
    );
\bus2ip_data_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0022002288020002"
    )
        port map (
      I0 => s_axi_mem_wvalid,
      I1 => \^out\(0),
      I2 => rw_flag_reg_reg_0,
      I3 => emc_addr_ps(1),
      I4 => Write_req_data_ack_cmb,
      I5 => emc_addr_ps(2),
      O => bus2ip_data_reg0
    );
\bus2ip_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(0),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(0),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(10),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(10),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(11),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(11),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(12),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(12),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(13),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(13),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(14),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(14),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(15),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(15),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(16),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(16),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(17),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(17),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(18),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(18),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(19),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(19),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(1),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(1),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(20),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(20),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(21),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(21),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(22),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(22),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(23),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(23),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(24),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(24),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(25),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(25),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(26),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(26),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(27),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(27),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(28),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(28),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(29),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(29),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(2),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(2),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(30),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(30),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(31),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(31),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(3),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(3),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(4),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(4),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(5),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(5),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(6),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(6),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(7),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(7),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(8),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(8),
      R => \^sr\(0)
    );
\bus2ip_data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(9),
      Q => \DATA_STORE_GEN[24].WRDATA_REG\(9),
      R => \^sr\(0)
    );
bus2ip_rd_req_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_79,
      Q => \^bus2ip_rdreq_emc\,
      R => \^sr\(0)
    );
bus2ip_wr_req_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5FFFFC0F5000FC"
    )
        port map (
      I0 => Write_req_data_ack_cmb,
      I1 => bus2ip_wr_req_cmb0,
      I2 => emc_addr_ps(2),
      I3 => emc_addr_ps(1),
      I4 => \^out\(0),
      I5 => \^bus2ip_wrreq_i\,
      O => bus2ip_wr_req_reg_i_1_n_0
    );
bus2ip_wr_req_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B000"
    )
        port map (
      I0 => \^rw_flag_reg\,
      I1 => s_axi_mem_arvalid,
      I2 => s_axi_mem_awvalid,
      I3 => s_axi_mem_wvalid,
      O => bus2ip_wr_req_cmb0
    );
bus2ip_wr_req_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_wr_req_reg_i_1_n_0,
      Q => \^bus2ip_wrreq_i\,
      R => \^sr\(0)
    );
\derived_burst_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_arburst(0),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awburst(0),
      O => \derived_burst_reg[0]_i_1_n_0\
    );
\derived_burst_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_arburst(1),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awburst(1),
      O => \derived_burst_reg[1]_i_1_n_0\
    );
\derived_burst_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => derived_size_reg,
      D => \derived_burst_reg[0]_i_1_n_0\,
      Q => derived_burst_reg(0),
      R => '0'
    );
\derived_burst_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => derived_size_reg,
      D => \derived_burst_reg[1]_i_1_n_0\,
      Q => derived_burst_reg(1),
      R => '0'
    );
\derived_size_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_arsize(0),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awsize(0),
      O => \derived_size_reg[0]_i_1_n_0\
    );
\derived_size_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable_cs_cmb,
      I1 => s_axi_aresetn,
      O => derived_size_reg
    );
\derived_size_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_arsize(1),
      I1 => rnw_cmb,
      I2 => s_axi_mem_awsize(1),
      O => p_0_in1_in
    );
\derived_size_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => derived_size_reg,
      D => \derived_size_reg[0]_i_1_n_0\,
      Q => \derived_size_reg_reg_n_0_[0]\,
      R => '0'
    );
\derived_size_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => derived_size_reg,
      D => p_0_in1_in,
      Q => \derived_size_reg_reg_n_0_[1]\,
      R => '0'
    );
last_data_acked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AEEE"
    )
        port map (
      I0 => last_data_acked,
      I1 => ip2bus_rdack,
      I2 => last_data_acked_i_2_n_0,
      I3 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_11,
      I4 => addr_sm_ps_idle_cmb,
      O => last_data_acked_i_1_n_0
    );
last_data_acked_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \rd_data_count_reg__0\(7),
      I1 => \rd_data_count_reg__0\(6),
      I2 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_37,
      O => last_data_acked_i_2_n_0
    );
last_data_acked_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_data_acked_i_1_n_0,
      Q => last_data_acked,
      R => '0'
    );
\rd_data_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => s_axi_mem_arlen(0),
      I1 => enable_cs_cmb,
      I2 => \rd_data_count_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\rd_data_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => s_axi_mem_arlen(1),
      I1 => enable_cs_cmb,
      I2 => \rd_data_count_reg__0\(0),
      I3 => \rd_data_count_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\rd_data_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => s_axi_mem_arlen(2),
      I1 => enable_cs_cmb,
      I2 => \rd_data_count_reg__0\(2),
      I3 => \rd_data_count_reg__0\(1),
      I4 => \rd_data_count_reg__0\(0),
      O => \p_0_in__0\(2)
    );
\rd_data_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => s_axi_mem_arlen(3),
      I1 => enable_cs_cmb,
      I2 => \rd_data_count_reg__0\(3),
      I3 => \rd_data_count_reg__0\(2),
      I4 => \rd_data_count_reg__0\(0),
      I5 => \rd_data_count_reg__0\(1),
      O => \p_0_in__0\(3)
    );
\rd_data_count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => s_axi_mem_arlen(4),
      I1 => enable_cs_cmb,
      I2 => \rd_data_count_reg__0\(4),
      I3 => \rd_data_count[4]_i_2_n_0\,
      O => \p_0_in__0\(4)
    );
\rd_data_count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rd_data_count_reg__0\(3),
      I1 => \rd_data_count_reg__0\(2),
      I2 => \rd_data_count_reg__0\(0),
      I3 => \rd_data_count_reg__0\(1),
      O => \rd_data_count[4]_i_2_n_0\
    );
\rd_data_count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => s_axi_mem_arlen(5),
      I1 => enable_cs_cmb,
      I2 => \rd_data_count_reg__0\(5),
      I3 => \rd_data_count[5]_i_2_n_0\,
      O => \p_0_in__0\(5)
    );
\rd_data_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \rd_data_count_reg__0\(4),
      I1 => \rd_data_count_reg__0\(1),
      I2 => \rd_data_count_reg__0\(0),
      I3 => \rd_data_count_reg__0\(2),
      I4 => \rd_data_count_reg__0\(3),
      O => \rd_data_count[5]_i_2_n_0\
    );
\rd_data_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => s_axi_mem_arlen(6),
      I1 => enable_cs_cmb,
      I2 => \rd_data_count_reg__0\(6),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_37,
      O => \p_0_in__0\(6)
    );
\rd_data_count[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88BB8B8"
    )
        port map (
      I0 => s_axi_mem_arlen(7),
      I1 => enable_cs_cmb,
      I2 => \rd_data_count_reg__0\(7),
      I3 => \rd_data_count_reg__0\(6),
      I4 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_37,
      O => \p_0_in__0\(7)
    );
\rd_data_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_9,
      D => \p_0_in__0\(0),
      Q => \rd_data_count_reg__0\(0),
      R => \^sr\(0)
    );
\rd_data_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_9,
      D => \p_0_in__0\(1),
      Q => \rd_data_count_reg__0\(1),
      R => \^sr\(0)
    );
\rd_data_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_9,
      D => \p_0_in__0\(2),
      Q => \rd_data_count_reg__0\(2),
      R => \^sr\(0)
    );
\rd_data_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_9,
      D => \p_0_in__0\(3),
      Q => \rd_data_count_reg__0\(3),
      R => \^sr\(0)
    );
\rd_data_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_9,
      D => \p_0_in__0\(4),
      Q => \rd_data_count_reg__0\(4),
      R => \^sr\(0)
    );
\rd_data_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_9,
      D => \p_0_in__0\(5),
      Q => \rd_data_count_reg__0\(5),
      R => \^sr\(0)
    );
\rd_data_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_9,
      D => \p_0_in__0\(6),
      Q => \rd_data_count_reg__0\(6),
      R => \^sr\(0)
    );
\rd_data_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_9,
      D => \p_0_in__0\(7),
      Q => \rd_data_count_reg__0\(7),
      R => \^sr\(0)
    );
rnw_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rnw_cmb,
      Q => \^bus2ip_rnw\,
      R => \^sr\(0)
    );
rw_flag_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3F00A0"
    )
        port map (
      I0 => s_axi_mem_arvalid,
      I1 => s_axi_mem_awvalid,
      I2 => addr_sm_ps_IDLE_reg,
      I3 => \FSM_sequential_crnt_state_reg[0]_2\,
      I4 => \^rw_flag_reg\,
      O => rw_flag_reg_i_1_n_0
    );
rw_flag_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rw_flag_reg_i_1_n_0,
      Q => \^rw_flag_reg\,
      R => \^sr\(0)
    );
s_axi_mem_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444000000000000"
    )
        port map (
      I0 => \FSM_sequential_crnt_state_reg[0]_2\,
      I1 => s_axi_mem_arvalid,
      I2 => \^rw_flag_reg\,
      I3 => s_axi_mem_awvalid,
      I4 => s_axi_aresetn,
      I5 => addr_sm_ps_idle_cmb,
      O => \^s_axi_mem_arready\(0)
    );
s_axi_mem_arready_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => emc_addr_ps(1),
      I1 => \^out\(0),
      I2 => emc_addr_ps(2),
      O => addr_sm_ps_idle_cmb
    );
s_axi_mem_awready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => rw_flag_reg_reg_0,
      I1 => emc_addr_ps(1),
      I2 => \^out\(0),
      I3 => emc_addr_ps(2),
      I4 => s_axi_aresetn,
      O => \^e\(0)
    );
\s_axi_mem_bid_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => s_axi_mem_awid(0),
      Q => s_axi_mem_bid(0),
      R => \^sr\(0)
    );
\s_axi_mem_bid_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => s_axi_mem_awid(1),
      Q => s_axi_mem_bid(1),
      R => \^sr\(0)
    );
\s_axi_mem_bid_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => s_axi_mem_awid(2),
      Q => s_axi_mem_bid(2),
      R => \^sr\(0)
    );
\s_axi_mem_bid_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => s_axi_mem_awid(3),
      Q => s_axi_mem_bid(3),
      R => \^sr\(0)
    );
\s_axi_mem_bresp_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_78,
      Q => \^s_axi_mem_bresp\(0),
      R => '0'
    );
s_axi_mem_bvalid_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C0EA"
    )
        port map (
      I0 => \^s_axi_mem_bvalid\,
      I1 => \^last_addr1\,
      I2 => Write_req_data_ack_cmb,
      I3 => s_axi_mem_bready,
      I4 => addr_sm_ps_idle_cmb,
      O => s_axi_mem_bvalid_reg_i_1_n_0
    );
s_axi_mem_bvalid_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_mem_bvalid_reg_i_1_n_0,
      Q => \^s_axi_mem_bvalid\,
      R => '0'
    );
\s_axi_mem_rid_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_mem_arready\(0),
      D => s_axi_mem_arid(0),
      Q => s_axi_mem_rid(0),
      R => \^sr\(0)
    );
\s_axi_mem_rid_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_mem_arready\(0),
      D => s_axi_mem_arid(1),
      Q => s_axi_mem_rid(1),
      R => \^sr\(0)
    );
\s_axi_mem_rid_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_mem_arready\(0),
      D => s_axi_mem_arid(2),
      Q => s_axi_mem_rid(2),
      R => \^sr\(0)
    );
\s_axi_mem_rid_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_mem_arready\(0),
      D => s_axi_mem_arid(3),
      Q => s_axi_mem_rid(3),
      R => \^sr\(0)
    );
s_axi_mem_rlast_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => last_data_acked,
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_37,
      I2 => \rd_data_count_reg__0\(6),
      I3 => \rd_data_count_reg__0\(7),
      O => s_axi_mem_rlast
    );
s_axi_mem_wready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40400A0F"
    )
        port map (
      I0 => emc_addr_ps(2),
      I1 => Write_req_data_ack_cmb,
      I2 => emc_addr_ps(1),
      I3 => rw_flag_reg_reg_0,
      I4 => \^out\(0),
      O => s_axi_mem_wready
    );
type_of_xfer_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0EEEE"
    )
        port map (
      I0 => s_axi_mem_awburst(0),
      I1 => s_axi_mem_awburst(1),
      I2 => s_axi_mem_arburst(0),
      I3 => s_axi_mem_arburst(1),
      I4 => rnw_cmb,
      O => Type_of_xfer_cmb
    );
type_of_xfer_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => enable_cs_cmb,
      D => Type_of_xfer_cmb,
      Q => Type_of_xfer,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl_axi_emc is
  port (
    s_axi_mem_awready : out STD_LOGIC;
    s_axi_reg_rvalid : out STD_LOGIC;
    s_axi_mem_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_wready : out STD_LOGIC;
    s_axi_mem_bvalid : out STD_LOGIC;
    mem_wen : out STD_LOGIC;
    s_axi_mem_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_dq_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mem_dq_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mem_cen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_oen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_qwen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_ben : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_rpn : out STD_LOGIC;
    mem_ce : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rnw : out STD_LOGIC;
    s_axi_reg_arready : out STD_LOGIC;
    s_axi_reg_awready : out STD_LOGIC;
    s_axi_reg_rdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    mem_a : out STD_LOGIC_VECTOR ( 30 downto 0 );
    mem_cre : out STD_LOGIC;
    s_axi_mem_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_mem_rvalid : out STD_LOGIC;
    s_axi_mem_rlast : out STD_LOGIC;
    s_axi_mem_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_bvalid : out STD_LOGIC;
    s_axi_mem_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_awsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_mem_wvalid : in STD_LOGIC;
    s_axi_mem_awvalid : in STD_LOGIC;
    s_axi_mem_arvalid : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_mem_bready : in STD_LOGIC;
    s_axi_mem_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_dq_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rdclk : in STD_LOGIC;
    s_axi_reg_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_reg_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_reg_arvalid : in STD_LOGIC;
    s_axi_reg_awvalid : in STD_LOGIC;
    s_axi_reg_wdata : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_mem_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_rready : in STD_LOGIC;
    s_axi_mem_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_wlast : in STD_LOGIC;
    s_axi_reg_wvalid : in STD_LOGIC;
    s_axi_reg_rready : in STD_LOGIC;
    s_axi_reg_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_em_ctrl_axi_emc : entity is "axi_emc";
end axi_em_ctrl_axi_emc;

architecture STRUCTURE of axi_em_ctrl_axi_emc is
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[0].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[10].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[11].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[12].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[13].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[14].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[15].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[16].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[17].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[18].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[19].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[1].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[20].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[21].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[22].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[23].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[24].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[25].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[26].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[27].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[28].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[29].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[2].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[3].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[4].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[5].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[6].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[7].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[8].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[9].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/Cycle_cnt_en_int\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/S\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/cycle_cnt\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \AXI_EMC_ADDRESS_DECODE_INSTANCE_I/rdce_out_i\ : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_0 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_100 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_101 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_102 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_103 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_104 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_105 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_106 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_107 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_108 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_109 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_111 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_116 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_117 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_119 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_120 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_2 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_43 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_45 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_46 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_47 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_48 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_56 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_58 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_59 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_61 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_64 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_65 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_66 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_81 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_82 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_83 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_84 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_85 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_86 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_87 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_88 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_89 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_90 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_91 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_92 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_93 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_94 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_95 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_96 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_97 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_98 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_99 : STD_LOGIC;
  signal Bus2IP_RdReq_emc : STD_LOGIC;
  signal EMC_CTRL_I_n_54 : STD_LOGIC;
  signal EMC_CTRL_I_n_55 : STD_LOGIC;
  signal EMC_CTRL_I_n_57 : STD_LOGIC;
  signal EMC_CTRL_I_n_58 : STD_LOGIC;
  signal EMC_CTRL_I_n_59 : STD_LOGIC;
  signal EMC_CTRL_I_n_61 : STD_LOGIC;
  signal EMC_CTRL_I_n_63 : STD_LOGIC;
  signal EMC_CTRL_I_n_65 : STD_LOGIC;
  signal EMC_CTRL_I_n_66 : STD_LOGIC;
  signal EMC_CTRL_I_n_70 : STD_LOGIC;
  signal EMC_CTRL_I_n_72 : STD_LOGIC;
  signal EMC_CTRL_I_n_74 : STD_LOGIC;
  signal EMC_CTRL_I_n_75 : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/CE\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/S\ : STD_LOGIC;
  signal \IPIC_IF_I/IP2Bus_RdAck0\ : STD_LOGIC;
  signal \IPIC_IF_I/burst_cnt_i\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \IPIC_IF_I/pend_rdreq\ : STD_LOGIC;
  signal \IPIC_IF_I/pend_wrreq\ : STD_LOGIC;
  signal \IPIC_IF_I/reset_fifo\ : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 0 to 24 );
  signal \MEM_STATE_MACHINE_I/Write_req_addr_ack_cmb\ : STD_LOGIC;
  attribute MAX_FANOUT : string;
  attribute MAX_FANOUT of \MEM_STATE_MACHINE_I/Write_req_addr_ack_cmb\ : signal is "30";
  attribute RTL_MAX_FANOUT : string;
  attribute RTL_MAX_FANOUT of \MEM_STATE_MACHINE_I/Write_req_addr_ack_cmb\ : signal is "found";
  signal \MEM_STATE_MACHINE_I/Write_req_data_ack_cmb\ : STD_LOGIC;
  attribute MAX_FANOUT of \MEM_STATE_MACHINE_I/Write_req_data_ack_cmb\ : signal is "30";
  attribute RTL_MAX_FANOUT of \MEM_STATE_MACHINE_I/Write_req_data_ack_cmb\ : signal is "found";
  signal \MEM_STATE_MACHINE_I/crnt_state_reg\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \MEM_STATE_MACHINE_I/cycle_cnt_en_cmb58_out\ : STD_LOGIC;
  signal \MEM_STATE_MACHINE_I/next_state1\ : STD_LOGIC;
  signal \MEM_STATE_MACHINE_I/next_state181_out\ : STD_LOGIC;
  signal \MEM_STATE_MACHINE_I/p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \MEM_STATE_MACHINE_I/read_req_ack_cmb\ : STD_LOGIC;
  attribute MAX_FANOUT of \MEM_STATE_MACHINE_I/read_req_ack_cmb\ : signal is "30";
  attribute RTL_MAX_FANOUT of \MEM_STATE_MACHINE_I/read_req_ack_cmb\ : signal is "found";
  signal \MEM_STATE_MACHINE_I/read_req_ack_cmb44_out\ : STD_LOGIC;
  signal \MEM_STEER_I/ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ : STD_LOGIC;
  signal \MEM_STEER_I/readreq_th_reset\ : STD_LOGIC;
  signal \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \REG_EN_GEN.read_reg_req_i_1_n_0\ : STD_LOGIC;
  signal \REG_EN_GEN.rvalid_i_1_n_0\ : STD_LOGIC;
  signal \REG_EN_GEN.s_axi_reg_bvalid_i_i_2_n_0\ : STD_LOGIC;
  signal \REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \REG_EN_GEN.write_reg_req_i_1_n_0\ : STD_LOGIC;
  signal \SELECT_PARAM_I/neqOp\ : STD_LOGIC;
  signal axi_lite_ip2bus_data2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_lite_ip2bus_wrack_d1 : STD_LOGIC;
  signal axi_trans_size_reg_int : STD_LOGIC_VECTOR ( 1 to 1 );
  signal bus2Mem_RdReq : STD_LOGIC;
  signal bus2Mem_WrReq : STD_LOGIC;
  signal bus2ip_addr_temp : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal bus2ip_ben_fixed : STD_LOGIC_VECTOR ( 0 to 3 );
  signal bus2ip_reset : STD_LOGIC;
  signal bus2ip_rnw : STD_LOGIC;
  signal bus2ip_wrce_lite_cmb_4 : STD_LOGIC;
  signal bus2ip_wrreq_i : STD_LOGIC;
  signal cycle_End : STD_LOGIC;
  signal enable_cs_cmb0 : STD_LOGIC;
  signal enable_cs_cmb126_out : STD_LOGIC;
  signal ip2bus_addrack : STD_LOGIC;
  signal ip2bus_data : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_rdack : STD_LOGIC;
  signal last_addr1 : STD_LOGIC;
  signal new_page_access : STD_LOGIC;
  signal psram_page_mode : STD_LOGIC;
  signal rd_fifo_wr_en : STD_LOGIC;
  signal read_reg_req : STD_LOGIC;
  signal rst_rdce_cmb : STD_LOGIC;
  signal rw_flag_reg : STD_LOGIC;
  signal \^s_axi_reg_arready\ : STD_LOGIC;
  signal \^s_axi_reg_awready\ : STD_LOGIC;
  signal \^s_axi_reg_bvalid\ : STD_LOGIC;
  signal \^s_axi_reg_rvalid\ : STD_LOGIC;
  signal single_transaction : STD_LOGIC;
  signal temp_bus2ip_be : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal temp_bus2ip_cs : STD_LOGIC;
  signal temp_bus2ip_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal transaction_done_i : STD_LOGIC;
  signal trd_end : STD_LOGIC;
  signal twph_end : STD_LOGIC;
  signal write_reg_req : STD_LOGIC;
  attribute IOB : string;
  attribute IOB of \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg\ : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \REG_EN_GEN.read_reg_req_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \REG_EN_GEN.s_axi_reg_rdata[1]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \REG_EN_GEN.s_axi_reg_rdata[2]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \REG_EN_GEN.s_axi_reg_rdata[30]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \REG_EN_GEN.s_axi_reg_rdata[31]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \REG_EN_GEN.s_axi_reg_rdata[3]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \REG_EN_GEN.s_axi_reg_rdata[4]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \REG_EN_GEN.s_axi_reg_rdata[5]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \REG_EN_GEN.s_axi_reg_rdata[6]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \REG_EN_GEN.write_reg_req_i_1\ : label is "soft_lutpair87";
  attribute IOB of \mem_a_int_reg[10]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[11]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[12]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[13]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[14]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[15]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[16]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[17]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[18]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[19]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[1]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[20]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[21]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[22]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[23]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[24]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[25]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[26]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[27]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[28]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[29]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[2]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[30]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[31]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[3]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[4]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[5]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[6]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[7]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[8]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[9]\ : label is "TRUE";
  attribute SOFT_HLUTNM of s_axi_reg_arready_INST_0 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of s_axi_reg_wready_INST_0 : label is "soft_lutpair87";
begin
  s_axi_reg_arready <= \^s_axi_reg_arready\;
  s_axi_reg_awready <= \^s_axi_reg_awready\;
  s_axi_reg_bvalid <= \^s_axi_reg_bvalid\;
  s_axi_reg_rvalid <= \^s_axi_reg_rvalid\;
AXI_EMC_NATIVE_INTERFACE_I: entity work.axi_em_ctrl_axi_emc_native_interface
     port map (
      \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ => \MEM_STEER_I/ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\,
      Bus2IP_RdReq_emc => Bus2IP_RdReq_emc,
      CE => \IPIC_IF_I/BURST_CNT/CE\,
      CO(0) => \SELECT_PARAM_I/neqOp\,
      Cycle_cnt_en_int => \ADDR_COUNTER_MUX_I/Cycle_cnt_en_int\,
      D(27) => AXI_EMC_NATIVE_INTERFACE_I_n_81,
      D(26) => AXI_EMC_NATIVE_INTERFACE_I_n_82,
      D(25) => AXI_EMC_NATIVE_INTERFACE_I_n_83,
      D(24) => AXI_EMC_NATIVE_INTERFACE_I_n_84,
      D(23) => AXI_EMC_NATIVE_INTERFACE_I_n_85,
      D(22) => AXI_EMC_NATIVE_INTERFACE_I_n_86,
      D(21) => AXI_EMC_NATIVE_INTERFACE_I_n_87,
      D(20) => AXI_EMC_NATIVE_INTERFACE_I_n_88,
      D(19) => AXI_EMC_NATIVE_INTERFACE_I_n_89,
      D(18) => AXI_EMC_NATIVE_INTERFACE_I_n_90,
      D(17) => AXI_EMC_NATIVE_INTERFACE_I_n_91,
      D(16) => AXI_EMC_NATIVE_INTERFACE_I_n_92,
      D(15) => AXI_EMC_NATIVE_INTERFACE_I_n_93,
      D(14) => AXI_EMC_NATIVE_INTERFACE_I_n_94,
      D(13) => AXI_EMC_NATIVE_INTERFACE_I_n_95,
      D(12) => AXI_EMC_NATIVE_INTERFACE_I_n_96,
      D(11) => AXI_EMC_NATIVE_INTERFACE_I_n_97,
      D(10) => AXI_EMC_NATIVE_INTERFACE_I_n_98,
      D(9) => AXI_EMC_NATIVE_INTERFACE_I_n_99,
      D(8) => AXI_EMC_NATIVE_INTERFACE_I_n_100,
      D(7) => AXI_EMC_NATIVE_INTERFACE_I_n_101,
      D(6) => AXI_EMC_NATIVE_INTERFACE_I_n_102,
      D(5) => AXI_EMC_NATIVE_INTERFACE_I_n_103,
      D(4) => AXI_EMC_NATIVE_INTERFACE_I_n_104,
      D(3) => AXI_EMC_NATIVE_INTERFACE_I_n_105,
      D(2) => AXI_EMC_NATIVE_INTERFACE_I_n_106,
      D(1) => AXI_EMC_NATIVE_INTERFACE_I_n_107,
      D(0) => AXI_EMC_NATIVE_INTERFACE_I_n_108,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\(0) => AXI_EMC_NATIVE_INTERFACE_I_n_116,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]\ => AXI_EMC_NATIVE_INTERFACE_I_n_111,
      \DATA_STORE_GEN[24].WRDATA_REG\(31 downto 0) => temp_bus2ip_data(31 downto 0),
      E(0) => s_axi_mem_awready,
      \FSM_sequential_crnt_state_reg[0]\ => AXI_EMC_NATIVE_INTERFACE_I_n_43,
      \FSM_sequential_crnt_state_reg[0]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_58,
      \FSM_sequential_crnt_state_reg[0]_1\ => AXI_EMC_NATIVE_INTERFACE_I_n_61,
      \FSM_sequential_crnt_state_reg[0]_2\ => EMC_CTRL_I_n_58,
      \FSM_sequential_crnt_state_reg[2]\ => AXI_EMC_NATIVE_INTERFACE_I_n_56,
      \FSM_sequential_crnt_state_reg[3]\ => AXI_EMC_NATIVE_INTERFACE_I_n_59,
      \FSM_sequential_emc_addr_ps_reg[0]_0\ => EMC_CTRL_I_n_63,
      \IP2Bus_Data_reg[0]\(31) => ip2bus_data(0),
      \IP2Bus_Data_reg[0]\(30) => ip2bus_data(1),
      \IP2Bus_Data_reg[0]\(29) => ip2bus_data(2),
      \IP2Bus_Data_reg[0]\(28) => ip2bus_data(3),
      \IP2Bus_Data_reg[0]\(27) => ip2bus_data(4),
      \IP2Bus_Data_reg[0]\(26) => ip2bus_data(5),
      \IP2Bus_Data_reg[0]\(25) => ip2bus_data(6),
      \IP2Bus_Data_reg[0]\(24) => ip2bus_data(7),
      \IP2Bus_Data_reg[0]\(23) => ip2bus_data(8),
      \IP2Bus_Data_reg[0]\(22) => ip2bus_data(9),
      \IP2Bus_Data_reg[0]\(21) => ip2bus_data(10),
      \IP2Bus_Data_reg[0]\(20) => ip2bus_data(11),
      \IP2Bus_Data_reg[0]\(19) => ip2bus_data(12),
      \IP2Bus_Data_reg[0]\(18) => ip2bus_data(13),
      \IP2Bus_Data_reg[0]\(17) => ip2bus_data(14),
      \IP2Bus_Data_reg[0]\(16) => ip2bus_data(15),
      \IP2Bus_Data_reg[0]\(15) => ip2bus_data(16),
      \IP2Bus_Data_reg[0]\(14) => ip2bus_data(17),
      \IP2Bus_Data_reg[0]\(13) => ip2bus_data(18),
      \IP2Bus_Data_reg[0]\(12) => ip2bus_data(19),
      \IP2Bus_Data_reg[0]\(11) => ip2bus_data(20),
      \IP2Bus_Data_reg[0]\(10) => ip2bus_data(21),
      \IP2Bus_Data_reg[0]\(9) => ip2bus_data(22),
      \IP2Bus_Data_reg[0]\(8) => ip2bus_data(23),
      \IP2Bus_Data_reg[0]\(7) => ip2bus_data(24),
      \IP2Bus_Data_reg[0]\(6) => ip2bus_data(25),
      \IP2Bus_Data_reg[0]\(5) => ip2bus_data(26),
      \IP2Bus_Data_reg[0]\(4) => ip2bus_data(27),
      \IP2Bus_Data_reg[0]\(3) => ip2bus_data(28),
      \IP2Bus_Data_reg[0]\(2) => ip2bus_data(29),
      \IP2Bus_Data_reg[0]\(1) => ip2bus_data(30),
      \IP2Bus_Data_reg[0]\(0) => ip2bus_data(31),
      IP2Bus_RdAck0 => \IPIC_IF_I/IP2Bus_RdAck0\,
      IP2Bus_RdAck_reg => EMC_CTRL_I_n_65,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ => AXI_EMC_NATIVE_INTERFACE_I_n_45,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_46,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ => EMC_CTRL_I_n_54,
      \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ => EMC_CTRL_I_n_55,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ => EMC_CTRL_I_n_70,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ => EMC_CTRL_I_n_61,
      \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      Q(1 downto 0) => temp_bus2ip_be(1 downto 0),
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ => AXI_EMC_NATIVE_INTERFACE_I_n_64,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_65,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1\ => AXI_EMC_NATIVE_INTERFACE_I_n_66,
      \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0]\(0) => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(0),
      \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg\ => AXI_EMC_NATIVE_INTERFACE_I_n_117,
      \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg\ => AXI_EMC_NATIVE_INTERFACE_I_n_47,
      S(0) => AXI_EMC_NATIVE_INTERFACE_I_n_48,
      \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(3) => L(0),
      \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(2) => L(22),
      \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(1) => L(23),
      \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[0]\(0) => L(24),
      \SINGLE_BANK_GEN.NEW_BANK_GEN_SING.ADDR_REG_0_reg[27]\(0) => AXI_EMC_NATIVE_INTERFACE_I_n_109,
      SR(0) => AXI_EMC_NATIVE_INTERFACE_I_n_2,
      S_0 => \ADDR_COUNTER_MUX_I/DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/S\,
      S_1 => \IPIC_IF_I/BURST_CNT/S\,
      Write_req_addr_ack_cmb => \MEM_STATE_MACHINE_I/Write_req_addr_ack_cmb\,
      Write_req_data_ack_cmb => \MEM_STATE_MACHINE_I/Write_req_data_ack_cmb\,
      \axi_trans_size_reg_reg[1]_0\(0) => axi_trans_size_reg_int(1),
      burst_cnt_i(0 to 7) => \IPIC_IF_I/burst_cnt_i\(0 to 7),
      bus2Mem_RdReq => bus2Mem_RdReq,
      bus2Mem_WrReq => bus2Mem_WrReq,
      bus2ip_addr_temp(29 downto 0) => bus2ip_addr_temp(31 downto 2),
      bus2ip_ben_fixed(0 to 3) => bus2ip_ben_fixed(0 to 3),
      bus2ip_reset => bus2ip_reset,
      bus2ip_rnw => bus2ip_rnw,
      bus2ip_wr_req_reg_reg_0 => EMC_CTRL_I_n_72,
      bus2ip_wr_req_reg_reg_1 => EMC_CTRL_I_n_74,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      crnt_state_reg(0) => \MEM_STATE_MACHINE_I/crnt_state_reg\(2),
      cycle_End => cycle_End,
      cycle_cnt(0) => \ADDR_COUNTER_MUX_I/cycle_cnt\(1),
      cycle_cnt_en_cmb58_out => \MEM_STATE_MACHINE_I/cycle_cnt_en_cmb58_out\,
      enable_cs_cmb0 => enable_cs_cmb0,
      enable_cs_cmb126_out => enable_cs_cmb126_out,
      ip2bus_addrack => ip2bus_addrack,
      ip2bus_rdack => ip2bus_rdack,
      last_addr1 => last_addr1,
      new_page_access => new_page_access,
      next_state1 => \MEM_STATE_MACHINE_I/next_state1\,
      next_state181_out => \MEM_STATE_MACHINE_I/next_state181_out\,
      \out\(0) => AXI_EMC_NATIVE_INTERFACE_I_n_0,
      p_0_in(0) => \MEM_STATE_MACHINE_I/p_0_in\(0),
      pend_rdreq => \IPIC_IF_I/pend_rdreq\,
      pend_rdreq_reg => AXI_EMC_NATIVE_INTERFACE_I_n_119,
      pend_wrreq => \IPIC_IF_I/pend_wrreq\,
      pend_wrreq_reg => AXI_EMC_NATIVE_INTERFACE_I_n_120,
      psram_page_mode => psram_page_mode,
      rd_fifo_wr_en => rd_fifo_wr_en,
      rdce_out_i => \AXI_EMC_ADDRESS_DECODE_INSTANCE_I/rdce_out_i\,
      read_req_ack_cmb => \MEM_STATE_MACHINE_I/read_req_ack_cmb\,
      read_req_ack_cmb44_out => \MEM_STATE_MACHINE_I/read_req_ack_cmb44_out\,
      readreq_th_reset => \MEM_STEER_I/readreq_th_reset\,
      reset_fifo => \IPIC_IF_I/reset_fifo\,
      rst_rdce_cmb => rst_rdce_cmb,
      rw_flag_reg => rw_flag_reg,
      rw_flag_reg_reg_0 => EMC_CTRL_I_n_57,
      rw_flag_reg_reg_1 => EMC_CTRL_I_n_66,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_mem_araddr(31 downto 0) => s_axi_mem_araddr(31 downto 0),
      s_axi_mem_arburst(1 downto 0) => s_axi_mem_arburst(1 downto 0),
      s_axi_mem_arid(3 downto 0) => s_axi_mem_arid(3 downto 0),
      s_axi_mem_arlen(7 downto 0) => s_axi_mem_arlen(7 downto 0),
      s_axi_mem_arready(0) => E(0),
      s_axi_mem_arsize(1 downto 0) => s_axi_mem_arsize(1 downto 0),
      s_axi_mem_arvalid => s_axi_mem_arvalid,
      s_axi_mem_awaddr(31 downto 0) => s_axi_mem_awaddr(31 downto 0),
      s_axi_mem_awburst(1 downto 0) => s_axi_mem_awburst(1 downto 0),
      s_axi_mem_awid(3 downto 0) => s_axi_mem_awid(3 downto 0),
      s_axi_mem_awlen(7 downto 0) => s_axi_mem_awlen(7 downto 0),
      s_axi_mem_awsize(1 downto 0) => s_axi_mem_awsize(1 downto 0),
      s_axi_mem_awvalid => s_axi_mem_awvalid,
      s_axi_mem_bid(3 downto 0) => s_axi_mem_bid(3 downto 0),
      s_axi_mem_bready => s_axi_mem_bready,
      s_axi_mem_bresp(0) => s_axi_mem_bresp(0),
      s_axi_mem_bvalid => s_axi_mem_bvalid,
      s_axi_mem_rdata(31 downto 0) => s_axi_mem_rdata(31 downto 0),
      s_axi_mem_rid(3 downto 0) => s_axi_mem_rid(3 downto 0),
      s_axi_mem_rlast => s_axi_mem_rlast,
      s_axi_mem_rready => s_axi_mem_rready,
      s_axi_mem_rresp(0) => s_axi_mem_rresp(0),
      s_axi_mem_rvalid => s_axi_mem_rvalid,
      s_axi_mem_wdata(31 downto 0) => s_axi_mem_wdata(31 downto 0),
      s_axi_mem_wready => s_axi_mem_wready,
      s_axi_mem_wstrb(3 downto 0) => s_axi_mem_wstrb(3 downto 0),
      s_axi_mem_wvalid => s_axi_mem_wvalid,
      single_transaction => single_transaction,
      temp_bus2ip_cs => temp_bus2ip_cs,
      transaction_done_i => transaction_done_i,
      trd_end => trd_end,
      twph_end => twph_end
    );
EMC_CTRL_I: entity work.axi_em_ctrl_EMC
     port map (
      \ADDRESS_STORE_GEN[0].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[0].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[10].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[10].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[11].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[11].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[12].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[12].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[13].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[13].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[14].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[14].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[15].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[15].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[16].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[16].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[17].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[17].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[18].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[18].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[19].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[19].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[1].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[1].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[20].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[20].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[21].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[21].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[22].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[22].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[23].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[23].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[24].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[24].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[25].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[25].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[26].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[26].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[27].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[27].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[28].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[28].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[29].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[29].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[2].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[2].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[3].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[3].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[4].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[4].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[5].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[5].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[6].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[6].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[7].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[7].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[8].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[8].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[9].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[9].ADDRESS_REG__0\,
      \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ => \MEM_STEER_I/ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\,
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9]\(0) => AXI_EMC_NATIVE_INTERFACE_I_n_116,
      Bus2IP_Mem_CS_d2_reg(0) => \MEM_STATE_MACHINE_I/p_0_in\(0),
      Bus2IP_RdReq_d1_reg => EMC_CTRL_I_n_65,
      Bus2IP_RdReq_emc => Bus2IP_RdReq_emc,
      CE => \IPIC_IF_I/BURST_CNT/CE\,
      CO(0) => \SELECT_PARAM_I/neqOp\,
      Cycle_cnt_en_int => \ADDR_COUNTER_MUX_I/Cycle_cnt_en_int\,
      D(27) => AXI_EMC_NATIVE_INTERFACE_I_n_81,
      D(26) => AXI_EMC_NATIVE_INTERFACE_I_n_82,
      D(25) => AXI_EMC_NATIVE_INTERFACE_I_n_83,
      D(24) => AXI_EMC_NATIVE_INTERFACE_I_n_84,
      D(23) => AXI_EMC_NATIVE_INTERFACE_I_n_85,
      D(22) => AXI_EMC_NATIVE_INTERFACE_I_n_86,
      D(21) => AXI_EMC_NATIVE_INTERFACE_I_n_87,
      D(20) => AXI_EMC_NATIVE_INTERFACE_I_n_88,
      D(19) => AXI_EMC_NATIVE_INTERFACE_I_n_89,
      D(18) => AXI_EMC_NATIVE_INTERFACE_I_n_90,
      D(17) => AXI_EMC_NATIVE_INTERFACE_I_n_91,
      D(16) => AXI_EMC_NATIVE_INTERFACE_I_n_92,
      D(15) => AXI_EMC_NATIVE_INTERFACE_I_n_93,
      D(14) => AXI_EMC_NATIVE_INTERFACE_I_n_94,
      D(13) => AXI_EMC_NATIVE_INTERFACE_I_n_95,
      D(12) => AXI_EMC_NATIVE_INTERFACE_I_n_96,
      D(11) => AXI_EMC_NATIVE_INTERFACE_I_n_97,
      D(10) => AXI_EMC_NATIVE_INTERFACE_I_n_98,
      D(9) => AXI_EMC_NATIVE_INTERFACE_I_n_99,
      D(8) => AXI_EMC_NATIVE_INTERFACE_I_n_100,
      D(7) => AXI_EMC_NATIVE_INTERFACE_I_n_101,
      D(6) => AXI_EMC_NATIVE_INTERFACE_I_n_102,
      D(5) => AXI_EMC_NATIVE_INTERFACE_I_n_103,
      D(4) => AXI_EMC_NATIVE_INTERFACE_I_n_104,
      D(3) => AXI_EMC_NATIVE_INTERFACE_I_n_105,
      D(2) => AXI_EMC_NATIVE_INTERFACE_I_n_106,
      D(1) => AXI_EMC_NATIVE_INTERFACE_I_n_107,
      D(0) => AXI_EMC_NATIVE_INTERFACE_I_n_108,
      E(0) => AXI_EMC_NATIVE_INTERFACE_I_n_109,
      \FSM_sequential_crnt_state_reg[1]\ => EMC_CTRL_I_n_72,
      \FSM_sequential_emc_addr_ps_reg[0]\ => EMC_CTRL_I_n_63,
      \FSM_sequential_emc_addr_ps_reg[2]\ => EMC_CTRL_I_n_66,
      IP2Bus_RdAck0 => \IPIC_IF_I/IP2Bus_RdAck0\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => AXI_EMC_NATIVE_INTERFACE_I_n_56,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_58,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ => AXI_EMC_NATIVE_INTERFACE_I_n_59,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ => AXI_EMC_NATIVE_INTERFACE_I_n_43,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\ => AXI_EMC_NATIVE_INTERFACE_I_n_65,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\ => AXI_EMC_NATIVE_INTERFACE_I_n_66,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5\ => AXI_EMC_NATIVE_INTERFACE_I_n_46,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ => EMC_CTRL_I_n_54,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ => EMC_CTRL_I_n_55,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      Q(3) => L(0),
      Q(2) => L(22),
      Q(1) => L(23),
      Q(0) => L(24),
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\(0) => \MEM_STATE_MACHINE_I/crnt_state_reg\(2),
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\ => EMC_CTRL_I_n_74,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1\ => EMC_CTRL_I_n_75,
      \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\(0) => \ADDR_COUNTER_MUX_I/cycle_cnt\(1),
      \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ => EMC_CTRL_I_n_61,
      S(0) => AXI_EMC_NATIVE_INTERFACE_I_n_48,
      SR(0) => bus2ip_reset,
      S_0 => \IPIC_IF_I/BURST_CNT/S\,
      S_1 => \ADDR_COUNTER_MUX_I/DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/S\,
      Write_req_addr_ack_cmb => \MEM_STATE_MACHINE_I/Write_req_addr_ack_cmb\,
      Write_req_data_ack_cmb => \MEM_STATE_MACHINE_I/Write_req_data_ack_cmb\,
      \axi_trans_size_reg_reg[1]\(0) => axi_trans_size_reg_int(1),
      burst_cnt_i(0 to 7) => \IPIC_IF_I/burst_cnt_i\(0 to 7),
      \burstlength_reg_reg[4]\ => AXI_EMC_NATIVE_INTERFACE_I_n_64,
      bus2Mem_RdReq => bus2Mem_RdReq,
      bus2Mem_WrReq => bus2Mem_WrReq,
      \bus2ip_BE_reg_reg[1]\(1 downto 0) => temp_bus2ip_be(1 downto 0),
      \bus2ip_BE_reg_reg[3]\ => AXI_EMC_NATIVE_INTERFACE_I_n_111,
      bus2ip_addr_temp(29 downto 0) => bus2ip_addr_temp(31 downto 2),
      bus2ip_ben_fixed(0 to 3) => bus2ip_ben_fixed(0 to 3),
      bus2ip_burst_reg_reg => AXI_EMC_NATIVE_INTERFACE_I_n_119,
      bus2ip_burst_reg_reg_0 => AXI_EMC_NATIVE_INTERFACE_I_n_120,
      \bus2ip_data_reg_reg[31]\(31 downto 0) => temp_bus2ip_data(31 downto 0),
      bus2ip_rnw => bus2ip_rnw,
      bus2ip_wr_req_reg_reg => AXI_EMC_NATIVE_INTERFACE_I_n_45,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      cycle_End => cycle_End,
      cycle_cnt_en_cmb58_out => \MEM_STATE_MACHINE_I/cycle_cnt_en_cmb58_out\,
      enable_cs_cmb0 => enable_cs_cmb0,
      enable_cs_cmb126_out => enable_cs_cmb126_out,
      ip2bus_addrack => ip2bus_addrack,
      ip2bus_rdack => ip2bus_rdack,
      last_addr1 => last_addr1,
      \mem_a_int_reg[31]\ => EMC_CTRL_I_n_59,
      mem_ben(1 downto 0) => mem_ben(1 downto 0),
      mem_ce(0) => mem_ce(0),
      mem_cen(0) => mem_cen(0),
      mem_dq_i(15 downto 0) => mem_dq_i(15 downto 0),
      mem_dq_o(15 downto 0) => mem_dq_o(15 downto 0),
      mem_dq_t(15 downto 0) => mem_dq_t(15 downto 0),
      mem_oen(0) => mem_oen(0),
      mem_qwen(1 downto 0) => mem_qwen(1 downto 0),
      mem_rnw => mem_rnw,
      mem_rpn => mem_rpn,
      mem_wen => mem_wen,
      new_page_access => new_page_access,
      next_state1 => \MEM_STATE_MACHINE_I/next_state1\,
      next_state181_out => \MEM_STATE_MACHINE_I/next_state181_out\,
      \out\(0) => AXI_EMC_NATIVE_INTERFACE_I_n_0,
      pend_rdreq => \IPIC_IF_I/pend_rdreq\,
      pend_rdreq_reg => EMC_CTRL_I_n_70,
      pend_wrreq => \IPIC_IF_I/pend_wrreq\,
      rd_fifo_wr_en => rd_fifo_wr_en,
      rdce_out_i => \AXI_EMC_ADDRESS_DECODE_INSTANCE_I/rdce_out_i\,
      rdclk => rdclk,
      read_req_ack_cmb => \MEM_STATE_MACHINE_I/read_req_ack_cmb\,
      read_req_ack_cmb44_out => \MEM_STATE_MACHINE_I/read_req_ack_cmb44_out\,
      readreq_th_reset => \MEM_STEER_I/readreq_th_reset\,
      reset_fifo => \IPIC_IF_I/reset_fifo\,
      rnw_reg_reg => AXI_EMC_NATIVE_INTERFACE_I_n_61,
      rst_rdce_cmb => rst_rdce_cmb,
      rw_flag_reg => rw_flag_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_mem_arburst(1 downto 0) => s_axi_mem_arburst(1 downto 0),
      s_axi_mem_arvalid => s_axi_mem_arvalid,
      s_axi_mem_awburst(1 downto 0) => s_axi_mem_awburst(1 downto 0),
      s_axi_mem_awvalid => s_axi_mem_awvalid,
      \s_axi_mem_bid_reg_reg[3]\ => EMC_CTRL_I_n_57,
      \s_axi_mem_rdata[7]\(31) => ip2bus_data(0),
      \s_axi_mem_rdata[7]\(30) => ip2bus_data(1),
      \s_axi_mem_rdata[7]\(29) => ip2bus_data(2),
      \s_axi_mem_rdata[7]\(28) => ip2bus_data(3),
      \s_axi_mem_rdata[7]\(27) => ip2bus_data(4),
      \s_axi_mem_rdata[7]\(26) => ip2bus_data(5),
      \s_axi_mem_rdata[7]\(25) => ip2bus_data(6),
      \s_axi_mem_rdata[7]\(24) => ip2bus_data(7),
      \s_axi_mem_rdata[7]\(23) => ip2bus_data(8),
      \s_axi_mem_rdata[7]\(22) => ip2bus_data(9),
      \s_axi_mem_rdata[7]\(21) => ip2bus_data(10),
      \s_axi_mem_rdata[7]\(20) => ip2bus_data(11),
      \s_axi_mem_rdata[7]\(19) => ip2bus_data(12),
      \s_axi_mem_rdata[7]\(18) => ip2bus_data(13),
      \s_axi_mem_rdata[7]\(17) => ip2bus_data(14),
      \s_axi_mem_rdata[7]\(16) => ip2bus_data(15),
      \s_axi_mem_rdata[7]\(15) => ip2bus_data(16),
      \s_axi_mem_rdata[7]\(14) => ip2bus_data(17),
      \s_axi_mem_rdata[7]\(13) => ip2bus_data(18),
      \s_axi_mem_rdata[7]\(12) => ip2bus_data(19),
      \s_axi_mem_rdata[7]\(11) => ip2bus_data(20),
      \s_axi_mem_rdata[7]\(10) => ip2bus_data(21),
      \s_axi_mem_rdata[7]\(9) => ip2bus_data(22),
      \s_axi_mem_rdata[7]\(8) => ip2bus_data(23),
      \s_axi_mem_rdata[7]\(7) => ip2bus_data(24),
      \s_axi_mem_rdata[7]\(6) => ip2bus_data(25),
      \s_axi_mem_rdata[7]\(5) => ip2bus_data(26),
      \s_axi_mem_rdata[7]\(4) => ip2bus_data(27),
      \s_axi_mem_rdata[7]\(3) => ip2bus_data(28),
      \s_axi_mem_rdata[7]\(2) => ip2bus_data(29),
      \s_axi_mem_rdata[7]\(1) => ip2bus_data(30),
      \s_axi_mem_rdata[7]\(0) => ip2bus_data(31),
      s_axi_mem_wlast => s_axi_mem_wlast,
      s_axi_mem_wvalid => s_axi_mem_wvalid,
      single_transaction => single_transaction,
      temp_bus2ip_cs => temp_bus2ip_cs,
      transaction_complete_reg_reg => EMC_CTRL_I_n_58,
      transaction_done_i => transaction_done_i,
      trd_end => trd_end,
      twph_end => twph_end
    );
\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG[0][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => s_axi_reg_wvalid,
      I1 => write_reg_req,
      I2 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2]\,
      I3 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4]\,
      I4 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3]\,
      O => bus2ip_wrce_lite_cmb_4
    );
\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_lite_cmb_4,
      D => s_axi_reg_wdata(0),
      Q => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(0),
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_lite_cmb_4,
      D => s_axi_reg_wdata(1),
      Q => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(1),
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_lite_cmb_4,
      D => s_axi_reg_wdata(2),
      Q => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(2),
      S => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_lite_cmb_4,
      D => s_axi_reg_wdata(7),
      Q => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(30),
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_lite_cmb_4,
      D => s_axi_reg_wdata(8),
      Q => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(31),
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_lite_cmb_4,
      D => s_axi_reg_wdata(3),
      Q => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(3),
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_lite_cmb_4,
      D => s_axi_reg_wdata(4),
      Q => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(4),
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_lite_cmb_4,
      D => s_axi_reg_wdata(5),
      Q => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(5),
      S => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_lite_cmb_4,
      D => s_axi_reg_wdata(6),
      Q => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(6),
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.mem_cre_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(6),
      Q => mem_cre,
      R => AXI_EMC_NATIVE_INTERFACE_I_n_117
    );
\REG_EN_GEN.PSRAM_CONFIG_REG_GEN.psram_page_mode_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_EMC_NATIVE_INTERFACE_I_n_47,
      Q => psram_page_mode,
      S => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFFAFFFAC00A000"
    )
        port map (
      I0 => s_axi_reg_araddr(0),
      I1 => s_axi_reg_awaddr(0),
      I2 => s_axi_reg_arvalid,
      I3 => \^s_axi_reg_arready\,
      I4 => s_axi_reg_awvalid,
      I5 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2]\,
      O => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[2]_i_1_n_0\
    );
\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFFAFFFAC00A000"
    )
        port map (
      I0 => s_axi_reg_araddr(1),
      I1 => s_axi_reg_awaddr(1),
      I2 => s_axi_reg_arvalid,
      I3 => \^s_axi_reg_arready\,
      I4 => s_axi_reg_awvalid,
      I5 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3]\,
      O => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[3]_i_1_n_0\
    );
\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFFAFFFAC00A000"
    )
        port map (
      I0 => s_axi_reg_araddr(2),
      I1 => s_axi_reg_awaddr(2),
      I2 => s_axi_reg_arvalid,
      I3 => \^s_axi_reg_arready\,
      I4 => s_axi_reg_awvalid,
      I5 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4]\,
      O => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[4]_i_1_n_0\
    );
\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[2]_i_1_n_0\,
      Q => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2]\,
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[3]_i_1_n_0\,
      Q => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3]\,
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg[4]_i_1_n_0\,
      Q => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4]\,
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.axi_lite_ip2bus_wrack_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^s_axi_reg_awready\,
      Q => axi_lite_ip2bus_wrack_d1,
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.read_reg_req_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^s_axi_reg_rvalid\,
      I1 => read_reg_req,
      I2 => write_reg_req,
      I3 => s_axi_reg_arvalid,
      O => \REG_EN_GEN.read_reg_req_i_1_n_0\
    );
\REG_EN_GEN.read_reg_req_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_EN_GEN.read_reg_req_i_1_n_0\,
      Q => read_reg_req,
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.rvalid_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => read_reg_req,
      I1 => s_axi_reg_rready,
      I2 => \^s_axi_reg_rvalid\,
      O => \REG_EN_GEN.rvalid_i_1_n_0\
    );
\REG_EN_GEN.rvalid_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_EN_GEN.rvalid_i_1_n_0\,
      Q => \^s_axi_reg_rvalid\,
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.s_axi_reg_bvalid_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => s_axi_reg_bready,
      I1 => \^s_axi_reg_bvalid\,
      I2 => axi_lite_ip2bus_wrack_d1,
      I3 => write_reg_req,
      I4 => s_axi_reg_wvalid,
      O => \REG_EN_GEN.s_axi_reg_bvalid_i_i_2_n_0\
    );
\REG_EN_GEN.s_axi_reg_bvalid_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_EN_GEN.s_axi_reg_bvalid_i_i_2_n_0\,
      Q => \^s_axi_reg_bvalid\,
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
\REG_EN_GEN.s_axi_reg_rdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(0),
      I1 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3]\,
      I2 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4]\,
      I3 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2]\,
      O => axi_lite_ip2bus_data2(0)
    );
\REG_EN_GEN.s_axi_reg_rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(1),
      I1 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3]\,
      I2 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4]\,
      I3 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2]\,
      O => axi_lite_ip2bus_data2(1)
    );
\REG_EN_GEN.s_axi_reg_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(2),
      I1 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3]\,
      I2 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4]\,
      I3 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2]\,
      O => axi_lite_ip2bus_data2(2)
    );
\REG_EN_GEN.s_axi_reg_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(30),
      I1 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3]\,
      I2 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4]\,
      I3 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2]\,
      O => axi_lite_ip2bus_data2(30)
    );
\REG_EN_GEN.s_axi_reg_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^s_axi_reg_rvalid\,
      I1 => read_reg_req,
      I2 => s_axi_aresetn,
      O => \REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0\
    );
\REG_EN_GEN.s_axi_reg_rdata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(31),
      I1 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3]\,
      I2 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4]\,
      I3 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2]\,
      O => axi_lite_ip2bus_data2(31)
    );
\REG_EN_GEN.s_axi_reg_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(3),
      I1 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3]\,
      I2 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4]\,
      I3 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2]\,
      O => axi_lite_ip2bus_data2(3)
    );
\REG_EN_GEN.s_axi_reg_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(4),
      I1 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3]\,
      I2 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4]\,
      I3 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2]\,
      O => axi_lite_ip2bus_data2(4)
    );
\REG_EN_GEN.s_axi_reg_rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(5),
      I1 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3]\,
      I2 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4]\,
      I3 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2]\,
      O => axi_lite_ip2bus_data2(5)
    );
\REG_EN_GEN.s_axi_reg_rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \REG_EN_GEN.PSRAM_CONFIG_REG_GEN.PCR_REG_reg[0]\(6),
      I1 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[3]\,
      I2 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[4]\,
      I3 => \REG_EN_GEN.PSRAM_PARITY_ADDR_REG_GEN.bus2ip_addr_lite_reg_reg_n_0_[2]\,
      O => axi_lite_ip2bus_data2(6)
    );
\REG_EN_GEN.s_axi_reg_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => read_reg_req,
      D => axi_lite_ip2bus_data2(0),
      Q => s_axi_reg_rdata(0),
      R => \REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0\
    );
\REG_EN_GEN.s_axi_reg_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => read_reg_req,
      D => axi_lite_ip2bus_data2(1),
      Q => s_axi_reg_rdata(1),
      R => \REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0\
    );
\REG_EN_GEN.s_axi_reg_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => read_reg_req,
      D => axi_lite_ip2bus_data2(2),
      Q => s_axi_reg_rdata(2),
      R => \REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0\
    );
\REG_EN_GEN.s_axi_reg_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => read_reg_req,
      D => axi_lite_ip2bus_data2(30),
      Q => s_axi_reg_rdata(7),
      R => \REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0\
    );
\REG_EN_GEN.s_axi_reg_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => read_reg_req,
      D => axi_lite_ip2bus_data2(31),
      Q => s_axi_reg_rdata(8),
      R => \REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0\
    );
\REG_EN_GEN.s_axi_reg_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => read_reg_req,
      D => axi_lite_ip2bus_data2(3),
      Q => s_axi_reg_rdata(3),
      R => \REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0\
    );
\REG_EN_GEN.s_axi_reg_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => read_reg_req,
      D => axi_lite_ip2bus_data2(4),
      Q => s_axi_reg_rdata(4),
      R => \REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0\
    );
\REG_EN_GEN.s_axi_reg_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => read_reg_req,
      D => axi_lite_ip2bus_data2(5),
      Q => s_axi_reg_rdata(5),
      R => \REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0\
    );
\REG_EN_GEN.s_axi_reg_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => read_reg_req,
      D => axi_lite_ip2bus_data2(6),
      Q => s_axi_reg_rdata(6),
      R => \REG_EN_GEN.s_axi_reg_rdata[31]_i_1_n_0\
    );
\REG_EN_GEN.write_reg_req_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => s_axi_reg_wvalid,
      I1 => write_reg_req,
      I2 => s_axi_reg_arvalid,
      I3 => s_axi_reg_awvalid,
      I4 => \^s_axi_reg_arready\,
      O => \REG_EN_GEN.write_reg_req_i_1_n_0\
    );
\REG_EN_GEN.write_reg_req_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_EN_GEN.write_reg_req_i_1_n_0\,
      Q => write_reg_req,
      R => AXI_EMC_NATIVE_INTERFACE_I_n_2
    );
bus2ip_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_EMC_NATIVE_INTERFACE_I_n_2,
      Q => bus2ip_reset,
      R => '0'
    );
\mem_a_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[21].ADDRESS_REG__0\,
      Q => mem_a(9),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[20].ADDRESS_REG__0\,
      Q => mem_a(10),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[19].ADDRESS_REG__0\,
      Q => mem_a(11),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[18].ADDRESS_REG__0\,
      Q => mem_a(12),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[17].ADDRESS_REG__0\,
      Q => mem_a(13),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[16].ADDRESS_REG__0\,
      Q => mem_a(14),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[15].ADDRESS_REG__0\,
      Q => mem_a(15),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[14].ADDRESS_REG__0\,
      Q => mem_a(16),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[13].ADDRESS_REG__0\,
      Q => mem_a(17),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[12].ADDRESS_REG__0\,
      Q => mem_a(18),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => EMC_CTRL_I_n_75,
      Q => mem_a(0),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[11].ADDRESS_REG__0\,
      Q => mem_a(19),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[10].ADDRESS_REG__0\,
      Q => mem_a(20),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[9].ADDRESS_REG__0\,
      Q => mem_a(21),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[8].ADDRESS_REG__0\,
      Q => mem_a(22),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[7].ADDRESS_REG__0\,
      Q => mem_a(23),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[6].ADDRESS_REG__0\,
      Q => mem_a(24),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[5].ADDRESS_REG__0\,
      Q => mem_a(25),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[4].ADDRESS_REG__0\,
      Q => mem_a(26),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[3].ADDRESS_REG__0\,
      Q => mem_a(27),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[2].ADDRESS_REG__0\,
      Q => mem_a(28),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[29].ADDRESS_REG__0\,
      Q => mem_a(1),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[1].ADDRESS_REG__0\,
      Q => mem_a(29),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[0].ADDRESS_REG__0\,
      Q => mem_a(30),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[28].ADDRESS_REG__0\,
      Q => mem_a(2),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[27].ADDRESS_REG__0\,
      Q => mem_a(3),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[26].ADDRESS_REG__0\,
      Q => mem_a(4),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[25].ADDRESS_REG__0\,
      Q => mem_a(5),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[24].ADDRESS_REG__0\,
      Q => mem_a(6),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[23].ADDRESS_REG__0\,
      Q => mem_a(7),
      R => EMC_CTRL_I_n_59
    );
\mem_a_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[22].ADDRESS_REG__0\,
      Q => mem_a(8),
      R => EMC_CTRL_I_n_59
    );
s_axi_reg_arready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^s_axi_reg_rvalid\,
      I1 => read_reg_req,
      I2 => s_axi_aresetn,
      I3 => write_reg_req,
      O => \^s_axi_reg_arready\
    );
s_axi_reg_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => write_reg_req,
      I1 => s_axi_reg_wvalid,
      O => \^s_axi_reg_awready\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_em_ctrl is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    rdclk : in STD_LOGIC;
    s_axi_reg_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_reg_awvalid : in STD_LOGIC;
    s_axi_reg_awready : out STD_LOGIC;
    s_axi_reg_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_reg_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_reg_wvalid : in STD_LOGIC;
    s_axi_reg_wready : out STD_LOGIC;
    s_axi_reg_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_reg_bvalid : out STD_LOGIC;
    s_axi_reg_bready : in STD_LOGIC;
    s_axi_reg_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_reg_arvalid : in STD_LOGIC;
    s_axi_reg_arready : out STD_LOGIC;
    s_axi_reg_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_reg_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_reg_rvalid : out STD_LOGIC;
    s_axi_reg_rready : in STD_LOGIC;
    s_axi_mem_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_mem_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_awlock : in STD_LOGIC;
    s_axi_mem_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_mem_awvalid : in STD_LOGIC;
    s_axi_mem_awready : out STD_LOGIC;
    s_axi_mem_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_wlast : in STD_LOGIC;
    s_axi_mem_wvalid : in STD_LOGIC;
    s_axi_mem_wready : out STD_LOGIC;
    s_axi_mem_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_bvalid : out STD_LOGIC;
    s_axi_mem_bready : in STD_LOGIC;
    s_axi_mem_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_mem_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_arlock : in STD_LOGIC;
    s_axi_mem_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_mem_arvalid : in STD_LOGIC;
    s_axi_mem_arready : out STD_LOGIC;
    s_axi_mem_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_rlast : out STD_LOGIC;
    s_axi_mem_rvalid : out STD_LOGIC;
    s_axi_mem_rready : in STD_LOGIC;
    mem_dq_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mem_dq_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mem_dq_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mem_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_ce : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_cen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_oen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_wen : out STD_LOGIC;
    mem_ben : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_qwen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_rpn : out STD_LOGIC;
    mem_adv_ldn : out STD_LOGIC;
    mem_lbon : out STD_LOGIC;
    mem_cken : out STD_LOGIC;
    mem_rnw : out STD_LOGIC;
    mem_cre : out STD_LOGIC;
    mem_wait : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_em_ctrl : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_em_ctrl : entity is "axi_em_ctrl,axi_emc,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axi_em_ctrl : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of axi_em_ctrl : entity is "axi_emc,Vivado 2017.4";
end axi_em_ctrl;

architecture STRUCTURE of axi_em_ctrl is
  signal \<const0>\ : STD_LOGIC;
  signal \^mem_a\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^s_axi_mem_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_mem_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_reg_awready\ : STD_LOGIC;
  signal \^s_axi_reg_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of mem_adv_ldn : signal is "xilinx.com:interface:emc:1.0 EMC_INTF ADV_LDN";
  attribute x_interface_info of mem_cken : signal is "xilinx.com:interface:emc:1.0 EMC_INTF CLKEN";
  attribute x_interface_info of mem_cre : signal is "xilinx.com:interface:emc:1.0 EMC_INTF CRE";
  attribute x_interface_info of mem_lbon : signal is "xilinx.com:interface:emc:1.0 EMC_INTF LBON";
  attribute x_interface_info of mem_rnw : signal is "xilinx.com:interface:emc:1.0 EMC_INTF RNW";
  attribute x_interface_info of mem_rpn : signal is "xilinx.com:interface:emc:1.0 EMC_INTF RPN";
  attribute x_interface_info of mem_wen : signal is "xilinx.com:interface:emc:1.0 EMC_INTF WEN";
  attribute max_fanout : string;
  attribute max_fanout of rdclk : signal is "10000";
  attribute sigis : string;
  attribute sigis of rdclk : signal is "Clk";
  attribute x_interface_info of rdclk : signal is "xilinx.com:signal:clock:1.0 rdclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rdclk : signal is "XIL_INTERFACENAME rdclk, ASSOCIATED_BUSIF EMC_INTF, FREQ_HZ 100000000, PHASE 0.000";
  attribute max_fanout of s_axi_aclk : signal is "10000";
  attribute sigis of s_axi_aclk : signal is "Clk";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi_mem:s_axi_reg, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000";
  attribute max_fanout of s_axi_aresetn : signal is "10000";
  attribute sigis of s_axi_aresetn : signal is "Rst";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_mem_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARLOCK";
  attribute x_interface_info of s_axi_mem_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARREADY";
  attribute x_interface_info of s_axi_mem_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARVALID";
  attribute x_interface_info of s_axi_mem_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWLOCK";
  attribute x_interface_info of s_axi_mem_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWREADY";
  attribute x_interface_info of s_axi_mem_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWVALID";
  attribute x_interface_info of s_axi_mem_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM BREADY";
  attribute x_interface_info of s_axi_mem_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM BVALID";
  attribute x_interface_info of s_axi_mem_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM RLAST";
  attribute x_interface_info of s_axi_mem_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM RREADY";
  attribute x_interface_info of s_axi_mem_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM RVALID";
  attribute x_interface_info of s_axi_mem_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM WLAST";
  attribute x_interface_info of s_axi_mem_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM WREADY";
  attribute x_interface_info of s_axi_mem_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM WVALID";
  attribute x_interface_info of s_axi_reg_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG ARREADY";
  attribute x_interface_info of s_axi_reg_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG ARVALID";
  attribute x_interface_info of s_axi_reg_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG AWREADY";
  attribute x_interface_info of s_axi_reg_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG AWVALID";
  attribute x_interface_info of s_axi_reg_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG BREADY";
  attribute x_interface_info of s_axi_reg_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG BVALID";
  attribute x_interface_info of s_axi_reg_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG RREADY";
  attribute x_interface_info of s_axi_reg_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG RVALID";
  attribute x_interface_info of s_axi_reg_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG WREADY";
  attribute x_interface_info of s_axi_reg_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG WVALID";
  attribute x_interface_info of mem_a : signal is "xilinx.com:interface:emc:1.0 EMC_INTF ADDR";
  attribute x_interface_info of mem_ben : signal is "xilinx.com:interface:emc:1.0 EMC_INTF BEN";
  attribute x_interface_info of mem_ce : signal is "xilinx.com:interface:emc:1.0 EMC_INTF CE";
  attribute x_interface_info of mem_cen : signal is "xilinx.com:interface:emc:1.0 EMC_INTF CE_N";
  attribute x_interface_info of mem_dq_i : signal is "xilinx.com:interface:emc:1.0 EMC_INTF DQ_I";
  attribute x_interface_parameter of mem_dq_i : signal is "XIL_INTERFACENAME EMC_INTF, BOARD.ASSOCIATED_PARAM EMC_BOARD_INTERFACE";
  attribute x_interface_info of mem_dq_o : signal is "xilinx.com:interface:emc:1.0 EMC_INTF DQ_O";
  attribute x_interface_info of mem_dq_t : signal is "xilinx.com:interface:emc:1.0 EMC_INTF DQ_T";
  attribute x_interface_info of mem_oen : signal is "xilinx.com:interface:emc:1.0 EMC_INTF OEN";
  attribute x_interface_info of mem_qwen : signal is "xilinx.com:interface:emc:1.0 EMC_INTF QWEN";
  attribute x_interface_info of mem_wait : signal is "xilinx.com:interface:emc:1.0 EMC_INTF WAIT";
  attribute x_interface_info of s_axi_mem_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARADDR";
  attribute x_interface_info of s_axi_mem_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARBURST";
  attribute x_interface_info of s_axi_mem_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARCACHE";
  attribute x_interface_info of s_axi_mem_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARID";
  attribute x_interface_info of s_axi_mem_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARLEN";
  attribute x_interface_info of s_axi_mem_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARPROT";
  attribute x_interface_info of s_axi_mem_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARSIZE";
  attribute x_interface_info of s_axi_mem_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWADDR";
  attribute x_interface_info of s_axi_mem_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWBURST";
  attribute x_interface_info of s_axi_mem_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWCACHE";
  attribute x_interface_info of s_axi_mem_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWID";
  attribute x_interface_parameter of s_axi_mem_awid : signal is "XIL_INTERFACENAME S_AXI_MEM, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_mem_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWLEN";
  attribute x_interface_info of s_axi_mem_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWPROT";
  attribute x_interface_info of s_axi_mem_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWSIZE";
  attribute x_interface_info of s_axi_mem_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM BID";
  attribute x_interface_info of s_axi_mem_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM BRESP";
  attribute x_interface_info of s_axi_mem_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM RDATA";
  attribute x_interface_info of s_axi_mem_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM RID";
  attribute x_interface_info of s_axi_mem_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM RRESP";
  attribute x_interface_info of s_axi_mem_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM WDATA";
  attribute x_interface_info of s_axi_mem_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM WSTRB";
  attribute x_interface_info of s_axi_reg_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG ARADDR";
  attribute x_interface_info of s_axi_reg_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG AWADDR";
  attribute x_interface_parameter of s_axi_reg_awaddr : signal is "XIL_INTERFACENAME S_AXI_REG, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_reg_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG BRESP";
  attribute x_interface_info of s_axi_reg_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG RDATA";
  attribute x_interface_info of s_axi_reg_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG RRESP";
  attribute x_interface_info of s_axi_reg_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG WDATA";
  attribute x_interface_info of s_axi_reg_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_REG WSTRB";
begin
  mem_a(31 downto 1) <= \^mem_a\(31 downto 1);
  mem_a(0) <= \<const0>\;
  mem_adv_ldn <= \<const0>\;
  mem_cken <= \<const0>\;
  mem_lbon <= \<const0>\;
  s_axi_mem_bresp(1) <= \^s_axi_mem_bresp\(1);
  s_axi_mem_bresp(0) <= \<const0>\;
  s_axi_mem_rresp(1) <= \^s_axi_mem_rresp\(1);
  s_axi_mem_rresp(0) <= \<const0>\;
  s_axi_reg_awready <= \^s_axi_reg_awready\;
  s_axi_reg_bresp(1) <= \<const0>\;
  s_axi_reg_bresp(0) <= \<const0>\;
  s_axi_reg_rdata(31 downto 30) <= \^s_axi_reg_rdata\(31 downto 30);
  s_axi_reg_rdata(29) <= \<const0>\;
  s_axi_reg_rdata(28) <= \<const0>\;
  s_axi_reg_rdata(27) <= \<const0>\;
  s_axi_reg_rdata(26) <= \<const0>\;
  s_axi_reg_rdata(25) <= \<const0>\;
  s_axi_reg_rdata(24) <= \<const0>\;
  s_axi_reg_rdata(23) <= \<const0>\;
  s_axi_reg_rdata(22) <= \<const0>\;
  s_axi_reg_rdata(21) <= \<const0>\;
  s_axi_reg_rdata(20) <= \<const0>\;
  s_axi_reg_rdata(19) <= \<const0>\;
  s_axi_reg_rdata(18) <= \<const0>\;
  s_axi_reg_rdata(17) <= \<const0>\;
  s_axi_reg_rdata(16) <= \<const0>\;
  s_axi_reg_rdata(15) <= \<const0>\;
  s_axi_reg_rdata(14) <= \<const0>\;
  s_axi_reg_rdata(13) <= \<const0>\;
  s_axi_reg_rdata(12) <= \<const0>\;
  s_axi_reg_rdata(11) <= \<const0>\;
  s_axi_reg_rdata(10) <= \<const0>\;
  s_axi_reg_rdata(9) <= \<const0>\;
  s_axi_reg_rdata(8) <= \<const0>\;
  s_axi_reg_rdata(7) <= \<const0>\;
  s_axi_reg_rdata(6 downto 0) <= \^s_axi_reg_rdata\(6 downto 0);
  s_axi_reg_rresp(1) <= \<const0>\;
  s_axi_reg_rresp(0) <= \<const0>\;
  s_axi_reg_wready <= \^s_axi_reg_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.axi_em_ctrl_axi_emc
     port map (
      E(0) => s_axi_mem_arready,
      mem_a(30 downto 0) => \^mem_a\(31 downto 1),
      mem_ben(1 downto 0) => mem_ben(1 downto 0),
      mem_ce(0) => mem_ce(0),
      mem_cen(0) => mem_cen(0),
      mem_cre => mem_cre,
      mem_dq_i(15 downto 0) => mem_dq_i(15 downto 0),
      mem_dq_o(15 downto 0) => mem_dq_o(15 downto 0),
      mem_dq_t(15 downto 0) => mem_dq_t(15 downto 0),
      mem_oen(0) => mem_oen(0),
      mem_qwen(1 downto 0) => mem_qwen(1 downto 0),
      mem_rnw => mem_rnw,
      mem_rpn => mem_rpn,
      mem_wen => mem_wen,
      rdclk => rdclk,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_mem_araddr(31 downto 0) => s_axi_mem_araddr(31 downto 0),
      s_axi_mem_arburst(1 downto 0) => s_axi_mem_arburst(1 downto 0),
      s_axi_mem_arid(3 downto 0) => s_axi_mem_arid(3 downto 0),
      s_axi_mem_arlen(7 downto 0) => s_axi_mem_arlen(7 downto 0),
      s_axi_mem_arsize(1 downto 0) => s_axi_mem_arsize(1 downto 0),
      s_axi_mem_arvalid => s_axi_mem_arvalid,
      s_axi_mem_awaddr(31 downto 0) => s_axi_mem_awaddr(31 downto 0),
      s_axi_mem_awburst(1 downto 0) => s_axi_mem_awburst(1 downto 0),
      s_axi_mem_awid(3 downto 0) => s_axi_mem_awid(3 downto 0),
      s_axi_mem_awlen(7 downto 0) => s_axi_mem_awlen(7 downto 0),
      s_axi_mem_awready => s_axi_mem_awready,
      s_axi_mem_awsize(1 downto 0) => s_axi_mem_awsize(1 downto 0),
      s_axi_mem_awvalid => s_axi_mem_awvalid,
      s_axi_mem_bid(3 downto 0) => s_axi_mem_bid(3 downto 0),
      s_axi_mem_bready => s_axi_mem_bready,
      s_axi_mem_bresp(0) => \^s_axi_mem_bresp\(1),
      s_axi_mem_bvalid => s_axi_mem_bvalid,
      s_axi_mem_rdata(31 downto 0) => s_axi_mem_rdata(31 downto 0),
      s_axi_mem_rid(3 downto 0) => s_axi_mem_rid(3 downto 0),
      s_axi_mem_rlast => s_axi_mem_rlast,
      s_axi_mem_rready => s_axi_mem_rready,
      s_axi_mem_rresp(0) => \^s_axi_mem_rresp\(1),
      s_axi_mem_rvalid => s_axi_mem_rvalid,
      s_axi_mem_wdata(31 downto 0) => s_axi_mem_wdata(31 downto 0),
      s_axi_mem_wlast => s_axi_mem_wlast,
      s_axi_mem_wready => s_axi_mem_wready,
      s_axi_mem_wstrb(3 downto 0) => s_axi_mem_wstrb(3 downto 0),
      s_axi_mem_wvalid => s_axi_mem_wvalid,
      s_axi_reg_araddr(2 downto 0) => s_axi_reg_araddr(4 downto 2),
      s_axi_reg_arready => s_axi_reg_arready,
      s_axi_reg_arvalid => s_axi_reg_arvalid,
      s_axi_reg_awaddr(2 downto 0) => s_axi_reg_awaddr(4 downto 2),
      s_axi_reg_awready => \^s_axi_reg_awready\,
      s_axi_reg_awvalid => s_axi_reg_awvalid,
      s_axi_reg_bready => s_axi_reg_bready,
      s_axi_reg_bvalid => s_axi_reg_bvalid,
      s_axi_reg_rdata(8 downto 7) => \^s_axi_reg_rdata\(31 downto 30),
      s_axi_reg_rdata(6 downto 0) => \^s_axi_reg_rdata\(6 downto 0),
      s_axi_reg_rready => s_axi_reg_rready,
      s_axi_reg_rvalid => s_axi_reg_rvalid,
      s_axi_reg_wdata(8 downto 7) => s_axi_reg_wdata(31 downto 30),
      s_axi_reg_wdata(6 downto 0) => s_axi_reg_wdata(6 downto 0),
      s_axi_reg_wvalid => s_axi_reg_wvalid
    );
end STRUCTURE;

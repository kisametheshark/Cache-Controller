--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: CacheController_synthesis.vhd
-- /___/   /\     Timestamp: Fri Oct 27 17:35:05 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm CacheController -w -dir netgen/synthesis -ofmt vhdl -sim CacheController.ngc CacheController_synthesis.vhd 
-- Device	: xc3s500e-5-fg320
-- Input file	: CacheController.ngc
-- Output file	: /home/student2/a3lall/Desktop/COE758/COE758_Tutorials/coe758designproj1/netgen/synthesis/CacheController_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: CacheController
-- Xilinx	: /CMC/tools/xilinx/13.4/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity CacheController is
  port (
    wr_rd : inout STD_LOGIC; 
    clk : in STD_LOGIC := 'X'; 
    cs : in STD_LOGIC := 'X'; 
    mstrb : out STD_LOGIC; 
    rdy : out STD_LOGIC; 
    cpu_addr : inout STD_LOGIC_VECTOR ( 15 downto 0 ); 
    what_state : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    awr : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    sram_wen : out STD_LOGIC_VECTOR ( 0 downto 0 ); 
    sdram_addr : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    sram_dout : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    sram_addr : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    sram_din : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end CacheController;

architecture Structure of CacheController is
  component bram
    port (
      clka : in STD_LOGIC := 'X'; 
      douta : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      wea : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      dina : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  signal Madd_initialized_addsub0000_cy_10_rt_2 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_11_rt_4 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_12_rt_6 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_13_rt_8 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_14_rt_10 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_15_rt_12 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_16_rt_14 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_17_rt_16 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_18_rt_18 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_19_rt_20 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_1_rt_22 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_20_rt_24 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_21_rt_26 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_22_rt_28 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_23_rt_30 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_24_rt_32 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_25_rt_34 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_26_rt_36 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_27_rt_38 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_28_rt_40 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_29_rt_42 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_2_rt_44 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_30_rt_46 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_3_rt_48 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_4_rt_50 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_5_rt_52 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_6_rt_54 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_7_rt_56 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_8_rt_58 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy_9_rt_60 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_xor_31_rt_62 : STD_LOGIC; 
  signal Madd_sdram_offset_sig_share0000_cy_1_rt_65 : STD_LOGIC; 
  signal Madd_sdram_offset_sig_share0000_cy_2_rt_67 : STD_LOGIC; 
  signal Madd_sdram_offset_sig_share0000_cy_3_rt_69 : STD_LOGIC; 
  signal Madd_sdram_offset_sig_share0000_xor_4_rt_71 : STD_LOGIC; 
  signal Mcompar_cmp_lt0000_cy_0_rt_73 : STD_LOGIC; 
  signal Mmux_dirty_bit_sig_mux0000_3_f5 : STD_LOGIC; 
  signal Mmux_dirty_bit_sig_mux0000_4_f5 : STD_LOGIC; 
  signal Mmux_valid_bit_sig_mux0000_4_f5 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal awr_0_OBUF_156 : STD_LOGIC; 
  signal awr_1_OBUF_157 : STD_LOGIC; 
  signal awr_2_OBUF_158 : STD_LOGIC; 
  signal clk_BUFGP_160 : STD_LOGIC; 
  signal cpu_addr_1_OBUF_177 : STD_LOGIC; 
  signal cpu_addr_6_OBUF_178 : STD_LOGIC; 
  signal cpu_rdy_sig_183 : STD_LOGIC; 
  signal cpu_rdy_sig_mux00001_184 : STD_LOGIC; 
  signal dirty_bit_sig_0_Q : STD_LOGIC; 
  signal dirty_bit_sig_0_mux0001 : STD_LOGIC; 
  signal dirty_bit_sig_2_Q : STD_LOGIC; 
  signal dirty_bit_sig_2_mux0001 : STD_LOGIC; 
  signal initialized_mux0002_0_0 : STD_LOGIC; 
  signal initialized_mux0002_0_11_254 : STD_LOGIC; 
  signal initialized_mux0002_0_21 : STD_LOGIC; 
  signal initialized_mux0002_10_Q : STD_LOGIC; 
  signal initialized_mux0002_11_Q : STD_LOGIC; 
  signal initialized_mux0002_12_Q : STD_LOGIC; 
  signal initialized_mux0002_13_Q : STD_LOGIC; 
  signal initialized_mux0002_14_Q : STD_LOGIC; 
  signal initialized_mux0002_15_Q : STD_LOGIC; 
  signal initialized_mux0002_16_Q : STD_LOGIC; 
  signal initialized_mux0002_17_Q : STD_LOGIC; 
  signal initialized_mux0002_18_Q : STD_LOGIC; 
  signal initialized_mux0002_19_Q : STD_LOGIC; 
  signal initialized_mux0002_1_Q : STD_LOGIC; 
  signal initialized_mux0002_20_Q : STD_LOGIC; 
  signal initialized_mux0002_21_Q : STD_LOGIC; 
  signal initialized_mux0002_22_Q : STD_LOGIC; 
  signal initialized_mux0002_23_Q : STD_LOGIC; 
  signal initialized_mux0002_24_Q : STD_LOGIC; 
  signal initialized_mux0002_25_Q : STD_LOGIC; 
  signal initialized_mux0002_26_Q : STD_LOGIC; 
  signal initialized_mux0002_27_Q : STD_LOGIC; 
  signal initialized_mux0002_28_Q : STD_LOGIC; 
  signal initialized_mux0002_29_Q : STD_LOGIC; 
  signal initialized_mux0002_2_Q : STD_LOGIC; 
  signal initialized_mux0002_30_Q : STD_LOGIC; 
  signal initialized_mux0002_31_Q : STD_LOGIC; 
  signal initialized_mux0002_3_Q : STD_LOGIC; 
  signal initialized_mux0002_4_Q : STD_LOGIC; 
  signal initialized_mux0002_5_Q : STD_LOGIC; 
  signal initialized_mux0002_6_11_283 : STD_LOGIC; 
  signal initialized_mux0002_6_21 : STD_LOGIC; 
  signal initialized_mux0002_7_Q : STD_LOGIC; 
  signal initialized_mux0002_8_Q : STD_LOGIC; 
  signal initialized_mux0002_9_Q : STD_LOGIC; 
  signal sdram_addr_sig_0_Q : STD_LOGIC; 
  signal sdram_addr_sig_0_mux0000 : STD_LOGIC; 
  signal sdram_addr_sig_1_Q : STD_LOGIC; 
  signal sdram_addr_sig_1_mux0000 : STD_LOGIC; 
  signal sdram_addr_sig_2_Q : STD_LOGIC; 
  signal sdram_addr_sig_2_mux0000 : STD_LOGIC; 
  signal sdram_addr_sig_3_Q : STD_LOGIC; 
  signal sdram_addr_sig_3_mux0000 : STD_LOGIC; 
  signal sdram_addr_sig_4_Q : STD_LOGIC; 
  signal sdram_addr_sig_4_mux0000 : STD_LOGIC; 
  signal sdram_addr_sig_6_Q : STD_LOGIC; 
  signal sdram_mstrb_sig_317 : STD_LOGIC; 
  signal sdram_mstrb_sig_mux00011_318 : STD_LOGIC; 
  signal sram_addr_sig_0_Q : STD_LOGIC; 
  signal sram_addr_sig_0_mux0000_343 : STD_LOGIC; 
  signal sram_addr_sig_1_Q : STD_LOGIC; 
  signal sram_addr_sig_1_mux00000_345 : STD_LOGIC; 
  signal sram_addr_sig_1_mux000011 : STD_LOGIC; 
  signal sram_addr_sig_2_Q : STD_LOGIC; 
  signal sram_addr_sig_2_mux00001_348 : STD_LOGIC; 
  signal sram_addr_sig_3_Q : STD_LOGIC; 
  signal sram_addr_sig_3_mux0000_350 : STD_LOGIC; 
  signal sram_addr_sig_4_Q : STD_LOGIC; 
  signal sram_addr_sig_4_mux0000_352 : STD_LOGIC; 
  signal sram_addr_sig_6_Q : STD_LOGIC; 
  signal sram_addr_sig_6_mux00000_354 : STD_LOGIC; 
  signal sram_addr_sig_6_mux000011 : STD_LOGIC; 
  signal sram_dout_0_OBUF_384 : STD_LOGIC; 
  signal sram_dout_1_OBUF_385 : STD_LOGIC; 
  signal sram_dout_2_OBUF_386 : STD_LOGIC; 
  signal sram_dout_3_OBUF_387 : STD_LOGIC; 
  signal sram_dout_4_OBUF_388 : STD_LOGIC; 
  signal sram_dout_5_OBUF_389 : STD_LOGIC; 
  signal sram_dout_6_OBUF_390 : STD_LOGIC; 
  signal sram_dout_7_OBUF_391 : STD_LOGIC; 
  signal sram_wen_sig_0_mux00001 : STD_LOGIC; 
  signal state_FSM_FFd1_395 : STD_LOGIC; 
  signal state_FSM_FFd1_In1 : STD_LOGIC; 
  signal state_FSM_FFd2_397 : STD_LOGIC; 
  signal state_FSM_FFd2_In_398 : STD_LOGIC; 
  signal state_FSM_FFd3_399 : STD_LOGIC; 
  signal state_FSM_FFd3_In1_400 : STD_LOGIC; 
  signal state_FSM_FFd4_401 : STD_LOGIC; 
  signal state_FSM_FFd4_In : STD_LOGIC; 
  signal state_FSM_FFd5_403 : STD_LOGIC; 
  signal state_FSM_FFd5_In1 : STD_LOGIC; 
  signal state_FSM_FFd6_405 : STD_LOGIC; 
  signal state_FSM_FFd6_In : STD_LOGIC; 
  signal state_cmp_eq0000 : STD_LOGIC; 
  signal state_cmp_eq0001 : STD_LOGIC; 
  signal this_cpu_cs_430 : STD_LOGIC; 
  signal this_cpu_cs_mux0005 : STD_LOGIC; 
  signal this_cpu_rReg1_435 : STD_LOGIC; 
  signal this_cpu_rReg2_436 : STD_LOGIC; 
  signal this_cpu_st1_FSM_FFd1_437 : STD_LOGIC; 
  signal this_cpu_st1_FSM_FFd2_438 : STD_LOGIC; 
  signal this_cpu_st1_FSM_FFd3_439 : STD_LOGIC; 
  signal this_cpu_st1_FSM_FFd4_440 : STD_LOGIC; 
  signal this_cpu_st1_FSM_FFd5_441 : STD_LOGIC; 
  signal this_cpu_st1_FSM_FFd5_In : STD_LOGIC; 
  signal this_cpu_st1_FSM_FFd6_443 : STD_LOGIC; 
  signal this_cpu_st1_FSM_FFd6_In : STD_LOGIC; 
  signal this_cpu_updPat_445 : STD_LOGIC; 
  signal this_cpu_updPat_or0000_446 : STD_LOGIC; 
  signal valid_bit_sig_0_Q : STD_LOGIC; 
  signal valid_bit_sig_0_mux00011 : STD_LOGIC; 
  signal valid_bit_sig_2_Q : STD_LOGIC; 
  signal valid_bit_sig_2_mux00011 : STD_LOGIC; 
  signal what_state_0_OBUF_455 : STD_LOGIC; 
  signal what_state_1_OBUF_456 : STD_LOGIC; 
  signal what_state_2_OBUF_457 : STD_LOGIC; 
  signal write_ctrl_459 : STD_LOGIC; 
  signal Madd_initialized_addsub0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Madd_initialized_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_sdram_offset_sig_share0000_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Madd_sdram_offset_sig_share0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcompar_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcompar_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal Q_varindex0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cpu_dout_sig : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal initialized : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal initialized_addsub0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal sdram_offset_sig : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal sdram_offset_sig_mux0000 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal sdram_offset_sig_share0000 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal sram_din_sig : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sram_din_sig_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal sram_wen_sig : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal state_cmp_eq0001_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal state_cmp_eq0001_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal tag_sig : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal this_cpu_Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal this_cpu_patCtrl : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => Mmux_dirty_bit_sig_mux0000_3_f5
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  sdram_offset_sig_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => sdram_offset_sig_mux0000(0),
      Q => sdram_offset_sig(0)
    );
  sdram_offset_sig_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => sdram_offset_sig_mux0000(1),
      Q => sdram_offset_sig(1)
    );
  sdram_offset_sig_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => sdram_offset_sig_mux0000(2),
      Q => sdram_offset_sig(2)
    );
  sdram_offset_sig_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => sdram_offset_sig_mux0000(3),
      Q => sdram_offset_sig(3)
    );
  sdram_offset_sig_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => sdram_offset_sig_mux0000(4),
      Q => sdram_offset_sig(4)
    );
  dirty_bit_sig_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => dirty_bit_sig_0_mux0001,
      Q => dirty_bit_sig_0_Q
    );
  dirty_bit_sig_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => dirty_bit_sig_2_mux0001,
      Q => dirty_bit_sig_2_Q
    );
  sram_din_sig_0 : FD
    port map (
      C => clk_BUFGP_160,
      D => sram_din_sig_mux0000(0),
      Q => sram_din_sig(0)
    );
  sram_din_sig_1 : FD
    port map (
      C => clk_BUFGP_160,
      D => sram_din_sig_mux0000(1),
      Q => sram_din_sig(1)
    );
  sram_din_sig_2 : FD
    port map (
      C => clk_BUFGP_160,
      D => sram_din_sig_mux0000(2),
      Q => sram_din_sig(2)
    );
  sram_din_sig_3 : FD
    port map (
      C => clk_BUFGP_160,
      D => sram_din_sig_mux0000(3),
      Q => sram_din_sig(3)
    );
  sdram_addr_sig_0 : FD
    port map (
      C => clk_BUFGP_160,
      D => sdram_addr_sig_0_mux0000,
      Q => sdram_addr_sig_0_Q
    );
  sdram_addr_sig_1 : FD
    port map (
      C => clk_BUFGP_160,
      D => sdram_addr_sig_1_mux0000,
      Q => sdram_addr_sig_1_Q
    );
  sdram_addr_sig_2 : FD
    port map (
      C => clk_BUFGP_160,
      D => sdram_addr_sig_2_mux0000,
      Q => sdram_addr_sig_2_Q
    );
  sdram_addr_sig_3 : FD
    port map (
      C => clk_BUFGP_160,
      D => sdram_addr_sig_3_mux0000,
      Q => sdram_addr_sig_3_Q
    );
  sdram_addr_sig_4 : FD
    port map (
      C => clk_BUFGP_160,
      D => sdram_addr_sig_4_mux0000,
      Q => sdram_addr_sig_4_Q
    );
  sram_addr_sig_0 : FD
    port map (
      C => clk_BUFGP_160,
      D => sram_addr_sig_0_mux0000_343,
      Q => sram_addr_sig_0_Q
    );
  sram_addr_sig_3 : FD
    port map (
      C => clk_BUFGP_160,
      D => sram_addr_sig_3_mux0000_350,
      Q => sram_addr_sig_3_Q
    );
  sram_addr_sig_4 : FD
    port map (
      C => clk_BUFGP_160,
      D => sram_addr_sig_4_mux0000_352,
      Q => sram_addr_sig_4_Q
    );
  initialized_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_1_Q,
      Q => initialized(1)
    );
  initialized_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_2_Q,
      Q => initialized(2)
    );
  initialized_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_3_Q,
      Q => initialized(3)
    );
  initialized_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_4_Q,
      Q => initialized(4)
    );
  initialized_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_5_Q,
      Q => initialized(5)
    );
  initialized_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_7_Q,
      Q => initialized(7)
    );
  initialized_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_8_Q,
      Q => initialized(8)
    );
  initialized_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_9_Q,
      Q => initialized(9)
    );
  initialized_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_10_Q,
      Q => initialized(10)
    );
  initialized_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_11_Q,
      Q => initialized(11)
    );
  initialized_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_12_Q,
      Q => initialized(12)
    );
  initialized_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_13_Q,
      Q => initialized(13)
    );
  initialized_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_14_Q,
      Q => initialized(14)
    );
  initialized_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_15_Q,
      Q => initialized(15)
    );
  initialized_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_16_Q,
      Q => initialized(16)
    );
  initialized_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_17_Q,
      Q => initialized(17)
    );
  initialized_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_18_Q,
      Q => initialized(18)
    );
  initialized_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_19_Q,
      Q => initialized(19)
    );
  initialized_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_20_Q,
      Q => initialized(20)
    );
  initialized_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_21_Q,
      Q => initialized(21)
    );
  initialized_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_22_Q,
      Q => initialized(22)
    );
  initialized_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_23_Q,
      Q => initialized(23)
    );
  initialized_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_24_Q,
      Q => initialized(24)
    );
  initialized_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_25_Q,
      Q => initialized(25)
    );
  initialized_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_26_Q,
      Q => initialized(26)
    );
  initialized_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_27_Q,
      Q => initialized(27)
    );
  initialized_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_28_Q,
      Q => initialized(28)
    );
  initialized_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_29_Q,
      Q => initialized(29)
    );
  initialized_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_30_Q,
      Q => initialized(30)
    );
  initialized_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_31_Q,
      Q => initialized(31)
    );
  tag_sig_0 : FDE
    port map (
      C => clk_BUFGP_160,
      CE => state_FSM_FFd6_405,
      D => awr_0_OBUF_156,
      Q => tag_sig(0)
    );
  tag_sig_1 : FDE
    port map (
      C => clk_BUFGP_160,
      CE => state_FSM_FFd6_405,
      D => awr_1_OBUF_157,
      Q => tag_sig(1)
    );
  tag_sig_2 : FDE
    port map (
      C => clk_BUFGP_160,
      CE => state_FSM_FFd6_405,
      D => awr_2_OBUF_158,
      Q => tag_sig(2)
    );
  sdram_addr_sig_6 : FDE
    port map (
      C => clk_BUFGP_160,
      CE => state_FSM_FFd6_405,
      D => cpu_addr_6_OBUF_178,
      Q => sdram_addr_sig_6_Q
    );
  Mram_memory_tag_sig2 : RAM16X1S
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => Mmux_dirty_bit_sig_mux0000_3_f5,
      A1 => sdram_addr_sig_6_Q,
      A2 => Mmux_dirty_bit_sig_mux0000_3_f5,
      A3 => Mmux_dirty_bit_sig_mux0000_3_f5,
      D => tag_sig(1),
      WCLK => clk_BUFGP_160,
      WE => write_ctrl_459,
      O => Q_varindex0000(1)
    );
  Mram_memory_tag_sig1 : RAM16X1S
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => Mmux_dirty_bit_sig_mux0000_3_f5,
      A1 => sdram_addr_sig_6_Q,
      A2 => Mmux_dirty_bit_sig_mux0000_3_f5,
      A3 => Mmux_dirty_bit_sig_mux0000_3_f5,
      D => tag_sig(0),
      WCLK => clk_BUFGP_160,
      WE => write_ctrl_459,
      O => Q_varindex0000(0)
    );
  Mram_memory_tag_sig3 : RAM16X1S
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => Mmux_dirty_bit_sig_mux0000_3_f5,
      A1 => sdram_addr_sig_6_Q,
      A2 => Mmux_dirty_bit_sig_mux0000_3_f5,
      A3 => Mmux_dirty_bit_sig_mux0000_3_f5,
      D => tag_sig(2),
      WCLK => clk_BUFGP_160,
      WE => write_ctrl_459,
      O => Q_varindex0000(2)
    );
  Mram_memory_tag_sig4 : RAM16X1S
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => Mmux_dirty_bit_sig_mux0000_3_f5,
      A1 => sdram_addr_sig_6_Q,
      A2 => Mmux_dirty_bit_sig_mux0000_3_f5,
      A3 => Mmux_dirty_bit_sig_mux0000_3_f5,
      D => Mmux_dirty_bit_sig_mux0000_3_f5,
      WCLK => clk_BUFGP_160,
      WE => write_ctrl_459,
      O => Q_varindex0000(3)
    );
  Madd_sdram_offset_sig_share0000_cy_0_Q : MUXCY
    port map (
      CI => Mmux_dirty_bit_sig_mux0000_3_f5,
      DI => N1,
      S => Madd_sdram_offset_sig_share0000_lut(0),
      O => Madd_sdram_offset_sig_share0000_cy(0)
    );
  Madd_sdram_offset_sig_share0000_xor_0_Q : XORCY
    port map (
      CI => Mmux_dirty_bit_sig_mux0000_3_f5,
      LI => Madd_sdram_offset_sig_share0000_lut(0),
      O => sdram_offset_sig_share0000(0)
    );
  Madd_sdram_offset_sig_share0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_sdram_offset_sig_share0000_cy(0),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_sdram_offset_sig_share0000_cy_1_rt_65,
      O => Madd_sdram_offset_sig_share0000_cy(1)
    );
  Madd_sdram_offset_sig_share0000_xor_1_Q : XORCY
    port map (
      CI => Madd_sdram_offset_sig_share0000_cy(0),
      LI => Madd_sdram_offset_sig_share0000_cy_1_rt_65,
      O => sdram_offset_sig_share0000(1)
    );
  Madd_sdram_offset_sig_share0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_sdram_offset_sig_share0000_cy(1),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_sdram_offset_sig_share0000_cy_2_rt_67,
      O => Madd_sdram_offset_sig_share0000_cy(2)
    );
  Madd_sdram_offset_sig_share0000_xor_2_Q : XORCY
    port map (
      CI => Madd_sdram_offset_sig_share0000_cy(1),
      LI => Madd_sdram_offset_sig_share0000_cy_2_rt_67,
      O => sdram_offset_sig_share0000(2)
    );
  Madd_sdram_offset_sig_share0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_sdram_offset_sig_share0000_cy(2),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_sdram_offset_sig_share0000_cy_3_rt_69,
      O => Madd_sdram_offset_sig_share0000_cy(3)
    );
  Madd_sdram_offset_sig_share0000_xor_3_Q : XORCY
    port map (
      CI => Madd_sdram_offset_sig_share0000_cy(2),
      LI => Madd_sdram_offset_sig_share0000_cy_3_rt_69,
      O => sdram_offset_sig_share0000(3)
    );
  Madd_sdram_offset_sig_share0000_xor_4_Q : XORCY
    port map (
      CI => Madd_sdram_offset_sig_share0000_cy(3),
      LI => Madd_sdram_offset_sig_share0000_xor_4_rt_71,
      O => sdram_offset_sig_share0000(4)
    );
  Madd_initialized_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => Mmux_dirty_bit_sig_mux0000_3_f5,
      DI => N1,
      S => Madd_initialized_addsub0000_lut(0),
      O => Madd_initialized_addsub0000_cy(0)
    );
  Madd_initialized_addsub0000_xor_0_Q : XORCY
    port map (
      CI => Mmux_dirty_bit_sig_mux0000_3_f5,
      LI => Madd_initialized_addsub0000_lut(0),
      O => initialized_addsub0000(0)
    );
  Madd_initialized_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(0),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_1_rt_22,
      O => Madd_initialized_addsub0000_cy(1)
    );
  Madd_initialized_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(0),
      LI => Madd_initialized_addsub0000_cy_1_rt_22,
      O => initialized_addsub0000(1)
    );
  Madd_initialized_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(1),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_2_rt_44,
      O => Madd_initialized_addsub0000_cy(2)
    );
  Madd_initialized_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(1),
      LI => Madd_initialized_addsub0000_cy_2_rt_44,
      O => initialized_addsub0000(2)
    );
  Madd_initialized_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(2),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_3_rt_48,
      O => Madd_initialized_addsub0000_cy(3)
    );
  Madd_initialized_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(2),
      LI => Madd_initialized_addsub0000_cy_3_rt_48,
      O => initialized_addsub0000(3)
    );
  Madd_initialized_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(3),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_4_rt_50,
      O => Madd_initialized_addsub0000_cy(4)
    );
  Madd_initialized_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(3),
      LI => Madd_initialized_addsub0000_cy_4_rt_50,
      O => initialized_addsub0000(4)
    );
  Madd_initialized_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(4),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_5_rt_52,
      O => Madd_initialized_addsub0000_cy(5)
    );
  Madd_initialized_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(4),
      LI => Madd_initialized_addsub0000_cy_5_rt_52,
      O => initialized_addsub0000(5)
    );
  Madd_initialized_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(5),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_6_rt_54,
      O => Madd_initialized_addsub0000_cy(6)
    );
  Madd_initialized_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(5),
      LI => Madd_initialized_addsub0000_cy_6_rt_54,
      O => initialized_addsub0000(6)
    );
  Madd_initialized_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(6),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_7_rt_56,
      O => Madd_initialized_addsub0000_cy(7)
    );
  Madd_initialized_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(6),
      LI => Madd_initialized_addsub0000_cy_7_rt_56,
      O => initialized_addsub0000(7)
    );
  Madd_initialized_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(7),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_8_rt_58,
      O => Madd_initialized_addsub0000_cy(8)
    );
  Madd_initialized_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(7),
      LI => Madd_initialized_addsub0000_cy_8_rt_58,
      O => initialized_addsub0000(8)
    );
  Madd_initialized_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(8),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_9_rt_60,
      O => Madd_initialized_addsub0000_cy(9)
    );
  Madd_initialized_addsub0000_xor_9_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(8),
      LI => Madd_initialized_addsub0000_cy_9_rt_60,
      O => initialized_addsub0000(9)
    );
  Madd_initialized_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(9),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_10_rt_2,
      O => Madd_initialized_addsub0000_cy(10)
    );
  Madd_initialized_addsub0000_xor_10_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(9),
      LI => Madd_initialized_addsub0000_cy_10_rt_2,
      O => initialized_addsub0000(10)
    );
  Madd_initialized_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(10),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_11_rt_4,
      O => Madd_initialized_addsub0000_cy(11)
    );
  Madd_initialized_addsub0000_xor_11_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(10),
      LI => Madd_initialized_addsub0000_cy_11_rt_4,
      O => initialized_addsub0000(11)
    );
  Madd_initialized_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(11),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_12_rt_6,
      O => Madd_initialized_addsub0000_cy(12)
    );
  Madd_initialized_addsub0000_xor_12_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(11),
      LI => Madd_initialized_addsub0000_cy_12_rt_6,
      O => initialized_addsub0000(12)
    );
  Madd_initialized_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(12),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_13_rt_8,
      O => Madd_initialized_addsub0000_cy(13)
    );
  Madd_initialized_addsub0000_xor_13_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(12),
      LI => Madd_initialized_addsub0000_cy_13_rt_8,
      O => initialized_addsub0000(13)
    );
  Madd_initialized_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(13),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_14_rt_10,
      O => Madd_initialized_addsub0000_cy(14)
    );
  Madd_initialized_addsub0000_xor_14_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(13),
      LI => Madd_initialized_addsub0000_cy_14_rt_10,
      O => initialized_addsub0000(14)
    );
  Madd_initialized_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(14),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_15_rt_12,
      O => Madd_initialized_addsub0000_cy(15)
    );
  Madd_initialized_addsub0000_xor_15_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(14),
      LI => Madd_initialized_addsub0000_cy_15_rt_12,
      O => initialized_addsub0000(15)
    );
  Madd_initialized_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(15),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_16_rt_14,
      O => Madd_initialized_addsub0000_cy(16)
    );
  Madd_initialized_addsub0000_xor_16_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(15),
      LI => Madd_initialized_addsub0000_cy_16_rt_14,
      O => initialized_addsub0000(16)
    );
  Madd_initialized_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(16),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_17_rt_16,
      O => Madd_initialized_addsub0000_cy(17)
    );
  Madd_initialized_addsub0000_xor_17_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(16),
      LI => Madd_initialized_addsub0000_cy_17_rt_16,
      O => initialized_addsub0000(17)
    );
  Madd_initialized_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(17),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_18_rt_18,
      O => Madd_initialized_addsub0000_cy(18)
    );
  Madd_initialized_addsub0000_xor_18_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(17),
      LI => Madd_initialized_addsub0000_cy_18_rt_18,
      O => initialized_addsub0000(18)
    );
  Madd_initialized_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(18),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_19_rt_20,
      O => Madd_initialized_addsub0000_cy(19)
    );
  Madd_initialized_addsub0000_xor_19_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(18),
      LI => Madd_initialized_addsub0000_cy_19_rt_20,
      O => initialized_addsub0000(19)
    );
  Madd_initialized_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(19),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_20_rt_24,
      O => Madd_initialized_addsub0000_cy(20)
    );
  Madd_initialized_addsub0000_xor_20_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(19),
      LI => Madd_initialized_addsub0000_cy_20_rt_24,
      O => initialized_addsub0000(20)
    );
  Madd_initialized_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(20),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_21_rt_26,
      O => Madd_initialized_addsub0000_cy(21)
    );
  Madd_initialized_addsub0000_xor_21_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(20),
      LI => Madd_initialized_addsub0000_cy_21_rt_26,
      O => initialized_addsub0000(21)
    );
  Madd_initialized_addsub0000_cy_22_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(21),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_22_rt_28,
      O => Madd_initialized_addsub0000_cy(22)
    );
  Madd_initialized_addsub0000_xor_22_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(21),
      LI => Madd_initialized_addsub0000_cy_22_rt_28,
      O => initialized_addsub0000(22)
    );
  Madd_initialized_addsub0000_cy_23_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(22),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_23_rt_30,
      O => Madd_initialized_addsub0000_cy(23)
    );
  Madd_initialized_addsub0000_xor_23_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(22),
      LI => Madd_initialized_addsub0000_cy_23_rt_30,
      O => initialized_addsub0000(23)
    );
  Madd_initialized_addsub0000_cy_24_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(23),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_24_rt_32,
      O => Madd_initialized_addsub0000_cy(24)
    );
  Madd_initialized_addsub0000_xor_24_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(23),
      LI => Madd_initialized_addsub0000_cy_24_rt_32,
      O => initialized_addsub0000(24)
    );
  Madd_initialized_addsub0000_cy_25_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(24),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_25_rt_34,
      O => Madd_initialized_addsub0000_cy(25)
    );
  Madd_initialized_addsub0000_xor_25_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(24),
      LI => Madd_initialized_addsub0000_cy_25_rt_34,
      O => initialized_addsub0000(25)
    );
  Madd_initialized_addsub0000_cy_26_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(25),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_26_rt_36,
      O => Madd_initialized_addsub0000_cy(26)
    );
  Madd_initialized_addsub0000_xor_26_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(25),
      LI => Madd_initialized_addsub0000_cy_26_rt_36,
      O => initialized_addsub0000(26)
    );
  Madd_initialized_addsub0000_cy_27_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(26),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_27_rt_38,
      O => Madd_initialized_addsub0000_cy(27)
    );
  Madd_initialized_addsub0000_xor_27_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(26),
      LI => Madd_initialized_addsub0000_cy_27_rt_38,
      O => initialized_addsub0000(27)
    );
  Madd_initialized_addsub0000_cy_28_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(27),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_28_rt_40,
      O => Madd_initialized_addsub0000_cy(28)
    );
  Madd_initialized_addsub0000_xor_28_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(27),
      LI => Madd_initialized_addsub0000_cy_28_rt_40,
      O => initialized_addsub0000(28)
    );
  Madd_initialized_addsub0000_cy_29_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(28),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_29_rt_42,
      O => Madd_initialized_addsub0000_cy(29)
    );
  Madd_initialized_addsub0000_xor_29_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(28),
      LI => Madd_initialized_addsub0000_cy_29_rt_42,
      O => initialized_addsub0000(29)
    );
  Madd_initialized_addsub0000_cy_30_Q : MUXCY
    port map (
      CI => Madd_initialized_addsub0000_cy(29),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Madd_initialized_addsub0000_cy_30_rt_46,
      O => Madd_initialized_addsub0000_cy(30)
    );
  Madd_initialized_addsub0000_xor_30_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(29),
      LI => Madd_initialized_addsub0000_cy_30_rt_46,
      O => initialized_addsub0000(30)
    );
  Madd_initialized_addsub0000_xor_31_Q : XORCY
    port map (
      CI => Madd_initialized_addsub0000_cy(30),
      LI => Madd_initialized_addsub0000_xor_31_rt_62,
      O => initialized_addsub0000(31)
    );
  Mcompar_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Mcompar_cmp_lt0000_cy_0_rt_73,
      O => Mcompar_cmp_lt0000_cy(0)
    );
  Mcompar_cmp_lt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => initialized(7),
      I1 => initialized(8),
      I2 => initialized(9),
      I3 => initialized(10),
      O => Mcompar_cmp_lt0000_lut(1)
    );
  Mcompar_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_cmp_lt0000_cy(0),
      DI => N1,
      S => Mcompar_cmp_lt0000_lut(1),
      O => Mcompar_cmp_lt0000_cy(1)
    );
  Mcompar_cmp_lt0000_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => initialized(11),
      I1 => initialized(12),
      I2 => initialized(13),
      I3 => initialized(14),
      O => Mcompar_cmp_lt0000_lut(2)
    );
  Mcompar_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_cmp_lt0000_cy(1),
      DI => N1,
      S => Mcompar_cmp_lt0000_lut(2),
      O => Mcompar_cmp_lt0000_cy(2)
    );
  Mcompar_cmp_lt0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => initialized(15),
      I1 => initialized(16),
      I2 => initialized(17),
      I3 => initialized(18),
      O => Mcompar_cmp_lt0000_lut(3)
    );
  Mcompar_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_cmp_lt0000_cy(2),
      DI => N1,
      S => Mcompar_cmp_lt0000_lut(3),
      O => Mcompar_cmp_lt0000_cy(3)
    );
  Mcompar_cmp_lt0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => initialized(19),
      I1 => initialized(20),
      I2 => initialized(21),
      I3 => initialized(22),
      O => Mcompar_cmp_lt0000_lut(4)
    );
  Mcompar_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_cmp_lt0000_cy(3),
      DI => N1,
      S => Mcompar_cmp_lt0000_lut(4),
      O => Mcompar_cmp_lt0000_cy(4)
    );
  Mcompar_cmp_lt0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => initialized(23),
      I1 => initialized(24),
      I2 => initialized(25),
      I3 => initialized(26),
      O => Mcompar_cmp_lt0000_lut(5)
    );
  Mcompar_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_cmp_lt0000_cy(4),
      DI => N1,
      S => Mcompar_cmp_lt0000_lut(5),
      O => Mcompar_cmp_lt0000_cy(5)
    );
  Mcompar_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => initialized(27),
      I1 => initialized(28),
      I2 => initialized(29),
      I3 => initialized(30),
      O => Mcompar_cmp_lt0000_lut(6)
    );
  Mcompar_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_cmp_lt0000_cy(5),
      DI => N1,
      S => Mcompar_cmp_lt0000_lut(6),
      O => Mcompar_cmp_lt0000_cy(6)
    );
  Mcompar_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_cmp_lt0000_cy(6),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => Mcompar_cmp_lt0000_lut(7),
      O => Mcompar_cmp_lt0000_cy(7)
    );
  this_SRAM : bram
    port map (
      clka => clk_BUFGP_160,
      douta(7) => sram_dout_7_OBUF_391,
      douta(6) => sram_dout_6_OBUF_390,
      douta(5) => sram_dout_5_OBUF_389,
      douta(4) => sram_dout_4_OBUF_388,
      douta(3) => sram_dout_3_OBUF_387,
      douta(2) => sram_dout_2_OBUF_386,
      douta(1) => sram_dout_1_OBUF_385,
      douta(0) => sram_dout_0_OBUF_384,
      wea(0) => sram_wen_sig(0),
      addra(7) => Mmux_dirty_bit_sig_mux0000_3_f5,
      addra(6) => sram_addr_sig_6_Q,
      addra(5) => Mmux_dirty_bit_sig_mux0000_3_f5,
      addra(4) => sram_addr_sig_4_Q,
      addra(3) => sram_addr_sig_3_Q,
      addra(2) => sram_addr_sig_2_Q,
      addra(1) => sram_addr_sig_1_Q,
      addra(0) => sram_addr_sig_0_Q,
      dina(7) => sram_din_sig(7),
      dina(6) => sram_din_sig(6),
      dina(5) => sram_din_sig(5),
      dina(4) => sram_din_sig(4),
      dina(3) => sram_din_sig(3),
      dina(2) => sram_din_sig(2),
      dina(1) => sram_din_sig(1),
      dina(0) => sram_din_sig(0)
    );
  state_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => state_FSM_FFd2_In_398,
      Q => state_FSM_FFd2_397
    );
  state_FSM_FFd6 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_160,
      D => state_FSM_FFd6_In,
      Q => state_FSM_FFd6_405
    );
  state_FSM_FFd4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => state_FSM_FFd4_In,
      Q => state_FSM_FFd4_401
    );
  this_cpu_st1_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      CLR => Mmux_dirty_bit_sig_mux0000_3_f5,
      D => this_cpu_st1_FSM_FFd2_438,
      Q => this_cpu_st1_FSM_FFd1_437
    );
  this_cpu_st1_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      CLR => Mmux_dirty_bit_sig_mux0000_3_f5,
      D => this_cpu_st1_FSM_FFd3_439,
      Q => this_cpu_st1_FSM_FFd2_438
    );
  this_cpu_st1_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      CLR => Mmux_dirty_bit_sig_mux0000_3_f5,
      D => this_cpu_st1_FSM_FFd4_440,
      Q => this_cpu_st1_FSM_FFd3_439
    );
  this_cpu_st1_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      CLR => Mmux_dirty_bit_sig_mux0000_3_f5,
      D => this_cpu_st1_FSM_FFd5_441,
      Q => this_cpu_st1_FSM_FFd4_440
    );
  this_cpu_st1_FSM_FFd5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      CLR => Mmux_dirty_bit_sig_mux0000_3_f5,
      D => this_cpu_st1_FSM_FFd5_In,
      Q => this_cpu_st1_FSM_FFd5_441
    );
  this_cpu_st1_FSM_FFd6 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_160,
      D => this_cpu_st1_FSM_FFd6_In,
      PRE => Mmux_dirty_bit_sig_mux0000_3_f5,
      Q => this_cpu_st1_FSM_FFd6_443
    );
  this_cpu_patCtrl_2 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_160,
      CE => this_cpu_updPat_445,
      D => this_cpu_Result(2),
      PRE => Mmux_dirty_bit_sig_mux0000_3_f5,
      Q => this_cpu_patCtrl(2)
    );
  this_cpu_patCtrl_1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_160,
      CE => this_cpu_updPat_445,
      D => this_cpu_Result(1),
      PRE => Mmux_dirty_bit_sig_mux0000_3_f5,
      Q => this_cpu_patCtrl(1)
    );
  this_cpu_patCtrl_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_160,
      CE => this_cpu_updPat_445,
      D => this_cpu_Result(0),
      PRE => Mmux_dirty_bit_sig_mux0000_3_f5,
      Q => this_cpu_patCtrl(0)
    );
  this_cpu_updPat : LD
    port map (
      D => this_cpu_st1_FSM_FFd5_441,
      G => this_cpu_updPat_or0000_446,
      Q => this_cpu_updPat_445
    );
  this_cpu_cs : LD
    port map (
      D => this_cpu_cs_mux0005,
      G => this_cpu_updPat_or0000_446,
      Q => this_cpu_cs_430
    );
  this_cpu_rReg2 : FD
    port map (
      C => clk_BUFGP_160,
      D => this_cpu_rReg1_435,
      Q => this_cpu_rReg2_436
    );
  this_cpu_rReg1 : FD
    port map (
      C => clk_BUFGP_160,
      D => cpu_rdy_sig_183,
      Q => this_cpu_rReg1_435
    );
  state_cmp_eq0001_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => initialized(8),
      I1 => initialized(9),
      I2 => initialized(7),
      I3 => initialized(10),
      O => state_cmp_eq0001_wg_lut(0)
    );
  state_cmp_eq0001_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => state_cmp_eq0001_wg_lut(0),
      O => state_cmp_eq0001_wg_cy(0)
    );
  state_cmp_eq0001_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => initialized(11),
      I1 => initialized(12),
      I2 => initialized(6),
      I3 => initialized(13),
      O => state_cmp_eq0001_wg_lut(1)
    );
  state_cmp_eq0001_wg_cy_1_Q : MUXCY
    port map (
      CI => state_cmp_eq0001_wg_cy(0),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => state_cmp_eq0001_wg_lut(1),
      O => state_cmp_eq0001_wg_cy(1)
    );
  state_cmp_eq0001_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => initialized(5),
      I1 => initialized(16),
      I2 => initialized(15),
      I3 => initialized(14),
      O => state_cmp_eq0001_wg_lut(2)
    );
  state_cmp_eq0001_wg_cy_2_Q : MUXCY
    port map (
      CI => state_cmp_eq0001_wg_cy(1),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => state_cmp_eq0001_wg_lut(2),
      O => state_cmp_eq0001_wg_cy(2)
    );
  state_cmp_eq0001_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => initialized(4),
      I1 => initialized(19),
      I2 => initialized(18),
      I3 => initialized(17),
      O => state_cmp_eq0001_wg_lut(3)
    );
  state_cmp_eq0001_wg_cy_3_Q : MUXCY
    port map (
      CI => state_cmp_eq0001_wg_cy(2),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => state_cmp_eq0001_wg_lut(3),
      O => state_cmp_eq0001_wg_cy(3)
    );
  state_cmp_eq0001_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => initialized(3),
      I1 => initialized(22),
      I2 => initialized(21),
      I3 => initialized(20),
      O => state_cmp_eq0001_wg_lut(4)
    );
  state_cmp_eq0001_wg_cy_4_Q : MUXCY
    port map (
      CI => state_cmp_eq0001_wg_cy(3),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => state_cmp_eq0001_wg_lut(4),
      O => state_cmp_eq0001_wg_cy(4)
    );
  state_cmp_eq0001_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => initialized(2),
      I1 => initialized(25),
      I2 => initialized(24),
      I3 => initialized(23),
      O => state_cmp_eq0001_wg_lut(5)
    );
  state_cmp_eq0001_wg_cy_5_Q : MUXCY
    port map (
      CI => state_cmp_eq0001_wg_cy(4),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => state_cmp_eq0001_wg_lut(5),
      O => state_cmp_eq0001_wg_cy(5)
    );
  state_cmp_eq0001_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => initialized(1),
      I1 => initialized(28),
      I2 => initialized(27),
      I3 => initialized(26),
      O => state_cmp_eq0001_wg_lut(6)
    );
  state_cmp_eq0001_wg_cy_6_Q : MUXCY
    port map (
      CI => state_cmp_eq0001_wg_cy(5),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => state_cmp_eq0001_wg_lut(6),
      O => state_cmp_eq0001_wg_cy(6)
    );
  state_cmp_eq0001_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => initialized(31),
      I1 => initialized(30),
      I2 => initialized(29),
      I3 => initialized(0),
      O => state_cmp_eq0001_wg_lut(7)
    );
  state_cmp_eq0001_wg_cy_7_Q : MUXCY
    port map (
      CI => state_cmp_eq0001_wg_cy(6),
      DI => Mmux_dirty_bit_sig_mux0000_3_f5,
      S => state_cmp_eq0001_wg_lut(7),
      O => state_cmp_eq0001
    );
  this_cpu_cs_mux00051 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => this_cpu_st1_FSM_FFd1_437,
      I1 => this_cpu_st1_FSM_FFd2_438,
      I2 => this_cpu_st1_FSM_FFd3_439,
      I3 => this_cpu_st1_FSM_FFd4_440,
      O => this_cpu_cs_mux0005
    );
  this_cpu_updPat_or0000_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => this_cpu_st1_FSM_FFd3_439,
      I1 => this_cpu_st1_FSM_FFd4_440,
      I2 => this_cpu_st1_FSM_FFd5_441,
      O => N34
    );
  this_cpu_updPat_or0000 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => this_cpu_st1_FSM_FFd1_437,
      I1 => this_cpu_st1_FSM_FFd6_443,
      I2 => this_cpu_st1_FSM_FFd2_438,
      I3 => N34,
      O => this_cpu_updPat_or0000_446
    );
  state_or00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => state_FSM_FFd4_401,
      I1 => state_FSM_FFd2_397,
      O => what_state_1_OBUF_456
    );
  state_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => state_FSM_FFd3_399,
      I1 => state_FSM_FFd1_395,
      O => what_state_2_OBUF_457
    );
  state_or00021 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => state_FSM_FFd2_397,
      I1 => state_FSM_FFd5_403,
      I2 => state_FSM_FFd1_395,
      O => what_state_0_OBUF_455
    );
  this_cpu_patOut_21_1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => this_cpu_patCtrl(0),
      I1 => this_cpu_patCtrl(2),
      O => awr_0_OBUF_156
    );
  this_cpu_Mcount_patCtrl_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => this_cpu_patCtrl(0),
      I1 => this_cpu_patCtrl(1),
      O => this_cpu_Result(1)
    );
  this_cpu_st1_FSM_FFd5_In1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => this_cpu_st1_FSM_FFd6_443,
      I1 => this_cpu_rReg1_435,
      I2 => this_cpu_rReg2_436,
      O => this_cpu_st1_FSM_FFd5_In
    );
  this_cpu_patOut_23_1 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => this_cpu_patCtrl(2),
      I1 => this_cpu_patCtrl(0),
      I2 => this_cpu_patCtrl(1),
      O => awr_2_OBUF_158
    );
  this_cpu_patOut_22_1 : LUT3
    generic map(
      INIT => X"82"
    )
    port map (
      I0 => this_cpu_patCtrl(2),
      I1 => this_cpu_patCtrl(0),
      I2 => this_cpu_patCtrl(1),
      O => awr_1_OBUF_157
    );
  this_cpu_Mcount_patCtrl_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => this_cpu_patCtrl(1),
      I1 => this_cpu_patCtrl(2),
      I2 => this_cpu_patCtrl(0),
      O => this_cpu_Result(2)
    );
  this_cpu_st1_FSM_FFd6_In1 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => this_cpu_st1_FSM_FFd6_443,
      I1 => this_cpu_rReg2_436,
      I2 => this_cpu_rReg1_435,
      I3 => this_cpu_st1_FSM_FFd1_437,
      O => this_cpu_st1_FSM_FFd6_In
    );
  this_cpu_Mrom_patOut151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => this_cpu_patCtrl(1),
      I1 => this_cpu_patCtrl(2),
      O => cpu_addr_6_OBUF_178
    );
  this_cpu_Mrom_patOut101 : LUT3
    generic map(
      INIT => X"9C"
    )
    port map (
      I0 => this_cpu_patCtrl(1),
      I1 => this_cpu_patCtrl(0),
      I2 => this_cpu_patCtrl(2),
      O => cpu_addr_1_OBUF_177
    );
  cpu_rdy_sig_mux0000_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => state_FSM_FFd4_401,
      I1 => state_FSM_FFd5_403,
      I2 => state_FSM_FFd2_397,
      I3 => state_FSM_FFd3_399,
      O => N36
    );
  sram_din_sig_mux0000_0_111 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => state_FSM_FFd6_405,
      I1 => state_FSM_FFd2_397,
      I2 => state_FSM_FFd4_401,
      O => N28
    );
  dirty_bit_sig_2_mux00011 : LUT4
    generic map(
      INIT => X"EAE2"
    )
    port map (
      I0 => dirty_bit_sig_2_Q,
      I1 => sdram_addr_sig_6_Q,
      I2 => state_FSM_FFd5_403,
      I3 => N127,
      O => dirty_bit_sig_2_mux0001
    );
  dirty_bit_sig_0_mux00011 : LUT4
    generic map(
      INIT => X"BAB8"
    )
    port map (
      I0 => dirty_bit_sig_0_Q,
      I1 => sdram_addr_sig_6_Q,
      I2 => state_FSM_FFd5_403,
      I3 => N26,
      O => dirty_bit_sig_0_mux0001
    );
  state_FSM_FFd2_In_SW0 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => Mmux_dirty_bit_sig_mux0000_4_f5,
      I1 => state_FSM_FFd6_405,
      I2 => state_FSM_FFd2_397,
      I3 => state_cmp_eq0001,
      O => N38
    );
  state_FSM_FFd2_In_SW1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd2_397,
      I1 => state_cmp_eq0001,
      O => initialized_mux0002_0_0
    );
  state_FSM_FFd2_In : LUT4
    generic map(
      INIT => X"E4CC"
    )
    port map (
      I0 => Mmux_valid_bit_sig_mux0000_4_f5,
      I1 => N38,
      I2 => initialized_mux0002_0_0,
      I3 => state_cmp_eq0000,
      O => state_FSM_FFd2_In_398
    );
  initialized_mux0002_9_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(9),
      I1 => N0,
      I2 => initialized_addsub0000(9),
      I3 => N129,
      O => initialized_mux0002_9_Q
    );
  initialized_mux0002_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(8),
      I1 => N123,
      I2 => initialized_addsub0000(8),
      I3 => N12,
      O => initialized_mux0002_8_Q
    );
  initialized_mux0002_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(7),
      I1 => N0,
      I2 => initialized_addsub0000(7),
      I3 => N12,
      O => initialized_mux0002_7_Q
    );
  initialized_mux0002_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(5),
      I1 => N0,
      I2 => initialized_addsub0000(5),
      I3 => N12,
      O => initialized_mux0002_5_Q
    );
  initialized_mux0002_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(4),
      I1 => N0,
      I2 => initialized_addsub0000(4),
      I3 => N12,
      O => initialized_mux0002_4_Q
    );
  initialized_mux0002_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(3),
      I1 => N0,
      I2 => initialized_addsub0000(3),
      I3 => N12,
      O => initialized_mux0002_3_Q
    );
  initialized_mux0002_31_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(31),
      I1 => N0,
      I2 => initialized_addsub0000(31),
      I3 => N12,
      O => initialized_mux0002_31_Q
    );
  initialized_mux0002_30_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(30),
      I1 => N0,
      I2 => initialized_addsub0000(30),
      I3 => N12,
      O => initialized_mux0002_30_Q
    );
  initialized_mux0002_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(2),
      I1 => N0,
      I2 => initialized_addsub0000(2),
      I3 => N12,
      O => initialized_mux0002_2_Q
    );
  initialized_mux0002_29_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(29),
      I1 => N0,
      I2 => initialized_addsub0000(29),
      I3 => N12,
      O => initialized_mux0002_29_Q
    );
  initialized_mux0002_28_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(28),
      I1 => N0,
      I2 => initialized_addsub0000(28),
      I3 => N12,
      O => initialized_mux0002_28_Q
    );
  initialized_mux0002_27_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(27),
      I1 => N0,
      I2 => initialized_addsub0000(27),
      I3 => N12,
      O => initialized_mux0002_27_Q
    );
  initialized_mux0002_26_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(26),
      I1 => N0,
      I2 => initialized_addsub0000(26),
      I3 => N12,
      O => initialized_mux0002_26_Q
    );
  initialized_mux0002_25_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(25),
      I1 => N0,
      I2 => initialized_addsub0000(25),
      I3 => N12,
      O => initialized_mux0002_25_Q
    );
  initialized_mux0002_24_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(24),
      I1 => N0,
      I2 => initialized_addsub0000(24),
      I3 => N12,
      O => initialized_mux0002_24_Q
    );
  initialized_mux0002_23_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(23),
      I1 => N0,
      I2 => initialized_addsub0000(23),
      I3 => N12,
      O => initialized_mux0002_23_Q
    );
  initialized_mux0002_22_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(22),
      I1 => N0,
      I2 => initialized_addsub0000(22),
      I3 => N12,
      O => initialized_mux0002_22_Q
    );
  initialized_mux0002_21_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(21),
      I1 => N0,
      I2 => initialized_addsub0000(21),
      I3 => N12,
      O => initialized_mux0002_21_Q
    );
  initialized_mux0002_20_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(20),
      I1 => N0,
      I2 => initialized_addsub0000(20),
      I3 => N12,
      O => initialized_mux0002_20_Q
    );
  initialized_mux0002_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(1),
      I1 => N0,
      I2 => initialized_addsub0000(1),
      I3 => N12,
      O => initialized_mux0002_1_Q
    );
  initialized_mux0002_19_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(19),
      I1 => N0,
      I2 => initialized_addsub0000(19),
      I3 => N12,
      O => initialized_mux0002_19_Q
    );
  state_FSM_FFd3_In31 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => state_cmp_eq0001,
      I1 => state_FSM_FFd2_397,
      O => N32
    );
  initialized_mux0002_18_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(18),
      I1 => N0,
      I2 => initialized_addsub0000(18),
      I3 => N12,
      O => initialized_mux0002_18_Q
    );
  initialized_mux0002_17_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(17),
      I1 => N0,
      I2 => initialized_addsub0000(17),
      I3 => N12,
      O => initialized_mux0002_17_Q
    );
  initialized_mux0002_16_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(16),
      I1 => N0,
      I2 => initialized_addsub0000(16),
      I3 => N12,
      O => initialized_mux0002_16_Q
    );
  initialized_mux0002_15_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(15),
      I1 => N0,
      I2 => initialized_addsub0000(15),
      I3 => N12,
      O => initialized_mux0002_15_Q
    );
  initialized_mux0002_14_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(14),
      I1 => N0,
      I2 => initialized_addsub0000(14),
      I3 => N12,
      O => initialized_mux0002_14_Q
    );
  initialized_mux0002_13_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(13),
      I1 => N0,
      I2 => initialized_addsub0000(13),
      I3 => N12,
      O => initialized_mux0002_13_Q
    );
  initialized_mux0002_12_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(12),
      I1 => N0,
      I2 => initialized_addsub0000(12),
      I3 => N12,
      O => initialized_mux0002_12_Q
    );
  initialized_mux0002_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(11),
      I1 => N0,
      I2 => initialized_addsub0000(11),
      I3 => N12,
      O => initialized_mux0002_11_Q
    );
  initialized_mux0002_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => initialized(10),
      I1 => N0,
      I2 => initialized_addsub0000(10),
      I3 => N12,
      O => initialized_mux0002_10_Q
    );
  sram_din_sig_mux0000_7_SW0 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => N28,
      I1 => sram_din_sig(7),
      I2 => state_FSM_FFd3_399,
      I3 => cpu_dout_sig(3),
      O => N47
    );
  sram_din_sig_mux0000_6_SW0 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => N28,
      I1 => sram_din_sig(6),
      I2 => state_FSM_FFd3_399,
      I3 => cpu_dout_sig(2),
      O => N49
    );
  sram_din_sig_mux0000_5_SW0 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => N28,
      I1 => sram_din_sig(5),
      I2 => state_FSM_FFd3_399,
      I3 => cpu_dout_sig(1),
      O => N51
    );
  sram_din_sig_mux0000_4_SW0 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => N28,
      I1 => sram_din_sig(4),
      I2 => state_FSM_FFd3_399,
      I3 => cpu_dout_sig(0),
      O => N53
    );
  sdram_offset_sig_mux0000_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N133,
      I1 => sdram_offset_sig(4),
      I2 => sdram_offset_sig_share0000(4),
      I3 => N9,
      O => sdram_offset_sig_mux0000(4)
    );
  sdram_offset_sig_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N6,
      I1 => sdram_offset_sig(3),
      I2 => sdram_offset_sig_share0000(3),
      I3 => N9,
      O => sdram_offset_sig_mux0000(3)
    );
  sdram_offset_sig_mux0000_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N6,
      I1 => sdram_offset_sig(2),
      I2 => sdram_offset_sig_share0000(2),
      I3 => N9,
      O => sdram_offset_sig_mux0000(2)
    );
  sdram_offset_sig_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N6,
      I1 => sdram_offset_sig(1),
      I2 => sdram_offset_sig_share0000(1),
      I3 => N9,
      O => sdram_offset_sig_mux0000(1)
    );
  sdram_offset_sig_mux0000_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N6,
      I1 => sdram_offset_sig(0),
      I2 => sdram_offset_sig_share0000(0),
      I3 => N9,
      O => sdram_offset_sig_mux0000(0)
    );
  sdram_addr_sig_4_mux00001 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => sdram_addr_sig_4_Q,
      I1 => sdram_offset_sig(4),
      I2 => N9,
      I3 => N134,
      O => sdram_addr_sig_4_mux0000
    );
  sdram_addr_sig_3_mux00001 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => sdram_addr_sig_3_Q,
      I1 => sdram_offset_sig(3),
      I2 => N9,
      I3 => N2,
      O => sdram_addr_sig_3_mux0000
    );
  sdram_addr_sig_2_mux00001 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => sdram_addr_sig_2_Q,
      I1 => sdram_offset_sig(2),
      I2 => N9,
      I3 => N2,
      O => sdram_addr_sig_2_mux0000
    );
  sdram_addr_sig_1_mux00001 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => sdram_addr_sig_1_Q,
      I1 => sdram_offset_sig(1),
      I2 => N9,
      I3 => N2,
      O => sdram_addr_sig_1_mux0000
    );
  sdram_addr_sig_0_mux00002 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => sdram_addr_sig_0_Q,
      I1 => sdram_offset_sig(0),
      I2 => N9,
      I3 => N2,
      O => sdram_addr_sig_0_mux0000
    );
  sram_addr_sig_4_mux0000 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => sdram_offset_sig(4),
      I1 => N9,
      I2 => sram_addr_sig_4_Q,
      I3 => N130,
      O => sram_addr_sig_4_mux0000_352
    );
  sram_addr_sig_3_mux0000 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => sdram_offset_sig(3),
      I1 => N9,
      I2 => sram_addr_sig_3_Q,
      I3 => N58,
      O => sram_addr_sig_3_mux0000_350
    );
  sram_addr_sig_0_mux0000 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => sdram_offset_sig(0),
      I1 => N9,
      I2 => sram_addr_sig_0_Q,
      I3 => N58,
      O => sram_addr_sig_0_mux0000_343
    );
  sram_addr_sig_2_mux0000_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => state_FSM_FFd6_405,
      I1 => this_cpu_patCtrl(2),
      I2 => sdram_offset_sig(2),
      I3 => N132,
      O => N64
    );
  wr_rd_OBUF : OBUF
    port map (
      I => cpu_dout_sig(3),
      O => wr_rd
    );
  cpu_addr_15_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => cpu_addr(15)
    );
  cpu_addr_14_OBUF : OBUF
    port map (
      I => awr_2_OBUF_158,
      O => cpu_addr(14)
    );
  cpu_addr_13_OBUF : OBUF
    port map (
      I => awr_1_OBUF_157,
      O => cpu_addr(13)
    );
  cpu_addr_12_OBUF : OBUF
    port map (
      I => awr_0_OBUF_156,
      O => cpu_addr(12)
    );
  cpu_addr_11_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => cpu_addr(11)
    );
  cpu_addr_10_OBUF : OBUF
    port map (
      I => awr_2_OBUF_158,
      O => cpu_addr(10)
    );
  cpu_addr_9_OBUF : OBUF
    port map (
      I => awr_1_OBUF_157,
      O => cpu_addr(9)
    );
  cpu_addr_8_OBUF : OBUF
    port map (
      I => awr_0_OBUF_156,
      O => cpu_addr(8)
    );
  cpu_addr_7_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => cpu_addr(7)
    );
  cpu_addr_6_OBUF : OBUF
    port map (
      I => cpu_addr_6_OBUF_178,
      O => cpu_addr(6)
    );
  cpu_addr_5_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => cpu_addr(5)
    );
  cpu_addr_4_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => cpu_addr(4)
    );
  cpu_addr_3_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => cpu_addr(3)
    );
  cpu_addr_2_OBUF : OBUF
    port map (
      I => this_cpu_patCtrl(2),
      O => cpu_addr(2)
    );
  cpu_addr_1_OBUF : OBUF
    port map (
      I => cpu_addr_1_OBUF_177,
      O => cpu_addr(1)
    );
  cpu_addr_0_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => cpu_addr(0)
    );
  mstrb_OBUF : OBUF
    port map (
      I => sdram_mstrb_sig_317,
      O => mstrb
    );
  rdy_OBUF : OBUF
    port map (
      I => cpu_rdy_sig_183,
      O => rdy
    );
  what_state_3_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => what_state(3)
    );
  what_state_2_OBUF : OBUF
    port map (
      I => what_state_2_OBUF_457,
      O => what_state(2)
    );
  what_state_1_OBUF : OBUF
    port map (
      I => what_state_1_OBUF_456,
      O => what_state(1)
    );
  what_state_0_OBUF : OBUF
    port map (
      I => what_state_0_OBUF_455,
      O => what_state(0)
    );
  awr_7_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => awr(7)
    );
  awr_6_OBUF : OBUF
    port map (
      I => awr_2_OBUF_158,
      O => awr(6)
    );
  awr_5_OBUF : OBUF
    port map (
      I => awr_1_OBUF_157,
      O => awr(5)
    );
  awr_4_OBUF : OBUF
    port map (
      I => awr_0_OBUF_156,
      O => awr(4)
    );
  awr_3_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => awr(3)
    );
  awr_2_OBUF : OBUF
    port map (
      I => awr_2_OBUF_158,
      O => awr(2)
    );
  awr_1_OBUF : OBUF
    port map (
      I => awr_1_OBUF_157,
      O => awr(1)
    );
  awr_0_OBUF : OBUF
    port map (
      I => awr_0_OBUF_156,
      O => awr(0)
    );
  sram_wen_0_OBUF : OBUF
    port map (
      I => sram_wen_sig(0),
      O => sram_wen(0)
    );
  sdram_addr_15_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => sdram_addr(15)
    );
  sdram_addr_14_OBUF : OBUF
    port map (
      I => tag_sig(2),
      O => sdram_addr(14)
    );
  sdram_addr_13_OBUF : OBUF
    port map (
      I => tag_sig(1),
      O => sdram_addr(13)
    );
  sdram_addr_12_OBUF : OBUF
    port map (
      I => tag_sig(0),
      O => sdram_addr(12)
    );
  sdram_addr_11_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => sdram_addr(11)
    );
  sdram_addr_10_OBUF : OBUF
    port map (
      I => tag_sig(2),
      O => sdram_addr(10)
    );
  sdram_addr_9_OBUF : OBUF
    port map (
      I => tag_sig(1),
      O => sdram_addr(9)
    );
  sdram_addr_8_OBUF : OBUF
    port map (
      I => tag_sig(0),
      O => sdram_addr(8)
    );
  sdram_addr_7_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => sdram_addr(7)
    );
  sdram_addr_6_OBUF : OBUF
    port map (
      I => sdram_addr_sig_6_Q,
      O => sdram_addr(6)
    );
  sdram_addr_5_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => sdram_addr(5)
    );
  sdram_addr_4_OBUF : OBUF
    port map (
      I => sdram_addr_sig_4_Q,
      O => sdram_addr(4)
    );
  sdram_addr_3_OBUF : OBUF
    port map (
      I => sdram_addr_sig_3_Q,
      O => sdram_addr(3)
    );
  sdram_addr_2_OBUF : OBUF
    port map (
      I => sdram_addr_sig_2_Q,
      O => sdram_addr(2)
    );
  sdram_addr_1_OBUF : OBUF
    port map (
      I => sdram_addr_sig_1_Q,
      O => sdram_addr(1)
    );
  sdram_addr_0_OBUF : OBUF
    port map (
      I => sdram_addr_sig_0_Q,
      O => sdram_addr(0)
    );
  sram_dout_7_OBUF : OBUF
    port map (
      I => sram_dout_7_OBUF_391,
      O => sram_dout(7)
    );
  sram_dout_6_OBUF : OBUF
    port map (
      I => sram_dout_6_OBUF_390,
      O => sram_dout(6)
    );
  sram_dout_5_OBUF : OBUF
    port map (
      I => sram_dout_5_OBUF_389,
      O => sram_dout(5)
    );
  sram_dout_4_OBUF : OBUF
    port map (
      I => sram_dout_4_OBUF_388,
      O => sram_dout(4)
    );
  sram_dout_3_OBUF : OBUF
    port map (
      I => sram_dout_3_OBUF_387,
      O => sram_dout(3)
    );
  sram_dout_2_OBUF : OBUF
    port map (
      I => sram_dout_2_OBUF_386,
      O => sram_dout(2)
    );
  sram_dout_1_OBUF : OBUF
    port map (
      I => sram_dout_1_OBUF_385,
      O => sram_dout(1)
    );
  sram_dout_0_OBUF : OBUF
    port map (
      I => sram_dout_0_OBUF_384,
      O => sram_dout(0)
    );
  sram_addr_7_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => sram_addr(7)
    );
  sram_addr_6_OBUF : OBUF
    port map (
      I => sram_addr_sig_6_Q,
      O => sram_addr(6)
    );
  sram_addr_5_OBUF : OBUF
    port map (
      I => Mmux_dirty_bit_sig_mux0000_3_f5,
      O => sram_addr(5)
    );
  sram_addr_4_OBUF : OBUF
    port map (
      I => sram_addr_sig_4_Q,
      O => sram_addr(4)
    );
  sram_addr_3_OBUF : OBUF
    port map (
      I => sram_addr_sig_3_Q,
      O => sram_addr(3)
    );
  sram_addr_2_OBUF : OBUF
    port map (
      I => sram_addr_sig_2_Q,
      O => sram_addr(2)
    );
  sram_addr_1_OBUF : OBUF
    port map (
      I => sram_addr_sig_1_Q,
      O => sram_addr(1)
    );
  sram_addr_0_OBUF : OBUF
    port map (
      I => sram_addr_sig_0_Q,
      O => sram_addr(0)
    );
  sram_din_7_OBUF : OBUF
    port map (
      I => sram_din_sig(7),
      O => sram_din(7)
    );
  sram_din_6_OBUF : OBUF
    port map (
      I => sram_din_sig(6),
      O => sram_din(6)
    );
  sram_din_5_OBUF : OBUF
    port map (
      I => sram_din_sig(5),
      O => sram_din(5)
    );
  sram_din_4_OBUF : OBUF
    port map (
      I => sram_din_sig(4),
      O => sram_din(4)
    );
  sram_din_3_OBUF : OBUF
    port map (
      I => sram_din_sig(3),
      O => sram_din(3)
    );
  sram_din_2_OBUF : OBUF
    port map (
      I => sram_din_sig(2),
      O => sram_din(2)
    );
  sram_din_1_OBUF : OBUF
    port map (
      I => sram_din_sig(1),
      O => sram_din(1)
    );
  sram_din_0_OBUF : OBUF
    port map (
      I => sram_din_sig(0),
      O => sram_din(0)
    );
  sdram_mstrb_sig : FDS
    port map (
      C => clk_BUFGP_160,
      D => sdram_mstrb_sig_mux00011_318,
      S => N10,
      Q => sdram_mstrb_sig_317
    );
  sram_addr_sig_1 : FDS
    port map (
      C => clk_BUFGP_160,
      D => sram_addr_sig_1_mux000011,
      S => sram_addr_sig_1_mux00000_345,
      Q => sram_addr_sig_1_Q
    );
  sram_addr_sig_2 : FDS
    port map (
      C => clk_BUFGP_160,
      D => sram_addr_sig_2_mux00001_348,
      S => N64,
      Q => sram_addr_sig_2_Q
    );
  sram_addr_sig_6 : FDS
    port map (
      C => clk_BUFGP_160,
      D => sram_addr_sig_6_mux000011,
      S => sram_addr_sig_6_mux00000_354,
      Q => sram_addr_sig_6_Q
    );
  sram_wen_sig_0 : FDS
    port map (
      C => clk_BUFGP_160,
      D => sram_wen_sig_0_mux00001,
      S => N10,
      Q => sram_wen_sig(0)
    );
  valid_bit_sig_0 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => valid_bit_sig_0_mux00011,
      S => valid_bit_sig_0_Q,
      Q => valid_bit_sig_0_Q
    );
  valid_bit_sig_2 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => valid_bit_sig_2_mux00011,
      S => valid_bit_sig_2_Q,
      Q => valid_bit_sig_2_Q
    );
  initialized_0 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_0_21,
      S => initialized_mux0002_0_0,
      Q => initialized(0)
    );
  initialized_6 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => initialized_mux0002_6_21,
      S => initialized_mux0002_0_0,
      Q => initialized(6)
    );
  cpu_rdy_sig : FDS
    port map (
      C => clk_BUFGP_160,
      D => cpu_rdy_sig_mux00001_184,
      S => state_FSM_FFd1_395,
      Q => cpu_rdy_sig_183
    );
  cpu_rdy_sig_mux00001 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => cpu_rdy_sig_183,
      I1 => state_FSM_FFd6_405,
      I2 => N36,
      O => cpu_rdy_sig_mux00001_184
    );
  state_FSM_FFd3 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => state_FSM_FFd3_In1_400,
      S => N32,
      Q => state_FSM_FFd3_399
    );
  state_FSM_FFd1 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => state_FSM_FFd1_In1,
      S => state_FSM_FFd4_401,
      Q => state_FSM_FFd1_395
    );
  state_FSM_FFd1_In11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => state_FSM_FFd1_395,
      I1 => this_cpu_cs_430,
      I2 => state_FSM_FFd5_403,
      O => state_FSM_FFd1_In1
    );
  state_FSM_FFd5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_160,
      D => state_FSM_FFd5_In1,
      R => Mmux_dirty_bit_sig_mux0000_4_f5,
      Q => state_FSM_FFd5_403
    );
  sram_din_sig_4 : FDSE
    port map (
      C => clk_BUFGP_160,
      CE => state_FSM_FFd5_403,
      D => N53,
      S => N10,
      Q => sram_din_sig(4)
    );
  sram_din_sig_5 : FDSE
    port map (
      C => clk_BUFGP_160,
      CE => state_FSM_FFd5_403,
      D => N51,
      S => N10,
      Q => sram_din_sig(5)
    );
  sram_din_sig_6 : FDSE
    port map (
      C => clk_BUFGP_160,
      CE => state_FSM_FFd5_403,
      D => N49,
      S => N10,
      Q => sram_din_sig(6)
    );
  sram_din_sig_7 : FDSE
    port map (
      C => clk_BUFGP_160,
      CE => state_FSM_FFd5_403,
      D => N47,
      S => N10,
      Q => sram_din_sig(7)
    );
  Madd_sdram_offset_sig_share0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sdram_offset_sig(1),
      O => Madd_sdram_offset_sig_share0000_cy_1_rt_65
    );
  Madd_sdram_offset_sig_share0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sdram_offset_sig(2),
      O => Madd_sdram_offset_sig_share0000_cy_2_rt_67
    );
  Madd_sdram_offset_sig_share0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sdram_offset_sig(3),
      O => Madd_sdram_offset_sig_share0000_cy_3_rt_69
    );
  Madd_initialized_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(1),
      O => Madd_initialized_addsub0000_cy_1_rt_22
    );
  Madd_initialized_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(2),
      O => Madd_initialized_addsub0000_cy_2_rt_44
    );
  Madd_initialized_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(3),
      O => Madd_initialized_addsub0000_cy_3_rt_48
    );
  Madd_initialized_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(4),
      O => Madd_initialized_addsub0000_cy_4_rt_50
    );
  Madd_initialized_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(5),
      O => Madd_initialized_addsub0000_cy_5_rt_52
    );
  Madd_initialized_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(6),
      O => Madd_initialized_addsub0000_cy_6_rt_54
    );
  Madd_initialized_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(7),
      O => Madd_initialized_addsub0000_cy_7_rt_56
    );
  Madd_initialized_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(8),
      O => Madd_initialized_addsub0000_cy_8_rt_58
    );
  Madd_initialized_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(9),
      O => Madd_initialized_addsub0000_cy_9_rt_60
    );
  Madd_initialized_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(10),
      O => Madd_initialized_addsub0000_cy_10_rt_2
    );
  Madd_initialized_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(11),
      O => Madd_initialized_addsub0000_cy_11_rt_4
    );
  Madd_initialized_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(12),
      O => Madd_initialized_addsub0000_cy_12_rt_6
    );
  Madd_initialized_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(13),
      O => Madd_initialized_addsub0000_cy_13_rt_8
    );
  Madd_initialized_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(14),
      O => Madd_initialized_addsub0000_cy_14_rt_10
    );
  Madd_initialized_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(15),
      O => Madd_initialized_addsub0000_cy_15_rt_12
    );
  Madd_initialized_addsub0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(16),
      O => Madd_initialized_addsub0000_cy_16_rt_14
    );
  Madd_initialized_addsub0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(17),
      O => Madd_initialized_addsub0000_cy_17_rt_16
    );
  Madd_initialized_addsub0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(18),
      O => Madd_initialized_addsub0000_cy_18_rt_18
    );
  Madd_initialized_addsub0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(19),
      O => Madd_initialized_addsub0000_cy_19_rt_20
    );
  Madd_initialized_addsub0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(20),
      O => Madd_initialized_addsub0000_cy_20_rt_24
    );
  Madd_initialized_addsub0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(21),
      O => Madd_initialized_addsub0000_cy_21_rt_26
    );
  Madd_initialized_addsub0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(22),
      O => Madd_initialized_addsub0000_cy_22_rt_28
    );
  Madd_initialized_addsub0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(23),
      O => Madd_initialized_addsub0000_cy_23_rt_30
    );
  Madd_initialized_addsub0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(24),
      O => Madd_initialized_addsub0000_cy_24_rt_32
    );
  Madd_initialized_addsub0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(25),
      O => Madd_initialized_addsub0000_cy_25_rt_34
    );
  Madd_initialized_addsub0000_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(26),
      O => Madd_initialized_addsub0000_cy_26_rt_36
    );
  Madd_initialized_addsub0000_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(27),
      O => Madd_initialized_addsub0000_cy_27_rt_38
    );
  Madd_initialized_addsub0000_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(28),
      O => Madd_initialized_addsub0000_cy_28_rt_40
    );
  Madd_initialized_addsub0000_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(29),
      O => Madd_initialized_addsub0000_cy_29_rt_42
    );
  Madd_initialized_addsub0000_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(30),
      O => Madd_initialized_addsub0000_cy_30_rt_46
    );
  Mcompar_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(6),
      O => Mcompar_cmp_lt0000_cy_0_rt_73
    );
  Madd_sdram_offset_sig_share0000_xor_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sdram_offset_sig(4),
      O => Madd_sdram_offset_sig_share0000_xor_4_rt_71
    );
  Madd_initialized_addsub0000_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => initialized(31),
      O => Madd_initialized_addsub0000_xor_31_rt_62
    );
  Mmux_dirty_bit_sig_mux0000_4_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sdram_addr_sig_6_Q,
      I1 => dirty_bit_sig_0_Q,
      I2 => dirty_bit_sig_2_Q,
      O => Mmux_dirty_bit_sig_mux0000_4_f5
    );
  Mmux_valid_bit_sig_mux0000_4_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sdram_addr_sig_6_Q,
      I1 => valid_bit_sig_0_Q,
      I2 => valid_bit_sig_2_Q,
      O => Mmux_valid_bit_sig_mux0000_4_f5
    );
  sram_addr_sig_0_mux000012_SW1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => state_FSM_FFd2_397,
      I1 => state_FSM_FFd3_399,
      O => N83
    );
  sram_addr_sig_0_mux000012_SW2 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => state_FSM_FFd2_397,
      I1 => state_FSM_FFd3_399,
      I2 => N126,
      O => N85
    );
  state_FSM_FFd3_In11_SW0 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => initialized(0),
      I1 => state_FSM_FFd3_399,
      O => N89
    );
  sram_din_sig_mux0000_0_11_SW1 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => cpu_dout_sig(3),
      I1 => state_FSM_FFd5_403,
      I2 => sram_din_sig(3),
      O => N92
    );
  sram_din_sig_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F0E4"
    )
    port map (
      I0 => N28,
      I1 => N91,
      I2 => N92,
      I3 => N31,
      O => sram_din_sig_mux0000(3)
    );
  sram_din_sig_mux0000_0_11_SW3 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => N125,
      I1 => state_FSM_FFd5_403,
      I2 => sram_din_sig(2),
      O => N95
    );
  sram_din_sig_mux0000_2_1 : LUT4
    generic map(
      INIT => X"F0E4"
    )
    port map (
      I0 => N28,
      I1 => N94,
      I2 => N95,
      I3 => N31,
      O => sram_din_sig_mux0000(2)
    );
  sram_din_sig_mux0000_0_11_SW4 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => state_FSM_FFd5_403,
      I1 => state_FSM_FFd3_399,
      I2 => sram_din_sig(1),
      I3 => N124,
      O => N97
    );
  sram_din_sig_mux0000_1_1 : LUT4
    generic map(
      INIT => X"AAB8"
    )
    port map (
      I0 => N98,
      I1 => N28,
      I2 => N97,
      I3 => N31,
      O => sram_din_sig_mux0000(1)
    );
  sram_din_sig_mux0000_0_11_SW6 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => state_FSM_FFd5_403,
      I1 => state_FSM_FFd3_399,
      I2 => sram_din_sig(0),
      I3 => N135,
      O => N100
    );
  sram_din_sig_mux0000_0_1 : LUT4
    generic map(
      INIT => X"F0E4"
    )
    port map (
      I0 => N28,
      I1 => N100,
      I2 => N101,
      I3 => N31,
      O => sram_din_sig_mux0000(0)
    );
  sram_addr_sig_1_mux00003_SW0 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => N85,
      I1 => N41,
      I2 => N131,
      O => N103
    );
  sram_addr_sig_1_mux0000111 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N9,
      I1 => sdram_offset_sig(1),
      I2 => sram_addr_sig_1_Q,
      I3 => N103,
      O => sram_addr_sig_1_mux000011
    );
  sram_addr_sig_6_mux0000111 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N9,
      I1 => sdram_addr_sig_6_Q,
      I2 => sram_addr_sig_6_Q,
      I3 => N103,
      O => sram_addr_sig_6_mux000011
    );
  state_cmp_eq00008110 : LUT4
    generic map(
      INIT => X"0041"
    )
    port map (
      I0 => Q_varindex0000(3),
      I1 => Q_varindex0000(2),
      I2 => tag_sig(2),
      I3 => N107,
      O => state_cmp_eq0000
    );
  state_FSM_FFd5_In12 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => state_FSM_FFd6_405,
      I1 => Mmux_valid_bit_sig_mux0000_4_f5,
      I2 => cpu_dout_sig(3),
      I3 => state_cmp_eq0000,
      O => state_FSM_FFd5_In1
    );
  sram_wen_sig_0_mux000011 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => initialized(0),
      I1 => state_FSM_FFd3_399,
      I2 => Mcompar_cmp_lt0000_cy(7),
      O => N10
    );
  sram_addr_sig_2_mux00001 : LUT4
    generic map(
      INIT => X"AAA2"
    )
    port map (
      I0 => sram_addr_sig_2_Q,
      I1 => N85,
      I2 => N128,
      I3 => N31,
      O => sram_addr_sig_2_mux00001_348
    );
  state_FSM_FFd4_In1 : LUT4
    generic map(
      INIT => X"8A00"
    )
    port map (
      I0 => N113,
      I1 => Mmux_dirty_bit_sig_mux0000_4_f5,
      I2 => cpu_dout_sig(3),
      I3 => state_cmp_eq0000,
      O => state_FSM_FFd4_In
    );
  state_FSM_FFd3_In1 : LUT4
    generic map(
      INIT => X"FF13"
    )
    port map (
      I0 => Mmux_valid_bit_sig_mux0000_4_f5,
      I1 => N115,
      I2 => state_cmp_eq0000,
      I3 => N12,
      O => state_FSM_FFd3_In1_400
    );
  sdram_addr_sig_0_mux00001_SW1 : LUT4
    generic map(
      INIT => X"F1FB"
    )
    port map (
      I0 => state_FSM_FFd2_397,
      I1 => state_FSM_FFd3_399,
      I2 => N111,
      I3 => state_cmp_eq0001,
      O => N117
    );
  initialized_mux0002_0_211 : LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => initialized_mux0002_0_11_254,
      I1 => initialized_addsub0000(0),
      I2 => Mcompar_cmp_lt0000_cy(7),
      I3 => state_FSM_FFd3_399,
      O => initialized_mux0002_0_21
    );
  valid_bit_sig_0_mux000111 : LUT4
    generic map(
      INIT => X"5540"
    )
    port map (
      I0 => sdram_addr_sig_6_Q,
      I1 => state_FSM_FFd3_399,
      I2 => Mcompar_cmp_lt0000_cy(7),
      I3 => state_FSM_FFd5_403,
      O => valid_bit_sig_0_mux00011
    );
  valid_bit_sig_2_mux000111 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => sdram_addr_sig_6_Q,
      I1 => state_FSM_FFd3_399,
      I2 => Mcompar_cmp_lt0000_cy(7),
      I3 => state_FSM_FFd5_403,
      O => valid_bit_sig_2_mux00011
    );
  state_FSM_FFd6_In1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Mcompar_cmp_lt0000_cy(7),
      I1 => state_FSM_FFd3_399,
      I2 => this_cpu_cs_430,
      I3 => state_FSM_FFd1_395,
      O => state_FSM_FFd6_In
    );
  write_ctrl : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Mcompar_cmp_lt0000_cy(7),
      I1 => state_FSM_FFd3_399,
      O => write_ctrl_459
    );
  initialized_mux0002_6_211 : LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => initialized_mux0002_6_11_283,
      I1 => initialized_addsub0000(6),
      I2 => Mcompar_cmp_lt0000_cy(7),
      I3 => state_FSM_FFd3_399,
      O => initialized_mux0002_6_21
    );
  sdram_mstrb_sig_mux00011 : LUT4
    generic map(
      INIT => X"F8A8"
    )
    port map (
      I0 => state_FSM_FFd2_397,
      I1 => state_cmp_eq0001,
      I2 => sdram_mstrb_sig_317,
      I3 => N119,
      O => sdram_mstrb_sig_mux00011_318
    );
  this_cpu_patOut_4_1 : LUT3
    generic map(
      INIT => X"19"
    )
    port map (
      I0 => this_cpu_patCtrl(2),
      I1 => this_cpu_patCtrl(1),
      I2 => this_cpu_patCtrl(0),
      O => cpu_dout_sig(3)
    );
  sram_din_sig_mux0000_0_11_SW5 : LUT4
    generic map(
      INIT => X"ABAA"
    )
    port map (
      I0 => sram_din_sig(1),
      I1 => this_cpu_patCtrl(2),
      I2 => this_cpu_patCtrl(1),
      I3 => state_FSM_FFd5_403,
      O => N98
    );
  state_FSM_FFd5_In11_SW0 : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => sdram_addr_sig_6_Q,
      I1 => valid_bit_sig_2_Q,
      I2 => state_FSM_FFd6_405,
      I3 => valid_bit_sig_0_Q,
      O => N113
    );
  state_FSM_FFd3_In_SW0_SW0 : LUT4
    generic map(
      INIT => X"1FBF"
    )
    port map (
      I0 => sdram_addr_sig_6_Q,
      I1 => dirty_bit_sig_0_Q,
      I2 => state_FSM_FFd6_405,
      I3 => dirty_bit_sig_2_Q,
      O => N115
    );
  sram_addr_sig_6_mux00000 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => state_FSM_FFd6_405,
      I1 => this_cpu_patCtrl(2),
      I2 => this_cpu_patCtrl(1),
      O => sram_addr_sig_6_mux00000_354
    );
  sram_addr_sig_1_mux00000 : LUT4
    generic map(
      INIT => X"A060"
    )
    port map (
      I0 => this_cpu_patCtrl(0),
      I1 => this_cpu_patCtrl(2),
      I2 => state_FSM_FFd6_405,
      I3 => this_cpu_patCtrl(1),
      O => sram_addr_sig_1_mux00000_345
    );
  sram_wen_sig_0_mux000012 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => sram_wen_sig(0),
      I1 => state_FSM_FFd4_401,
      I2 => state_FSM_FFd5_403,
      I3 => N121,
      O => sram_wen_sig_0_mux00001
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_160
    );
  Madd_sdram_offset_sig_share0000_lut_0_INV_0 : INV
    port map (
      I => sdram_offset_sig(0),
      O => Madd_sdram_offset_sig_share0000_lut(0)
    );
  Madd_initialized_addsub0000_lut_0_INV_0 : INV
    port map (
      I => initialized(0),
      O => Madd_initialized_addsub0000_lut(0)
    );
  this_cpu_Mcount_patCtrl_xor_0_11_INV_0 : INV
    port map (
      I => this_cpu_patCtrl(0),
      O => this_cpu_Result(0)
    );
  Mcompar_cmp_lt0000_lut_7_1_INV_0 : INV
    port map (
      I => initialized(31),
      O => Mcompar_cmp_lt0000_lut(7)
    );
  initialized_mux0002_10_11 : LUT3_D
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => state_FSM_FFd2_397,
      I1 => state_FSM_FFd3_399,
      I2 => N111,
      LO => N123,
      O => N0
    );
  this_cpu_patOut_4_21 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => this_cpu_patCtrl(2),
      I1 => this_cpu_patCtrl(1),
      LO => N124,
      O => cpu_dout_sig(1)
    );
  this_cpu_patOut_4_11 : LUT3_D
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => this_cpu_patCtrl(2),
      I1 => this_cpu_patCtrl(1),
      I2 => this_cpu_patCtrl(0),
      LO => N125,
      O => cpu_dout_sig(2)
    );
  sdram_addr_sig_0_mux0000111 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => state_FSM_FFd6_405,
      I1 => state_FSM_FFd4_401,
      I2 => state_FSM_FFd5_403,
      LO => N126,
      O => N111
    );
  dirty_bit_sig_0_mux0001111 : LUT4_D
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => state_FSM_FFd4_401,
      I1 => state_FSM_FFd6_405,
      I2 => state_FSM_FFd2_397,
      I3 => state_cmp_eq0001,
      LO => N127,
      O => N26
    );
  initialized_mux0002_6_11 : LUT4_L
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => initialized(6),
      I1 => state_FSM_FFd3_399,
      I2 => state_FSM_FFd2_397,
      I3 => N111,
      LO => initialized_mux0002_6_11_283
    );
  initialized_mux0002_0_11 : LUT4_L
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => initialized(0),
      I1 => state_FSM_FFd3_399,
      I2 => state_FSM_FFd2_397,
      I3 => N111,
      LO => initialized_mux0002_0_11_254
    );
  sram_addr_sig_0_mux000012_SW0 : LUT4_D
    generic map(
      INIT => X"EEFE"
    )
    port map (
      I0 => state_FSM_FFd4_401,
      I1 => state_FSM_FFd5_403,
      I2 => state_FSM_FFd2_397,
      I3 => state_cmp_eq0001,
      LO => N128,
      O => N41
    );
  state_FSM_FFd3_In11 : LUT2_D
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_FSM_FFd3_399,
      I1 => Mcompar_cmp_lt0000_cy(7),
      LO => N129,
      O => N12
    );
  sram_addr_sig_4_mux0000_SW0 : LUT4_D
    generic map(
      INIT => X"FFF1"
    )
    port map (
      I0 => N83,
      I1 => N111,
      I2 => N41,
      I3 => N31,
      LO => N130,
      O => N58
    );
  sdram_addr_sig_0_mux0000141 : LUT3_D
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => initialized(0),
      I1 => state_FSM_FFd3_399,
      I2 => Mcompar_cmp_lt0000_cy(7),
      LO => N131,
      O => N31
    );
  sram_addr_sig_0_mux000021 : LUT4_D
    generic map(
      INIT => X"A0EC"
    )
    port map (
      I0 => state_FSM_FFd2_397,
      I1 => N89,
      I2 => state_cmp_eq0001,
      I3 => Mcompar_cmp_lt0000_cy(7),
      LO => N132,
      O => N9
    );
  sram_din_sig_mux0000_0_11_SW0 : LUT4_L
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => state_FSM_FFd5_403,
      I1 => state_FSM_FFd3_399,
      I2 => sram_din_sig(3),
      I3 => cpu_dout_sig(3),
      LO => N91
    );
  sram_din_sig_mux0000_0_11_SW2 : LUT4_L
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => state_FSM_FFd5_403,
      I1 => state_FSM_FFd3_399,
      I2 => sram_din_sig(2),
      I3 => cpu_dout_sig(2),
      LO => N94
    );
  state_cmp_eq00008110_SW0 : LUT4_L
    generic map(
      INIT => X"7BDE"
    )
    port map (
      I0 => tag_sig(1),
      I1 => tag_sig(0),
      I2 => Q_varindex0000(1),
      I3 => Q_varindex0000(0),
      LO => N107
    );
  sdram_offset_sig_mux0000_0_11 : LUT4_D
    generic map(
      INIT => X"03A3"
    )
    port map (
      I0 => initialized(0),
      I1 => state_FSM_FFd2_397,
      I2 => state_FSM_FFd3_399,
      I3 => Mcompar_cmp_lt0000_cy(7),
      LO => N133,
      O => N6
    );
  sdram_addr_sig_0_mux00001 : LUT4_D
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => Mcompar_cmp_lt0000_cy(7),
      I1 => state_FSM_FFd3_399,
      I2 => initialized(0),
      I3 => N117,
      LO => N134,
      O => N2
    );
  sdram_mstrb_sig_mux0001_SW0_SW0 : LUT3_L
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => N111,
      I1 => state_FSM_FFd3_399,
      I2 => Mcompar_cmp_lt0000_cy(7),
      LO => N119
    );
  sram_din_sig_mux0000_0_11_SW7 : LUT4_L
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => sram_din_sig(0),
      I1 => this_cpu_patCtrl(0),
      I2 => cpu_dout_sig(1),
      I3 => state_FSM_FFd5_403,
      LO => N101
    );
  this_cpu_patOut_5_1 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => this_cpu_patCtrl(2),
      I1 => this_cpu_patCtrl(1),
      I2 => this_cpu_patCtrl(0),
      LO => N135,
      O => cpu_dout_sig(0)
    );
  sram_wen_sig_0_mux000012_SW0 : LUT4_L
    generic map(
      INIT => X"AEBF"
    )
    port map (
      I0 => state_FSM_FFd3_399,
      I1 => state_FSM_FFd2_397,
      I2 => state_cmp_eq0001,
      I3 => state_FSM_FFd6_405,
      LO => N121
    );

end Structure;


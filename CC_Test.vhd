--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:58:00 10/23/2023
-- Design Name:   
-- Module Name:   /home/student2/a3lall/Desktop/COE758/COE758_Tutorials/coe758designproj1/CC_Test.vhd
-- Project Name:  coe758designproj1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CacheController
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CC_Test IS
END CC_Test;
 
ARCHITECTURE behavior OF CC_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CacheController
    PORT(
         clk : IN  std_logic;
         wr_rd : INOUT  std_logic;
         cs : IN  std_logic;
         cpu_addr : INOUT  std_logic_vector(15 downto 0);
         sram_addr : OUT  std_logic_vector(7 downto 0);
         sram_din : OUT  std_logic_vector(7 downto 0);
         sram_dout : OUT  std_logic_vector(7 downto 0);
         sram_wen : OUT  std_logic_vector(0 downto 0);
         sdram_addr : OUT  std_logic_vector(15 downto 0);
         mstrb : OUT  std_logic;
         rdy : OUT  std_logic;
         what_state : OUT  std_logic_vector(3 downto 0);
         awr : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;

   --Inputs CC
   signal clk : std_logic := '0';
   signal wr_rd : std_logic := '1';
   signal cs : std_logic := '1';
   signal cpu_addr : std_logic_vector(15 downto 0);

 	--Outputs CC
   signal sram_addr : std_logic_vector(7 downto 0);
   signal sram_din : std_logic_vector(7 downto 0);
   signal sram_dout : std_logic_vector(7 downto 0);
   signal sram_wen : std_logic_vector(0 downto 0);
   signal sdram_addr : std_logic_vector(15 downto 0);
   signal mstrb : std_logic;
   signal rdy : std_logic;
   signal what_state : std_logic_vector(3 downto 0);
   signal awr : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CacheController PORT MAP (
          clk => clk,
          wr_rd => wr_rd,
          cs => cs,
          cpu_addr => cpu_addr,
          sram_addr => sram_addr,
          sram_din => sram_din,
          sram_dout => sram_dout,
          sram_wen => sram_wen,
          sdram_addr => sdram_addr,
          mstrb => mstrb,
          rdy => rdy,
          what_state => what_state,
          awr => awr
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

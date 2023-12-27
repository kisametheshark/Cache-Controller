--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:57:42 10/23/2023
-- Design Name:   
-- Module Name:   /home/student2/a3lall/Desktop/COE758/COE758_Tutorials/coe758designproj1/CPU_Test.vhd
-- Project Name:  coe758designproj1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CPU_gen
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
 
ENTITY CPU_Test IS
END CPU_Test;
 
ARCHITECTURE behavior OF CPU_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU_gen
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         trig : IN  std_logic;
         Address : OUT  std_logic_vector(15 downto 0);
         wr_rd : OUT  std_logic;
         cs : OUT  std_logic;
         DOut : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal trig : std_logic := '0';

 	--Outputs
   signal Address : std_logic_vector(15 downto 0);
   signal wr_rd : std_logic;
   signal cs : std_logic;
   signal DOut : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU_gen PORT MAP (
          clk => clk,
          rst => rst,
          trig => trig,
          Address => Address,
          wr_rd => wr_rd,
          cs => cs,
          DOut => DOut
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

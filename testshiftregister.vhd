--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:58:52 10/11/2016
-- Design Name:   
-- Module Name:   C:/Temp/ECE475Lab4/testshiftregister.vhd
-- Project Name:  ECE475Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ShiftRegister
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
 
ENTITY testshiftregister IS
END testshiftregister;
 
ARCHITECTURE behavior OF testshiftregister IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ShiftRegister
    PORT(
         clock : IN  std_logic;
         S1 : IN  std_logic;
         S0 : IN  std_logic;
         LSI : IN  std_logic;
         D0 : IN  std_logic;
         D1 : IN  std_logic;
         D2 : IN  std_logic;
         D3 : IN  std_logic;
         RSI : IN  std_logic;
         Q0 : OUT  std_logic;
         Q1 : OUT  std_logic;
         Q2 : OUT  std_logic;
         Q3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal S1 : std_logic := '0';
   signal S0 : std_logic := '0';
   signal LSI : std_logic := '0';
   signal D0 : std_logic := '0';
   signal D1 : std_logic := '0';
   signal D2 : std_logic := '0';
   signal D3 : std_logic := '0';
   signal RSI : std_logic := '0';

 	--Outputs
   signal Q0 : std_logic;
   signal Q1 : std_logic;
   signal Q2 : std_logic;
   signal Q3 : std_logic;

   -- Clock period definitions
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ShiftRegister PORT MAP (
          clock => clock,
          S1 => S1,
          S0 => S0,
          LSI => LSI,
          D0 => D0,
          D1 => D1,
          D2 => D2,
          D3 => D3,
          RSI => RSI,
          Q0 => Q0,
          Q1 => Q1,
          Q2 => Q2,
          Q3 => Q3
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		clock<='0';
		LSI<='0';
		RSI<='0';
		S1<='1';
		S0<='1';
		D0<='1';
		D1<='1';
		D2<='1';
		D3<='1';
		wait for 50 ns;	
		clock<='1';
		
		wait for 50 ns;
		clock<='0';
		S1<='0';
		S0<='0';
		D0<='1';
		D1<='1';
		D2<='1';
		D3<='1';
		wait for 50 ns;	
		clock<='1';
		
		wait for 50 ns;
		clock<='0';
		S1<='1';
		S0<='0';
		D0<='1';
		D1<='1';
		D2<='1';
		D3<='1';
		wait for 50 ns;	
		clock<='1';
		
		wait for 50 ns;
		clock<='0';
		S1<='0';
		S0<='1';
		D0<='1';
		D1<='1';
		D2<='1';
		D3<='1';
		wait for 50 ns;	
		clock<='1';
		
		wait for 50 ns;
		clock<='0';
		S1<='0';
		S0<='0';
		D0<='1';
		D1<='1';
		D2<='1';
		D3<='1';
		wait for 50 ns;	
		clock<='1';
		

      -- insert stimulus here 

      wait;
   end process;

END;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:04:21 10/11/2016 
-- Design Name: 
-- Module Name:    ShiftRegister - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity MUX is
	port(S0, S1, I0, I1, I2, I3: in std_logic; Q: out std_logic);
end MUX;

architecture MUX_str of MUX is
		component and3 is
				port (I0, I1, I2: in std_logic; O:out std_logic);
		end component;
		component or4 is
				port (I0, I1, I2, I3: in std_logic; O: out std_logic);
		end component;
		component inv is
				port (I: in std_logic; O: out std_logic);
		end component;
signal d0, d1, d2, d3, d4, d5, d6: std_logic;

Begin
A0: and3 port map (I0, d0, d1, d2);
A1: and3 port map (I1, d0, S1, d3);
A2: and3 port map (I2, S0, d1, d4);
A3: and3 port map (I3, S0, S1, d5);
INV0: inv port map (S0, d0);
INV1: inv port map (S1, d1);
OR0: or4 port map (d2, d3, d4, d5, d6);

Q<=d6;
end MUX_str;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity ShiftRegister is
	port(clock, S1, S0, LSI, D0, D1, D2, D3, RSI: in std_logic; Q0, Q1, Q2, Q3: out std_logic);
end ShiftRegister;

architecture ShiftRegister_str of ShiftRegister is
	 component fd is
				port (D, C: in std_logic; Q: out std_logic);
	 end component;
	 component MUX is
				port(S0, S1, I0, I1, I2, I3: in std_logic; Q: out std_logic);
	 end component;
signal DF0, DF1, DF2, DF3, DQ0, DQ1, DQ2, DQ3: std_logic;

Begin
MUX0: MUX port map(S0, S1, DQ0, RSI, DQ1, D0, DF0);
MUX1: MUX port map(S0, S1, DQ1, DQ0, DQ2, D1, DF1);
MUX2: MUX port map(S0, S1, DQ2, DQ1, DQ3, D2, DF2);
MUX3: MUX port map(S0, S1, DQ3, DQ2, LSI, D3, DF3);
FD0: fd port map (DF0, clock, DQ0);
FD1: fd port map (DF1, clock, DQ1);
FD2: fd port map (DF2, clock, DQ2);
FD3: fd port map (DF3, clock, DQ3);
Q0<=DQ0;
Q1<=DQ1;
Q2<=DQ2;
Q3<=DQ3;

end ShiftRegister_str;

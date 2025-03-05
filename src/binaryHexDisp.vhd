----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2025 10:44:05 AM
-- Design Name: 
-- Module Name: binaryHexDisp - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity binaryHexDisp is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end binaryHexDisp;

architecture Behavioral of binaryHexDisp is

begin
    o_seg_n <= "1000000" when (i_Hex = "0000") else
    "1111001" when (i_Hex = "0001") else
    "0100100" when (i_Hex = "0010") else
    "0110000" when (i_Hex = "0011") else
    "0011001" when (i_Hex = "0100") else
    "0010010" when (i_Hex = "0101") else
    "0000010" when (i_Hex = "0110") else
    "1111000" when (i_Hex = "0111") else
    "0000000" when (i_Hex = "1000") else
    "0011000" when (i_Hex = "1001") else
    "0001000" when (i_Hex = "1010") else
    "0000011" when (i_Hex = "1011") else
    "0100111" when (i_Hex = "1100") else
    "0100001" when (i_Hex = "1101") else
    "1111001" when (i_Hex = "1110") else
    "1000111" when (i_Hex = "1111");

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2025 08:24:06 PM
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

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture test_bench of sevenseg_decoder_tb is
    
    component binaryHexDisp1 is
        port(
        i_Hex : in std_logic_vector(3 downto 0);
        o_seg_n : out std_logic_vector(6 downto 0)
        );
    end component binaryHexDisp1;
    
    signal i_Hex : std_logic_vector(3 downto 0) := (others => '0');
    signal o_seg_n : std_logic_vector(6 downto 0)  := (others => '0');
    
begin


    uut: binaryHexDisp1
        port map(
        i_Hex => i_Hex,
        o_seg_n => o_seg_n
        );



test_process : process
begin

    i_Hex <= "0000"; wait for 10 ns;
        assert o_seg_n = "1000000" report "error on 0" severity failure;
    i_Hex <= "0001"; wait for 10 ns;
        assert o_seg_n = "1111001" report "error on 1" severity failure;
    i_Hex <= "0010"; wait for 10 ns;
        assert o_seg_n = "0100100" report "error on 2" severity failure;
    i_Hex <= "0011"; wait for 10 ns;
        assert o_seg_n = "0110000" report "error on 3" severity failure;
    i_Hex <= "0100"; wait for 10 ns;
        assert o_seg_n = "0011001" report "error on 4" severity failure;
    i_Hex <= "0101"; wait for 10 ns;
        assert o_seg_n = "0010010" report "error on 5" severity failure;
    i_Hex <= "0110"; wait for 10 ns;
        assert o_seg_n = "0000010" report "error on 6" severity failure;
    i_Hex <= "0111"; wait for 10 ns;
        assert o_seg_n = "1111000" report "error on 7" severity failure;
    i_Hex <= "1000"; wait for 10 ns;
        assert o_seg_n = "0000000" report "error on 8" severity failure;
    i_Hex <= "1001"; wait for 10 ns;
        assert o_seg_n = "0011000" report "error on 9" severity failure;
    i_Hex <= "1010"; wait for 10 ns;
        assert o_seg_n = "0001000" report "error on A" severity failure;
    i_Hex <= "1011"; wait for 10 ns;
        assert o_seg_n = "0000011" report "error on B" severity failure;
    i_Hex <= "1100"; wait for 10 ns;
        assert o_seg_n = "0100111" report "error on C" severity failure;
    i_Hex <= "1101"; wait for 10 ns;
        assert o_seg_n = "0100001" report "error on D" severity failure;
    i_Hex <= "1110"; wait for 10 ns;
        assert o_seg_n = "0000110" report "error on E" severity failure;
    i_Hex <= "1111"; wait for 10 ns;
        assert o_seg_n = "0001110" report "error on F" severity failure;

    wait;
  end process;
end test_bench;

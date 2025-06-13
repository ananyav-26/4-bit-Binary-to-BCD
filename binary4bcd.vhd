-- ============================================================
-- Title      : 4-bit Binary to BCD Converter
-- Author     : Ananya Vaidya
-- ============================================================

library ieee;
use ieee.std_logic_1164.all;

-- Entity Declaration
entity binary_to_bcd is
    port (
        binary_input : in std_logic_vector(3 downto 0);  -- 4-bit binary input (0 to 15)
        bcd_output   : out std_logic_vector(7 downto 0)  -- 8-bit BCD output (upper nibble: tens, lower nibble: ones)
    );
end entity;

architecture behavioral of binary_to_bcd is
begin
    -- Combinational process to convert binary to BCD
    process(binary_input)
    begin
        case binary_input is
            when "0000" => bcd_output <= "00000000"; -- 0
            when "0001" => bcd_output <= "00000001"; -- 1
            when "0010" => bcd_output <= "00000010"; -- 2
            when "0011" => bcd_output <= "00000011"; -- 3
            when "0100" => bcd_output <= "00000100"; -- 4
            when "0101" => bcd_output <= "00000101"; -- 5
            when "0110" => bcd_output <= "00000110"; -- 6
            when "0111" => bcd_output <= "00000111"; -- 7
            when "1000" => bcd_output <= "00001000"; -- 8
            when "1001" => bcd_output <= "00001001"; -- 9
            when "1010" => bcd_output <= "00010000"; -- 10 -> BCD = 0001 0000
            when "1011" => bcd_output <= "00010001"; -- 11 -> BCD = 0001 0001
            when "1100" => bcd_output <= "00010010"; -- 12 -> BCD = 0001 0010
            when "1101" => bcd_output <= "00010011"; -- 13 -> BCD = 0001 0011
            when "1110" => bcd_output <= "00010100"; -- 14 -> BCD = 0001 0100
            when "1111" => bcd_output <= "00010101"; -- 15 -> BCD = 0001 0101
            when others => bcd_output <= "00000000";  -- Default fallback case
        end case;
    end process;
end architecture;

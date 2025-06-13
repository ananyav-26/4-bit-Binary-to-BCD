-- ============================================================
-- Title      : Testbench for 4-bit Binary to BCD Converter
-- Author     : Ananya Vaidya
-- ============================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Testbench entity has no ports
entity tb_binary_to_bcd is
end tb_binary_to_bcd;

architecture behavior of tb_binary_to_bcd is

    -- Component Declaration for the Unit Under Test (UUT)
    component binary_to_bcd
        port (
            binary_input : in std_logic_vector(3 downto 0);   -- 4-bit binary input
            bcd_output   : out std_logic_vector(7 downto 0)   -- 8-bit BCD output
        );
    end component;

    -- Signals to drive the UUT
    signal binary_input : std_logic_vector(3 downto 0) := (others => '0');  -- Test input
    signal bcd_output   : std_logic_vector(7 downto 0);                     -- Observed output

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: binary_to_bcd
        port map (
            binary_input => binary_input,
            bcd_output   => bcd_output
        );

    -- Stimulus process: applies all binary values from 0 to 15
    stim_proc: process
    begin
        for i in 0 to 15 loop
            binary_input <= std_logic_vector(to_unsigned(i, 4));  -- Apply binary input
            wait for 50 ns;                                       -- Wait for conversion
        end loop;
        wait;  -- Stop simulation
    end process;

end behavior;

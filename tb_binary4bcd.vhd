library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_binary_to_bcd is
end tb_binary_to_bcd;

architecture behavior of tb_binary_to_bcd is

    -- Component Declaration
    component binary_to_bcd
        port (
            binary_input : in std_logic_vector(3 downto 0);
            bcd_output   : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Signals for testing
    signal binary_input : std_logic_vector(3 downto 0) := (others => '0');
    signal bcd_output   : std_logic_vector(7 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: binary_to_bcd
        port map (
            binary_input => binary_input,
            bcd_output   => bcd_output
        );

    -- Stimulus process
    stim_proc: process
    begin
        for i in 0 to 15 loop
            binary_input <= std_logic_vector(to_unsigned(i, 4));
            wait for 50 ns;
        end loop;
        wait;
    end process;

end behavior;

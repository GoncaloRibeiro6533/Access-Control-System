library IEEE;
use IEEE.std_logic_1164.all;

entity COUNTER_3_TB is
end COUNTER_3_TB;

architecture testbench of COUNTER_3_TB is
    -- Component declaration for the COUNTER_3
    component COUNTER_3
        port (
            CLK, E, CLR: in STD_LOGIC;
            R: out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;

    -- Signal declarations
    signal CLK_in, E_in, CLR_in: STD_LOGIC;
    signal R_out: STD_LOGIC_VECTOR(2 downto 0);

begin
    -- Instantiate the COUNTER_3
    UUT: COUNTER_3 port map (
        CLK => CLK_in, E => E_in, CLR => CLR_in, R => R_out
    );

    -- Stimulus process
    stimulus: process
    begin
        -- Initialize signals
        CLK_in <= '0';
        E_in <= '0';
        CLR_in <= '1';
        wait for 10 ns;

        -- Deassert CLR
        CLR_in <= '0';
        wait for 10 ns;

        -- Apply stimuli
        E_in <= '1';
        wait for 10 ns;

        E_in <= '0';
        wait for 10 ns;

        E_in <= '1';
        wait for 10 ns;

        E_in <= '0';
        wait for 10 ns;

        -- End the simulation
        wait;
    end process;



end testbench;

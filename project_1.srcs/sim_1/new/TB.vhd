library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TB is
end TB;

architecture Behavioral of TB is
    component bcd_display
        Port (
            SW  : in  STD_LOGIC_VECTOR(3 downto 0);
            SEG : out STD_LOGIC_VECTOR(6 downto 0);
            AN  : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    signal SW_tb  : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal SEG_tb : STD_LOGIC_VECTOR(6 downto 0);
    signal AN_tb  : STD_LOGIC_VECTOR(3 downto 0);

begin
    U: bcd_display
        port map (
            SW  => SW_tb,
            SEG => SEG_tb,
            AN  => AN_tb
        );

    process
    begin
        for i in 0 to 15 loop
            SW_tb <= std_logic_vector(to_unsigned(i, 4));
            wait for 50 ns;
        end loop;
        
    end process;
end Behavioral;

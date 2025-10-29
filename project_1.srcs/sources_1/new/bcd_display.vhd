library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd_display is
    Port (
        SW  : in  STD_LOGIC_VECTOR(3 downto 0);
        SEG : out STD_LOGIC_VECTOR(6 downto 0);
        AN  : out STD_LOGIC_VECTOR(3 downto 0);
        LED : out STD_LOGIC_VECTOR(3 downto 0)
    );
end bcd_display;

architecture Behavioral of bcd_display is
begin
    AN <= "1110";
    LED <= SW;
    
    process(SW)
        variable val : integer range 0 to 15;
    begin
        val := to_integer(unsigned(SW));
        case val is
            when 0  => SEG <= "0000001";
            when 1  => SEG <= "1001111";
            when 2  => SEG <= "0010010";
            when 3  => SEG <= "0000110";
            when 4  => SEG <= "1001100";
            when 5  => SEG <= "0100100";
            when 6  => SEG <= "0100000";
            when 7  => SEG <= "0001111";
            when 8  => SEG <= "0000000";
            when 9  => SEG <= "0000100";
            when 10 => SEG <= "0001000";
            when 11 => SEG <= "1100000";
            when 12 => SEG <= "0110001";
            when 13 => SEG <= "1000010";
            when 14 => SEG <= "0110000";
            when 15 => SEG <= "0111000";
            when others => SEG <= "1111110";
        end case;
    end process;
end Behavioral;

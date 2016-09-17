-- Testbench for 8-bit adder
--
-- By: Clayton Davis

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity tb_adder8 is
end tb_adder8;

architecture tb_adder8_b of tb_adder8 is
  
  signal a, b, s : std_logic_vector(7 downto 0) := "00000000";
  signal cin, cout : std_logic := '0';
  
  component adder8
    port (a     : in std_logic_vector(7 downto 0);
          b     : in std_logic_vector(7 downto 0);
          cin   : in std_logic;
          s     : out std_logic_vector(7 downto 0);
          cout  : out std_logic);
  end component;
  
begin
  
  stim1: process
  begin
    for I in 0 to 3 loop
      for J in 0 to 3 loop
        wait for 10 ns;        
        a <= a + 1;
      end loop;
      b <= b + 1;
    end loop;
  end process;
  
  dut: adder8 port map (a, b, cin, s, cout);
end tb_adder8_b;
  
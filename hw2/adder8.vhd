-- 8-bit full adder 
--
-- By: Clayton Davis

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity adder8 is
  port (a     : in std_logic_vector(7 downto 0);
        b     : in std_logic_vector(7 downto 0);
      		cin   : in std_logic;
		    s     : out std_logic_vector(7 downto 0);
		    cout  : out std_logic);
end adder8;

architecture adder8_b of adder8 is
begin
	ADD: process(a, b, cin)
	 variable sum: std_logic_vector(8 downto 0);
  begin
	  sum := ('0' & a) + ('0' & b) + ("0000000" & cin);
	  s <= sum(7 downto 0);
	  cout <= sum(8);
	end process ADD;
end adder8_b;




library ieee;
use ieee.std_logic_1164.all;

entity multiplexer is
port(
    A0,A1,S0:in std_logic;
    Y:out std_logic
);
end multiplexer;

architecture multiplexer_arch of multiplexer is
begin
    Y <= ((not S0) and A0) or (S0 and A1);
end multiplexer_arch;
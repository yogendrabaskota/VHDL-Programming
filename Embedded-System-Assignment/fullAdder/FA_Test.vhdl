library	IEEE;
use	IEEE.std_logic_1164.all;

entity	fatest	is
end	fatest;

architecture	test	of	fatest	is
component	fulladder	is
Port	(A,B,Cin	:	in	STD_LOGIC;
	S,C	:	out	STD_LOGIC);
end	component	fulladder;

signal	A,B,Cin,S,C:	STD_LOGIC;

begin

uut	:	fulladder	port	map(
A=>A,	B=>B,
Cin=>Cin,S=>S,C=>C);

stim:	process
begin
A<='0';
B<='0';
Cin<='0';
wait	for	10	ns;

A<='0';
B<='0';
Cin<='1';
wait	for	10	ns;

A<='0';
B<='1';
Cin<='0';
wait	for	10	ns;

A<='0';
B<='1';
Cin<='1';
wait	for	10	ns;
	wait;

end	process;
end	test;


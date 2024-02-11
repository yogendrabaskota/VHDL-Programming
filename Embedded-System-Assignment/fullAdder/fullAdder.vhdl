--	vhdl code for or gate
LIBRARY	IEEE;
USE	IEEE.STD_LOGIC_1164.ALL;

ENTITY	orgate	IS
PORT(
	x,y:IN	STD_LOGIC;
	z:OUT	STD_LOGIC
);
END	orgate;

ARCHITECTURE	orarch	OF	orgate	IS
BEGIN
	z<=x	or	y;
END	orarch;

-- vhdl code for half adder
LIBRARY	IEEE;
USE	IEEE.STD_LOGIC_1164.ALL;

ENTITY	halfadder	IS
PORT(
	a,b:IN	STD_LOGIC;
	s,c:OUT	STD_LOGIC
);
END	halfadder;

ARCHITECTURE	half_arch	OF	halfadder	IS
BEGIN
s<=a	xor	b;
c<=a	and	b;
END	half_arch;

--vhdl code for full adder using two half adder and a or gate

LIBRARY	IEEE;
USE	IEEE.STD_LOGIC_1164.ALL;

ENTITY	fulladder	IS
PORT(
	A,B,Cin:IN	STD_LOGIC;
	S,C:OUT	STD_LOGIC
);
END	fulladder;
ARCHITECTURE	faarch	OF	fulladder	IS
COMPONENT	orgate	IS
PORT(
	x,y:IN	STD_LOGIC;
	z:OUT	STD_LOGIC			
);
END	COMPONENT	orgate;

COMPONENT	halfadder	IS
PORT(
	a,b:IN	STD_LOGIC;
	s,c:OUT	STD_LOGIC
);
END	COMPONENT	halfadder;

SIGNAL	S1,C1,C2:STD_LOGIC;
BEGIN
	HA1:halfadder	PORT	MAP(a=>A,b=>B,s=>S1,c=>C1);
	HA2:halfadder	PORT	MAP(a=>S1,b=>Cin,s=>S,c=>C2);
	OR1:orgate	PORT	MAP(x=>C1,y=>C2,z=>C);
END	faarch;

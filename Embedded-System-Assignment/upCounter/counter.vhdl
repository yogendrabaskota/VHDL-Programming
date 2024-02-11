library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter is
    Port ( T, CLK, RST : in STD_LOGIC;
           Q : out STD_LOGIC);
end counter;

architecture counterArch of counter is
    signal Q_temp : STD_LOGIC;
begin
    process (CLK, RST)
    begin
        if RST = '1' then
            Q_temp <= '0';   
        elsif rising_edge(CLK) then
            if T = '1' then
                Q_temp <= not Q_temp; 
            else
                Q_temp <= Q_temp;  
            end if;
        end if;
    end process;

    Q <= Q_temp; 
end counterArch;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ANDG is
    Port ( A, B : in STD_LOGIC;
           Z : out STD_LOGIC);
end ANDG;

architecture ANDG_arch of ANDG is
BEGIN
	Z <= A and B;

end ANDG_arch;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity up_count is
    Port ( CLK, RST : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(2 downto 0));
end up_count;

architecture up_count of up_count is
	component ANDG is 
		port(A, B : in STD_LOGIC;
		    Z : out STD_LOGIC);
	end component ANDG;

	component counter is
		Port ( T, CLK, RST : in STD_LOGIC;
		       Q : out STD_LOGIC);
	end component counter;
signal QA, QB, QC, TC: STD_LOGIC;

BEGIN
	T1: counter port map(T=>'1', CLK=> CLK, RST=>RST, Q=>QA);
	T2: counter port map(T=>QA, CLK=>CLK, RST=>RST, Q=>QB);
	A1: ANDG port map(A=> QA, B=>QB, Z=>TC);
	T3: counter port map(T=>TC, CLK=> CLK, RST=>RST, Q=>Q(2));
	Q(0)<= '1' when QA = '1' else '0';
	Q(1)<= '1' when QB = '1' else '0';


    
end up_count;

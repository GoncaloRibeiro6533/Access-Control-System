LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY COUNTER_INC_DEC IS 
	PORT( 
		CLK : in std_logic;
		E : in std_logic;
		CLR: in std_logic;
		INCnDEC: in std_logic;
		R : out std_logic_vector (3 downto 0) :=(others => '0')
		);
END COUNTER_INC_DEC;


ARCHITECTURE arq_COUNTER OF COUNTER_INC_DEC IS

--R <= '0' when CLR = '1' else R when rising_edge(CLK) and CE = '1';

COMPONENT REGISTOR
	PORT( R : in std_logic_vector(3 downto 0);
			CLR : in std_logic;
			CL : in std_logic;
			E : in std_logic;
			TC : out std_logic;
			F : out std_logic_vector (3 downto 0)
			);
END COMPONENT;

COMPONENT SOMADOR
	PORT( A : in std_logic_vector(3 downto 0):=(others => '0');
			B : in std_logic_vector(3 downto 0);
			CI : in std_logic;
			R : out std_logic_vector (3 downto 0):=(others => '0')
			);
END COMPONENT;

SIGNAL  SR: std_logic_vector(3 downto 0):=(others => '0');
SIGNAL RS: std_logic_vector(3 downto 0):=(others => '0');
signal valueSignal : STD_LOGIC;
	

BEGIN
	
valueSignal <= '1' when (INCnDEC = '1') else '1';
	
USOMADOR : SOMADOR port map (
	A => RS,
	B(0) => valueSignal,
	B(1) => '0',
	B(2) => '0',
	B(3) => '0',
	CI => '0',
	R => SR
	);
	

	
UREGISTOR : REGISTOR port map (
	R => SR,
	CL => CLK,
	E => E,
	F => RS,
	CLR => CLR
	);
		
	R <= RS;

	
END arq_COUNTER;
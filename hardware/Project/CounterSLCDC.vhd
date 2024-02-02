LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY CounterSLCDC IS 
	PORT( 
		CLK, E : in std_logic;
		CLR: in std_logic;
		R : out std_logic_vector (2 downto 0) :=(others => '0')
		);
END CounterSLCDC;


ARCHITECTURE arq_CounterSLCDC OF CounterSLCDC IS


COMPONENT RegistorSLCDC
	PORT( R : in std_logic_vector(2 downto 0);
			CLR : in std_logic;
			CL : in std_logic;
			E : in std_logic;
			TC : out std_logic;
			F : out std_logic_vector (2 downto 0)
			);
END COMPONENT;

COMPONENT SomadorSLCDC
	PORT( A : in std_logic_vector(2 downto 0):=(others => '0');
			B : in std_logic_vector(2 downto 0);
			CI : in std_logic;
			R : out std_logic_vector (2 downto 0):=(others => '0')
			);
END COMPONENT;

SIGNAL  SR: std_logic_vector(2 downto 0):=(others => '0');
SIGNAL RS: std_logic_vector(2 downto 0):=(others => '0');

	

BEGIN
	
 
USomadorSLCDC : SomadorSLCDC port map (
	A => RS,
	B(0) => '1',
	B(1) => '0',
	B(2) => '0',
	CI => '0',
	R => SR
	);
	

	
URegistorSLCDC : RegistorSLCDC port map (
	R => SR,
	CL => CLK,
	E => E,
	F => RS,
	CLR => CLR
	);
		
	R <= RS;

	
END arq_CounterSLCDC;
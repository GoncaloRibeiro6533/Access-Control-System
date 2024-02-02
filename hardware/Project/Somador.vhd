LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SOMADOR IS 
	PORT( A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
		CI : in std_logic;
		R : out std_logic_vector (3 downto 0);
		CO : out std_logic
		);
END SOMADOR;


ARCHITECTURE arq_SOMADOR OF SOMADOR IS

COMPONENT FULL_ADDER_4BITS
	PORT(A : in std_logic;
	B : in std_logic;
	CI : in std_logic;
	CO : out std_logic;
	R : out std_logic
	);
END COMPONENT;

SIGNAL C : std_logic_vector(3 downto 1);

BEGIN


U0FULL_ADDER_4BITS : FULL_ADDER_4BITS port map (
	A => A(0),
	B => B(0),
	CI => CI,
	CO => C(1),
	R => R(0)
	);

U1FULL_ADDER_4BITS : FULL_ADDER_4BITS port map (
	A => A(1),
	B => B(1),
	CI => C(1),
	CO => C(2),
	R => R(1)
	);
	
U2FULL_ADDER_4BITS : FULL_ADDER_4BITS port map (
	A => A(2),
	B => B(2),
	CI => C(2),
	CO => C(3),
	R => R(2)
	);

U3FULL_ADDER_4BITS : FULL_ADDER_4BITS port map (
	A => A(3),
	B => B(3),
	CI => C(3),
	CO => CO,
	R => R(3)
	);
		
END arq_SOMADOR;
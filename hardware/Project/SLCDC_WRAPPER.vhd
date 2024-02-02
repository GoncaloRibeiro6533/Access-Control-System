LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SLCDC_WRAPPER IS
	PORT( 
	   MCLK, reset : in std_logic;
		WrL : out std_logic;
		Dout : out std_logic_vector (4 downto 0)
);
END SLCDC_WRAPPER;


ARCHITECTURE arq_SLCDC_WRAPPER OF SLCDC_WRAPPER IS

COMPONENT UsbPort
			PORT
				(
					inputPort:  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
					outputPort :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
				);
END COMPONENT;

COMPONENT SLCDC IS
	PORT( MCLK,reset : IN STD_LOGIC;
			NOT_SS, SCLK, SDX: IN STD_LOGIC; --software
			WrL : OUT STD_LOGIC;
			Dout : OUT STD_LOGIC_VECTOR(4 downto 0)
	);
END COMPONENT;


signal UsbPortInputSignal, UsbPortOutputSignal : STD_LOGIC_VECTOR (7 downto 0);
signal DoutSignal : STD_LOGIC_VECTOR (4 downto 0);

begin

uUsbPort: UsbPort PORT MAP(
			inputPort 	=> UsbPortInputSignal,
			outputPort	=> UsbPortOutputSignal			
);


uSLCDC : SLCDC PORT MAP (
			MCLK	 	=>	MCLK,
			reset 	=> reset,
			NOT_SS			=> UsbPortOutputSignal(3),  --0x08
			SCLK		=> UsbPortOutputSignal(1),	 --0x02
			SDX		=> UsbPortOutputSignal(0),  --0x01
			Dout		=> Dout,
			WrL		=> WrL
);


end arq_SLCDC_WRAPPER;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SDC_USBPORT IS
	PORT( 			
			MCLK,reset, Pswitch, Sopenin, Sclosein : IN STD_LOGIC;
			Dout : out std_logic_vector(4 downto 0);
			onOff, OpenClose, Psensor : out std_logic;
			HEX0			: out std_logic_vector(7 downto 0);
			HEX1			: out std_logic_vector(7 downto 0);
			HEX2			: out std_logic_vector(7 downto 0);
			HEX3			: out std_logic_vector(7 downto 0);
			HEX4			: out std_logic_vector(7 downto 0);
			HEX5			: out std_logic_vector(7 downto 0)			
);
END SDC_USBPORT;




ARCHITECTURE arq_SDC_USBPORT OF SDC_USBPORT IS

COMPONENT UsbPort
			PORT
				(
					inputPort:  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
					outputPort :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
				);
END COMPONENT;

COMPONENT SDC
			PORT(  
				MCLK,reset : IN STD_LOGIC;
				NOT_SS, SCLK, SDX, Sclose, Sopen, Psensor: IN STD_LOGIC; --software
				OnOff, busy, OpenClose : OUT STD_LOGIC;
				Dout : OUT STD_LOGIC_VECTOR(4 downto 0)
			);
END COMPONENT;

COMPONENT door_mecanism IS
			PORT(	MCLK 			: in std_logic;
					RST			: in std_logic;
					onOff			: in std_logic;
					openClose	: in std_logic;
					v			: in std_logic_vector(3 downto 0);
					Pswitch		: in std_logic;
					Sopen			: out std_logic;
					Sclose		: out std_logic;
					Pdetector	: out std_logic;
					HEX0			: out std_logic_vector(7 downto 0);
					HEX1			: out std_logic_vector(7 downto 0);
					HEX2			: out std_logic_vector(7 downto 0);
					HEX3			: out std_logic_vector(7 downto 0);
					HEX4			: out std_logic_vector(7 downto 0);
					HEX5			: out std_logic_vector(7 downto 0)
					);
END COMPONENT;



signal UsbPortInputSignal, UsbPortOutputSignal : STD_LOGIC_VECTOR (7 downto 0);
signal ScloseSignal, SopenSignal, PsensorSignal, OnOffSignal: STD_LOGIC;
signal DoutSignal :STD_LOGIC_VECTOR(4 downto 0);

begin



uUsbPort: UsbPort PORT MAP(
			inputPort 	=> UsbPortInputSignal,
			outputPort	=> UsbPortOutputSignal			
);


uSDC: SDC PORT MAP(
			MCLK	 	=>	MCLK,
			reset 	=> reset,
			NOT_SS	=> UsbPortOutputSignal(2), --0x04
			SCLK		=> UsbPortOutputSignal(1), --0x02
			SDX		=> UsbPortOutputSignal(0), --0x01
			Sclose	=> Sclosein,
			Sopen		=> Sopenin,
			Psensor  => Pswitch,
			OnOff		=> OnOffSignal,
			OpenClose => OpenClose,
			busy		=> UsbPortInputSignal(7), --0x80
			Dout		=> DoutSignal
			
);


--udoor_mecanism: door_mecanism PORT MAP (
	--		MCLK 		=> MCLK,
		--	RST		=> reset,
		--onOff		=>	OnOffSignal,
	--openClose => DoutSignal(0), --OC
	--v			 => DoutSignal (4 downto 1),
	--Pswitch	 => Pswitch,
	--Sopen		 => SopenSignal,
--	Sclose	 => ScloseSignal,
--	Pdetector => PsensorSignal,
	--HEX0		 => HEX0,	
	---HEX1		 => HEX1,
--	HEX2		 => HEX2,	
	--HEX3		 => HEX3,	
	--HEX4		 => HEX4,	
	--HEX5		 => HEX5	
--); 

Dout <= DoutSignal;
onOff <= OnOffSignal;
--Sopen <=SopenSignal;
--Sclose <= ScloseSignal;
Psensor <= Pswitch;

end arq_SDC_USBPORT;
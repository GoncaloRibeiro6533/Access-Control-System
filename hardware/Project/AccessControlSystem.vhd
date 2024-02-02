LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY AccessControlSystem IS
	PORT( MCLK,reset, Pswitch, M: IN STD_LOGIC;
			Psensor : out std_logic;
			KEYPAD_LIN : in std_logic_vector(3 downto 0);
			KEY_CODE :out std_logic_vector(3 downto 0);
			KEYPAD_COL : out std_logic_vector(3 downto 0);
			HEX0			: out std_logic_vector(7 downto 0);
			HEX1			: out std_logic_vector(7 downto 0);
			HEX2			: out std_logic_vector(7 downto 0);
			HEX3			: out std_logic_vector(7 downto 0);
			HEX4			: out std_logic_vector(7 downto 0);
			HEX5			: out std_logic_vector(7 downto 0);
			WrL, onOFF, openClose : OUT STD_LOGIC;
			V : OUT STD_LOGIC_VECTOR(3 downto 0);
			Dout : OUT STD_LOGIC_VECTOR(4 downto 0)
	);
END AccessControlSystem;


ARCHITECTURE arq_AccessControlSystem OF AccessControlSystem IS

component Keyboard_Reader is
port( CLK, Reset, ACK : IN STD_LOGIC;
		Dval : OUT STD_LOGIC; 
		KEYPAD_LIN : in std_logic_vector(3 downto 0);
		KEYPAD_COL : out std_logic_vector(3 downto 0);
		Q : out std_logic_vector(3 downto 0)

);
end component;

COMPONENT SLCDC IS
	PORT( MCLK,reset : IN STD_LOGIC;
			NOT_SS, SCLK, SDX: IN STD_LOGIC; --software
			WrL : OUT STD_LOGIC;
			Dout : OUT STD_LOGIC_VECTOR(4 downto 0)
	);
END COMPONENT;

COMPONENT  SDC IS
	PORT( MCLK,reset : IN STD_LOGIC;
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



COMPONENT UsbPort IS
	PORT(
	   	inputPort:  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
			outputPort :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;		



signal UsbPortInputSignal, UsbPortOutputSignal : STD_LOGIC_VECTOR (7 downto 0);
signal ScloseSignal, SopenSignal, PsensorSignal, OnOffSignal, MCLKDivSignal, OpenCloseSignal: STD_LOGIC;
signal DoutSignal :STD_LOGIC_VECTOR(4 downto 0);


begin





uUsbPort: UsbPort PORT MAP(
			inputPort 	=> UsbPortInputSignal,
			outputPort	=> UsbPortOutputSignal			
);

UsbPortInputSignal(6) <= M; 


uKeyboard_Reader: Keyboard_Reader PORT MAP( 
	CLK => MCLK,
	Reset => reset,
	ACK => UsbPortOutputSignal(7), --ver no KBD
	Dval => UsbPortInputSignal(4), --ver no KBD
	KEYPAD_LIN => KEYPAD_LIN,
	KEYPAD_COL => KEYPAD_COL,
	Q => UsbPortInputSignal(3 downto 0) --ver no KBD
);


uSLCDC: SLCDC PORT MAP(
			MCLK	 	=>	MCLK,
			reset 	=> reset,
			NOT_SS	=> UsbPortOutputSignal(3), --0x08 ver no SerialEmitter
			SCLK		=> UsbPortOutputSignal(1), --0x02 ver no SerialEmitter
			SDX		=> UsbPortOutputSignal(0), --0x01 ver no SerialEmitter
			WrL		=> WrL,
			Dout		=> Dout
);


uSDC: SDC PORT MAP(
			MCLK	 	=>	MCLK,
			reset 	=> reset,
			NOT_SS	=> UsbPortOutputSignal(2), --0x04 ver no SerialEmitter
			SCLK		=> UsbPortOutputSignal(1), --0x02 ver no SerialEmitter
			SDX		=> UsbPortOutputSignal(0), --0x01 ver no SerialEmitter
			Sclose	=> ScloseSignal,
			Sopen		=> SopenSignal,
			Psensor  => PsensorSignal,
			OnOff		=> OnOffSignal,
			OpenClose => OpenCloseSignal,
			busy		=> UsbPortInputSignal(7), --0x80 ver no SerialEmitter
			Dout		=> DoutSignal
			
);

udoor_mecanism: door_mecanism PORT MAP (
		MCLK 		=> MCLK,
   	RST		=> reset,
	   onOff		=>	OnOffSignal,
		openClose => OpenCloseSignal,
		v			 => DoutSignal (4 downto 1), --velocity
		Pswitch	 => Pswitch,
		Sopen		 => SopenSignal,
		Sclose	 => ScloseSignal,
		Pdetector => PsensorSignal,
		HEX0		 => HEX0,	
		HEX1		 => HEX1,
		HEX2		 => HEX2,	
		HEX3		 => HEX3,	
		HEX4		 => HEX4,	
		HEX5		 => HEX5	
); 

V <= DoutSignal(4 downto 1); --velocity
onOFF <= OnOffSignal;
openClose <= OpenCloseSignal;
Psensor <=PsensorSignal ;

end arq_AccessControlSystem;


		
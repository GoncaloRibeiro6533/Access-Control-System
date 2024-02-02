library IEEE;
use IEEE.std_logic_1164.all;

entity SerialReceiverSDC is
port(
	SDX, SCLK, SS, accept, MCLK, reset : in std_logic;
	DXval, busy : out std_logic;
	data : out std_logic_vector (4 downto 0)
);

end SerialReceiverSDC;

architecture arq_SerialReceiverSDC OF SerialReceiverSDC IS


component CounterSLCDC  
	PORT( 
		CLK : in std_logic;
		CLR: in std_logic;
		R : out std_logic_vector (2 downto 0) :=(others => '0')
		);
end component;


component ShiftRegisterSLCDC 
port( Sin, CLK, enable, RST: in STD_LOGIC;
		D : OUT STD_LOGIC_VECTOR(4 downto 0) 
);
end component;


component equalTo5SerialReceiverSLCDC 
port( D : IN STD_LOGIC_VECTOR(2 downto 0);
		F : OUT STD_LOGIC 
);
end component;


component SerialControl 
port( SS,clk,accept,eq5,reset : IN STD_LOGIC;
		clr, wr, DXval, busy : OUT STD_LOGIC
);
end component;



signal wrSignal, clrSignal, eq5Signal, Clk_signal : STD_LOGIC;
signal counterSignal : std_logic_vector(2 downto 0);

begin


uSerialControl : SerialControl port map(
						SS => SS,
						clk => MCLK,
						accept => accept,
						wr => wrSignal,
						clr => clrSignal,
						DXval =>DXval,
						reset => reset,
						eq5 => eq5Signal,
						busy => busy	
);

uShiftRegisterSLCDC : ShiftRegisterSLCDC port map(
						Sin => SDX,
						CLK => SCLK,
						enable => wrSignal,
						RST => reset,
						D => data
);

uCounterSDC : CounterSLCDC port map(
				CLK => SCLK,
				CLR => clrSignal,
				R =>counterSignal	
);

uequalTo5SerialReceiverSDC : equalTo5SerialReceiverSLCDC port map (
					D=>counterSignal,
					F=>eq5Signal
);

end arq_SerialReceiverSDC;
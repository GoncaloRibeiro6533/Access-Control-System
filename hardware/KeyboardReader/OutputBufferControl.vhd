library IEEE;
use IEEE.std_logic_1164.all;

entity OutputBufferControl is
port( clk,reset, Load, ACK : IN STD_LOGIC;
		Wreg, OBfree, Dval : OUT STD_LOGIC
);
end OutputBufferControl;

architecture arq_OutputBufferControl of OutputBufferControl is

type STATE_TYPE is (WAITING, SENDING, COMPLETED, ACKN);

signal CURRENT_STATE, NEXT_STATE : STATE_TYPE;

begin

--		Registo Current State

CURRENT_STATE <= WAITING when (reset = '1') else NEXT_STATE when rising_edge(clk);

--		Máquina de Estados

GenerateNextState:
process (CURRENT_STATE, Load, ACK )
	begin
		case CURRENT_STATE is
			when WAITING	=> if(Load = '1') then
												NEXT_STATE 		<= SENDING;
											else
												NEXT_STATE 		<= WAITING;
											end if;
								
			when SENDING	=> 	NEXT_STATE 		<= COMPLETED;
									
			when COMPLETED	=> if(ACK = '1') then
												NEXT_STATE 		<= ACKN;
											else
												NEXT_STATE 		<= COMPLETED;
											end if;
			when ACKN	=> if(ACK = '0') then
												NEXT_STATE 		<= WAITING;
											else
												NEXT_STATE 		<= ACKN;
											end if;

					end case;
end process;

--		Outputs

 
OBfree <= '1' when (CURRENT_STATE = WAITING)     else '0';
Dval <= '1' when (CURRENT_STATE = COMPLETED)     else '0';
Wreg <= '1' when (CURRENT_STATE = SENDING)     else '0';



end arq_OutputBufferControl;
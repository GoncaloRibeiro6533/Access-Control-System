library IEEE;
use IEEE.std_logic_1164.all;

entity SerialControl is
port( SS,clk,accept,eq5,reset : IN STD_LOGIC;
		clr, wr, DXval, busy : OUT STD_LOGIC
);
end SerialControl;

architecture arq_SerialControl of SerialControl is

type STATE_TYPE is (READY, READING, WAITING,COMPLETED);

signal CURRENT_STATE, NEXT_STATE : STATE_TYPE;

begin

--		Registo Current State

CURRENT_STATE <= READY when (reset = '1') else NEXT_STATE when rising_edge(clk);

--		Máquina de Estados

GenerateNextState:
process (CURRENT_STATE, SS, eq5, accept)
	begin
		case CURRENT_STATE is
			when READY				=> if(SS = '0') then
												NEXT_STATE 		<= READING;
											else
												NEXT_STATE 		<= READY;
											end if;
											
			when READING			=> if(eq5 = '0') then
												NEXT_STATE		<= READING;
											else
												NEXT_STATE 		<= WAITING;
											end if;
			when WAITING			=> if(SS = '1') then
												NEXT_STATE 		<= COMPLETED;
											else 
												NEXT_STATE 		<= WAITING;
											end if;	
										
			when COMPLETED			=> if(accept <= '0') then
												NEXT_STATE <= COMPLETED;									
											else	
												NEXT_STATE <= READY;
											end if;
		end case;

end process;

--		Outputs
clr   <= '1' when (CURRENT_STATE = READY)     else '0';

wr 	<= '1' when (CURRENT_STATE = READING)  else '0';

DXval <= '1' when (CURRENT_STATE = COMPLETED) else '0';

busy <= '1' when (CURRENT_STATE = COMPLETED) else '0';


end arq_SerialControl;
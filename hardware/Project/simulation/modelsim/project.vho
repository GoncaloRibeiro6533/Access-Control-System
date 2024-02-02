-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/14/2023 22:49:49"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AccessControlSystem IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	MCLK : IN std_logic;
	reset : IN std_logic;
	Pswitch : IN std_logic;
	M : IN std_logic;
	Psensor : OUT std_logic;
	KEYPAD_LIN : IN std_logic_vector(3 DOWNTO 0);
	KEY_CODE : OUT std_logic_vector(3 DOWNTO 0);
	KEYPAD_COL : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	HEX4 : OUT std_logic_vector(7 DOWNTO 0);
	HEX5 : OUT std_logic_vector(7 DOWNTO 0);
	WrL : OUT std_logic;
	onOFF : OUT std_logic;
	openClose : OUT std_logic;
	V : OUT std_logic_vector(3 DOWNTO 0);
	Dout : OUT std_logic_vector(4 DOWNTO 0)
	);
END AccessControlSystem;

-- Design Ports Information
-- Psensor	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_CODE[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_CODE[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_CODE[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_CODE[3]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_COL[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_COL[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_COL[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_COL[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrL	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- onOFF	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- openClose	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pswitch	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AccessControlSystem IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_MCLK : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Pswitch : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_Psensor : std_logic;
SIGNAL ww_KEYPAD_LIN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY_CODE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEYPAD_COL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_WrL : std_logic;
SIGNAL ww_onOFF : std_logic;
SIGNAL ww_openClose : std_logic;
SIGNAL ww_V : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dout : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \udoor_mecanism|shift_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \udoor_mecanism|UCLK|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \Pswitch~input_o\ : std_logic;
SIGNAL \MCLK~input_o\ : std_logic;
SIGNAL \MCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|count[0]~7_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~1\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~2_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~3\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~4_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~5\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~6_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~7\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~8_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~9\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~10_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~11\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~12_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~1_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~13\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~14_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~15\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~16_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~17\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~18_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~19\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~20_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~21\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~22_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~2_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~3_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~1_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~2_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~23\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~24_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~25\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~26_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~3_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~27\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~28_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~4_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~29\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~30_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~5_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~31\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~32_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~6_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~33\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~34_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~35\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~36_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~37\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~38_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~39\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~40_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~41\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~42_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~43\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~44_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~45\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~46_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~6_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~47\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~48_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~49\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~50_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~51\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~52_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~53\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~54_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~55\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~56_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~57\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~58_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~59\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~60_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~61\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~62_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~8_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~7_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~5_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~9_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~4_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \KEYPAD_LIN[3]~input_o\ : std_logic;
SIGNAL \KEYPAD_LIN[2]~input_o\ : std_logic;
SIGNAL \KEYPAD_LIN[0]~input_o\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~0_combout\ : std_logic;
SIGNAL \KEYPAD_LIN[1]~input_o\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1_combout\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.WAITING~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q[0]~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U1|R~combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U1|CO~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U2|R~combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U2|CO~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U3|R~combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|empty~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.STATE_WRITING~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~2_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~1_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~3_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U1FFD|Q~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U1FFD|Q~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~1_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~1_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~18_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \rtl~5clkctrl_outclk\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~26_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~42_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~22_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~7clkctrl_outclk\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~30_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~43_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~14_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~10_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~6_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~2_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~44_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~45_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~46_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.SENDING~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U2FFD|Q~q\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~8_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~12_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~4_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~34_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~35_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~20_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~28_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~24_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~16_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~32_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~33_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~36_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U0FFD|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~15_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~11_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~3_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~7_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~49_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~50_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~23_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~27_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~19_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~47_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~31_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~48_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~51_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U3FFD|Q~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~0_combout\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0_combout\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0clkctrl_outclk\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~0_combout\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~0_combout\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~q\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uShiftRegister|Uffd0|Q~feeder_combout\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uShiftRegister|Uffd0|Q~q\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uShiftRegister|Uffd1|Q~feeder_combout\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uShiftRegister|Uffd1|Q~q\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uShiftRegister|Uffd2|Q~feeder_combout\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uShiftRegister|Uffd2|Q~q\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uShiftRegister|Uffd3|Q~feeder_combout\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uShiftRegister|Uffd3|Q~q\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q~feeder_combout\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q~q\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_0~2_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_1~0_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_1~1_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_1~2_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~1_cout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~2_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~3\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~4_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~5\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~6_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~7\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~8_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~9\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~10_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|count~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~11\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~12_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Equal0~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Equal0~1_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~13\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~14_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~15\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~16_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|count~1_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~17\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~18_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~19\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~20_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~21\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~22_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~23\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~24_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~25\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~26_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|count~2_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~27\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~28_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~29\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~30_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|count~3_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~31\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~32_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|count~4_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~33\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~34_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|count~5_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~35\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~36_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|count~6_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~37\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~38_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~39\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~40_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~41\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~42_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~43\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~44_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~45\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~46_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~47\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~48_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~49\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~50_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~51\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~52_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~53\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~54_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~55\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~56_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~57\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~58_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~59\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Add0~60_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Equal0~7_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Equal0~6_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Equal0~4_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Equal0~5_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Equal0~8_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Equal0~2_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Equal0~3_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|Equal0~9_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|tmp~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|tmp~q\ : std_logic;
SIGNAL \udoor_mecanism|UCLK|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \udoor_mecanism|U6|cnt_atual_pl[0]~3_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|OnOff~1_combout\ : std_logic;
SIGNAL \udoor_mecanism|U6|cnt_atual_pl[1]~4_combout\ : std_logic;
SIGNAL \udoor_mecanism|U6|U1|SC:2:U1|S~combout\ : std_logic;
SIGNAL \udoor_mecanism|U6|cnt_atual_pl[2]~2_combout\ : std_logic;
SIGNAL \udoor_mecanism|U6|U1|SC:3:U1|S~combout\ : std_logic;
SIGNAL \udoor_mecanism|U6|cnt_atual_pl[3]~1_combout\ : std_logic;
SIGNAL \udoor_mecanism|shift_clk~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U6|cnt_atual_pl[4]~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|shift_clk~combout\ : std_logic;
SIGNAL \udoor_mecanism|shift_clk~clkctrl_outclk\ : std_logic;
SIGNAL \udoor_mecanism|U7|dataShift_in[0]~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U7|dataShift_in[1]~2_combout\ : std_logic;
SIGNAL \udoor_mecanism|U7|dataShift_in[2]~1_combout\ : std_logic;
SIGNAL \udoor_mecanism|U7|dataShift_in[3]~5_combout\ : std_logic;
SIGNAL \udoor_mecanism|U7|dataShift_in[8]~6_combout\ : std_logic;
SIGNAL \udoor_mecanism|U7|dataShift_in[7]~7_combout\ : std_logic;
SIGNAL \udoor_mecanism|U7|dataShift_in[6]~8_combout\ : std_logic;
SIGNAL \udoor_mecanism|U7|dataShift_in[5]~3_combout\ : std_logic;
SIGNAL \udoor_mecanism|U7|dataShift_in[4]~4_combout\ : std_logic;
SIGNAL \udoor_mecanism|Equal0~1_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.OPENING~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|Equal0~0_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~1_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_1~3_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_1~4_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_0~4_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_0~6_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_0~3_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_0~5_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~0_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_2~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U3|Equal0~0_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_2~1_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_2~2_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_2~3_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_2~4_combout\ : std_logic;
SIGNAL \uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~1_combout\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~0_combout\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.COMPLETED~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.COMPLETED~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~13_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~9_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~5_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~1_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~39_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~40_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~21_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~25_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~17_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~37_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~29_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~38_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URAM|ram~41_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U1FFD|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~1_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~1_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~2_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~1_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.COMPLETED~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~1_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|A~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~1_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~2_combout\ : std_logic;
SIGNAL \udoor_mecanism|U0|dOut[1]~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U5|Equal0~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U5|dOut~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U1|dOut[1]~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U4|Equal0~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U4|dOut~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U2|dOut[1]~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U3|dOut~0_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~0_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0clkctrl_outclk\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~0_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~0_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~q\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~0_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~1_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~0_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ : std_logic;
SIGNAL \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~0_combout\ : std_logic;
SIGNAL \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\ : std_logic;
SIGNAL \uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~0_combout\ : std_logic;
SIGNAL \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~clkctrl_outclk\ : std_logic;
SIGNAL \uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~q\ : std_logic;
SIGNAL \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~0_combout\ : std_logic;
SIGNAL \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~q\ : std_logic;
SIGNAL \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~0_combout\ : std_logic;
SIGNAL \uSLCDC|UCOUNTER|UREGISTOR|U2FFD|Q~0_combout\ : std_logic;
SIGNAL \uSLCDC|UCOUNTER|UREGISTOR|U2FFD|Q~q\ : std_logic;
SIGNAL \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~1_combout\ : std_logic;
SIGNAL \uSLCDC|UCOUNTER|UREGISTOR|U3FFD|Q~0_combout\ : std_logic;
SIGNAL \uSLCDC|UCOUNTER|UREGISTOR|U3FFD|Q~q\ : std_logic;
SIGNAL \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~1_combout\ : std_logic;
SIGNAL \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~2_combout\ : std_logic;
SIGNAL \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\ : std_logic;
SIGNAL \uSLCDC|uDispat|CURRENT_STATE.COUNTING~0_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uShiftRegister|Uffd0|Q~feeder_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uShiftRegister|Uffd0|Q~q\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uShiftRegister|Uffd1|Q~feeder_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uShiftRegister|Uffd1|Q~q\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uShiftRegister|Uffd2|Q~feeder_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uShiftRegister|Uffd2|Q~q\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uShiftRegister|Uffd3|Q~feeder_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uShiftRegister|Uffd3|Q~q\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uShiftRegister|Uffd4|Q~feeder_combout\ : std_logic;
SIGNAL \uSLCDC|uSerialReceiver|uShiftRegister|Uffd4|Q~q\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \udoor_mecanism|U7|U1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \udoor_mecanism|UCLK|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \udoor_mecanism|U6|U2|Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uSLCDC|uSerialReceiver|uSerialControl|ALT_INV_CURRENT_STATE.READY~0clkctrl_outclk\ : std_logic;
SIGNAL \uSDC|uSerialReceiver|uSerialControl|ALT_INV_CURRENT_STATE.READY~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \udoor_mecanism|U3|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U4|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U5|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \udoor_mecanism|U5|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|ALT_INV_C~2_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|ALT_INV_C~1_combout\ : std_logic;
SIGNAL \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|ALT_INV_C~0_combout\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_MCLK <= MCLK;
ww_reset <= reset;
ww_Pswitch <= Pswitch;
ww_M <= M;
Psensor <= ww_Psensor;
ww_KEYPAD_LIN <= KEYPAD_LIN;
KEY_CODE <= ww_KEY_CODE;
KEYPAD_COL <= ww_KEYPAD_COL;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
WrL <= ww_WrL;
onOFF <= ww_onOFF;
openClose <= ww_openClose;
V <= ww_V;
Dout <= ww_Dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~q\);

\udoor_mecanism|shift_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \udoor_mecanism|shift_clk~combout\);

\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & 
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

\udoor_mecanism|UCLK|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \udoor_mecanism|UCLK|tmp~q\);

\uSLCDC|uDispat|CURRENT_STATE.state_bit_0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\);

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\rtl~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~7_combout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);

\rtl~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~5_combout\);

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\MCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MCLK~input_o\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);

\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0_combout\);

\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0_combout\);
\uSLCDC|uSerialReceiver|uSerialControl|ALT_INV_CURRENT_STATE.READY~0clkctrl_outclk\ <= NOT \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0clkctrl_outclk\;
\uSDC|uSerialReceiver|uSerialControl|ALT_INV_CURRENT_STATE.READY~0clkctrl_outclk\ <= NOT \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\udoor_mecanism|U3|ALT_INV_dOut~0_combout\ <= NOT \udoor_mecanism|U3|dOut~0_combout\;
\udoor_mecanism|U3|ALT_INV_Equal0~0_combout\ <= NOT \udoor_mecanism|U3|Equal0~0_combout\;
\udoor_mecanism|U4|ALT_INV_dOut~0_combout\ <= NOT \udoor_mecanism|U4|dOut~0_combout\;
\udoor_mecanism|U4|ALT_INV_Equal0~0_combout\ <= NOT \udoor_mecanism|U4|Equal0~0_combout\;
\udoor_mecanism|U5|ALT_INV_dOut~0_combout\ <= NOT \udoor_mecanism|U5|dOut~0_combout\;
\udoor_mecanism|U5|ALT_INV_Equal0~0_combout\ <= NOT \udoor_mecanism|U5|Equal0~0_combout\;
\uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|ALT_INV_C~2_combout\ <= NOT \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~2_combout\;
\uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|ALT_INV_C~1_combout\ <= NOT \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~1_combout\;
\uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|ALT_INV_C~0_combout\ <= NOT \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~0_combout\;

-- Location: FF_X45_Y42_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LCCOMB_X45_Y42_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LCCOMB_X45_Y42_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LCCOMB_X46_Y44_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X46_Y44_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: LCCOMB_X45_Y42_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\);

-- Location: LCCOMB_X44_Y52_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X44_Y42_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\);

-- Location: LCCOMB_X44_Y42_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\);

-- Location: IOOBUF_X46_Y54_N2
\Psensor~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Pswitch~input_o\,
	devoe => ww_devoe,
	o => ww_Psensor);

-- Location: IOOBUF_X49_Y0_N9
\KEY_CODE[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_KEY_CODE(0));

-- Location: IOOBUF_X56_Y0_N23
\KEY_CODE[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_KEY_CODE(1));

-- Location: IOOBUF_X29_Y39_N2
\KEY_CODE[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_KEY_CODE(2));

-- Location: IOOBUF_X69_Y0_N2
\KEY_CODE[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_KEY_CODE(3));

-- Location: IOOBUF_X38_Y0_N9
\KEYPAD_COL[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|A~0_combout\,
	devoe => ww_devoe,
	o => ww_KEYPAD_COL(0));

-- Location: IOOBUF_X38_Y0_N16
\KEYPAD_COL[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|ALT_INV_C~0_combout\,
	devoe => ww_devoe,
	o => ww_KEYPAD_COL(1));

-- Location: IOOBUF_X34_Y0_N23
\KEYPAD_COL[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|ALT_INV_C~1_combout\,
	devoe => ww_devoe,
	o => ww_KEYPAD_COL(2));

-- Location: IOOBUF_X31_Y0_N16
\KEYPAD_COL[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|ALT_INV_C~2_combout\,
	devoe => ww_devoe,
	o => ww_KEYPAD_COL(3));

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U5|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U5|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U5|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(7));

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U4|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U4|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U4|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(7));

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U3|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U3|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U3|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(7));

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U3|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U3|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U3|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(7));

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U4|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U4|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U4|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X78_Y43_N23
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(7));

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U5|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U5|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \udoor_mecanism|U5|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X78_Y37_N9
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(7));

-- Location: IOOBUF_X14_Y0_N9
\WrL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSLCDC|uDispat|CURRENT_STATE.COUNTING~0_combout\,
	devoe => ww_devoe,
	o => ww_WrL);

-- Location: IOOBUF_X66_Y54_N23
\onOFF~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSDC|uDoorController|OnOff~1_combout\,
	devoe => ww_devoe,
	o => ww_onOFF);

-- Location: IOOBUF_X58_Y54_N23
\openClose~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSDC|uDoorController|CURRENT_STATE.OPENING~0_combout\,
	devoe => ww_devoe,
	o => ww_openClose);

-- Location: IOOBUF_X46_Y54_N23
\V[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSDC|uSerialReceiver|uShiftRegister|Uffd3|Q~q\,
	devoe => ww_devoe,
	o => ww_V(0));

-- Location: IOOBUF_X51_Y54_N16
\V[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSDC|uSerialReceiver|uShiftRegister|Uffd2|Q~q\,
	devoe => ww_devoe,
	o => ww_V(1));

-- Location: IOOBUF_X46_Y54_N9
\V[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSDC|uSerialReceiver|uShiftRegister|Uffd1|Q~q\,
	devoe => ww_devoe,
	o => ww_V(2));

-- Location: IOOBUF_X56_Y54_N30
\V[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSDC|uSerialReceiver|uShiftRegister|Uffd0|Q~q\,
	devoe => ww_devoe,
	o => ww_V(3));

-- Location: IOOBUF_X24_Y0_N2
\Dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd4|Q~q\,
	devoe => ww_devoe,
	o => ww_Dout(0));

-- Location: IOOBUF_X36_Y0_N9
\Dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd3|Q~q\,
	devoe => ww_devoe,
	o => ww_Dout(1));

-- Location: IOOBUF_X34_Y0_N2
\Dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd2|Q~q\,
	devoe => ww_devoe,
	o => ww_Dout(2));

-- Location: IOOBUF_X20_Y0_N2
\Dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd1|Q~q\,
	devoe => ww_devoe,
	o => ww_Dout(3));

-- Location: IOOBUF_X20_Y0_N9
\Dout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd0|Q~q\,
	devoe => ww_devoe,
	o => ww_Dout(4));

-- Location: IOOBUF_X0_Y28_N23
\altera_reserved_tdo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X51_Y54_N22
\Pswitch~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pswitch,
	o => \Pswitch~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\MCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCLK,
	o => \MCLK~input_o\);

-- Location: CLKCTRL_G19
\MCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MCLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X38_Y33_N0
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~0_combout\ = \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(0) $ (GND)
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~1\ = CARRY(!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(0),
	datad => VCC,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~0_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~1\);

-- Location: LCCOMB_X37_Y33_N26
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|count[0]~7_combout\ = !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~0_combout\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count[0]~7_combout\);

-- Location: FF_X37_Y33_N27
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(0));

-- Location: LCCOMB_X38_Y33_N2
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~2_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(1) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~1\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(1) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~1\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~3\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~1\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(1),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~1\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~2_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~3\);

-- Location: FF_X38_Y33_N3
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(1));

-- Location: LCCOMB_X38_Y33_N4
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~4_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(2) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~3\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(2) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~3\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~5\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(2) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(2),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~3\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~4_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~5\);

-- Location: FF_X38_Y33_N5
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(2));

-- Location: LCCOMB_X38_Y33_N6
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~6_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(3) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~5\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(3) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~5\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~7\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~5\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(3),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~5\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~6_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~7\);

-- Location: LCCOMB_X37_Y33_N30
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~0_combout\ = (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\ & \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\,
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~6_combout\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~0_combout\);

-- Location: FF_X37_Y33_N31
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(3));

-- Location: LCCOMB_X38_Y33_N8
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~8_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(4) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~7\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(4) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~7\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~9\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(4) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(4),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~7\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~8_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~9\);

-- Location: FF_X38_Y33_N9
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(4));

-- Location: LCCOMB_X38_Y33_N10
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~10_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(5) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~9\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(5) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~9\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~11\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~9\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(5),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~9\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~10_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~11\);

-- Location: FF_X38_Y33_N11
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(5));

-- Location: LCCOMB_X38_Y33_N12
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~12_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(6) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~11\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(6) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~11\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~13\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(6) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(6),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~11\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~12_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~13\);

-- Location: LCCOMB_X37_Y33_N0
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~1_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~12_combout\ & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~12_combout\,
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~1_combout\);

-- Location: FF_X37_Y33_N1
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(6));

-- Location: LCCOMB_X38_Y33_N14
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~14_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(7) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~13\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(7) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~13\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~15\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~13\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(7),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~13\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~14_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~15\);

-- Location: FF_X38_Y33_N15
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(7));

-- Location: LCCOMB_X38_Y33_N16
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~16_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(8) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~15\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(8) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~15\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~17\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(8) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(8),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~15\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~16_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~17\);

-- Location: FF_X38_Y33_N17
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(8));

-- Location: LCCOMB_X38_Y33_N18
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~18_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(9) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~17\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(9) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~17\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~19\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~17\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(9),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~17\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~18_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~19\);

-- Location: FF_X38_Y33_N19
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(9));

-- Location: LCCOMB_X38_Y33_N20
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~20_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(10) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~19\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(10) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~19\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~21\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(10) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(10),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~19\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~20_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~21\);

-- Location: FF_X38_Y33_N21
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(10));

-- Location: LCCOMB_X38_Y33_N22
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~22_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(11) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~21\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(11) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~21\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~23\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~21\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(11),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~21\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~22_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~23\);

-- Location: LCCOMB_X37_Y33_N14
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~2_combout\ = (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\ & \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\,
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~22_combout\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~2_combout\);

-- Location: FF_X37_Y33_N15
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(11));

-- Location: LCCOMB_X37_Y33_N8
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~3_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(11) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(8) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(10) & 
-- !\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(11),
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(8),
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(10),
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(9),
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~3_combout\);

-- Location: LCCOMB_X37_Y33_N10
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~1_combout\ = (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(4) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(5) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(7) & 
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(4),
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(5),
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(7),
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(6),
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y33_N12
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~0_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(0) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(0),
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(1),
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y33_N28
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~2_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~1_combout\ & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~0_combout\ & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(3) & 
-- !\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~1_combout\,
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~0_combout\,
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(3),
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(2),
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~2_combout\);

-- Location: LCCOMB_X38_Y33_N24
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~24_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(12) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~23\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(12) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~23\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~25\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(12) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(12),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~23\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~24_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~25\);

-- Location: FF_X38_Y33_N25
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(12));

-- Location: LCCOMB_X38_Y33_N26
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~26_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(13) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~25\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(13) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~25\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~27\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~25\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(13),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~25\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~26_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~27\);

-- Location: LCCOMB_X37_Y33_N2
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~3_combout\ = (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\ & \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\,
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~26_combout\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~3_combout\);

-- Location: FF_X37_Y33_N3
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(13));

-- Location: LCCOMB_X38_Y33_N28
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~28_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(14) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~27\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(14) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~27\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~29\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(14) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(14),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~27\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~28_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~29\);

-- Location: LCCOMB_X37_Y33_N20
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~4_combout\ = (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\ & \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\,
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~28_combout\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~4_combout\);

-- Location: FF_X37_Y33_N21
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(14));

-- Location: LCCOMB_X38_Y33_N30
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~30_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(15) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~29\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(15) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~29\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~31\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~29\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(15),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~29\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~30_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~31\);

-- Location: LCCOMB_X37_Y33_N22
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~5_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~30_combout\ & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~30_combout\,
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~5_combout\);

-- Location: FF_X37_Y33_N23
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(15));

-- Location: LCCOMB_X38_Y32_N0
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~32_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(16) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~31\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(16) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~31\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~33\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(16) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(16),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~31\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~32_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~33\);

-- Location: LCCOMB_X37_Y32_N16
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~6_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~32_combout\ & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~32_combout\,
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~6_combout\);

-- Location: FF_X37_Y32_N17
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(16));

-- Location: LCCOMB_X38_Y32_N2
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~34_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(17) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~33\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(17) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~33\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~35\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~33\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(17),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~33\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~34_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~35\);

-- Location: FF_X38_Y32_N3
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(17));

-- Location: LCCOMB_X38_Y32_N4
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~36_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(18) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~35\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(18) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~35\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~37\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(18) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(18),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~35\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~36_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~37\);

-- Location: FF_X38_Y32_N5
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(18));

-- Location: LCCOMB_X38_Y32_N6
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~38_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(19) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~37\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(19) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~37\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~39\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~37\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(19),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~37\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~38_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~39\);

-- Location: FF_X38_Y32_N7
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(19));

-- Location: LCCOMB_X38_Y32_N8
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~40_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(20) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~39\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(20) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~39\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~41\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(20) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(20),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~39\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~40_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~41\);

-- Location: FF_X38_Y32_N9
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(20));

-- Location: LCCOMB_X38_Y32_N10
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~42_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(21) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~41\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(21) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~41\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~43\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~41\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(21),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~41\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~42_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~43\);

-- Location: FF_X38_Y32_N11
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(21));

-- Location: LCCOMB_X38_Y32_N12
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~44_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(22) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~43\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(22) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~43\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~45\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(22) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(22),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~43\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~44_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~45\);

-- Location: FF_X38_Y32_N13
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(22));

-- Location: LCCOMB_X38_Y32_N14
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~46_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(23) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~45\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(23) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~45\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~47\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~45\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(23),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~45\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~46_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~47\);

-- Location: FF_X38_Y32_N15
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(23));

-- Location: LCCOMB_X37_Y32_N12
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~6_combout\ = (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(23) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(20) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(21) & 
-- !\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(23),
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(20),
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(21),
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(22),
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~6_combout\);

-- Location: LCCOMB_X38_Y32_N16
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~48_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(24) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~47\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(24) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~47\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~49\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(24) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(24),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~47\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~48_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~49\);

-- Location: FF_X38_Y32_N17
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(24));

-- Location: LCCOMB_X38_Y32_N18
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~50_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(25) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~49\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(25) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~49\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~51\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~49\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(25),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~49\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~50_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~51\);

-- Location: FF_X38_Y32_N19
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(25));

-- Location: LCCOMB_X38_Y32_N20
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~52_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(26) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~51\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(26) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~51\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~53\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(26) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(26),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~51\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~52_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~53\);

-- Location: FF_X38_Y32_N21
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(26));

-- Location: LCCOMB_X38_Y32_N22
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~54_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(27) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~53\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(27) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~53\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~55\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~53\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(27),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~53\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~54_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~55\);

-- Location: FF_X38_Y32_N23
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(27));

-- Location: LCCOMB_X38_Y32_N24
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~56_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(28) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~55\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(28) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~55\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~57\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(28) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(28),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~55\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~56_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~57\);

-- Location: FF_X38_Y32_N25
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(28));

-- Location: LCCOMB_X38_Y32_N26
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~58_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(29) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~57\)) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(29) & 
-- ((\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~57\) # (GND)))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~59\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~57\) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(29),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~57\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~58_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~59\);

-- Location: FF_X38_Y32_N27
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(29));

-- Location: LCCOMB_X38_Y32_N28
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~60_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(30) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~59\ $ (GND))) # (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(30) & 
-- (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~59\ & VCC))
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~61\ = CARRY((\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(30) & !\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(30),
	datad => VCC,
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~59\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~60_combout\,
	cout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~61\);

-- Location: FF_X38_Y32_N29
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(30));

-- Location: LCCOMB_X38_Y32_N30
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~62_combout\ = \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(31) $ (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(31),
	cin => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~61\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~62_combout\);

-- Location: FF_X38_Y32_N31
\uKeyboard_Reader|uKey_Decode|uCLKDIV|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(31));

-- Location: LCCOMB_X37_Y32_N24
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~8_combout\ = (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(28) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(29) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(31) & 
-- !\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(28),
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(29),
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(31),
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(30),
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~8_combout\);

-- Location: LCCOMB_X37_Y32_N6
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~7_combout\ = (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(27) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(25) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(26) & 
-- !\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(27),
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(25),
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(26),
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(24),
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~7_combout\);

-- Location: LCCOMB_X37_Y32_N10
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~5_combout\ = (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(19) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(16) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(17) & 
-- !\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(19),
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(16),
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(17),
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(18),
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~5_combout\);

-- Location: LCCOMB_X37_Y32_N2
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~9_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~6_combout\ & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~8_combout\ & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~7_combout\ & 
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~6_combout\,
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~8_combout\,
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~7_combout\,
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~5_combout\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~9_combout\);

-- Location: LCCOMB_X37_Y33_N24
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~4_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(14) & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(13) & (!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(12) & 
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(14),
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(13),
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(12),
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(15),
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~4_combout\);

-- Location: LCCOMB_X37_Y33_N18
\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~3_combout\ & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~2_combout\ & (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~9_combout\ & 
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~3_combout\,
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~2_combout\,
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~9_combout\,
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~4_combout\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\);

-- Location: LCCOMB_X37_Y33_N16
\uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~0_combout\ = \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~q\ $ (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~q\,
	datad => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~10_combout\,
	combout => \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~0_combout\);

-- Location: FF_X37_Y33_N17
\uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~q\);

-- Location: CLKCTRL_G2
\uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~clkctrl_outclk\);

-- Location: IOIBUF_X40_Y0_N22
\KEYPAD_LIN[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEYPAD_LIN(3),
	o => \KEYPAD_LIN[3]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\KEYPAD_LIN[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEYPAD_LIN(2),
	o => \KEYPAD_LIN[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEYPAD_LIN[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEYPAD_LIN(0),
	o => \KEYPAD_LIN[0]~input_o\);

-- Location: LCCOMB_X46_Y23_N24
\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~0_combout\ = \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\ $ (((\uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1_combout\ & 
-- (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\ & !\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1_combout\,
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	datad => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\,
	combout => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X46_Y23_N25
\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~clkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\);

-- Location: LCCOMB_X46_Y23_N20
\uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~0_combout\ = (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\ & (((\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\)))) # 
-- (!\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\ & ((\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\ & (\KEYPAD_LIN[2]~input_o\)) # (!\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\ & 
-- ((\KEYPAD_LIN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYPAD_LIN[2]~input_o\,
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datac => \KEYPAD_LIN[0]~input_o\,
	datad => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	combout => \uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~0_combout\);

-- Location: IOIBUF_X51_Y0_N22
\KEYPAD_LIN[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEYPAD_LIN(1),
	o => \KEYPAD_LIN[1]~input_o\);

-- Location: LCCOMB_X46_Y23_N30
\uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1_combout\ = (\uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~0_combout\ & ((\KEYPAD_LIN[3]~input_o\) # ((!\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\)))) # 
-- (!\uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~0_combout\ & (((\KEYPAD_LIN[1]~input_o\ & \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYPAD_LIN[3]~input_o\,
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~0_combout\,
	datac => \KEYPAD_LIN[1]~input_o\,
	datad => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	combout => \uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1_combout\);

-- Location: IOIBUF_X0_Y29_N15
\altera_reserved_tms~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\altera_reserved_tck~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\altera_reserved_tdi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: LCCOMB_X45_Y23_N14
\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.WAITING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.WAITING~0_combout\ = (\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\) # 
-- (\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\,
	datad => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~q\,
	combout => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.WAITING~0_combout\);

-- Location: LCCOMB_X45_Y23_N18
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q[0]~0_combout\ = \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(0) $ (((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\ & 
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(0),
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q[0]~0_combout\);

-- Location: FF_X45_Y23_N19
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(0));

-- Location: LCCOMB_X46_Y25_N24
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\ & \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\);

-- Location: LCCOMB_X45_Y23_N8
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U1|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U1|R~combout\ = \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(1) $ 
-- (((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\ & (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ $ (!\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(0),
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(1),
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U1|R~combout\);

-- Location: FF_X45_Y23_N9
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U1|R~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(1));

-- Location: LCCOMB_X45_Y23_N20
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U1|CO~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U1|CO~0_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\ & 
-- ((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(0) & \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(1))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & ((\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(0)) # (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(0),
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(1),
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U1|CO~0_combout\);

-- Location: LCCOMB_X45_Y23_N6
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U2|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U2|R~combout\ = \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U1|CO~0_combout\ $ 
-- (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(2) $ (((!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U1|CO~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(2),
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U2|R~combout\);

-- Location: FF_X45_Y23_N7
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U2|R~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(2));

-- Location: LCCOMB_X45_Y23_N30
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U2|CO~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U2|CO~0_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(2) & 
-- ((\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U1|CO~0_combout\) # ((!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & 
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\)))) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(2) & 
-- (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U1|CO~0_combout\ & (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & 
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(2),
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U1|CO~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U2|CO~0_combout\);

-- Location: LCCOMB_X45_Y23_N12
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U3|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U3|R~combout\ = \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U2|CO~0_combout\ $ 
-- (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(3) $ (((!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U2|CO~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(3),
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U3|R~combout\);

-- Location: FF_X45_Y23_N13
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_CounterLogic_4bit|U2_adder4bit|U3|R~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(3));

-- Location: LCCOMB_X45_Y23_N4
\uKeyboard_Reader|uRing_Buffer|UMAC|empty~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|empty~0_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(2)) # ((\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(0)) # 
-- ((\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(1)) # (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(2),
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(0),
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(1),
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(3),
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|empty~0_combout\);

-- Location: LCCOMB_X46_Y23_N0
\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.STATE_WRITING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.STATE_WRITING~0_combout\ = (!\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~q\ & \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~q\,
	datad => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\,
	combout => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.STATE_WRITING~0_combout\);

-- Location: LCCOMB_X46_Y23_N18
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~2_combout\ = (!\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.WAITING~0_combout\ & 
-- ((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\) # ((\uKeyboard_Reader|uRing_Buffer|UMAC|empty~0_combout\ & !\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.STATE_WRITING~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.WAITING~0_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|empty~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.STATE_WRITING~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~2_combout\);

-- Location: LCCOMB_X46_Y23_N4
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~0_combout\ = (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\ & ((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\) # 
-- (!\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(3),
	datac => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~0_combout\);

-- Location: LCCOMB_X46_Y23_N14
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~1_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~0_combout\ & 
-- ((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\) # ((!\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~q\ & \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~0_combout\,
	datad => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~1_combout\);

-- Location: LCCOMB_X46_Y25_N30
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\ & (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\ & 
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\);

-- Location: LCCOMB_X46_Y23_N28
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~3_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\) # 
-- ((!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\ & ((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~2_combout\) # 
-- (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~2_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~1_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~3_combout\);

-- Location: FF_X46_Y23_N29
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\);

-- Location: LCCOMB_X46_Y25_N4
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~0_combout\ = \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~q\ $ (((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & 
-- (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\ & \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~0_combout\);

-- Location: FF_X46_Y25_N5
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~q\);

-- Location: LCCOMB_X46_Y25_N10
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U1FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U1FFD|Q~0_combout\ = \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U1FFD|Q~q\ $ (((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & 
-- (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~q\ & \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U1FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U1FFD|Q~0_combout\);

-- Location: FF_X46_Y25_N11
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U1FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U1FFD|Q~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U1FFD|Q~q\);

-- Location: LCCOMB_X46_Y25_N28
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~0_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\ & 
-- (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~q\ & \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U1FFD|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U1FFD|Q~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~0_combout\);

-- Location: LCCOMB_X46_Y25_N2
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~1_combout\ = \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~q\ $ (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~1_combout\);

-- Location: FF_X46_Y25_N3
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~q\);

-- Location: LCCOMB_X46_Y25_N26
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~0_combout\ = \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~q\ $ (((!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & 
-- (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\ & \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~0_combout\);

-- Location: FF_X46_Y25_N27
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~q\);

-- Location: LCCOMB_X46_Y25_N8
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q~0_combout\ = \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q~q\ $ (((\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~q\ & 
-- (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\ & !\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q~0_combout\);

-- Location: FF_X46_Y25_N9
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q~q\);

-- Location: LCCOMB_X46_Y25_N18
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~0_combout\ = (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q~q\ & 
-- (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~q\ & \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.INCRPUT~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~0_combout\);

-- Location: LCCOMB_X46_Y25_N0
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~1_combout\ = \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~q\ $ (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~1_combout\);

-- Location: FF_X46_Y25_N1
\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~q\);

-- Location: LCCOMB_X46_Y25_N20
\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & ((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\ & 
-- ((\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~q\))) # (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\ & (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~q\)))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & (((\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U2FFD|Q~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U2FFD|Q~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\);

-- Location: LCCOMB_X46_Y25_N6
\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & ((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\ & 
-- ((\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~q\))) # (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\ & (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~q\)))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & (((\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U0FFD|Q~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U0FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\);

-- Location: LCCOMB_X46_Y25_N12
\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & ((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\ & 
-- (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q~q\)) # (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\ & ((\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U1FFD|Q~q\))))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & (\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_getIdx|UREGISTOR|U1FFD|Q~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_3_putIdx|UREGISTOR|U1FFD|Q~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\);

-- Location: LCCOMB_X46_Y26_N8
\rtl~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\ & (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & 
-- \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\,
	combout => \rtl~6_combout\);

-- Location: CLKCTRL_G17
\rtl~6clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~6clkctrl_outclk\);

-- Location: LCCOMB_X49_Y24_N6
\uKeyboard_Reader|uRing_Buffer|URAM|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~18_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~18_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~18_combout\);

-- Location: LCCOMB_X46_Y26_N22
\rtl~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\ & (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & 
-- \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\,
	combout => \rtl~5_combout\);

-- Location: CLKCTRL_G9
\rtl~5clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~5clkctrl_outclk\);

-- Location: LCCOMB_X49_Y24_N20
\uKeyboard_Reader|uRing_Buffer|URAM|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~26_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~26_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~26_combout\);

-- Location: LCCOMB_X49_Y24_N4
\uKeyboard_Reader|uRing_Buffer|URAM|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~42_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (((\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\)))) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & 
-- ((\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~26_combout\))) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & (\uKeyboard_Reader|uRing_Buffer|URAM|ram~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URAM|ram~18_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|URAM|ram~26_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~42_combout\);

-- Location: LCCOMB_X46_Y26_N4
\rtl~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\ & (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & 
-- \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\,
	combout => \rtl~4_combout\);

-- Location: CLKCTRL_G12
\rtl~4clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~4clkctrl_outclk\);

-- Location: LCCOMB_X50_Y27_N18
\uKeyboard_Reader|uRing_Buffer|URAM|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~22_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~22_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~22_combout\);

-- Location: LCCOMB_X46_Y26_N10
\rtl~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\ & (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & 
-- \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\,
	combout => \rtl~7_combout\);

-- Location: CLKCTRL_G13
\rtl~7clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~7clkctrl_outclk\);

-- Location: LCCOMB_X50_Y27_N20
\uKeyboard_Reader|uRing_Buffer|URAM|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~30_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~30_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~30_combout\);

-- Location: LCCOMB_X50_Y27_N26
\uKeyboard_Reader|uRing_Buffer|URAM|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~43_combout\ = (\uKeyboard_Reader|uRing_Buffer|URAM|ram~42_combout\ & (((\uKeyboard_Reader|uRing_Buffer|URAM|ram~30_combout\) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\)))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|URAM|ram~42_combout\ & (\uKeyboard_Reader|uRing_Buffer|URAM|ram~22_combout\ & ((\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URAM|ram~42_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|URAM|ram~22_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~30_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~43_combout\);

-- Location: LCCOMB_X49_Y26_N14
\rtl~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\ & (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & 
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\,
	combout => \rtl~3_combout\);

-- Location: CLKCTRL_G7
\rtl~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~3clkctrl_outclk\);

-- Location: LCCOMB_X49_Y26_N24
\uKeyboard_Reader|uRing_Buffer|URAM|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~14_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~14_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~14_combout\);

-- Location: LCCOMB_X46_Y26_N28
\rtl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\ & (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & 
-- !\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G15
\rtl~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X49_Y24_N0
\uKeyboard_Reader|uRing_Buffer|URAM|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~10_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0clkctrl_outclk\,
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~10_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~10_combout\);

-- Location: LCCOMB_X49_Y25_N2
\rtl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\ & (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & 
-- !\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\,
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G6
\rtl~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~1clkctrl_outclk\);

-- Location: LCCOMB_X49_Y26_N12
\uKeyboard_Reader|uRing_Buffer|URAM|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~6_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~1clkctrl_outclk\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~6_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~6_combout\);

-- Location: LCCOMB_X49_Y25_N20
\rtl~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\ & (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & 
-- !\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.WRITING~0_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\,
	combout => \rtl~2_combout\);

-- Location: CLKCTRL_G8
\rtl~2clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~2clkctrl_outclk\);

-- Location: LCCOMB_X49_Y26_N6
\uKeyboard_Reader|uRing_Buffer|URAM|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~2_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~2clkctrl_outclk\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~2_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~2_combout\);

-- Location: LCCOMB_X49_Y26_N10
\uKeyboard_Reader|uRing_Buffer|URAM|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~44_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~6_combout\) # ((\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\)))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (((\uKeyboard_Reader|uRing_Buffer|URAM|ram~2_combout\ & !\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URAM|ram~6_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|URAM|ram~2_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~44_combout\);

-- Location: LCCOMB_X49_Y26_N4
\uKeyboard_Reader|uRing_Buffer|URAM|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~45_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~44_combout\ & (\uKeyboard_Reader|uRing_Buffer|URAM|ram~14_combout\)) # 
-- (!\uKeyboard_Reader|uRing_Buffer|URAM|ram~44_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~10_combout\))))) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & (((\uKeyboard_Reader|uRing_Buffer|URAM|ram~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|URAM|ram~14_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~10_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~44_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~45_combout\);

-- Location: LCCOMB_X50_Y27_N2
\uKeyboard_Reader|uRing_Buffer|URAM|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~46_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\ & (\uKeyboard_Reader|uRing_Buffer|URAM|ram~43_combout\)) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\ & 
-- ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~43_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~45_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~46_combout\);

-- Location: LCCOMB_X45_Y23_N22
\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.SENDING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.SENDING~0_combout\ = (!\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\ & 
-- \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\,
	datad => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~q\,
	combout => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.SENDING~0_combout\);

-- Location: FF_X50_Y27_N3
\uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U2FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|URAM|ram~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.SENDING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U2FFD|Q~q\);

-- Location: JTAG_X43_Y40_N0
altera_internal_jtag : fiftyfivenm_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X46_Y43_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\);

-- Location: LCCOMB_X46_Y44_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X46_Y44_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X46_Y44_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X46_Y44_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X46_Y44_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X46_Y44_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X46_Y44_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: FF_X46_Y44_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LCCOMB_X46_Y44_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X46_Y44_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X46_Y44_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: LCCOMB_X44_Y43_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]~feeder_combout\);

-- Location: FF_X44_Y43_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X45_Y42_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X45_Y42_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X44_Y44_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X44_Y44_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X44_Y44_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	datab => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X44_Y44_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X44_Y44_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X44_Y44_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X44_Y44_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X44_Y44_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X44_Y44_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCCOMB_X45_Y44_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\);

-- Location: FF_X45_Y44_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X46_Y44_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X46_Y44_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X46_Y44_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X46_Y44_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X45_Y42_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\);

-- Location: FF_X45_Y42_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X45_Y42_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X45_Y42_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X45_Y42_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X45_Y42_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X45_Y42_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X45_Y42_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X45_Y42_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X45_Y42_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: FF_X46_Y43_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: FF_X46_Y43_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: LCCOMB_X46_Y43_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X46_Y43_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X46_Y43_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X46_Y43_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: FF_X46_Y43_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: LCCOMB_X46_Y43_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X46_Y43_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: LCCOMB_X46_Y43_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X46_Y43_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LCCOMB_X46_Y43_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X46_Y43_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X46_Y43_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X46_Y43_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X46_Y43_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X46_Y43_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X46_Y43_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y43_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y43_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X45_Y43_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X46_Y26_N6
\uKeyboard_Reader|uRing_Buffer|URAM|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~8_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~8_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~8_combout\);

-- Location: LCCOMB_X47_Y26_N12
\uKeyboard_Reader|uRing_Buffer|URAM|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~12_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3clkctrl_outclk\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~12_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~12_combout\);

-- Location: LCCOMB_X47_Y26_N18
\uKeyboard_Reader|uRing_Buffer|URAM|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~0_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~0_combout\);

-- Location: LCCOMB_X46_Y26_N16
\uKeyboard_Reader|uRing_Buffer|URAM|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~4_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~1clkctrl_outclk\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~4_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~4_combout\);

-- Location: LCCOMB_X46_Y26_N24
\uKeyboard_Reader|uRing_Buffer|URAM|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~34_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (((\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\) # (\uKeyboard_Reader|uRing_Buffer|URAM|ram~4_combout\)))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (\uKeyboard_Reader|uRing_Buffer|URAM|ram~0_combout\ & (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|URAM|ram~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~4_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~34_combout\);

-- Location: LCCOMB_X46_Y26_N18
\uKeyboard_Reader|uRing_Buffer|URAM|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~35_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~34_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~12_combout\))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|URAM|ram~34_combout\ & (\uKeyboard_Reader|uRing_Buffer|URAM|ram~8_combout\)))) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & (((\uKeyboard_Reader|uRing_Buffer|URAM|ram~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URAM|ram~8_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~12_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~34_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~35_combout\);

-- Location: LCCOMB_X47_Y25_N10
\uKeyboard_Reader|uRing_Buffer|URAM|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~20_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~20_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~20_combout\);

-- Location: LCCOMB_X47_Y25_N12
\uKeyboard_Reader|uRing_Buffer|URAM|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~28_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~28_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~28_combout\);

-- Location: LCCOMB_X47_Y26_N24
\uKeyboard_Reader|uRing_Buffer|URAM|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~24_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~24_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~24_combout\);

-- Location: LCCOMB_X46_Y25_N22
\uKeyboard_Reader|uRing_Buffer|URAM|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~16_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~16_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~16_combout\);

-- Location: LCCOMB_X46_Y25_N14
\uKeyboard_Reader|uRing_Buffer|URAM|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~32_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~24_combout\) # ((\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\)))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & (((\uKeyboard_Reader|uRing_Buffer|URAM|ram~16_combout\ & !\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URAM|ram~24_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~16_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~32_combout\);

-- Location: LCCOMB_X47_Y25_N24
\uKeyboard_Reader|uRing_Buffer|URAM|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~33_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~32_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~28_combout\))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|URAM|ram~32_combout\ & (\uKeyboard_Reader|uRing_Buffer|URAM|ram~20_combout\)))) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (((\uKeyboard_Reader|uRing_Buffer|URAM|ram~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URAM|ram~20_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|URAM|ram~28_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~32_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~33_combout\);

-- Location: LCCOMB_X46_Y25_N16
\uKeyboard_Reader|uRing_Buffer|URAM|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~36_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~33_combout\))) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\ & 
-- (\uKeyboard_Reader|uRing_Buffer|URAM|ram~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~35_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~33_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~36_combout\);

-- Location: FF_X46_Y25_N17
\uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U0FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|URAM|ram~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.SENDING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U0FFD|Q~q\);

-- Location: LCCOMB_X46_Y42_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U0FFD|Q~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: LCCOMB_X44_Y43_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\);

-- Location: LCCOMB_X46_Y42_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X45_Y42_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\);

-- Location: FF_X45_Y42_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: LCCOMB_X44_Y43_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X47_Y42_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X47_Y42_N4
\~QIC_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: FF_X47_Y42_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8));

-- Location: LCCOMB_X44_Y43_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X44_Y43_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\);

-- Location: FF_X44_Y43_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X45_Y43_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\);

-- Location: LCCOMB_X45_Y43_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: FF_X45_Y43_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X45_Y42_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X45_Y42_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: LCCOMB_X46_Y42_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: LCCOMB_X46_Y42_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: FF_X46_Y42_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LCCOMB_X46_Y42_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\);

-- Location: LCCOMB_X46_Y42_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\);

-- Location: FF_X46_Y42_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X46_Y42_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X46_Y42_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X49_Y24_N10
\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~0_combout\ = \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\ $ (((\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~0_combout\ & 
-- \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~0_combout\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	datad => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	combout => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~0_combout\);

-- Location: FF_X49_Y24_N11
\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~clkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\);

-- Location: LCCOMB_X47_Y24_N10
\uKeyboard_Reader|uRing_Buffer|URAM|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~15_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3clkctrl_outclk\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~15_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~15_combout\);

-- Location: LCCOMB_X49_Y24_N30
\uKeyboard_Reader|uRing_Buffer|URAM|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~11_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~11_combout\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~11_combout\);

-- Location: LCCOMB_X47_Y24_N0
\uKeyboard_Reader|uRing_Buffer|URAM|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~3_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~3_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~3_combout\);

-- Location: LCCOMB_X49_Y25_N18
\uKeyboard_Reader|uRing_Buffer|URAM|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~7_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~7_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~7_combout\);

-- Location: LCCOMB_X49_Y24_N24
\uKeyboard_Reader|uRing_Buffer|URAM|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~49_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (((\uKeyboard_Reader|uRing_Buffer|URAM|ram~7_combout\) # (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\)))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (\uKeyboard_Reader|uRing_Buffer|URAM|ram~3_combout\ & ((!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URAM|ram~3_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|URAM|ram~7_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~49_combout\);

-- Location: LCCOMB_X49_Y24_N2
\uKeyboard_Reader|uRing_Buffer|URAM|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~50_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~49_combout\ & (\uKeyboard_Reader|uRing_Buffer|URAM|ram~15_combout\)) # 
-- (!\uKeyboard_Reader|uRing_Buffer|URAM|ram~49_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~11_combout\))))) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & (((\uKeyboard_Reader|uRing_Buffer|URAM|ram~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URAM|ram~15_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~11_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~49_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~50_combout\);

-- Location: LCCOMB_X49_Y25_N6
\uKeyboard_Reader|uRing_Buffer|URAM|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~23_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~4clkctrl_outclk\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~23_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~23_combout\);

-- Location: LCCOMB_X49_Y24_N18
\uKeyboard_Reader|uRing_Buffer|URAM|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~27_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~27_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~27_combout\);

-- Location: LCCOMB_X49_Y24_N28
\uKeyboard_Reader|uRing_Buffer|URAM|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~19_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~19_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~19_combout\);

-- Location: LCCOMB_X49_Y24_N22
\uKeyboard_Reader|uRing_Buffer|URAM|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~47_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~27_combout\) # ((\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\)))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & (((!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & \uKeyboard_Reader|uRing_Buffer|URAM|ram~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URAM|ram~27_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~19_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~47_combout\);

-- Location: LCCOMB_X49_Y25_N24
\uKeyboard_Reader|uRing_Buffer|URAM|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~31_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~31_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~31_combout\);

-- Location: LCCOMB_X49_Y25_N16
\uKeyboard_Reader|uRing_Buffer|URAM|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~48_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~47_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~31_combout\))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|URAM|ram~47_combout\ & (\uKeyboard_Reader|uRing_Buffer|URAM|ram~23_combout\)))) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (((\uKeyboard_Reader|uRing_Buffer|URAM|ram~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URAM|ram~23_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~47_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~31_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~48_combout\);

-- Location: LCCOMB_X50_Y27_N28
\uKeyboard_Reader|uRing_Buffer|URAM|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~51_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~48_combout\))) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\ & 
-- (\uKeyboard_Reader|uRing_Buffer|URAM|ram~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|URAM|ram~50_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~48_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~51_combout\);

-- Location: FF_X50_Y27_N29
\uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U3FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|URAM|ram~51_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.SENDING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U3FFD|Q~q\);

-- Location: LCCOMB_X45_Y43_N8
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X44_Y42_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X44_Y42_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X44_Y42_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

-- Location: LCCOMB_X44_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\);

-- Location: FF_X44_Y41_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

-- Location: CLKCTRL_G14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\);

-- Location: LCCOMB_X69_Y50_N10
\uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~0_combout\ = !\uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\,
	combout => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~0_combout\);

-- Location: LCCOMB_X71_Y47_N4
\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0_combout\ = (!\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & !\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	combout => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0_combout\);

-- Location: CLKCTRL_G5
\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0clkctrl_outclk\);

-- Location: LCCOMB_X69_Y50_N8
\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\ = (\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & !\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	combout => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\);

-- Location: FF_X69_Y50_N11
\uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~0_combout\,
	clrn => \uSDC|uSerialReceiver|uSerialControl|ALT_INV_CURRENT_STATE.READY~0clkctrl_outclk\,
	ena => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\);

-- Location: LCCOMB_X69_Y50_N6
\uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~0_combout\ = \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\ $ (((\uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\ & (\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & 
-- !\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\,
	datab => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datac => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\,
	datad => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	combout => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~0_combout\);

-- Location: FF_X69_Y50_N7
\uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~0_combout\,
	clrn => \uSDC|uSerialReceiver|uSerialControl|ALT_INV_CURRENT_STATE.READY~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\);

-- Location: LCCOMB_X69_Y50_N12
\uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~0_combout\ = \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~q\ $ (((\uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\ & (\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\ & 
-- \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\,
	datab => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\,
	datac => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~q\,
	datad => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\,
	combout => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~0_combout\);

-- Location: FF_X69_Y50_N13
\uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~0_combout\,
	clrn => \uSDC|uSerialReceiver|uSerialControl|ALT_INV_CURRENT_STATE.READY~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~q\);

-- Location: LCCOMB_X69_Y50_N16
\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~0_combout\ = (\uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~q\ & (\uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\ & 
-- (\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & !\uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~q\,
	datab => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\,
	datac => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uSDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\,
	combout => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~0_combout\);

-- Location: LCCOMB_X44_Y42_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\);

-- Location: FF_X44_Y42_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: LCCOMB_X62_Y50_N6
\uSDC|uSerialReceiver|uShiftRegister|Uffd0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uSerialReceiver|uShiftRegister|Uffd0|Q~feeder_combout\ = \auto_hub|instrum
-- entation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \uSDC|uSerialReceiver|uShiftRegister|Uffd0|Q~feeder_combout\);

-- Location: FF_X62_Y50_N7
\uSDC|uSerialReceiver|uShiftRegister|Uffd0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSDC|uSerialReceiver|uShiftRegister|Uffd0|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSDC|uSerialReceiver|uShiftRegister|Uffd0|Q~q\);

-- Location: LCCOMB_X62_Y50_N28
\uSDC|uSerialReceiver|uShiftRegister|Uffd1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uSerialReceiver|uShiftRegister|Uffd1|Q~feeder_combout\ = \uSDC|uSerialReceiver|uShiftRegister|Uffd0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uSDC|uSerialReceiver|uShiftRegister|Uffd0|Q~q\,
	combout => \uSDC|uSerialReceiver|uShiftRegister|Uffd1|Q~feeder_combout\);

-- Location: FF_X62_Y50_N29
\uSDC|uSerialReceiver|uShiftRegister|Uffd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSDC|uSerialReceiver|uShiftRegister|Uffd1|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSDC|uSerialReceiver|uShiftRegister|Uffd1|Q~q\);

-- Location: LCCOMB_X62_Y50_N10
\uSDC|uSerialReceiver|uShiftRegister|Uffd2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uSerialReceiver|uShiftRegister|Uffd2|Q~feeder_combout\ = \uSDC|uSerialReceiver|uShiftRegister|Uffd1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uSDC|uSerialReceiver|uShiftRegister|Uffd1|Q~q\,
	combout => \uSDC|uSerialReceiver|uShiftRegister|Uffd2|Q~feeder_combout\);

-- Location: FF_X62_Y50_N11
\uSDC|uSerialReceiver|uShiftRegister|Uffd2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSDC|uSerialReceiver|uShiftRegister|Uffd2|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSDC|uSerialReceiver|uShiftRegister|Uffd2|Q~q\);

-- Location: LCCOMB_X62_Y50_N0
\uSDC|uSerialReceiver|uShiftRegister|Uffd3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uSerialReceiver|uShiftRegister|Uffd3|Q~feeder_combout\ = \uSDC|uSerialReceiver|uShiftRegister|Uffd2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uSDC|uSerialReceiver|uShiftRegister|Uffd2|Q~q\,
	combout => \uSDC|uSerialReceiver|uShiftRegister|Uffd3|Q~feeder_combout\);

-- Location: FF_X62_Y50_N1
\uSDC|uSerialReceiver|uShiftRegister|Uffd3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSDC|uSerialReceiver|uShiftRegister|Uffd3|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSDC|uSerialReceiver|uShiftRegister|Uffd3|Q~q\);

-- Location: LCCOMB_X62_Y50_N16
\uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q~feeder_combout\ = \uSDC|uSerialReceiver|uShiftRegister|Uffd3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uSDC|uSerialReceiver|uShiftRegister|Uffd3|Q~q\,
	combout => \uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q~feeder_combout\);

-- Location: FF_X62_Y50_N17
\uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q~q\);

-- Location: LCCOMB_X71_Y47_N22
\uSDC|uDoorController|CURRENT_STATE.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_0~2_combout\ = (\Pswitch~input_o\ & \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pswitch~input_o\,
	datad => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~2_combout\);

-- Location: LCCOMB_X71_Y47_N8
\uSDC|uDoorController|CURRENT_STATE.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_1~0_combout\ = (\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\ & (\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & ((\uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\) # 
-- (!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\)))) # (!\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\ & ((\uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\) # ((!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\,
	datac => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~0_combout\);

-- Location: LCCOMB_X71_Y47_N10
\uSDC|uDoorController|CURRENT_STATE.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_1~1_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_0~2_combout\ & (((\uSDC|uDoorController|CURRENT_STATE.state_bit_1~0_combout\) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\)))) # 
-- (!\uSDC|uDoorController|CURRENT_STATE.state_bit_0~2_combout\ & (\uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\ & (\uSDC|uDoorController|CURRENT_STATE.state_bit_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~2_combout\,
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\,
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~0_combout\,
	datad => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~1_combout\);

-- Location: LCCOMB_X71_Y47_N28
\uSDC|uDoorController|CURRENT_STATE.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_1~2_combout\ = (!\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & ((\uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q~q\ & (\uSDC|uDoorController|CURRENT_STATE.state_bit_1~0_combout\)) # 
-- (!\uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q~q\ & ((!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q~q\,
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~0_combout\,
	datad => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~2_combout\);

-- Location: LCCOMB_X38_Y35_N2
\udoor_mecanism|UCLK|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~1_cout\ = CARRY((!\uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(0) & \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(0),
	datab => \uKeyboard_Reader|uKey_Decode|uCLKDIV|count\(1),
	datad => VCC,
	cout => \udoor_mecanism|UCLK|Add0~1_cout\);

-- Location: LCCOMB_X38_Y35_N4
\udoor_mecanism|UCLK|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~2_combout\ = (\udoor_mecanism|UCLK|count\(2) & (!\udoor_mecanism|UCLK|Add0~1_cout\)) # (!\udoor_mecanism|UCLK|count\(2) & ((\udoor_mecanism|UCLK|Add0~1_cout\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~3\ = CARRY((!\udoor_mecanism|UCLK|Add0~1_cout\) # (!\udoor_mecanism|UCLK|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(2),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~1_cout\,
	combout => \udoor_mecanism|UCLK|Add0~2_combout\,
	cout => \udoor_mecanism|UCLK|Add0~3\);

-- Location: FF_X38_Y35_N5
\udoor_mecanism|UCLK|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(2));

-- Location: LCCOMB_X38_Y35_N6
\udoor_mecanism|UCLK|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~4_combout\ = (\udoor_mecanism|UCLK|count\(3) & (\udoor_mecanism|UCLK|Add0~3\ $ (GND))) # (!\udoor_mecanism|UCLK|count\(3) & (!\udoor_mecanism|UCLK|Add0~3\ & VCC))
-- \udoor_mecanism|UCLK|Add0~5\ = CARRY((\udoor_mecanism|UCLK|count\(3) & !\udoor_mecanism|UCLK|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(3),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~3\,
	combout => \udoor_mecanism|UCLK|Add0~4_combout\,
	cout => \udoor_mecanism|UCLK|Add0~5\);

-- Location: FF_X38_Y35_N7
\udoor_mecanism|UCLK|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(3));

-- Location: LCCOMB_X38_Y35_N8
\udoor_mecanism|UCLK|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~6_combout\ = (\udoor_mecanism|UCLK|count\(4) & (!\udoor_mecanism|UCLK|Add0~5\)) # (!\udoor_mecanism|UCLK|count\(4) & ((\udoor_mecanism|UCLK|Add0~5\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~7\ = CARRY((!\udoor_mecanism|UCLK|Add0~5\) # (!\udoor_mecanism|UCLK|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(4),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~5\,
	combout => \udoor_mecanism|UCLK|Add0~6_combout\,
	cout => \udoor_mecanism|UCLK|Add0~7\);

-- Location: FF_X38_Y35_N9
\udoor_mecanism|UCLK|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(4));

-- Location: LCCOMB_X38_Y35_N10
\udoor_mecanism|UCLK|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~8_combout\ = (\udoor_mecanism|UCLK|count\(5) & (\udoor_mecanism|UCLK|Add0~7\ $ (GND))) # (!\udoor_mecanism|UCLK|count\(5) & (!\udoor_mecanism|UCLK|Add0~7\ & VCC))
-- \udoor_mecanism|UCLK|Add0~9\ = CARRY((\udoor_mecanism|UCLK|count\(5) & !\udoor_mecanism|UCLK|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(5),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~7\,
	combout => \udoor_mecanism|UCLK|Add0~8_combout\,
	cout => \udoor_mecanism|UCLK|Add0~9\);

-- Location: FF_X38_Y35_N11
\udoor_mecanism|UCLK|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(5));

-- Location: LCCOMB_X38_Y35_N12
\udoor_mecanism|UCLK|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~10_combout\ = (\udoor_mecanism|UCLK|count\(6) & (!\udoor_mecanism|UCLK|Add0~9\)) # (!\udoor_mecanism|UCLK|count\(6) & ((\udoor_mecanism|UCLK|Add0~9\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~11\ = CARRY((!\udoor_mecanism|UCLK|Add0~9\) # (!\udoor_mecanism|UCLK|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(6),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~9\,
	combout => \udoor_mecanism|UCLK|Add0~10_combout\,
	cout => \udoor_mecanism|UCLK|Add0~11\);

-- Location: LCCOMB_X37_Y35_N2
\udoor_mecanism|UCLK|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|count~0_combout\ = (\udoor_mecanism|UCLK|Add0~10_combout\ & !\udoor_mecanism|UCLK|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \udoor_mecanism|UCLK|Add0~10_combout\,
	datad => \udoor_mecanism|UCLK|Equal0~9_combout\,
	combout => \udoor_mecanism|UCLK|count~0_combout\);

-- Location: FF_X37_Y35_N3
\udoor_mecanism|UCLK|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(6));

-- Location: LCCOMB_X38_Y35_N14
\udoor_mecanism|UCLK|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~12_combout\ = (\udoor_mecanism|UCLK|count\(7) & (\udoor_mecanism|UCLK|Add0~11\ $ (GND))) # (!\udoor_mecanism|UCLK|count\(7) & (!\udoor_mecanism|UCLK|Add0~11\ & VCC))
-- \udoor_mecanism|UCLK|Add0~13\ = CARRY((\udoor_mecanism|UCLK|count\(7) & !\udoor_mecanism|UCLK|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(7),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~11\,
	combout => \udoor_mecanism|UCLK|Add0~12_combout\,
	cout => \udoor_mecanism|UCLK|Add0~13\);

-- Location: FF_X38_Y35_N15
\udoor_mecanism|UCLK|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(7));

-- Location: LCCOMB_X37_Y35_N4
\udoor_mecanism|UCLK|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Equal0~0_combout\ = (!\udoor_mecanism|UCLK|count\(5) & (!\udoor_mecanism|UCLK|count\(4) & (!\udoor_mecanism|UCLK|count\(7) & \udoor_mecanism|UCLK|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(5),
	datab => \udoor_mecanism|UCLK|count\(4),
	datac => \udoor_mecanism|UCLK|count\(7),
	datad => \udoor_mecanism|UCLK|count\(6),
	combout => \udoor_mecanism|UCLK|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y35_N22
\udoor_mecanism|UCLK|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Equal0~1_combout\ = (\uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~0_combout\ & (!\udoor_mecanism|UCLK|count\(3) & (\udoor_mecanism|UCLK|Equal0~0_combout\ & !\udoor_mecanism|UCLK|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uCLKDIV|Equal0~0_combout\,
	datab => \udoor_mecanism|UCLK|count\(3),
	datac => \udoor_mecanism|UCLK|Equal0~0_combout\,
	datad => \udoor_mecanism|UCLK|count\(2),
	combout => \udoor_mecanism|UCLK|Equal0~1_combout\);

-- Location: LCCOMB_X38_Y35_N16
\udoor_mecanism|UCLK|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~14_combout\ = (\udoor_mecanism|UCLK|count\(8) & (!\udoor_mecanism|UCLK|Add0~13\)) # (!\udoor_mecanism|UCLK|count\(8) & ((\udoor_mecanism|UCLK|Add0~13\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~15\ = CARRY((!\udoor_mecanism|UCLK|Add0~13\) # (!\udoor_mecanism|UCLK|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(8),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~13\,
	combout => \udoor_mecanism|UCLK|Add0~14_combout\,
	cout => \udoor_mecanism|UCLK|Add0~15\);

-- Location: FF_X38_Y35_N17
\udoor_mecanism|UCLK|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(8));

-- Location: LCCOMB_X38_Y35_N18
\udoor_mecanism|UCLK|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~16_combout\ = (\udoor_mecanism|UCLK|count\(9) & (\udoor_mecanism|UCLK|Add0~15\ $ (GND))) # (!\udoor_mecanism|UCLK|count\(9) & (!\udoor_mecanism|UCLK|Add0~15\ & VCC))
-- \udoor_mecanism|UCLK|Add0~17\ = CARRY((\udoor_mecanism|UCLK|count\(9) & !\udoor_mecanism|UCLK|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(9),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~15\,
	combout => \udoor_mecanism|UCLK|Add0~16_combout\,
	cout => \udoor_mecanism|UCLK|Add0~17\);

-- Location: LCCOMB_X37_Y35_N24
\udoor_mecanism|UCLK|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|count~1_combout\ = (!\udoor_mecanism|UCLK|Equal0~9_combout\ & \udoor_mecanism|UCLK|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|Equal0~9_combout\,
	datad => \udoor_mecanism|UCLK|Add0~16_combout\,
	combout => \udoor_mecanism|UCLK|count~1_combout\);

-- Location: FF_X37_Y35_N25
\udoor_mecanism|UCLK|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(9));

-- Location: LCCOMB_X38_Y35_N20
\udoor_mecanism|UCLK|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~18_combout\ = (\udoor_mecanism|UCLK|count\(10) & (!\udoor_mecanism|UCLK|Add0~17\)) # (!\udoor_mecanism|UCLK|count\(10) & ((\udoor_mecanism|UCLK|Add0~17\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~19\ = CARRY((!\udoor_mecanism|UCLK|Add0~17\) # (!\udoor_mecanism|UCLK|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(10),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~17\,
	combout => \udoor_mecanism|UCLK|Add0~18_combout\,
	cout => \udoor_mecanism|UCLK|Add0~19\);

-- Location: FF_X38_Y35_N21
\udoor_mecanism|UCLK|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(10));

-- Location: LCCOMB_X38_Y35_N22
\udoor_mecanism|UCLK|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~20_combout\ = (\udoor_mecanism|UCLK|count\(11) & (\udoor_mecanism|UCLK|Add0~19\ $ (GND))) # (!\udoor_mecanism|UCLK|count\(11) & (!\udoor_mecanism|UCLK|Add0~19\ & VCC))
-- \udoor_mecanism|UCLK|Add0~21\ = CARRY((\udoor_mecanism|UCLK|count\(11) & !\udoor_mecanism|UCLK|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(11),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~19\,
	combout => \udoor_mecanism|UCLK|Add0~20_combout\,
	cout => \udoor_mecanism|UCLK|Add0~21\);

-- Location: FF_X38_Y35_N23
\udoor_mecanism|UCLK|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(11));

-- Location: LCCOMB_X38_Y35_N24
\udoor_mecanism|UCLK|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~22_combout\ = (\udoor_mecanism|UCLK|count\(12) & (!\udoor_mecanism|UCLK|Add0~21\)) # (!\udoor_mecanism|UCLK|count\(12) & ((\udoor_mecanism|UCLK|Add0~21\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~23\ = CARRY((!\udoor_mecanism|UCLK|Add0~21\) # (!\udoor_mecanism|UCLK|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(12),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~21\,
	combout => \udoor_mecanism|UCLK|Add0~22_combout\,
	cout => \udoor_mecanism|UCLK|Add0~23\);

-- Location: FF_X38_Y35_N25
\udoor_mecanism|UCLK|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(12));

-- Location: LCCOMB_X38_Y35_N26
\udoor_mecanism|UCLK|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~24_combout\ = (\udoor_mecanism|UCLK|count\(13) & (\udoor_mecanism|UCLK|Add0~23\ $ (GND))) # (!\udoor_mecanism|UCLK|count\(13) & (!\udoor_mecanism|UCLK|Add0~23\ & VCC))
-- \udoor_mecanism|UCLK|Add0~25\ = CARRY((\udoor_mecanism|UCLK|count\(13) & !\udoor_mecanism|UCLK|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(13),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~23\,
	combout => \udoor_mecanism|UCLK|Add0~24_combout\,
	cout => \udoor_mecanism|UCLK|Add0~25\);

-- Location: FF_X38_Y35_N27
\udoor_mecanism|UCLK|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(13));

-- Location: LCCOMB_X38_Y35_N28
\udoor_mecanism|UCLK|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~26_combout\ = (\udoor_mecanism|UCLK|count\(14) & (!\udoor_mecanism|UCLK|Add0~25\)) # (!\udoor_mecanism|UCLK|count\(14) & ((\udoor_mecanism|UCLK|Add0~25\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~27\ = CARRY((!\udoor_mecanism|UCLK|Add0~25\) # (!\udoor_mecanism|UCLK|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(14),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~25\,
	combout => \udoor_mecanism|UCLK|Add0~26_combout\,
	cout => \udoor_mecanism|UCLK|Add0~27\);

-- Location: LCCOMB_X37_Y35_N26
\udoor_mecanism|UCLK|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|count~2_combout\ = (!\udoor_mecanism|UCLK|Equal0~9_combout\ & \udoor_mecanism|UCLK|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|Equal0~9_combout\,
	datad => \udoor_mecanism|UCLK|Add0~26_combout\,
	combout => \udoor_mecanism|UCLK|count~2_combout\);

-- Location: FF_X37_Y35_N27
\udoor_mecanism|UCLK|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(14));

-- Location: LCCOMB_X38_Y35_N30
\udoor_mecanism|UCLK|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~28_combout\ = (\udoor_mecanism|UCLK|count\(15) & (\udoor_mecanism|UCLK|Add0~27\ $ (GND))) # (!\udoor_mecanism|UCLK|count\(15) & (!\udoor_mecanism|UCLK|Add0~27\ & VCC))
-- \udoor_mecanism|UCLK|Add0~29\ = CARRY((\udoor_mecanism|UCLK|count\(15) & !\udoor_mecanism|UCLK|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(15),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~27\,
	combout => \udoor_mecanism|UCLK|Add0~28_combout\,
	cout => \udoor_mecanism|UCLK|Add0~29\);

-- Location: FF_X38_Y35_N31
\udoor_mecanism|UCLK|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(15));

-- Location: LCCOMB_X38_Y34_N0
\udoor_mecanism|UCLK|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~30_combout\ = (\udoor_mecanism|UCLK|count\(16) & (!\udoor_mecanism|UCLK|Add0~29\)) # (!\udoor_mecanism|UCLK|count\(16) & ((\udoor_mecanism|UCLK|Add0~29\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~31\ = CARRY((!\udoor_mecanism|UCLK|Add0~29\) # (!\udoor_mecanism|UCLK|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(16),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~29\,
	combout => \udoor_mecanism|UCLK|Add0~30_combout\,
	cout => \udoor_mecanism|UCLK|Add0~31\);

-- Location: LCCOMB_X37_Y35_N30
\udoor_mecanism|UCLK|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|count~3_combout\ = (\udoor_mecanism|UCLK|Add0~30_combout\ & !\udoor_mecanism|UCLK|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \udoor_mecanism|UCLK|Add0~30_combout\,
	datad => \udoor_mecanism|UCLK|Equal0~9_combout\,
	combout => \udoor_mecanism|UCLK|count~3_combout\);

-- Location: FF_X37_Y35_N31
\udoor_mecanism|UCLK|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(16));

-- Location: LCCOMB_X38_Y34_N2
\udoor_mecanism|UCLK|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~32_combout\ = (\udoor_mecanism|UCLK|count\(17) & (\udoor_mecanism|UCLK|Add0~31\ $ (GND))) # (!\udoor_mecanism|UCLK|count\(17) & (!\udoor_mecanism|UCLK|Add0~31\ & VCC))
-- \udoor_mecanism|UCLK|Add0~33\ = CARRY((\udoor_mecanism|UCLK|count\(17) & !\udoor_mecanism|UCLK|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(17),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~31\,
	combout => \udoor_mecanism|UCLK|Add0~32_combout\,
	cout => \udoor_mecanism|UCLK|Add0~33\);

-- Location: LCCOMB_X37_Y35_N16
\udoor_mecanism|UCLK|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|count~4_combout\ = (!\udoor_mecanism|UCLK|Equal0~9_combout\ & \udoor_mecanism|UCLK|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|Equal0~9_combout\,
	datad => \udoor_mecanism|UCLK|Add0~32_combout\,
	combout => \udoor_mecanism|UCLK|count~4_combout\);

-- Location: FF_X37_Y35_N17
\udoor_mecanism|UCLK|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(17));

-- Location: LCCOMB_X38_Y34_N4
\udoor_mecanism|UCLK|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~34_combout\ = (\udoor_mecanism|UCLK|count\(18) & (!\udoor_mecanism|UCLK|Add0~33\)) # (!\udoor_mecanism|UCLK|count\(18) & ((\udoor_mecanism|UCLK|Add0~33\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~35\ = CARRY((!\udoor_mecanism|UCLK|Add0~33\) # (!\udoor_mecanism|UCLK|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(18),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~33\,
	combout => \udoor_mecanism|UCLK|Add0~34_combout\,
	cout => \udoor_mecanism|UCLK|Add0~35\);

-- Location: LCCOMB_X37_Y35_N18
\udoor_mecanism|UCLK|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|count~5_combout\ = (!\udoor_mecanism|UCLK|Equal0~9_combout\ & \udoor_mecanism|UCLK|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|Equal0~9_combout\,
	datad => \udoor_mecanism|UCLK|Add0~34_combout\,
	combout => \udoor_mecanism|UCLK|count~5_combout\);

-- Location: FF_X37_Y35_N19
\udoor_mecanism|UCLK|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(18));

-- Location: LCCOMB_X38_Y34_N6
\udoor_mecanism|UCLK|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~36_combout\ = (\udoor_mecanism|UCLK|count\(19) & (\udoor_mecanism|UCLK|Add0~35\ $ (GND))) # (!\udoor_mecanism|UCLK|count\(19) & (!\udoor_mecanism|UCLK|Add0~35\ & VCC))
-- \udoor_mecanism|UCLK|Add0~37\ = CARRY((\udoor_mecanism|UCLK|count\(19) & !\udoor_mecanism|UCLK|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(19),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~35\,
	combout => \udoor_mecanism|UCLK|Add0~36_combout\,
	cout => \udoor_mecanism|UCLK|Add0~37\);

-- Location: LCCOMB_X37_Y35_N12
\udoor_mecanism|UCLK|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|count~6_combout\ = (\udoor_mecanism|UCLK|Add0~36_combout\ & !\udoor_mecanism|UCLK|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \udoor_mecanism|UCLK|Add0~36_combout\,
	datad => \udoor_mecanism|UCLK|Equal0~9_combout\,
	combout => \udoor_mecanism|UCLK|count~6_combout\);

-- Location: FF_X37_Y35_N13
\udoor_mecanism|UCLK|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(19));

-- Location: LCCOMB_X38_Y34_N8
\udoor_mecanism|UCLK|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~38_combout\ = (\udoor_mecanism|UCLK|count\(20) & (!\udoor_mecanism|UCLK|Add0~37\)) # (!\udoor_mecanism|UCLK|count\(20) & ((\udoor_mecanism|UCLK|Add0~37\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~39\ = CARRY((!\udoor_mecanism|UCLK|Add0~37\) # (!\udoor_mecanism|UCLK|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(20),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~37\,
	combout => \udoor_mecanism|UCLK|Add0~38_combout\,
	cout => \udoor_mecanism|UCLK|Add0~39\);

-- Location: FF_X38_Y34_N9
\udoor_mecanism|UCLK|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(20));

-- Location: LCCOMB_X38_Y34_N10
\udoor_mecanism|UCLK|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~40_combout\ = (\udoor_mecanism|UCLK|count\(21) & (\udoor_mecanism|UCLK|Add0~39\ $ (GND))) # (!\udoor_mecanism|UCLK|count\(21) & (!\udoor_mecanism|UCLK|Add0~39\ & VCC))
-- \udoor_mecanism|UCLK|Add0~41\ = CARRY((\udoor_mecanism|UCLK|count\(21) & !\udoor_mecanism|UCLK|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(21),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~39\,
	combout => \udoor_mecanism|UCLK|Add0~40_combout\,
	cout => \udoor_mecanism|UCLK|Add0~41\);

-- Location: FF_X38_Y34_N11
\udoor_mecanism|UCLK|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(21));

-- Location: LCCOMB_X38_Y34_N12
\udoor_mecanism|UCLK|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~42_combout\ = (\udoor_mecanism|UCLK|count\(22) & (!\udoor_mecanism|UCLK|Add0~41\)) # (!\udoor_mecanism|UCLK|count\(22) & ((\udoor_mecanism|UCLK|Add0~41\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~43\ = CARRY((!\udoor_mecanism|UCLK|Add0~41\) # (!\udoor_mecanism|UCLK|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(22),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~41\,
	combout => \udoor_mecanism|UCLK|Add0~42_combout\,
	cout => \udoor_mecanism|UCLK|Add0~43\);

-- Location: FF_X38_Y34_N13
\udoor_mecanism|UCLK|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(22));

-- Location: LCCOMB_X38_Y34_N14
\udoor_mecanism|UCLK|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~44_combout\ = (\udoor_mecanism|UCLK|count\(23) & (\udoor_mecanism|UCLK|Add0~43\ $ (GND))) # (!\udoor_mecanism|UCLK|count\(23) & (!\udoor_mecanism|UCLK|Add0~43\ & VCC))
-- \udoor_mecanism|UCLK|Add0~45\ = CARRY((\udoor_mecanism|UCLK|count\(23) & !\udoor_mecanism|UCLK|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(23),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~43\,
	combout => \udoor_mecanism|UCLK|Add0~44_combout\,
	cout => \udoor_mecanism|UCLK|Add0~45\);

-- Location: FF_X38_Y34_N15
\udoor_mecanism|UCLK|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(23));

-- Location: LCCOMB_X38_Y34_N16
\udoor_mecanism|UCLK|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~46_combout\ = (\udoor_mecanism|UCLK|count\(24) & (!\udoor_mecanism|UCLK|Add0~45\)) # (!\udoor_mecanism|UCLK|count\(24) & ((\udoor_mecanism|UCLK|Add0~45\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~47\ = CARRY((!\udoor_mecanism|UCLK|Add0~45\) # (!\udoor_mecanism|UCLK|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(24),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~45\,
	combout => \udoor_mecanism|UCLK|Add0~46_combout\,
	cout => \udoor_mecanism|UCLK|Add0~47\);

-- Location: FF_X38_Y34_N17
\udoor_mecanism|UCLK|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(24));

-- Location: LCCOMB_X38_Y34_N18
\udoor_mecanism|UCLK|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~48_combout\ = (\udoor_mecanism|UCLK|count\(25) & (\udoor_mecanism|UCLK|Add0~47\ $ (GND))) # (!\udoor_mecanism|UCLK|count\(25) & (!\udoor_mecanism|UCLK|Add0~47\ & VCC))
-- \udoor_mecanism|UCLK|Add0~49\ = CARRY((\udoor_mecanism|UCLK|count\(25) & !\udoor_mecanism|UCLK|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(25),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~47\,
	combout => \udoor_mecanism|UCLK|Add0~48_combout\,
	cout => \udoor_mecanism|UCLK|Add0~49\);

-- Location: FF_X38_Y34_N19
\udoor_mecanism|UCLK|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(25));

-- Location: LCCOMB_X38_Y34_N20
\udoor_mecanism|UCLK|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~50_combout\ = (\udoor_mecanism|UCLK|count\(26) & (!\udoor_mecanism|UCLK|Add0~49\)) # (!\udoor_mecanism|UCLK|count\(26) & ((\udoor_mecanism|UCLK|Add0~49\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~51\ = CARRY((!\udoor_mecanism|UCLK|Add0~49\) # (!\udoor_mecanism|UCLK|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(26),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~49\,
	combout => \udoor_mecanism|UCLK|Add0~50_combout\,
	cout => \udoor_mecanism|UCLK|Add0~51\);

-- Location: FF_X38_Y34_N21
\udoor_mecanism|UCLK|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(26));

-- Location: LCCOMB_X38_Y34_N22
\udoor_mecanism|UCLK|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~52_combout\ = (\udoor_mecanism|UCLK|count\(27) & (\udoor_mecanism|UCLK|Add0~51\ $ (GND))) # (!\udoor_mecanism|UCLK|count\(27) & (!\udoor_mecanism|UCLK|Add0~51\ & VCC))
-- \udoor_mecanism|UCLK|Add0~53\ = CARRY((\udoor_mecanism|UCLK|count\(27) & !\udoor_mecanism|UCLK|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(27),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~51\,
	combout => \udoor_mecanism|UCLK|Add0~52_combout\,
	cout => \udoor_mecanism|UCLK|Add0~53\);

-- Location: FF_X38_Y34_N23
\udoor_mecanism|UCLK|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(27));

-- Location: LCCOMB_X38_Y34_N24
\udoor_mecanism|UCLK|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~54_combout\ = (\udoor_mecanism|UCLK|count\(28) & (!\udoor_mecanism|UCLK|Add0~53\)) # (!\udoor_mecanism|UCLK|count\(28) & ((\udoor_mecanism|UCLK|Add0~53\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~55\ = CARRY((!\udoor_mecanism|UCLK|Add0~53\) # (!\udoor_mecanism|UCLK|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(28),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~53\,
	combout => \udoor_mecanism|UCLK|Add0~54_combout\,
	cout => \udoor_mecanism|UCLK|Add0~55\);

-- Location: FF_X38_Y34_N25
\udoor_mecanism|UCLK|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(28));

-- Location: LCCOMB_X38_Y34_N26
\udoor_mecanism|UCLK|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~56_combout\ = (\udoor_mecanism|UCLK|count\(29) & (\udoor_mecanism|UCLK|Add0~55\ $ (GND))) # (!\udoor_mecanism|UCLK|count\(29) & (!\udoor_mecanism|UCLK|Add0~55\ & VCC))
-- \udoor_mecanism|UCLK|Add0~57\ = CARRY((\udoor_mecanism|UCLK|count\(29) & !\udoor_mecanism|UCLK|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(29),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~55\,
	combout => \udoor_mecanism|UCLK|Add0~56_combout\,
	cout => \udoor_mecanism|UCLK|Add0~57\);

-- Location: FF_X38_Y34_N27
\udoor_mecanism|UCLK|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(29));

-- Location: LCCOMB_X38_Y34_N28
\udoor_mecanism|UCLK|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~58_combout\ = (\udoor_mecanism|UCLK|count\(30) & (!\udoor_mecanism|UCLK|Add0~57\)) # (!\udoor_mecanism|UCLK|count\(30) & ((\udoor_mecanism|UCLK|Add0~57\) # (GND)))
-- \udoor_mecanism|UCLK|Add0~59\ = CARRY((!\udoor_mecanism|UCLK|Add0~57\) # (!\udoor_mecanism|UCLK|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|UCLK|count\(30),
	datad => VCC,
	cin => \udoor_mecanism|UCLK|Add0~57\,
	combout => \udoor_mecanism|UCLK|Add0~58_combout\,
	cout => \udoor_mecanism|UCLK|Add0~59\);

-- Location: FF_X38_Y34_N29
\udoor_mecanism|UCLK|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(30));

-- Location: LCCOMB_X38_Y34_N30
\udoor_mecanism|UCLK|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Add0~60_combout\ = \udoor_mecanism|UCLK|count\(31) $ (!\udoor_mecanism|UCLK|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(31),
	cin => \udoor_mecanism|UCLK|Add0~59\,
	combout => \udoor_mecanism|UCLK|Add0~60_combout\);

-- Location: FF_X38_Y34_N31
\udoor_mecanism|UCLK|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|count\(31));

-- Location: LCCOMB_X37_Y34_N2
\udoor_mecanism|UCLK|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Equal0~7_combout\ = (!\udoor_mecanism|UCLK|count\(29) & (!\udoor_mecanism|UCLK|count\(28) & (!\udoor_mecanism|UCLK|count\(31) & !\udoor_mecanism|UCLK|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(29),
	datab => \udoor_mecanism|UCLK|count\(28),
	datac => \udoor_mecanism|UCLK|count\(31),
	datad => \udoor_mecanism|UCLK|count\(30),
	combout => \udoor_mecanism|UCLK|Equal0~7_combout\);

-- Location: LCCOMB_X37_Y34_N0
\udoor_mecanism|UCLK|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Equal0~6_combout\ = (!\udoor_mecanism|UCLK|count\(24) & (!\udoor_mecanism|UCLK|count\(25) & (!\udoor_mecanism|UCLK|count\(26) & !\udoor_mecanism|UCLK|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(24),
	datab => \udoor_mecanism|UCLK|count\(25),
	datac => \udoor_mecanism|UCLK|count\(26),
	datad => \udoor_mecanism|UCLK|count\(27),
	combout => \udoor_mecanism|UCLK|Equal0~6_combout\);

-- Location: LCCOMB_X37_Y35_N14
\udoor_mecanism|UCLK|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Equal0~4_combout\ = (\udoor_mecanism|UCLK|count\(19) & (\udoor_mecanism|UCLK|count\(17) & (\udoor_mecanism|UCLK|count\(16) & \udoor_mecanism|UCLK|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(19),
	datab => \udoor_mecanism|UCLK|count\(17),
	datac => \udoor_mecanism|UCLK|count\(16),
	datad => \udoor_mecanism|UCLK|count\(18),
	combout => \udoor_mecanism|UCLK|Equal0~4_combout\);

-- Location: LCCOMB_X39_Y34_N0
\udoor_mecanism|UCLK|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Equal0~5_combout\ = (!\udoor_mecanism|UCLK|count\(22) & (!\udoor_mecanism|UCLK|count\(23) & (!\udoor_mecanism|UCLK|count\(20) & !\udoor_mecanism|UCLK|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(22),
	datab => \udoor_mecanism|UCLK|count\(23),
	datac => \udoor_mecanism|UCLK|count\(20),
	datad => \udoor_mecanism|UCLK|count\(21),
	combout => \udoor_mecanism|UCLK|Equal0~5_combout\);

-- Location: LCCOMB_X37_Y35_N8
\udoor_mecanism|UCLK|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Equal0~8_combout\ = (\udoor_mecanism|UCLK|Equal0~7_combout\ & (\udoor_mecanism|UCLK|Equal0~6_combout\ & (\udoor_mecanism|UCLK|Equal0~4_combout\ & \udoor_mecanism|UCLK|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|Equal0~7_combout\,
	datab => \udoor_mecanism|UCLK|Equal0~6_combout\,
	datac => \udoor_mecanism|UCLK|Equal0~4_combout\,
	datad => \udoor_mecanism|UCLK|Equal0~5_combout\,
	combout => \udoor_mecanism|UCLK|Equal0~8_combout\);

-- Location: LCCOMB_X38_Y35_N0
\udoor_mecanism|UCLK|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Equal0~2_combout\ = (!\udoor_mecanism|UCLK|count\(8) & (!\udoor_mecanism|UCLK|count\(10) & (!\udoor_mecanism|UCLK|count\(11) & \udoor_mecanism|UCLK|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(8),
	datab => \udoor_mecanism|UCLK|count\(10),
	datac => \udoor_mecanism|UCLK|count\(11),
	datad => \udoor_mecanism|UCLK|count\(9),
	combout => \udoor_mecanism|UCLK|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y35_N28
\udoor_mecanism|UCLK|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Equal0~3_combout\ = (\udoor_mecanism|UCLK|count\(14) & (!\udoor_mecanism|UCLK|count\(13) & (!\udoor_mecanism|UCLK|count\(15) & !\udoor_mecanism|UCLK|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|count\(14),
	datab => \udoor_mecanism|UCLK|count\(13),
	datac => \udoor_mecanism|UCLK|count\(15),
	datad => \udoor_mecanism|UCLK|count\(12),
	combout => \udoor_mecanism|UCLK|Equal0~3_combout\);

-- Location: LCCOMB_X37_Y35_N10
\udoor_mecanism|UCLK|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|Equal0~9_combout\ = (\udoor_mecanism|UCLK|Equal0~1_combout\ & (\udoor_mecanism|UCLK|Equal0~8_combout\ & (\udoor_mecanism|UCLK|Equal0~2_combout\ & \udoor_mecanism|UCLK|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|UCLK|Equal0~1_combout\,
	datab => \udoor_mecanism|UCLK|Equal0~8_combout\,
	datac => \udoor_mecanism|UCLK|Equal0~2_combout\,
	datad => \udoor_mecanism|UCLK|Equal0~3_combout\,
	combout => \udoor_mecanism|UCLK|Equal0~9_combout\);

-- Location: LCCOMB_X37_Y35_N0
\udoor_mecanism|UCLK|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|UCLK|tmp~0_combout\ = \udoor_mecanism|UCLK|tmp~q\ $ (\udoor_mecanism|UCLK|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \udoor_mecanism|UCLK|tmp~q\,
	datad => \udoor_mecanism|UCLK|Equal0~9_combout\,
	combout => \udoor_mecanism|UCLK|tmp~0_combout\);

-- Location: FF_X37_Y35_N1
\udoor_mecanism|UCLK|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \udoor_mecanism|UCLK|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|UCLK|tmp~q\);

-- Location: CLKCTRL_G0
\udoor_mecanism|UCLK|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \udoor_mecanism|UCLK|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \udoor_mecanism|UCLK|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X62_Y50_N8
\udoor_mecanism|U6|cnt_atual_pl[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U6|cnt_atual_pl[0]~3_combout\ = (!\udoor_mecanism|shift_clk~combout\ & !\udoor_mecanism|U6|U2|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|shift_clk~combout\,
	datac => \udoor_mecanism|U6|U2|Q\(0),
	combout => \udoor_mecanism|U6|cnt_atual_pl[0]~3_combout\);

-- Location: LCCOMB_X71_Y48_N6
\uSDC|uDoorController|OnOff~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|OnOff~1_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & ((\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	datad => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\,
	combout => \uSDC|uDoorController|OnOff~1_combout\);

-- Location: FF_X62_Y50_N9
\udoor_mecanism|U6|U2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \udoor_mecanism|UCLK|tmp~clkctrl_outclk\,
	d => \udoor_mecanism|U6|cnt_atual_pl[0]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uDoorController|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|U6|U2|Q\(0));

-- Location: LCCOMB_X62_Y50_N18
\udoor_mecanism|U6|cnt_atual_pl[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U6|cnt_atual_pl[1]~4_combout\ = (\udoor_mecanism|shift_clk~combout\ & (((\uSDC|uSerialReceiver|uShiftRegister|Uffd3|Q~q\)))) # (!\udoor_mecanism|shift_clk~combout\ & (\udoor_mecanism|U6|U2|Q\(0) $ ((\udoor_mecanism|U6|U2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|shift_clk~combout\,
	datab => \udoor_mecanism|U6|U2|Q\(0),
	datac => \udoor_mecanism|U6|U2|Q\(1),
	datad => \uSDC|uSerialReceiver|uShiftRegister|Uffd3|Q~q\,
	combout => \udoor_mecanism|U6|cnt_atual_pl[1]~4_combout\);

-- Location: FF_X62_Y50_N19
\udoor_mecanism|U6|U2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \udoor_mecanism|UCLK|tmp~clkctrl_outclk\,
	d => \udoor_mecanism|U6|cnt_atual_pl[1]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uDoorController|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|U6|U2|Q\(1));

-- Location: LCCOMB_X62_Y50_N26
\udoor_mecanism|U6|U1|SC:2:U1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U6|U1|SC:2:U1|S~combout\ = \udoor_mecanism|U6|U2|Q\(2) $ (((\udoor_mecanism|U6|U2|Q\(1) & \udoor_mecanism|U6|U2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|U6|U2|Q\(2),
	datab => \udoor_mecanism|U6|U2|Q\(1),
	datac => \udoor_mecanism|U6|U2|Q\(0),
	combout => \udoor_mecanism|U6|U1|SC:2:U1|S~combout\);

-- Location: LCCOMB_X62_Y50_N30
\udoor_mecanism|U6|cnt_atual_pl[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U6|cnt_atual_pl[2]~2_combout\ = (\udoor_mecanism|shift_clk~combout\ & ((\uSDC|uSerialReceiver|uShiftRegister|Uffd2|Q~q\))) # (!\udoor_mecanism|shift_clk~combout\ & (\udoor_mecanism|U6|U1|SC:2:U1|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|shift_clk~combout\,
	datac => \udoor_mecanism|U6|U1|SC:2:U1|S~combout\,
	datad => \uSDC|uSerialReceiver|uShiftRegister|Uffd2|Q~q\,
	combout => \udoor_mecanism|U6|cnt_atual_pl[2]~2_combout\);

-- Location: FF_X62_Y50_N31
\udoor_mecanism|U6|U2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \udoor_mecanism|UCLK|tmp~clkctrl_outclk\,
	d => \udoor_mecanism|U6|cnt_atual_pl[2]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uDoorController|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|U6|U2|Q\(2));

-- Location: LCCOMB_X62_Y50_N24
\udoor_mecanism|U6|U1|SC:3:U1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U6|U1|SC:3:U1|S~combout\ = \udoor_mecanism|U6|U2|Q\(3) $ (((\udoor_mecanism|U6|U2|Q\(2) & (\udoor_mecanism|U6|U2|Q\(1) & \udoor_mecanism|U6|U2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|U6|U2|Q\(2),
	datab => \udoor_mecanism|U6|U2|Q\(1),
	datac => \udoor_mecanism|U6|U2|Q\(0),
	datad => \udoor_mecanism|U6|U2|Q\(3),
	combout => \udoor_mecanism|U6|U1|SC:3:U1|S~combout\);

-- Location: LCCOMB_X62_Y50_N12
\udoor_mecanism|U6|cnt_atual_pl[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U6|cnt_atual_pl[3]~1_combout\ = (\udoor_mecanism|shift_clk~combout\ & ((\uSDC|uSerialReceiver|uShiftRegister|Uffd1|Q~q\))) # (!\udoor_mecanism|shift_clk~combout\ & (\udoor_mecanism|U6|U1|SC:3:U1|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|U6|U1|SC:3:U1|S~combout\,
	datac => \udoor_mecanism|shift_clk~combout\,
	datad => \uSDC|uSerialReceiver|uShiftRegister|Uffd1|Q~q\,
	combout => \udoor_mecanism|U6|cnt_atual_pl[3]~1_combout\);

-- Location: FF_X62_Y50_N13
\udoor_mecanism|U6|U2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \udoor_mecanism|UCLK|tmp~clkctrl_outclk\,
	d => \udoor_mecanism|U6|cnt_atual_pl[3]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uDoorController|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|U6|U2|Q\(3));

-- Location: LCCOMB_X62_Y50_N20
\udoor_mecanism|shift_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|shift_clk~0_combout\ = (\udoor_mecanism|U6|U2|Q\(2) & (\udoor_mecanism|U6|U2|Q\(1) & (\udoor_mecanism|U6|U2|Q\(0) & \udoor_mecanism|U6|U2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|U6|U2|Q\(2),
	datab => \udoor_mecanism|U6|U2|Q\(1),
	datac => \udoor_mecanism|U6|U2|Q\(0),
	datad => \udoor_mecanism|U6|U2|Q\(3),
	combout => \udoor_mecanism|shift_clk~0_combout\);

-- Location: LCCOMB_X62_Y50_N2
\udoor_mecanism|U6|cnt_atual_pl[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U6|cnt_atual_pl[4]~0_combout\ = (\udoor_mecanism|shift_clk~combout\ & (((\uSDC|uSerialReceiver|uShiftRegister|Uffd0|Q~q\)))) # (!\udoor_mecanism|shift_clk~combout\ & (\udoor_mecanism|shift_clk~0_combout\ $ ((\udoor_mecanism|U6|U2|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|shift_clk~combout\,
	datab => \udoor_mecanism|shift_clk~0_combout\,
	datac => \udoor_mecanism|U6|U2|Q\(4),
	datad => \uSDC|uSerialReceiver|uShiftRegister|Uffd0|Q~q\,
	combout => \udoor_mecanism|U6|cnt_atual_pl[4]~0_combout\);

-- Location: FF_X62_Y50_N3
\udoor_mecanism|U6|U2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \udoor_mecanism|UCLK|tmp~clkctrl_outclk\,
	d => \udoor_mecanism|U6|cnt_atual_pl[4]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uDoorController|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|U6|U2|Q\(4));

-- Location: LCCOMB_X62_Y50_N22
\udoor_mecanism|shift_clk\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|shift_clk~combout\ = LCELL((\udoor_mecanism|shift_clk~0_combout\ & \udoor_mecanism|U6|U2|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|shift_clk~0_combout\,
	datad => \udoor_mecanism|U6|U2|Q\(4),
	combout => \udoor_mecanism|shift_clk~combout\);

-- Location: CLKCTRL_G11
\udoor_mecanism|shift_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \udoor_mecanism|shift_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \udoor_mecanism|shift_clk~clkctrl_outclk\);

-- Location: LCCOMB_X72_Y48_N0
\udoor_mecanism|U7|dataShift_in[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U7|dataShift_in[0]~0_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & (!\udoor_mecanism|U7|U1|Q\(1) & \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	datab => \udoor_mecanism|U7|U1|Q\(1),
	datad => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	combout => \udoor_mecanism|U7|dataShift_in[0]~0_combout\);

-- Location: FF_X72_Y48_N1
\udoor_mecanism|U7|U1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \udoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \udoor_mecanism|U7|dataShift_in[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uDoorController|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|U7|U1|Q\(0));

-- Location: LCCOMB_X72_Y48_N28
\udoor_mecanism|U7|dataShift_in[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U7|dataShift_in[1]~2_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & ((\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & ((\udoor_mecanism|U7|U1|Q\(2)))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & 
-- (!\udoor_mecanism|U7|U1|Q\(0))))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & (!\udoor_mecanism|U7|U1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	datab => \udoor_mecanism|U7|U1|Q\(0),
	datac => \udoor_mecanism|U7|U1|Q\(2),
	datad => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	combout => \udoor_mecanism|U7|dataShift_in[1]~2_combout\);

-- Location: FF_X72_Y48_N29
\udoor_mecanism|U7|U1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \udoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \udoor_mecanism|U7|dataShift_in[1]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uDoorController|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|U7|U1|Q\(1));

-- Location: LCCOMB_X72_Y48_N26
\udoor_mecanism|U7|dataShift_in[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U7|dataShift_in[2]~1_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & ((\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & ((\udoor_mecanism|U7|U1|Q\(3)))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & 
-- (\udoor_mecanism|U7|U1|Q\(1))))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & (\udoor_mecanism|U7|U1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	datab => \udoor_mecanism|U7|U1|Q\(1),
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	datad => \udoor_mecanism|U7|U1|Q\(3),
	combout => \udoor_mecanism|U7|dataShift_in[2]~1_combout\);

-- Location: FF_X72_Y48_N27
\udoor_mecanism|U7|U1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \udoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \udoor_mecanism|U7|dataShift_in[2]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uDoorController|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|U7|U1|Q\(2));

-- Location: LCCOMB_X72_Y48_N24
\udoor_mecanism|U7|dataShift_in[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U7|dataShift_in[3]~5_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & ((\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & ((\udoor_mecanism|U7|U1|Q\(4)))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & 
-- (\udoor_mecanism|U7|U1|Q\(2))))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & (((\udoor_mecanism|U7|U1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	datac => \udoor_mecanism|U7|U1|Q\(2),
	datad => \udoor_mecanism|U7|U1|Q\(4),
	combout => \udoor_mecanism|U7|dataShift_in[3]~5_combout\);

-- Location: FF_X72_Y48_N25
\udoor_mecanism|U7|U1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \udoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \udoor_mecanism|U7|dataShift_in[3]~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uDoorController|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|U7|U1|Q\(3));

-- Location: LCCOMB_X71_Y48_N12
\udoor_mecanism|U7|dataShift_in[8]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U7|dataShift_in[8]~6_combout\ = (\udoor_mecanism|U7|U1|Q\(7) & ((!\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	datac => \udoor_mecanism|U7|U1|Q\(7),
	datad => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	combout => \udoor_mecanism|U7|dataShift_in[8]~6_combout\);

-- Location: FF_X71_Y48_N13
\udoor_mecanism|U7|U1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \udoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \udoor_mecanism|U7|dataShift_in[8]~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uDoorController|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|U7|U1|Q\(8));

-- Location: LCCOMB_X71_Y48_N14
\udoor_mecanism|U7|dataShift_in[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U7|dataShift_in[7]~7_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & ((\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & (\udoor_mecanism|U7|U1|Q\(8))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & 
-- ((\udoor_mecanism|U7|U1|Q\(6)))))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & (((\udoor_mecanism|U7|U1|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|U7|U1|Q\(8),
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	datad => \udoor_mecanism|U7|U1|Q\(6),
	combout => \udoor_mecanism|U7|dataShift_in[7]~7_combout\);

-- Location: FF_X71_Y48_N15
\udoor_mecanism|U7|U1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \udoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \udoor_mecanism|U7|dataShift_in[7]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uDoorController|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|U7|U1|Q\(7));

-- Location: LCCOMB_X71_Y48_N0
\udoor_mecanism|U7|dataShift_in[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U7|dataShift_in[6]~8_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & ((\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & ((\udoor_mecanism|U7|U1|Q\(7)))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & 
-- (\udoor_mecanism|U7|U1|Q\(5))))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & (\udoor_mecanism|U7|U1|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	datab => \udoor_mecanism|U7|U1|Q\(5),
	datac => \udoor_mecanism|U7|U1|Q\(7),
	datad => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	combout => \udoor_mecanism|U7|dataShift_in[6]~8_combout\);

-- Location: FF_X71_Y48_N1
\udoor_mecanism|U7|U1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \udoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \udoor_mecanism|U7|dataShift_in[6]~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uDoorController|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|U7|U1|Q\(6));

-- Location: LCCOMB_X72_Y48_N12
\udoor_mecanism|U7|dataShift_in[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U7|dataShift_in[5]~3_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & ((\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & (\udoor_mecanism|U7|U1|Q\(6))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & 
-- ((\udoor_mecanism|U7|U1|Q\(4)))))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & (((\udoor_mecanism|U7|U1|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	datac => \udoor_mecanism|U7|U1|Q\(6),
	datad => \udoor_mecanism|U7|U1|Q\(4),
	combout => \udoor_mecanism|U7|dataShift_in[5]~3_combout\);

-- Location: FF_X72_Y48_N13
\udoor_mecanism|U7|U1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \udoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \udoor_mecanism|U7|dataShift_in[5]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uDoorController|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|U7|U1|Q\(5));

-- Location: LCCOMB_X72_Y48_N6
\udoor_mecanism|U7|dataShift_in[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U7|dataShift_in[4]~4_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & ((\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & ((\udoor_mecanism|U7|U1|Q\(5)))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & 
-- (\udoor_mecanism|U7|U1|Q\(3))))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & (\udoor_mecanism|U7|U1|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	datab => \udoor_mecanism|U7|U1|Q\(3),
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	datad => \udoor_mecanism|U7|U1|Q\(5),
	combout => \udoor_mecanism|U7|dataShift_in[4]~4_combout\);

-- Location: FF_X72_Y48_N7
\udoor_mecanism|U7|U1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \udoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \udoor_mecanism|U7|dataShift_in[4]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSDC|uDoorController|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \udoor_mecanism|U7|U1|Q\(4));

-- Location: LCCOMB_X71_Y48_N10
\udoor_mecanism|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|Equal0~1_combout\ = (!\udoor_mecanism|U7|U1|Q\(4) & (!\udoor_mecanism|U7|U1|Q\(7) & (!\udoor_mecanism|U7|U1|Q\(5) & !\udoor_mecanism|U7|U1|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|U7|U1|Q\(4),
	datab => \udoor_mecanism|U7|U1|Q\(7),
	datac => \udoor_mecanism|U7|U1|Q\(5),
	datad => \udoor_mecanism|U7|U1|Q\(6),
	combout => \udoor_mecanism|Equal0~1_combout\);

-- Location: LCCOMB_X71_Y48_N16
\uSDC|uDoorController|CURRENT_STATE.OPENING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.OPENING~0_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	combout => \uSDC|uDoorController|CURRENT_STATE.OPENING~0_combout\);

-- Location: LCCOMB_X72_Y48_N30
\udoor_mecanism|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|Equal0~0_combout\ = (!\udoor_mecanism|U7|U1|Q\(3) & (!\udoor_mecanism|U7|U1|Q\(1) & (!\udoor_mecanism|U7|U1|Q\(2) & !\udoor_mecanism|U7|U1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|U7|U1|Q\(3),
	datab => \udoor_mecanism|U7|U1|Q\(1),
	datac => \udoor_mecanism|U7|U1|Q\(2),
	datad => \udoor_mecanism|U7|U1|Q\(0),
	combout => \udoor_mecanism|Equal0~0_combout\);

-- Location: LCCOMB_X71_Y48_N4
\uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~1_combout\ = (\udoor_mecanism|Equal0~1_combout\ & (\uSDC|uDoorController|CURRENT_STATE.OPENING~0_combout\ & (\udoor_mecanism|Equal0~0_combout\ & !\udoor_mecanism|U7|U1|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|Equal0~1_combout\,
	datab => \uSDC|uDoorController|CURRENT_STATE.OPENING~0_combout\,
	datac => \udoor_mecanism|Equal0~0_combout\,
	datad => \udoor_mecanism|U7|U1|Q\(8),
	combout => \uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~1_combout\);

-- Location: LCCOMB_X71_Y47_N30
\uSDC|uDoorController|CURRENT_STATE.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_1~3_combout\ = (!\uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q~q\ & \uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q~q\,
	datad => \uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~1_combout\,
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~3_combout\);

-- Location: LCCOMB_X71_Y47_N16
\uSDC|uDoorController|CURRENT_STATE.state_bit_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_1~4_combout\ = (!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~1_combout\ & (!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~2_combout\ & (!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~3_combout\ & 
-- \uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~1_combout\,
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~2_combout\,
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~3_combout\,
	datad => \uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~0_combout\,
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~4_combout\);

-- Location: FF_X71_Y47_N17
\uSDC|uDoorController|CURRENT_STATE.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\);

-- Location: LCCOMB_X71_Y47_N24
\uSDC|uDoorController|CURRENT_STATE.state_bit_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_0~4_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & (\Pswitch~input_o\ & ((!\uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\)))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & 
-- (((\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.COMPLETED~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pswitch~input_o\,
	datab => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.COMPLETED~0_combout\,
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\,
	datad => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~4_combout\);

-- Location: LCCOMB_X71_Y47_N14
\uSDC|uDoorController|CURRENT_STATE.state_bit_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_0~6_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & (\Pswitch~input_o\ & ((!\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\)))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & 
-- (((\uSDC|uDoorController|CURRENT_STATE.state_bit_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pswitch~input_o\,
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~4_combout\,
	datad => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~6_combout\);

-- Location: LCCOMB_X71_Y48_N30
\uSDC|uDoorController|CURRENT_STATE.state_bit_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_0~3_combout\ = (\uSDC|uDoorController|CURRENT_STATE.OPENING~0_combout\ & (((\udoor_mecanism|U7|U1|Q\(8)) # (!\udoor_mecanism|Equal0~0_combout\)) # (!\udoor_mecanism|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|Equal0~1_combout\,
	datab => \uSDC|uDoorController|CURRENT_STATE.OPENING~0_combout\,
	datac => \udoor_mecanism|Equal0~0_combout\,
	datad => \udoor_mecanism|U7|U1|Q\(8),
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~3_combout\);

-- Location: LCCOMB_X71_Y47_N2
\uSDC|uDoorController|CURRENT_STATE.state_bit_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_0~5_combout\ = (\uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~0_combout\ & ((\uSDC|uDoorController|CURRENT_STATE.state_bit_0~6_combout\) # (\uSDC|uDoorController|CURRENT_STATE.state_bit_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~6_combout\,
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~3_combout\,
	datad => \uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~0_combout\,
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~5_combout\);

-- Location: FF_X71_Y47_N3
\uSDC|uDoorController|CURRENT_STATE.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\);

-- Location: LCCOMB_X71_Y47_N20
\uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~0_combout\ = ((!\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\)) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\,
	datad => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	combout => \uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~0_combout\);

-- Location: LCCOMB_X72_Y48_N16
\uSDC|uDoorController|CURRENT_STATE.state_bit_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_2~0_combout\ = (!\Pswitch~input_o\ & (\udoor_mecanism|U7|U1|Q\(1) & (\udoor_mecanism|U7|U1|Q\(2) & \udoor_mecanism|U7|U1|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pswitch~input_o\,
	datab => \udoor_mecanism|U7|U1|Q\(1),
	datac => \udoor_mecanism|U7|U1|Q\(2),
	datad => \udoor_mecanism|U7|U1|Q\(3),
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~0_combout\);

-- Location: LCCOMB_X72_Y48_N4
\udoor_mecanism|U3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U3|Equal0~0_combout\ = (\udoor_mecanism|U7|U1|Q\(8) & (\udoor_mecanism|U7|U1|Q\(6) & \udoor_mecanism|U7|U1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|U7|U1|Q\(8),
	datac => \udoor_mecanism|U7|U1|Q\(6),
	datad => \udoor_mecanism|U7|U1|Q\(7),
	combout => \udoor_mecanism|U3|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y48_N18
\uSDC|uDoorController|CURRENT_STATE.state_bit_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_2~1_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\ & (!\udoor_mecanism|U7|U1|Q\(0) & (!\uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\ & \udoor_mecanism|U7|U1|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uDoorController|CURRENT_STATE.state_bit_1~q\,
	datab => \udoor_mecanism|U7|U1|Q\(0),
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_0~q\,
	datad => \udoor_mecanism|U7|U1|Q\(4),
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~1_combout\);

-- Location: LCCOMB_X72_Y48_N20
\uSDC|uDoorController|CURRENT_STATE.state_bit_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_2~2_combout\ = (\udoor_mecanism|U7|U1|Q\(5) & (\uSDC|uDoorController|CURRENT_STATE.state_bit_2~0_combout\ & (\udoor_mecanism|U3|Equal0~0_combout\ & \uSDC|uDoorController|CURRENT_STATE.state_bit_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|U7|U1|Q\(5),
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~0_combout\,
	datac => \udoor_mecanism|U3|Equal0~0_combout\,
	datad => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~1_combout\,
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~2_combout\);

-- Location: LCCOMB_X71_Y47_N26
\uSDC|uDoorController|CURRENT_STATE.state_bit_2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_2~3_combout\ = (\uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\ & (\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\ & 
-- ((!\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\)))) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\ & (((\uSDC|uDoorController|CURRENT_STATE.state_bit_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\,
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~2_combout\,
	datad => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~3_combout\);

-- Location: LCCOMB_X71_Y47_N12
\uSDC|uDoorController|CURRENT_STATE.state_bit_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uDoorController|CURRENT_STATE.state_bit_2~4_combout\ = (\uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~0_combout\ & ((\uSDC|uDoorController|CURRENT_STATE.state_bit_2~3_combout\) # ((\uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q~q\ & 
-- \uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uSerialReceiver|uShiftRegister|Uffd4|Q~q\,
	datab => \uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~0_combout\,
	datac => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~3_combout\,
	datad => \uSDC|uDoorController|CURRENT_STATE.SYSTEM_OFF~1_combout\,
	combout => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~4_combout\);

-- Location: FF_X71_Y47_N13
\uSDC|uDoorController|CURRENT_STATE.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\);

-- Location: LCCOMB_X71_Y47_N6
\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~1_combout\ = (\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~0_combout\) # ((\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\ & 
-- ((\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\) # (!\uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~0_combout\,
	datab => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datac => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	datad => \uSDC|uDoorController|CURRENT_STATE.state_bit_2~q\,
	combout => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~1_combout\);

-- Location: FF_X71_Y47_N7
\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\);

-- Location: LCCOMB_X71_Y47_N0
\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~0_combout\ = (\au
-- to_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ & 
-- (\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & !\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\)) # 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ & 
-- ((\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\) # (!\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\,
	datac => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	combout => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~0_combout\);

-- Location: FF_X71_Y47_N1
\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\);

-- Location: LCCOMB_X71_Y47_N18
\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.COMPLETED~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.COMPLETED~0_combout\ = (!\uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	combout => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.COMPLETED~0_combout\);

-- Location: LCCOMB_X46_Y42_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \uSDC|uSerialReceiver|uSerialControl|CURRENT_STATE.COMPLETED~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\);

-- Location: FF_X46_Y42_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7));

-- Location: IOIBUF_X51_Y54_N29
\M~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: LCCOMB_X46_Y42_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datad => \M~input_o\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: FF_X46_Y42_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6));

-- Location: LCCOMB_X46_Y42_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~GND~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X46_Y42_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5));

-- Location: LCCOMB_X45_Y23_N28
\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.COMPLETED~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.COMPLETED~0_combout\ = (\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\ & 
-- \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\,
	datad => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~q\,
	combout => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.COMPLETED~0_combout\);

-- Location: LCCOMB_X46_Y42_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	datab => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.COMPLETED~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X46_Y42_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: LCCOMB_X46_Y42_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U3FFD|Q~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X46_Y42_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\);

-- Location: FF_X46_Y42_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LCCOMB_X46_Y42_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U2FFD|Q~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: FF_X46_Y42_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LCCOMB_X50_Y26_N6
\uKeyboard_Reader|uRing_Buffer|URAM|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~13_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3clkctrl_outclk\,
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~13_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~13_combout\);

-- Location: LCCOMB_X50_Y26_N12
\uKeyboard_Reader|uRing_Buffer|URAM|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~9_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~9_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~9_combout\);

-- Location: LCCOMB_X49_Y26_N16
\uKeyboard_Reader|uRing_Buffer|URAM|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~5_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~1clkctrl_outclk\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~5_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~5_combout\);

-- Location: LCCOMB_X49_Y26_N18
\uKeyboard_Reader|uRing_Buffer|URAM|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~1_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~2clkctrl_outclk\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~1_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~1_combout\);

-- Location: LCCOMB_X49_Y26_N0
\uKeyboard_Reader|uRing_Buffer|URAM|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~39_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & (((\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\)))) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & 
-- ((\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (\uKeyboard_Reader|uRing_Buffer|URAM|ram~5_combout\)) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|URAM|ram~5_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~1_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~39_combout\);

-- Location: LCCOMB_X50_Y26_N0
\uKeyboard_Reader|uRing_Buffer|URAM|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~40_combout\ = (\uKeyboard_Reader|uRing_Buffer|URAM|ram~39_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~13_combout\) # ((!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\)))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|URAM|ram~39_combout\ & (((\uKeyboard_Reader|uRing_Buffer|URAM|ram~9_combout\ & \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URAM|ram~13_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|URAM|ram~9_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~39_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~40_combout\);

-- Location: LCCOMB_X50_Y27_N12
\uKeyboard_Reader|uRing_Buffer|URAM|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~21_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~21_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~21_combout\);

-- Location: LCCOMB_X50_Y27_N22
\uKeyboard_Reader|uRing_Buffer|URAM|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~25_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~25_combout\,
	datad => \rtl~5clkctrl_outclk\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~25_combout\);

-- Location: LCCOMB_X50_Y26_N2
\uKeyboard_Reader|uRing_Buffer|URAM|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~17_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~17_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~17_combout\);

-- Location: LCCOMB_X50_Y27_N6
\uKeyboard_Reader|uRing_Buffer|URAM|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~37_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~25_combout\) # ((\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\)))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\ & (((\uKeyboard_Reader|uRing_Buffer|URAM|ram~17_combout\ & !\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URAM|ram~25_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[1]~1_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~17_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~37_combout\);

-- Location: LCCOMB_X50_Y27_N16
\uKeyboard_Reader|uRing_Buffer|URAM|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~29_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~29_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~29_combout\);

-- Location: LCCOMB_X50_Y27_N24
\uKeyboard_Reader|uRing_Buffer|URAM|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~38_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~37_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~29_combout\))) # 
-- (!\uKeyboard_Reader|uRing_Buffer|URAM|ram~37_combout\ & (\uKeyboard_Reader|uRing_Buffer|URAM|ram~21_combout\)))) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\ & (((\uKeyboard_Reader|uRing_Buffer|URAM|ram~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URAM|ram~21_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[0]~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URAM|ram~37_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~29_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~38_combout\);

-- Location: LCCOMB_X50_Y27_N0
\uKeyboard_Reader|uRing_Buffer|URAM|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URAM|ram~41_combout\ = (\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\ & ((\uKeyboard_Reader|uRing_Buffer|URAM|ram~38_combout\))) # (!\uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\ & 
-- (\uKeyboard_Reader|uRing_Buffer|URAM|ram~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|UMAC|UMux2_1|Y[2]~2_combout\,
	datab => \uKeyboard_Reader|uRing_Buffer|URAM|ram~40_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|URAM|ram~38_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URAM|ram~41_combout\);

-- Location: FF_X50_Y27_N1
\uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U1FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|URAM|ram~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.SENDING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U1FFD|Q~q\);

-- Location: LCCOMB_X46_Y42_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \uKeyboard_Reader|uOutput_Buffer|UREGISTOR|U1FFD|Q~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: FF_X46_Y42_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LCCOMB_X44_Y43_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LCCOMB_X47_Y43_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X47_Y44_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X47_Y44_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\);

-- Location: LCCOMB_X47_Y44_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\);

-- Location: LCCOMB_X45_Y43_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\);

-- Location: FF_X45_Y43_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X47_Y44_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\);

-- Location: FF_X47_Y44_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X47_Y44_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\);

-- Location: FF_X47_Y44_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X47_Y44_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X47_Y44_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\);

-- Location: FF_X47_Y44_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X47_Y44_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\);

-- Location: FF_X47_Y44_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: FF_X47_Y44_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X47_Y44_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X47_Y44_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X47_Y44_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X47_Y44_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X46_Y44_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: FF_X47_Y44_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X47_Y44_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X47_Y44_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X47_Y44_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X47_Y44_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X47_Y44_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X46_Y44_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X46_Y44_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X46_Y44_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: FF_X46_Y44_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X47_Y42_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X47_Y42_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: FF_X47_Y42_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X47_Y42_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X47_Y42_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X47_Y42_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X47_Y42_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X47_Y42_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X47_Y42_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X44_Y43_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LCCOMB_X44_Y43_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: LCCOMB_X46_Y43_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X44_Y43_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X47_Y43_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X46_Y43_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X46_Y43_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X46_Y43_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X46_Y43_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X46_Y43_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X46_Y43_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X46_Y43_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X47_Y43_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\);

-- Location: LCCOMB_X47_Y43_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X47_Y43_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: LCCOMB_X49_Y43_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\);

-- Location: LCCOMB_X49_Y43_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\);

-- Location: LCCOMB_X49_Y43_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\);

-- Location: LCCOMB_X46_Y44_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12_combout\);

-- Location: FF_X49_Y43_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: LCCOMB_X49_Y43_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\);

-- Location: FF_X49_Y43_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: LCCOMB_X49_Y43_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\);

-- Location: FF_X49_Y43_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: LCCOMB_X49_Y43_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~11_combout\);

-- Location: LCCOMB_X49_Y43_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\);

-- Location: FF_X49_Y43_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: FF_X49_Y43_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: LCCOMB_X49_Y43_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4_combout\);

-- Location: LCCOMB_X49_Y43_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\);

-- Location: LCCOMB_X49_Y43_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\);

-- Location: LCCOMB_X49_Y43_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\);

-- Location: LCCOMB_X47_Y43_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X47_Y43_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\);

-- Location: FF_X47_Y43_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LCCOMB_X49_Y43_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\);

-- Location: LCCOMB_X47_Y43_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\);

-- Location: LCCOMB_X47_Y43_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X47_Y43_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\);

-- Location: FF_X47_Y43_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: LCCOMB_X49_Y43_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\);

-- Location: LCCOMB_X49_Y43_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\);

-- Location: LCCOMB_X47_Y43_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X47_Y43_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\);

-- Location: FF_X47_Y43_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LCCOMB_X49_Y43_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\);

-- Location: LCCOMB_X49_Y43_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: LCCOMB_X47_Y43_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X47_Y43_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: LCCOMB_X47_Y43_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\);

-- Location: FF_X47_Y43_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: FF_X47_Y43_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: FF_X47_Y43_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: FF_X47_Y43_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LCCOMB_X44_Y43_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~GND~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\);

-- Location: LCCOMB_X44_Y43_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X44_Y43_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LCCOMB_X45_Y42_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LCCOMB_X44_Y43_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LCCOMB_X44_Y43_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LCCOMB_X44_Y43_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LCCOMB_X45_Y43_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LCCOMB_X44_Y43_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\);

-- Location: FF_X44_Y43_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: CLKCTRL_G10
\altera_internal_jtag~TCKUTAPclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X44_Y42_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\);

-- Location: FF_X44_Y42_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\);

-- Location: LCCOMB_X45_Y23_N26
\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~0_combout\ = (\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~q\) # 
-- ((\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ & 
-- \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	datac => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\,
	datad => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~q\,
	combout => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~0_combout\);

-- Location: FF_X45_Y23_N27
\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\);

-- Location: LCCOMB_X45_Y23_N10
\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~0_combout\ = (!\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\ & 
-- (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\ & (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	combout => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~0_combout\);

-- Location: LCCOMB_X45_Y23_N24
\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~1_combout\ = (\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~0_combout\) # 
-- ((\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~q\ & 
-- ((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\) # 
-- (!\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	datac => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~0_combout\,
	combout => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~1_combout\);

-- Location: FF_X45_Y23_N25
\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~q\);

-- Location: LCCOMB_X45_Y23_N2
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~1_combout\ = ((\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~q\) # 
-- ((\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\) # (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\))) # (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	datab => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_0~q\,
	datac => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.state_bit_1~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~1_combout\);

-- Location: LCCOMB_X45_Y23_N0
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~0_combout\ = (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\ & (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\ & 
-- (!\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~q\ & \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~q\,
	datad => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~0_combout\);

-- Location: LCCOMB_X45_Y23_N16
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~2_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~0_combout\) # 
-- ((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~1_combout\ & \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~1_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~2_combout\);

-- Location: FF_X45_Y23_N17
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\);

-- Location: LCCOMB_X46_Y23_N12
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~0_combout\ = (\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.STATE_WRITING~0_combout\ & (((\uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(3))))) # 
-- (!\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.STATE_WRITING~0_combout\ & (!\uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.WAITING~0_combout\ & (\uKeyboard_Reader|uRing_Buffer|UMAC|empty~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uOutput_Buffer|UOutputBufferControl|CURRENT_STATE.WAITING~0_combout\,
	datab => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.STATE_WRITING~0_combout\,
	datac => \uKeyboard_Reader|uRing_Buffer|UMAC|empty~0_combout\,
	datad => \uKeyboard_Reader|uRing_Buffer|UMAC|Ucounter_4|Inst_register_D_R|Q\(3),
	combout => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~0_combout\);

-- Location: LCCOMB_X46_Y23_N6
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~1_combout\ = (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\ & (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & 
-- (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\))) # (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\ & ((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\) # 
-- ((!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\ & \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\,
	datab => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~0_combout\,
	combout => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~1_combout\);

-- Location: FF_X46_Y23_N7
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\);

-- Location: LCCOMB_X46_Y23_N10
\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.COMPLETED~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.COMPLETED~0_combout\ = (!\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\ & (\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\ & 
-- !\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_0~q\,
	datac => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_2~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.state_bit_1~q\,
	combout => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.COMPLETED~0_combout\);

-- Location: LCCOMB_X46_Y23_N8
\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~0_combout\ = (\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\ & ((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.COMPLETED~0_combout\) # 
-- ((!\uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1_combout\ & \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1_combout\,
	datab => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.COMPLETED~0_combout\,
	combout => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~0_combout\);

-- Location: FF_X46_Y23_N9
\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~clkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X46_Y23_N16
\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~0_combout\ = (\uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1_combout\ & (\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\ & 
-- ((\uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.COMPLETED~0_combout\) # (!\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~q\)))) # (!\uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1_combout\ & 
-- (((\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\)) # (!\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1_combout\,
	datab => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_1~q\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\,
	datad => \uKeyboard_Reader|uRing_Buffer|URingBufferControl|CURRENT_STATE.COMPLETED~0_combout\,
	combout => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~0_combout\);

-- Location: FF_X46_Y23_N17
\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~clkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X46_Y23_N2
\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~0_combout\ = \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\ $ (((!\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\ & 
-- \uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datad => \uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1_combout\,
	combout => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~0_combout\);

-- Location: FF_X46_Y23_N3
\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~clkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\);

-- Location: LCCOMB_X46_Y23_N26
\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~0_combout\ = (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\ & (!\uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\ & 
-- (\uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1_combout\ & \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datab => \uKeyboard_Reader|uKey_Decode|uKeyControL|CurrentState.state_bit_0~q\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyScan|UMUX4_1|Y~1_combout\,
	datad => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	combout => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~0_combout\);

-- Location: LCCOMB_X49_Y24_N16
\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~1_combout\ = \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~0_combout\ $ (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~0_combout\,
	datac => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	combout => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~1_combout\);

-- Location: FF_X49_Y24_N17
\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uKeyboard_Reader|uKey_Decode|uCLKDIV|tmp~clkctrl_outclk\,
	d => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\);

-- Location: LCCOMB_X49_Y24_N12
\uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|A~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|A~0_combout\ = (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\) # (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datad => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	combout => \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|A~0_combout\);

-- Location: LCCOMB_X49_Y24_N14
\uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~0_combout\ = (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\ & !\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datad => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	combout => \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~0_combout\);

-- Location: LCCOMB_X49_Y24_N8
\uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~1_combout\ = (!\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\ & \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datad => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	combout => \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~1_combout\);

-- Location: LCCOMB_X49_Y24_N26
\uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~2_combout\ = (\uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\ & \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datad => \uKeyboard_Reader|uKey_Decode|uKeyScan|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	combout => \uKeyboard_Reader|uKey_Decode|uKeyScan|UDECODER|C~2_combout\);

-- Location: LCCOMB_X72_Y48_N14
\udoor_mecanism|U0|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U0|dOut[1]~0_combout\ = (\udoor_mecanism|U7|U1|Q\(0)) # ((\udoor_mecanism|U7|U1|Q\(2) & !\udoor_mecanism|U7|U1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|U7|U1|Q\(0),
	datac => \udoor_mecanism|U7|U1|Q\(2),
	datad => \udoor_mecanism|U7|U1|Q\(1),
	combout => \udoor_mecanism|U0|dOut[1]~0_combout\);

-- Location: LCCOMB_X72_Y48_N8
\udoor_mecanism|U5|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U5|Equal0~0_combout\ = (!\udoor_mecanism|U7|U1|Q\(0) & (\udoor_mecanism|U7|U1|Q\(2) & \udoor_mecanism|U7|U1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|U7|U1|Q\(0),
	datac => \udoor_mecanism|U7|U1|Q\(2),
	datad => \udoor_mecanism|U7|U1|Q\(1),
	combout => \udoor_mecanism|U5|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y48_N10
\udoor_mecanism|U5|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U5|dOut~0_combout\ = (!\udoor_mecanism|U7|U1|Q\(0) & \udoor_mecanism|U7|U1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \udoor_mecanism|U7|U1|Q\(0),
	datad => \udoor_mecanism|U7|U1|Q\(1),
	combout => \udoor_mecanism|U5|dOut~0_combout\);

-- Location: LCCOMB_X71_Y48_N24
\udoor_mecanism|U1|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U1|dOut[1]~0_combout\ = ((!\udoor_mecanism|U7|U1|Q\(4) & \udoor_mecanism|U7|U1|Q\(5))) # (!\udoor_mecanism|U7|U1|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|U7|U1|Q\(4),
	datac => \udoor_mecanism|U7|U1|Q\(5),
	datad => \udoor_mecanism|U7|U1|Q\(3),
	combout => \udoor_mecanism|U1|dOut[1]~0_combout\);

-- Location: LCCOMB_X72_Y48_N2
\udoor_mecanism|U4|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U4|Equal0~0_combout\ = (\udoor_mecanism|U7|U1|Q\(4) & (\udoor_mecanism|U7|U1|Q\(3) & \udoor_mecanism|U7|U1|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|U7|U1|Q\(4),
	datab => \udoor_mecanism|U7|U1|Q\(3),
	datad => \udoor_mecanism|U7|U1|Q\(5),
	combout => \udoor_mecanism|U4|Equal0~0_combout\);

-- Location: LCCOMB_X71_Y48_N18
\udoor_mecanism|U4|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U4|dOut~0_combout\ = (\udoor_mecanism|U7|U1|Q\(4) & \udoor_mecanism|U7|U1|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|U7|U1|Q\(4),
	datad => \udoor_mecanism|U7|U1|Q\(3),
	combout => \udoor_mecanism|U4|dOut~0_combout\);

-- Location: LCCOMB_X71_Y48_N26
\udoor_mecanism|U2|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U2|dOut[1]~0_combout\ = ((\udoor_mecanism|U7|U1|Q\(8) & !\udoor_mecanism|U7|U1|Q\(7))) # (!\udoor_mecanism|U7|U1|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udoor_mecanism|U7|U1|Q\(8),
	datac => \udoor_mecanism|U7|U1|Q\(7),
	datad => \udoor_mecanism|U7|U1|Q\(6),
	combout => \udoor_mecanism|U2|dOut[1]~0_combout\);

-- Location: LCCOMB_X71_Y48_N20
\udoor_mecanism|U3|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \udoor_mecanism|U3|dOut~0_combout\ = (\udoor_mecanism|U7|U1|Q\(7) & \udoor_mecanism|U7|U1|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \udoor_mecanism|U7|U1|Q\(7),
	datad => \udoor_mecanism|U7|U1|Q\(6),
	combout => \udoor_mecanism|U3|dOut~0_combout\);

-- Location: LCCOMB_X34_Y4_N10
\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\ = (\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & !\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	combout => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\);

-- Location: LCCOMB_X34_Y4_N20
\uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~0_combout\ = !\uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\,
	combout => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~0_combout\);

-- Location: LCCOMB_X38_Y4_N8
\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0_combout\ = (!\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & !\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	combout => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0_combout\);

-- Location: CLKCTRL_G16
\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READY~0clkctrl_outclk\);

-- Location: FF_X34_Y4_N21
\uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~0_combout\,
	clrn => \uSLCDC|uSerialReceiver|uSerialControl|ALT_INV_CURRENT_STATE.READY~0clkctrl_outclk\,
	ena => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\);

-- Location: LCCOMB_X34_Y4_N16
\uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~0_combout\ = \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\ $ (((!\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\ & 
-- (\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	datab => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datac => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\,
	datad => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\,
	combout => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~0_combout\);

-- Location: FF_X34_Y4_N17
\uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~0_combout\,
	clrn => \uSLCDC|uSerialReceiver|uSerialControl|ALT_INV_CURRENT_STATE.READY~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\);

-- Location: LCCOMB_X34_Y4_N22
\uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~0_combout\ = \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~q\ $ (((\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\ & 
-- (\uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\ & \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\,
	datab => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\,
	datac => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~q\,
	datad => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\,
	combout => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~0_combout\);

-- Location: FF_X34_Y4_N23
\uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~0_combout\,
	clrn => \uSLCDC|uSerialReceiver|uSerialControl|ALT_INV_CURRENT_STATE.READY~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~q\);

-- Location: LCCOMB_X34_Y4_N26
\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~0_combout\ = (\uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~q\ & (!\uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\ & 
-- (\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U2FFD|Q~q\,
	datab => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U1FFD|Q~q\,
	datac => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datad => \uSLCDC|uSerialReceiver|uCOUNTER_3|UREGISTOR|U0FFD|Q~q\,
	combout => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~0_combout\);

-- Location: LCCOMB_X38_Y4_N0
\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~1_combout\ = (\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~0_combout\) # ((\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\ & 
-- ((\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\) # (!\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datab => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~0_combout\,
	datac => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	datad => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\,
	combout => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~1_combout\);

-- Location: FF_X38_Y4_N1
\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\);

-- Location: LCCOMB_X44_Y42_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\);

-- Location: FF_X44_Y42_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

-- Location: LCCOMB_X38_Y4_N6
\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~0_combout\ = (\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\ & (\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & 
-- !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\)) # 
-- (!\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\ & ((\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\) # 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	datac => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~0_combout\);

-- Location: FF_X38_Y4_N7
\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\);

-- Location: LCCOMB_X38_Y4_N24
\uSLCDC|uDispat|CURRENT_STATE.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~0_combout\ = (\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\ & (!\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & (\uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\ & 
-- \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\))) # (!\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\ & ((\uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\) # ((!\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & 
-- \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datab => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\,
	datac => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\,
	datad => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	combout => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~0_combout\);

-- Location: FF_X38_Y4_N25
\uSLCDC|uDispat|CURRENT_STATE.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\);

-- Location: LCCOMB_X38_Y4_N26
\uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~0_combout\ = \uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~q\ $ (((!\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\ & \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\,
	datac => \uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datad => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\,
	combout => \uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~0_combout\);

-- Location: CLKCTRL_G18
\uSLCDC|uDispat|CURRENT_STATE.state_bit_0~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~clkctrl_outclk\);

-- Location: FF_X38_Y4_N27
\uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~0_combout\,
	clrn => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~q\);

-- Location: LCCOMB_X38_Y4_N10
\uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~0_combout\ = \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~q\ $ (((\uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~q\ & (!\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\ & \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datab => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\,
	datac => \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	datad => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\,
	combout => \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~0_combout\);

-- Location: FF_X38_Y4_N11
\uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~0_combout\,
	clrn => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~q\);

-- Location: LCCOMB_X38_Y4_N12
\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~0_combout\ = (\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\ & (!\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\ & ((\uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\)))) # 
-- (!\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\ & (((!\uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_0~q\,
	datab => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\,
	datac => \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	datad => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.state_bit_1~q\,
	combout => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~0_combout\);

-- Location: LCCOMB_X38_Y4_N22
\uSLCDC|UCOUNTER|UREGISTOR|U2FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|UCOUNTER|UREGISTOR|U2FFD|Q~0_combout\ = \uSLCDC|UCOUNTER|UREGISTOR|U2FFD|Q~q\ $ (((\uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~q\ & (\uSLCDC|uDispat|CURRENT_STATE.COUNTING~0_combout\ & \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datab => \uSLCDC|uDispat|CURRENT_STATE.COUNTING~0_combout\,
	datac => \uSLCDC|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datad => \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	combout => \uSLCDC|UCOUNTER|UREGISTOR|U2FFD|Q~0_combout\);

-- Location: FF_X38_Y4_N23
\uSLCDC|UCOUNTER|UREGISTOR|U2FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uSLCDC|UCOUNTER|UREGISTOR|U2FFD|Q~0_combout\,
	clrn => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|UCOUNTER|UREGISTOR|U2FFD|Q~q\);

-- Location: LCCOMB_X38_Y4_N14
\uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~1_combout\ = (!\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\ & (\uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~q\ & \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\,
	datac => \uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datad => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\,
	combout => \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~1_combout\);

-- Location: LCCOMB_X38_Y4_N16
\uSLCDC|UCOUNTER|UREGISTOR|U3FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|UCOUNTER|UREGISTOR|U3FFD|Q~0_combout\ = \uSLCDC|UCOUNTER|UREGISTOR|U3FFD|Q~q\ $ (((\uSLCDC|UCOUNTER|UREGISTOR|U2FFD|Q~q\ & (\uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~1_combout\ & \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSLCDC|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datab => \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~1_combout\,
	datac => \uSLCDC|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	datad => \uSLCDC|UCOUNTER|UREGISTOR|U1FFD|Q~q\,
	combout => \uSLCDC|UCOUNTER|UREGISTOR|U3FFD|Q~0_combout\);

-- Location: FF_X38_Y4_N17
\uSLCDC|UCOUNTER|UREGISTOR|U3FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uSLCDC|UCOUNTER|UREGISTOR|U3FFD|Q~0_combout\,
	clrn => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|UCOUNTER|UREGISTOR|U3FFD|Q~q\);

-- Location: LCCOMB_X38_Y4_N28
\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~1_combout\ = (!\uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~q\ & (\uSLCDC|UCOUNTER|UREGISTOR|U2FFD|Q~q\ & \uSLCDC|UCOUNTER|UREGISTOR|U3FFD|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSLCDC|UCOUNTER|UREGISTOR|U0FFD|Q~q\,
	datac => \uSLCDC|UCOUNTER|UREGISTOR|U2FFD|Q~q\,
	datad => \uSLCDC|UCOUNTER|UREGISTOR|U3FFD|Q~q\,
	combout => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~1_combout\);

-- Location: LCCOMB_X38_Y4_N18
\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~2_combout\ = (\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~0_combout\ & (\uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\ & ((\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~1_combout\) # 
-- (\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~0_combout\,
	datab => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~1_combout\,
	datac => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\,
	datad => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\,
	combout => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~2_combout\);

-- Location: FF_X38_Y4_N19
\uSLCDC|uDispat|CURRENT_STATE.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\);

-- Location: LCCOMB_X38_Y4_N20
\uSLCDC|uDispat|CURRENT_STATE.COUNTING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uDispat|CURRENT_STATE.COUNTING~0_combout\ = (!\uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\ & \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uSLCDC|uDispat|CURRENT_STATE.state_bit_1~q\,
	datad => \uSLCDC|uDispat|CURRENT_STATE.state_bit_0~q\,
	combout => \uSLCDC|uDispat|CURRENT_STATE.COUNTING~0_combout\);

-- Location: LCCOMB_X34_Y4_N24
\uSLCDC|uSerialReceiver|uShiftRegister|Uffd0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uSerialReceiver|uShiftRegister|Uffd0|Q~feeder_combout\ = \auto_hub|instr
-- umentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd0|Q~feeder_combout\);

-- Location: FF_X34_Y4_N25
\uSLCDC|uSerialReceiver|uShiftRegister|Uffd0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd0|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd0|Q~q\);

-- Location: LCCOMB_X34_Y4_N6
\uSLCDC|uSerialReceiver|uShiftRegister|Uffd1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uSerialReceiver|uShiftRegister|Uffd1|Q~feeder_combout\ = \uSLCDC|uSerialReceiver|uShiftRegister|Uffd0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd0|Q~q\,
	combout => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd1|Q~feeder_combout\);

-- Location: FF_X34_Y4_N7
\uSLCDC|uSerialReceiver|uShiftRegister|Uffd1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd1|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd1|Q~q\);

-- Location: LCCOMB_X34_Y4_N4
\uSLCDC|uSerialReceiver|uShiftRegister|Uffd2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uSerialReceiver|uShiftRegister|Uffd2|Q~feeder_combout\ = \uSLCDC|uSerialReceiver|uShiftRegister|Uffd1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd1|Q~q\,
	combout => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd2|Q~feeder_combout\);

-- Location: FF_X34_Y4_N5
\uSLCDC|uSerialReceiver|uShiftRegister|Uffd2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd2|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd2|Q~q\);

-- Location: LCCOMB_X34_Y4_N2
\uSLCDC|uSerialReceiver|uShiftRegister|Uffd3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uSerialReceiver|uShiftRegister|Uffd3|Q~feeder_combout\ = \uSLCDC|uSerialReceiver|uShiftRegister|Uffd2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd2|Q~q\,
	combout => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd3|Q~feeder_combout\);

-- Location: FF_X34_Y4_N3
\uSLCDC|uSerialReceiver|uShiftRegister|Uffd3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd3|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd3|Q~q\);

-- Location: LCCOMB_X34_Y4_N8
\uSLCDC|uSerialReceiver|uShiftRegister|Uffd4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \uSLCDC|uSerialReceiver|uShiftRegister|Uffd4|Q~feeder_combout\ = \uSLCDC|uSerialReceiver|uShiftRegister|Uffd3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd3|Q~q\,
	combout => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd4|Q~feeder_combout\);

-- Location: FF_X34_Y4_N9
\uSLCDC|uSerialReceiver|uShiftRegister|Uffd4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~clkctrl_outclk\,
	d => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd4|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \uSLCDC|uSerialReceiver|uSerialControl|CURRENT_STATE.READING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSLCDC|uSerialReceiver|uShiftRegister|Uffd4|Q~q\);

-- Location: FF_X44_Y42_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

-- Location: FF_X44_Y42_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\);

-- Location: FF_X44_Y42_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\);

-- Location: LCCOMB_X29_Y10_N0
\auto_hub|~GND\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X44_Y42_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X45_Y43_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;



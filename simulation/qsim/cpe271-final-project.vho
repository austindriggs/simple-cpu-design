-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "12/04/2023 17:28:56"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SimpleCPU_Template IS
    PORT (
	clk : IN std_logic;
	pcOut : BUFFER std_logic_vector(7 DOWNTO 0);
	marOut : BUFFER std_logic_vector(7 DOWNTO 0);
	irOutput : BUFFER std_logic_vector(7 DOWNTO 0);
	mdriOutput : BUFFER std_logic_vector(7 DOWNTO 0);
	mdroOutput : BUFFER std_logic_vector(7 DOWNTO 0);
	aOut : BUFFER std_logic_vector(7 DOWNTO 0);
	incrementOut : BUFFER std_logic
	);
END SimpleCPU_Template;

-- Design Ports Information
-- clk	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[5]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[6]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[7]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[0]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[1]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[2]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[7]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[1]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[5]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[7]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[4]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[5]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[6]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[0]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[3]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[4]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[1]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[2]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[4]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[5]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[6]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incrementOut	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SimpleCPU_Template IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pcOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_marOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_irOutput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mdriOutput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mdroOutput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_aOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_incrementOut : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \pcOut[0]~output_o\ : std_logic;
SIGNAL \pcOut[1]~output_o\ : std_logic;
SIGNAL \pcOut[2]~output_o\ : std_logic;
SIGNAL \pcOut[3]~output_o\ : std_logic;
SIGNAL \pcOut[4]~output_o\ : std_logic;
SIGNAL \pcOut[5]~output_o\ : std_logic;
SIGNAL \pcOut[6]~output_o\ : std_logic;
SIGNAL \pcOut[7]~output_o\ : std_logic;
SIGNAL \marOut[0]~output_o\ : std_logic;
SIGNAL \marOut[1]~output_o\ : std_logic;
SIGNAL \marOut[2]~output_o\ : std_logic;
SIGNAL \marOut[3]~output_o\ : std_logic;
SIGNAL \marOut[4]~output_o\ : std_logic;
SIGNAL \marOut[5]~output_o\ : std_logic;
SIGNAL \marOut[6]~output_o\ : std_logic;
SIGNAL \marOut[7]~output_o\ : std_logic;
SIGNAL \irOutput[0]~output_o\ : std_logic;
SIGNAL \irOutput[1]~output_o\ : std_logic;
SIGNAL \irOutput[2]~output_o\ : std_logic;
SIGNAL \irOutput[3]~output_o\ : std_logic;
SIGNAL \irOutput[4]~output_o\ : std_logic;
SIGNAL \irOutput[5]~output_o\ : std_logic;
SIGNAL \irOutput[6]~output_o\ : std_logic;
SIGNAL \irOutput[7]~output_o\ : std_logic;
SIGNAL \mdriOutput[0]~output_o\ : std_logic;
SIGNAL \mdriOutput[1]~output_o\ : std_logic;
SIGNAL \mdriOutput[2]~output_o\ : std_logic;
SIGNAL \mdriOutput[3]~output_o\ : std_logic;
SIGNAL \mdriOutput[4]~output_o\ : std_logic;
SIGNAL \mdriOutput[5]~output_o\ : std_logic;
SIGNAL \mdriOutput[6]~output_o\ : std_logic;
SIGNAL \mdriOutput[7]~output_o\ : std_logic;
SIGNAL \mdroOutput[0]~output_o\ : std_logic;
SIGNAL \mdroOutput[1]~output_o\ : std_logic;
SIGNAL \mdroOutput[2]~output_o\ : std_logic;
SIGNAL \mdroOutput[3]~output_o\ : std_logic;
SIGNAL \mdroOutput[4]~output_o\ : std_logic;
SIGNAL \mdroOutput[5]~output_o\ : std_logic;
SIGNAL \mdroOutput[6]~output_o\ : std_logic;
SIGNAL \mdroOutput[7]~output_o\ : std_logic;
SIGNAL \aOut[0]~output_o\ : std_logic;
SIGNAL \aOut[1]~output_o\ : std_logic;
SIGNAL \aOut[2]~output_o\ : std_logic;
SIGNAL \aOut[3]~output_o\ : std_logic;
SIGNAL \aOut[4]~output_o\ : std_logic;
SIGNAL \aOut[5]~output_o\ : std_logic;
SIGNAL \aOut[6]~output_o\ : std_logic;
SIGNAL \aOut[7]~output_o\ : std_logic;
SIGNAL \incrementOut~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
pcOut <= ww_pcOut;
marOut <= ww_marOut;
irOutput <= ww_irOutput;
mdriOutput <= ww_mdriOutput;
mdroOutput <= ww_mdroOutput;
aOut <= ww_aOut;
incrementOut <= ww_incrementOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N16
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

-- Location: IOOBUF_X31_Y39_N9
\pcOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pcOut[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\pcOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pcOut[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\pcOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pcOut[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\pcOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pcOut[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\pcOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pcOut[4]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\pcOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pcOut[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\pcOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pcOut[6]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\pcOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pcOut[7]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\marOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\marOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\marOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\marOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\marOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[4]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\marOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[5]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\marOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\marOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[7]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\irOutput[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \irOutput[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\irOutput[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \irOutput[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\irOutput[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \irOutput[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\irOutput[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \irOutput[3]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\irOutput[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \irOutput[4]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\irOutput[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \irOutput[5]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\irOutput[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \irOutput[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\irOutput[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \irOutput[7]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\mdriOutput[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdriOutput[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\mdriOutput[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdriOutput[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\mdriOutput[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdriOutput[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\mdriOutput[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdriOutput[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\mdriOutput[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdriOutput[4]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\mdriOutput[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdriOutput[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\mdriOutput[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdriOutput[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\mdriOutput[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdriOutput[7]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\mdroOutput[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdroOutput[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\mdroOutput[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdroOutput[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\mdroOutput[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdroOutput[2]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\mdroOutput[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdroOutput[3]~output_o\);

-- Location: IOOBUF_X0_Y36_N9
\mdroOutput[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdroOutput[4]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\mdroOutput[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdroOutput[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\mdroOutput[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdroOutput[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\mdroOutput[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mdroOutput[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\aOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aOut[0]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\aOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aOut[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\aOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aOut[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\aOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aOut[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\aOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aOut[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\aOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aOut[5]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\aOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aOut[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\aOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aOut[7]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\incrementOut~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \incrementOut~output_o\);

-- Location: IOIBUF_X22_Y39_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

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

ww_pcOut(0) <= \pcOut[0]~output_o\;

ww_pcOut(1) <= \pcOut[1]~output_o\;

ww_pcOut(2) <= \pcOut[2]~output_o\;

ww_pcOut(3) <= \pcOut[3]~output_o\;

ww_pcOut(4) <= \pcOut[4]~output_o\;

ww_pcOut(5) <= \pcOut[5]~output_o\;

ww_pcOut(6) <= \pcOut[6]~output_o\;

ww_pcOut(7) <= \pcOut[7]~output_o\;

ww_marOut(0) <= \marOut[0]~output_o\;

ww_marOut(1) <= \marOut[1]~output_o\;

ww_marOut(2) <= \marOut[2]~output_o\;

ww_marOut(3) <= \marOut[3]~output_o\;

ww_marOut(4) <= \marOut[4]~output_o\;

ww_marOut(5) <= \marOut[5]~output_o\;

ww_marOut(6) <= \marOut[6]~output_o\;

ww_marOut(7) <= \marOut[7]~output_o\;

ww_irOutput(0) <= \irOutput[0]~output_o\;

ww_irOutput(1) <= \irOutput[1]~output_o\;

ww_irOutput(2) <= \irOutput[2]~output_o\;

ww_irOutput(3) <= \irOutput[3]~output_o\;

ww_irOutput(4) <= \irOutput[4]~output_o\;

ww_irOutput(5) <= \irOutput[5]~output_o\;

ww_irOutput(6) <= \irOutput[6]~output_o\;

ww_irOutput(7) <= \irOutput[7]~output_o\;

ww_mdriOutput(0) <= \mdriOutput[0]~output_o\;

ww_mdriOutput(1) <= \mdriOutput[1]~output_o\;

ww_mdriOutput(2) <= \mdriOutput[2]~output_o\;

ww_mdriOutput(3) <= \mdriOutput[3]~output_o\;

ww_mdriOutput(4) <= \mdriOutput[4]~output_o\;

ww_mdriOutput(5) <= \mdriOutput[5]~output_o\;

ww_mdriOutput(6) <= \mdriOutput[6]~output_o\;

ww_mdriOutput(7) <= \mdriOutput[7]~output_o\;

ww_mdroOutput(0) <= \mdroOutput[0]~output_o\;

ww_mdroOutput(1) <= \mdroOutput[1]~output_o\;

ww_mdroOutput(2) <= \mdroOutput[2]~output_o\;

ww_mdroOutput(3) <= \mdroOutput[3]~output_o\;

ww_mdroOutput(4) <= \mdroOutput[4]~output_o\;

ww_mdroOutput(5) <= \mdroOutput[5]~output_o\;

ww_mdroOutput(6) <= \mdroOutput[6]~output_o\;

ww_mdroOutput(7) <= \mdroOutput[7]~output_o\;

ww_aOut(0) <= \aOut[0]~output_o\;

ww_aOut(1) <= \aOut[1]~output_o\;

ww_aOut(2) <= \aOut[2]~output_o\;

ww_aOut(3) <= \aOut[3]~output_o\;

ww_aOut(4) <= \aOut[4]~output_o\;

ww_aOut(5) <= \aOut[5]~output_o\;

ww_aOut(6) <= \aOut[6]~output_o\;

ww_aOut(7) <= \aOut[7]~output_o\;

ww_incrementOut <= \incrementOut~output_o\;
END structure;



-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/22/2017 10:58:20"
                                                            
-- Vhdl Test Bench template for design  :  BancRegistres
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BancRegistres_vhd_tst IS
END BancRegistres_vhd_tst;
ARCHITECTURE BancRegistres_arch OF BancRegistres_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Dades : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Esc : STD_LOGIC;
SIGNAL Rdest : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Reset : STD_LOGIC;
SIGNAL Rf1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Rf2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Sor1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Sor2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT BancRegistres
	PORT (
	clk : IN STD_LOGIC;
	Dades : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Esc : IN STD_LOGIC;
	Rdest : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	Reset : IN STD_LOGIC;
	Rf1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	Rf2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	Sor1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Sor2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BancRegistres
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Dades => Dades,
	Esc => Esc,
	Rdest => Rdest,
	Reset => Reset,
	Rf1 => Rf1,
	Rf2 => Rf2,
	Sor1 => Sor1,
	Sor2 => Sor2
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;

clock : PROCESS BEGIN
 clk <= '0'; WAIT FOR 50 ns;
 clk <= '1'; WAIT FOR 50 ns;
end process clock;  
                                        
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN

Reset <= '1'; --Activem reset
 
 Rf1 <= "00001"; --r1
 Rf2 <= "00010"; --r2
 Rdest <= "00011"; --r3
 Dades <= "00000000000000000000000000000010";
 Esc <= '1';
 
 wait for 90 ns;
 Reset <= '0'; --Desactivem el reset
 
 Rf1 <= "00011"; --r3
 Rf2 <= "00100"; --r4
 Rdest <= "00100"; --r4
 Dades <= "00000000000000000000000000001000";
 Esc <= '1';
 wait for 120 ns;

 Rf1 <= "00100"; --r4
 Rf2 <= "00011"; --r3	
 Rdest <= "00100"; --r4
 Dades <= "00000000000000000000000000000101";
 Esc <= '1';
 wait for 100 ns;
 
 Rf1 <= "00100"; --r4
 Rf2 <= "00010"; --r2
 Rdest <= "00100"; --r4
 Dades <= "00000000000000000000000000001111";
 Esc <= '1';
 wait for 130 ns;

 
 wait for 20 ns;
 Reset <= '1'; --Activem el reset
 wait for 30 ns;
 
 Rf1 <= "00011"; --r4 
 Rf2 <= "01010"; --r10
 Rdest <= "01010"; --r4
 Dades <= "00000000000000000000000001011111";
 Esc <= '1';
 wait for 130 ns;
 
 
  wait for 86 ns;
 Reset <= '0'; --Desactivem el reset
 wait for 40 ns;
 
 Rf1 <= "01011"; --r11
 Rf2 <= "01100"; --r12
 Rdest <= "01011"; --r4
 Dades <= "00000000000000000000000001101111";
 Esc <= '1';
 wait for 130 ns;
 
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END BancRegistres_arch;
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
-- Generated on "04/21/2017 15:49:33"
                                                            
-- Vhdl Test Bench template for design  :  Despl2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Despl2_vhd_tst IS
END Despl2_vhd_tst;
ARCHITECTURE Despl2_arch OF Despl2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL entrada : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL sortida : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT Despl2
	PORT (
	entrada : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	sortida : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Despl2
	PORT MAP (
-- list connections between master ports and signals
	entrada => entrada,
	sortida => sortida
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
	entrada <= "11111111111111111111111111111111";
	wait for 100 ns;
	
	entrada <= "00000000000000000000000000000000";
	wait for 100 ns;

	entrada <= "00000000000000000000000000001111";
	wait for 100 ns;
WAIT;                                                        
END PROCESS always;                                          
END Despl2_arch;

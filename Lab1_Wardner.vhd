----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:44:28 01/22/2014 
-- Design Name: 
-- Module Name:    Lab1_Wardner - Behavioral 
-- Project Name:   Lab1
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab1_Wardner is

   Port ( 
	        --Inputs
           A : in std_logic_vector (7 downto 0);
           --Outputs
           X : out std_logic_vector (7 downto 0));
			  
--				A : in  STD_LOGIC;
--           B : in  STD_LOGIC;
--           C : in  STD_LOGIC;
--           X : out  STD_LOGIC;
--           Y : out  STD_LOGIC;
--           Z : out  STD_LOGIC);
end Lab1_Wardner;

architecture Behavioral of Lab1_Wardner is

--signal A_NOT, B_NOT, C_NOT, ABnotCnot, AnotB, AnotC, BCnot, BnotC : STD_LOGIC;

begin

X <= std_logic_vector(UNSIGNED(not(A)) + 1);

--A_NOT <= not A;
--B_NOT <= not B;
--C_NOT <= not C;
--ABnotCnot <= A and B_NOT and C_NOT;
--AnotB <= A_NOT and B;
--AnotC <= A_NOT and C;
--BCnot <= B and C_NOT;
--BnotC <= B_NOT and C;
--X <= ABnotCnot or AnotB or AnotC;
--Y <= BCnot or BnotC;
--Z <= C;

end Behavioral;


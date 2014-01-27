Lab1
====
#Truth Table
|  inputs |  expected value  |  actual value  | 
|:--:|:--: |:--: |
| 000  |  000  |  000  |  
| 001  |  111  |  111  |  
| 010  |  110  |  110  |  
| 011  |  101  |  101  |  
| 100  |  100  |  100  |  
| 101  |  011  |  011  |  
| 110  |  110  |  110  |
| 111  |  101  |  101  |  

#Simplified Equations
X = AB'C'+A'B+A'C                                                                                                         
Y = BC'+B'C                                                                                                               
Z = C

#Summary
![alt tag](https://raw.github.com/EricWardner/Lab1/master/Schematic.PNG)
![alt tag](https://raw.github.com/EricWardner/Lab1/master/Capture.PNG)
The outputs from the simulation matched up perfectly with the expected outputs from the truth table initially created. The testbench file was created the exact same way as in CE1.


#Code
Initially, for 3-bit funcionality the input and output signals must be declared
```VHDL
 Port ( 
	  A : in  STD_LOGIC;
       B : in  STD_LOGIC;
       C : in  STD_LOGIC;
       X : out  STD_LOGIC;
       Y : out  STD_LOGIC;
       Z : out  STD_LOGIC);
end Lab1_Wardner;
```
Then the output signals are defined as functions of the input, this is what converts the inputs to 2's compliment.
```VHDL
begin
	A_NOT <= not A;
	B_NOT <= not B;
	C_NOT <= not C;
	ABnotCnot <= A and B_NOT and C_NOT;
	AnotB <= A_NOT and B;
	AnotC <= A_NOT and C;
	BCnot <= B and C_NOT;
	BnotC <= B_NOT and C;
	X <= ABnotCnot or AnotB or AnotC;
	Y <= BCnot or BnotC;
	Z <= C;
end Behavioral
```
updating the code for 8-bit functionality introduces the std_logic_vector. Again, the input and outputs are declared.
```VHDL
Port(
	     --Inputs
           A : in std_logic_vector (7 downto 0);
           --Outputs
           X : out std_logic_vector (7 downto 0));
```
The output signal vector is defined with the following funtion that does the 2's compliment conversion by inverting the inputs and adding 1.
```VHDL
begin

X <= std_logic_vector(UNSIGNED(not(A)) + 1);

end Behavioral
```

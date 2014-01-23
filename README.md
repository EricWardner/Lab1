Lab1
====

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

The outputs from the simulation matched up perfectly with the expected outputs from the truth table initially created. The testbench file was created the exact same way as in CE1.

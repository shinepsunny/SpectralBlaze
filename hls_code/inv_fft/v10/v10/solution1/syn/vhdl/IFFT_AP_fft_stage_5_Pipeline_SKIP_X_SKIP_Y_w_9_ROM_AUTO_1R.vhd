-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity IFFT_AP_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_w_9_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 16; 
             AddressWidth     : integer := 5; 
             AddressRange    : integer := 32
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of IFFT_AP_fft_stage_5_Pipeline_SKIP_X_SKIP_Y_w_9_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "0011110000000000", 1 => "0011101111110110", 2 => "0011101111011001", 3 => "0011101110101000", 
    4 => "0011101101100100", 5 => "0011101100001110", 6 => "0011101010100111", 7 => "0011101000101111", 
    8 => "0011100110101000", 9 => "0011100100010011", 10 => "0011100001110010", 11 => "0011011110001011", 
    12 => "0011011000011111", 13 => "0011010010100101", 14 => "0011001000111110", 15 => "0010111001000110", 
    16 => "0000000000000000", 17 => "1010111001000110", 18 => "1011001000111110", 19 => "1011010010100101", 
    20 => "1011011000011111", 21 => "1011011110001011", 22 => "1011100001110010", 23 => "1011100100010011", 
    24 => "1011100110101000", 25 => "1011101000101111", 26 => "1011101010100111", 27 => "1011101100001110", 
    28 => "1011101101100100", 29 => "1011101110101000", 30 => "1011101111011001", 31 => "1011101111110110");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;


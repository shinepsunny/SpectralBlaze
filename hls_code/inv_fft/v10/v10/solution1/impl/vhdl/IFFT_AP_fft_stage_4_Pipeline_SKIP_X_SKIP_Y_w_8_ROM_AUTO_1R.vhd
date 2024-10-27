-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity IFFT_AP_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_w_8_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 16; 
             AddressWidth     : integer := 5; 
             AddressRange    : integer := 32
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);
 
          address1        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1             : in std_logic; 
          q1              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of IFFT_AP_fft_stage_4_Pipeline_SKIP_X_SKIP_Y_w_8_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "0011110000000000", 1 => "0011101111011001", 2 => "0011101101100100", 3 => "0011101010100111", 
    4 => "0011100110101000", 5 => "0011100001110010", 6 => "0011011000011111", 7 => "0011001000111110", 
    8 => "0000000000000000", 9 => "1011001000111110", 10 => "1011011000011111", 11 => "1011100001110010", 
    12 => "1011100110101000", 13 => "1011101010100111", 14 => "1011101101100100", 15 => "1011101111011001", 
    16 => "0000000000000000", 17 => "0000000000000000", 18 => "0000000000000000", 19 => "0000000000000000", 
    20 => "0000000000000000", 21 => "0000000000000000", 22 => "0000000000000000", 23 => "0000000000000000", 
    24 => "0000000000000000", 25 => "0000000000000000", 26 => "0000000000000000", 27 => "0000000000000000", 
    28 => "0000000000000000", 29 => "0000000000000000", 30 => "0000000000000000", 31 => "0000000000000000");



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
 
memory_access_guard_1: process (address1) 
begin
      address1_tmp <= address1;
--synthesis translate_off
      if (CONV_INTEGER(address1) > AddressRange-1) then
           address1_tmp <= (others => '0');
      else 
           address1_tmp <= address1;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;
 
        if (ce1 = '1') then  
            q1 <= mem0(CONV_INTEGER(address1_tmp)); 
        end if;

end if;
end process;

end rtl;


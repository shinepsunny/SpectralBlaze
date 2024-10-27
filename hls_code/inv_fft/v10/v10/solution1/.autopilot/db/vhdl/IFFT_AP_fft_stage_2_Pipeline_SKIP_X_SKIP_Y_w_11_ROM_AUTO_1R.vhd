-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity IFFT_AP_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_w_11_ROM_AUTO_1R is 
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


architecture rtl of IFFT_AP_fft_stage_2_Pipeline_SKIP_X_SKIP_Y_w_11_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "0000000000000000", 1 => "1011100110101000", 2 => "1011110000000000", 3 => "1011100110101000", 
    4 => "0000000000000000", 5 => "0000000000000000", 6 => "0000000000000000", 7 => "0000000000000000", 
    8 => "0000000000000000", 9 => "0000000000000000", 10 => "0000000000000000", 11 => "0000000000000000", 
    12 => "0000000000000000", 13 => "0000000000000000", 14 => "0000000000000000", 15 => "0000000000000000", 
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


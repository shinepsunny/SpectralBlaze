-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity FFT_R_fft_stage5_Pipeline_SKIP_X_w_M_imag_V13 is 
    generic(
             DataWidth     : integer := 16; 
             AddressWidth     : integer := 8; 
             AddressRange    : integer := 192
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of FFT_R_fft_stage5_Pipeline_SKIP_X_w_M_imag_V13 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 to 32=> "0000000000000000", 33 => "1000000000000000", 34 to 64=> "0000000000000000", 
    65 => "1010010101111101", 66 => "1000000000000000", 67 => "1010010101111101", 
    68 to 96=> "0000000000000000", 97 => "1100111100000100", 98 => "1010010101111101", 
    99 => "1000100110111110", 100 => "1000000000000000", 101 => "1000100110111110", 
    102 => "1010010101111101", 103 => "1100111100000100", 104 to 128=> "0000000000000000", 
    129 => "1110011100000111", 130 => "1100111100000100", 131 => "1011100011100011", 
    132 => "1010010101111101", 133 => "1001010110010010", 134 => "1000100110111110", 
    135 => "1000001001110101", 136 => "1000000000000000", 137 => "1000001001110101", 
    138 => "1000100110111110", 139 => "1001010110010010", 140 => "1010010101111101", 
    141 => "1011100011100011", 142 => "1100111100000100", 143 => "1110011100000111", 
    144 to 160=> "0000000000000000", 161 => "1111001101110100", 162 => "1110011100000111", 
    163 => "1101101011010111", 164 => "1100111100000100", 165 => "1100001110101001", 
    166 => "1011100011100011", 167 => "1010111011001100", 168 => "1010010101111101", 
    169 => "1001110100001110", 170 => "1001010110010010", 171 => "1000111100011101", 
    172 => "1000100110111110", 173 => "1000010110000010", 174 => "1000001001110101", 
    175 => "1000000010011101", 176 => "1000000000000000", 177 => "1000000010011101", 
    178 => "1000001001110101", 179 => "1000010110000010", 180 => "1000100110111110", 
    181 => "1000111100011101", 182 => "1001010110010010", 183 => "1001110100001110", 
    184 => "1010010101111101", 185 => "1010111011001100", 186 => "1011100011100011", 
    187 => "1100001110101001", 188 => "1100111100000100", 189 => "1101101011010111", 
    190 => "1110011100000111", 191 => "1111001101110100" );


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
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;


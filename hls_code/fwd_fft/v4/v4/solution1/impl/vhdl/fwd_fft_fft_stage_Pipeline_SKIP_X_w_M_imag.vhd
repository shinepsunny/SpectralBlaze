-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity fwd_fft_fft_stage_Pipeline_SKIP_X_w_M_imag is 
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


architecture rtl of fwd_fft_fft_stage_Pipeline_SKIP_X_w_M_imag is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 to 32=> "0000000000000000", 33 => "1011110000000000", 34 to 64=> "0000000000000000", 
    65 => "1011100110101000", 66 => "1011110000000000", 67 => "1011100110101000", 
    68 to 96=> "0000000000000000", 97 => "1011011000011111", 98 => "1011100110101000", 
    99 => "1011101101100100", 100 => "1011110000000000", 101 => "1011101101100100", 
    102 => "1011100110101000", 103 => "1011011000011111", 104 to 128=> "0000000000000000", 
    129 => "1011001000111110", 130 => "1011011000011111", 131 => "1011100001110010", 
    132 => "1011100110101000", 133 => "1011101010100111", 134 => "1011101101100100", 
    135 => "1011101111011001", 136 => "1011110000000000", 137 => "1011101111011001", 
    138 => "1011101101100100", 139 => "1011101010100111", 140 => "1011100110101000", 
    141 => "1011100001110010", 142 => "1011011000011111", 143 => "1011001000111110", 
    144 to 160=> "0000000000000000", 161 => "1010111001000110", 162 => "1011001000111110", 
    163 => "1011010010100101", 164 => "1011011000011111", 165 => "1011011110001011", 
    166 => "1011100001110010", 167 => "1011100100010011", 168 => "1011100110101000", 
    169 => "1011101000101111", 170 => "1011101010100111", 171 => "1011101100001110", 
    172 => "1011101101100100", 173 => "1011101110101000", 174 => "1011101111011001", 
    175 => "1011101111110110", 176 => "1011110000000000", 177 => "1011101111110110", 
    178 => "1011101111011001", 179 => "1011101110101000", 180 => "1011101101100100", 
    181 => "1011101100001110", 182 => "1011101010100111", 183 => "1011101000101111", 
    184 => "1011100110101000", 185 => "1011100100010011", 186 => "1011100001110010", 
    187 => "1011011110001011", 188 => "1011011000011111", 189 => "1011010010100101", 
    190 => "1011001000111110", 191 => "1010111001000110" );


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


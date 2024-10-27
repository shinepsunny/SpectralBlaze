-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity FFT_R_fft_stage_04_w_M_real19 is 
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


architecture rtl of FFT_R_fft_stage_04_w_M_real19 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0011110000000000", 1 to 31=> "0000000000000000", 32 => "0011110000000000", 
    33 to 63=> "0000000000000000", 64 => "0011110000000000", 65 => "0011100110101000", 
    66 => "0000000000000000", 67 => "1011100110101000", 68 to 95=> "0000000000000000", 
    96 => "0011110000000000", 97 => "0011101101100100", 98 => "0011100110101000", 
    99 => "0011011000011111", 100 => "0000000000000000", 101 => "1011011000011111", 
    102 => "1011100110101000", 103 => "1011101101100100", 104 to 127=> "0000000000000000", 
    128 => "0011110000000000", 129 => "0011101111011001", 130 => "0011101101100100", 
    131 => "0011101010100111", 132 => "0011100110101000", 133 => "0011100001110010", 
    134 => "0011011000011111", 135 => "0011001000111110", 136 => "0000000000000000", 
    137 => "1011001000111110", 138 => "1011011000011111", 139 => "1011100001110010", 
    140 => "1011100110101000", 141 => "1011101010100111", 142 => "1011101101100100", 
    143 => "1011101111011001", 144 to 159=> "0000000000000000", 160 => "0011110000000000", 
    161 => "0011101111110110", 162 => "0011101111011001", 163 => "0011101110101000", 
    164 => "0011101101100100", 165 => "0011101100001110", 166 => "0011101010100111", 
    167 => "0011101000101111", 168 => "0011100110101000", 169 => "0011100100010011", 
    170 => "0011100001110010", 171 => "0011011110001011", 172 => "0011011000011111", 
    173 => "0011010010100101", 174 => "0011001000111110", 175 => "0010111001000110", 
    176 => "0000000000000000", 177 => "1010111001000110", 178 => "1011001000111110", 
    179 => "1011010010100101", 180 => "1011011000011111", 181 => "1011011110001011", 
    182 => "1011100001110010", 183 => "1011100100010011", 184 => "1011100110101000", 
    185 => "1011101000101111", 186 => "1011101010100111", 187 => "1011101100001110", 
    188 => "1011101101100100", 189 => "1011101110101000", 190 => "1011101111011001", 
    191 => "1011101111110110" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

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


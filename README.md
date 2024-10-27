# SpectralBlaze
This repository features the hls implementation of Spectral-Blaze: A High-Performance FFT-Based CNN Accelerator. The HLS folder contains 3 major modules of our implementation as given below.
1. FWD-FFT : RTL design of overlapped row-column FFT module
2. HPG:  Hadamard Product Generator for dot-product computation with IFMAP tensor and WT Tensor.
3. INV-FFT: RTL Design of Vector-Radix IFFT Module.


   For complete details of implementation, please refer to our paper. Details are given below

### Dependencies

* Vitis HLS 2022.2 or above
* Pynq framework on Zynq MPSoC Devices
  
### References

* https://link.springer.com/chapter/10.1007/978-3-031-55673-9_16#citeas
* https://ieeexplore.ieee.org/document/10558092


## Citation
@InProceedings{10.1007/978-3-031-55673-9_16,
author="Sunny, Shine Parekkadan
and Das, Satyajit",
editor="Skliarova, Iouliia
and Brox Jim{\'e}nez, Piedad
and V{\'e}stias, M{\'a}rio
and Diniz, Pedro C.",
title="Spectral-Blaze: A High-Performance FFT-Based CNN Accelerator",
booktitle="Applied Reconfigurable Computing. Architectures, Tools, and Applications",
year="2024",
publisher="Springer Nature Switzerland",
address="Cham",
pages="222--238"}

@INPROCEEDINGS{10558092,
  author={Sunny, Shine Parekkadan and Das, Satyajit},
  booktitle={2024 IEEE International Symposium on Circuits and Systems (ISCAS)}, 
  title={Efficient FFT-Based CNN Acceleration with Intra-Patch Parallelization and Flex-Stationary Dataflow}, 
  year={2024},
  volume={},
  number={},
  pages={1-5},
  keywords={Tensors;Circuits and systems;Frequency-domain analysis;Prototypes;Accelerator architectures;Throughput;Hardware;FFT-based convolution;Tiling;DNN Accelerator;Intra-Patch Parallelization;Flex-Stationary},
  doi={10.1109/ISCAS58744.2024.10558092}}

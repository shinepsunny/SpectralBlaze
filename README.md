# SpectralBlaze
This repository features the hls implementation of Spectral-Blaze: A High-Performance FFT-Based CNN Accelerator. The HLS folder contains 3 major modules of our implementation as given below.
1. FWD-FFT : RTL design of overlapped row-column FFT module
2. HPG:  Hadamard Product Generator for dot-product computation with IFMAP tensor and WT Tensor.
3. INV-FFT: RTL Design of Vector-Radix IFFT Module.


   For complete details of implementation, please refer to our paper. Details are given below

### Dependencies

* Vitis HLS 2022.2 or above
* Pynq framework on Zynq MPSoC Devices
* 
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
pages="222--238",
abstract="This paper presents Spectral-Blaze, a novel FFT-based CNN accelerator that effectively addresses computational and energy bottlenecks in spatial domain acceleration. The proposed architecture introduces Intra-Patch parallelization during the Hadamard product phase, which optimizes Complex MAC (CMAC) unit utilization and maintains consistent reuse patterns across multiple input feature map patches. This parallelization scheme simplifies the tiling, enabling independent selection of patch elements for efficient on-chip memory storage. Additionally, it leverages the Flex-Stationary dataflow to adaptively store tensors with high reuse opportunities in the on-chip memory, reducing the DRAM traffic. Spectral-Blaze also introduces an optimized FFT/IFFT process that integrates a modified row-column FFT, real FFT-based optimizations, and a vector-radix IFFT. The Spectral-Blaze prototype, implemented on the Zynq MPSoC (ZU7CG), demonstrates impressive performance gains, achieving a speedup of {\$}{\$}4.98{\backslash}times {\$}{\$}4.98{\texttimes}for VGG-16 and {\$}{\$}1.64{\backslash}times {\$}{\$}1.64{\texttimes}for AlexNet compared to baseline. The Energy-Delay Product (EDP) varies from {\$}{\$}4.47{\backslash}times {\$}{\$}4.47{\texttimes}to {\$}{\$}25.14{\backslash}times {\$}{\$}25.14{\texttimes}. Compared to flexible dataflow spatial accelerators, Spectral-Blaze achieves an average improvement of {\$}{\$}8.82{\backslash}times {\$}{\$}8.82{\texttimes}over Eyeriss and {\$}{\$}7.87{\backslash}times {\$}{\$}7.87{\texttimes}improvement over Flexflow in EDP while maintaining a comparable hardware setup. Spectral-Blaze also achieves a {\$}{\$}4.59{\backslash}times {\$}{\$}4.59{\texttimes}reduction in MAC operations during convolution, even with VGG-16's compact filter sizes.",
isbn="978-3-031-55673-9"
}
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

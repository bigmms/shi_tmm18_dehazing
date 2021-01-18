# Removing Haze Particles From Single Image via Exponential Inference With Support Vector Data Description
[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg?style=flat-square)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fbigmms%2Fchen_grsl21_tpbf&count_bg=%233D46C8&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=views&edge_flat=false)](https://hits.seeyoufarm.com)

![framework](./docs/pix2pix.png)

## Introduction
This repository contains implementation of our TMM paper titled as __Removing Haze Particles From Single Image via Exponential Inference With Support Vector Data Description.__ This paper proposes a novel haze density estimation model with a universal atmospheric-light extractor for single-image dehazing. The proposed method employs exponential inference to construct an exponential inference model to more accurately estimate haze density compared with the state-of-the-art methods. The coefficients in the proposed haze density estimation model are learned using a turbulent particle swarm optimization technique to obtain the best approximation of medium transmission. Moreover, a novel universal atmospheric-light extractor based on support vector data description is utilized to resolve the problem caused by a lack of atmospheric light. The overall results obtained by conducting qualitative and quantitative evaluations demonstrated that the proposed method has substantially higher dehazing efficacy and produces fewer artifacts than the state-of-the-art haze removal methods.

**Paper**: [PDF](https://ieeexplore.ieee.org/document/8295116)

## Requirements
### Dataset
To build noise dataset, you'll also need:
* [SIPI-Aerials](http://sipi.usc.edu/database/database.php)
* [COWC](https://gdo152.llnl.gov/cowc/)
* [Inria-Aerial](https://project.inria.fr/aerialimagelabeling/)
* [DOTA](https://captain-whu.github.io/DOTA/dataset.html)

### Dependencies
* MATLAB R2019a

### It was tested and runs under the following OSs:
* Windows 10
* Windows 7
* Ubuntu 16.04

Might work under others, but didn't get to test any other OSs just yet.

## Getting Started:
```bash
$ git clone https://github.com/bigmms/shi_tmm18_dehazing.git
$ cd shi_tmm18_dehazing
$ matlab
>> demo
```
The test results will be saved in: `./Results/`

## Results
![](./docs/results.png)

## License + Attribution
This code is licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/). Commercial usage is not permitted. If you use this code in a scientific publication, please cite the following [paper](https://ieeexplore.ieee.org/document/8295116):
```
@ARTICLE{ShiTMM2018,
  author={L. {Shi} and B. {Chen} and S. {Huang} and A. O. {Larin} and O. S. {Seredin} and A. V. {Kopylov} and S. {Kuo}},
  journal={IEEE Transactions on Multimedia}, 
  title={Removing Haze Particles From Single Image via Exponential Inference With Support Vector Data Description}, 
  year={2018},
  volume={20},
  number={9},
  pages={2503-2512},
  doi={10.1109/TMM.2018.2807593}}  
```

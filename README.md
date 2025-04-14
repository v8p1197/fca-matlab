# MATLAB FCA Exercises

[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=v8p1197/fca-matlab)

This repository is developed by the [Automatic Control Group (ACG)](http://www.automatica.unisa.it/), Department of Information Engineering, Electrical Engineering and Applied Mathematics (DIEM), University of Salerno, in the context of the coursework for the course on Automatic Control, as part of the bachelor degree in Computer Engineering.

## Contents

This repository contains exercises in MATLAB (coded as *live scripts* or *simulink systems*) to get acquainted with the following functionalities and topics:

* Laplace transform and inverse transform
* State-space systems
* Step responses
* Persistent sinusoid responses
* Block schemes as compositions of subsystems

Utility functions are stored in the folder [`functions`](./functions/).
Please refer to the functions' documentation to know their input, output, usage and implementation.

The exercises are stored in the folder [`live_scripts`](./live_scripts/).
Reports in PDF format are stored in the folder [`live_scripts/exports`](./live_scripts/exports).

Simulink models are stored in the folder [`simulink`](./simulink/), together with their drawings in PDF format in the subfolder [`simulink/exports`](./simulink/exports/) and easy scripts to plot the outputs.
Custom subsytems models are defined in [`simulink/models`](./simulink/models/), with images saved in [`simulink/assets`](./simulink/assets/).

## Requirements

### Operating systems

The exercises are tested under Matlab R2022a, R2023a and R2024a, in Ubuntu 18.04 and 20.04, and Windows 10.

The code has been tested on MATLAB online too.

### Toolboxes

The following toolboxes are required:

* [Symbolic Math Toolbox](https://it.mathworks.com/help/symbolic/)
* [Control System Toolbox](https://it.mathworks.com/products/control.html)
* [Simulink](https://it.mathworks.com/products/simulink.html)

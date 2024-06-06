# Simulink

This folder contains the following exercises as *simulink systems*:

* [`ex_04_04`](./ex_04_04.slx) represents the exercise proposed in [docs/ex_04_04.png](./docs/ex_04_04.png), with `alpha=5`.
* [`tut03_1`](./tut03_1.slx) represents the exercise proposed in [docs/tut03_1.png](./docs/tut03_1.png);
* [`tut08_01`](./tut08_01.slx) represents the exercise proposed in [docs/tut08_01.pdf](./docs/tut08_01.pdf).

Together with each model `<X>.slx`, there is a script called `<X>_plot.m`: each of these scripts plots the output(s) of the corresponding system.

As regards [`tut08_01`](./tut08_01.slx), there are different alternatives to simulate various properties of the system:

1. First, you can specify the plant and design a specific controller by executing the script [`tut08_01_ctrl.m`](./tut08_01_ctrl.m) **before running the simulation**;
2. Then, you can simulate the system in Simulink: open the model, select the controller among the ones you have defined (you can see them in the list of workspace variables), and run the simulation;
3. With step- and ramp-like references, you can proceed running [`tut08_01_plot.m`](./tut08_01_plot.m).
4. With sinusoidal references, you might proceed as in step 2-3, but you may want to execute [`tut08_01_sin.m`](./tut08_01_sin.m) instead, which simulates the system programmatically, choosing as reference a sinusoid with various frequencies, and plots the outputs in separate graphs (just remember to select the correct input line of the switch in the Simulink model);

The Simulink systems have been designed in MATLAB 2024a.
You can find backup models for MATLAB 2022a in the [`backup_schemes`](./backup_schemes/) folder.
For each system `<X>.slx`, you can find `<X>.slx.r2022a`.

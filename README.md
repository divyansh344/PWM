# Verilog Based PWM Generator
<br>
<br>
Author - Divyansh Tripathi
<br>
<br>
Implemented a Verilog Based PWM Generator with the following features:-
<br>
<br>
1> It generates pwm signals of varying duty cycle.
<br>
2> The duty cycle first increases from 0 to 100 in steps of 5 and then decreases from 100 to 0 also in steps of 5.
<br>
3> This is done to create a symmetrical waveform which can be used in following applications:-
<br>
<br>
> To gradually increase or decrease the brightness of a bulb by controlling the voltage level applied to it.
<br>
- In speed control of DC motors: the speed of DC motors is directly proportional to voltage applied so by controlling the voltage we can achieve the desired speed.
<br>
<br>
4> The following ports are used in PWM Generator:-
<br>
<br>
- clock and reset - synchronizing signals.
<br>
- out - output waveform.
<br>
5> There are also some internal ports defined:
<br>
<br>
> period - parameter to store the duration of 1 output cycle.
<br>
> ton - to store the on time and increase or decrease it on next output cycle.
<br>
> count - to count the clock pulses for generating the on and off signals in 1 output cycle.
<br>
> ncyc - to mark the completion of 1 output cycle . As soon as 1 output cycle is completed ncyc signal becomes high and at the beginning of next output cycle it again becomes 0.
<br>
> mode - to determine whether we are increasing or decreasing the duty cycle. mode = 0 represents increase in duty cycles and mode = 1 represent decrease in duty cycles.
<br>
<br>
To view the simulation waveform follow these steps:-
<br>
<br>
- save the pwm_gtkwave.gtkw file
<br>
- Open gtkwave.
<br>
- click on File > Open New Tab.
<br>
- open the saved file 
<br>
- select the ports to view the waveforms.
<br>
<br>
Files present in the repository:-
<br>
<br>
> pwm.v - dut module
<br>
> testbench.v - testbench module to generate the signals for the inputs.
<br>
> pwm_gtkwave.gtkw - gtkwave file to see the waveforms.
<br>
> Simulation_image - screenshot of simulation image.
<br>
<br>
Thanks for checking out the project! Any feedback or Contributions are welcome.






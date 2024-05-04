**Week 16**
  
* Complete your pull request as detailed in lecture 27 & Discord.
* Submit your final presentation on Laulima as your report for this week.


**Week 15**
  
* Continue working toward your final schematics & layout.
* Document any issues that you observe and add your questions [here](https://docs.google.com/document/d/1sxiMK8YySP9BN6mlV8Gm9bcBho1SJc_OXievlb69DG8/edit?usp=sharing).
* Complete your preliminary pull request as detailed in lecture 27.
* Work on your final design status presentations for next week (Mon: Teams 2, 5, 6; Wed: Teams 1, 3, 4).
* There is no need to submit a report for this week.

**Week 14**

* Take notes as you work through the items below and submit them as your weekly report. If you are not working on the template project, you need to define suitable tasks on your own.  
* Document any issues that you observe and add your questions for the next class meeting [here](https://docs.google.com/document/d/1sxiMK8YySP9BN6mlV8Gm9bcBho1SJc_OXievlb69DG8/edit?usp=sharing).
* Complete first versions of all your block layouts and combine them according to your floor plan. Iterate as needed.
* Submit test layout pull request to the course repo (one per team) as described in lecture 24.
* Begin preparing next week's team presentations.

**Week 13**

* Take notes as you work through the items below and submit them as your weekly report. If you are not working on the template project, you need to define suitable tasks on your own. 
* Document any issues that you observe and add your questions for the next class meeting [here](https://docs.google.com/document/d/1sxiMK8YySP9BN6mlV8Gm9bcBho1SJc_OXievlb69DG8/edit?usp=sharing).
* Complete a second "significant" piece of layout (e.g., the stage cell) this week and fix all DRC errors (except for density rules).
* Think about the overall floor plan of your design. How will the individual cells be placed and how will they connect to each other?
* Continue working toward your final schematics & testbenches and duplicate the various simulations that were discussed in class. For example, sweep the input to determine your design's linearity and usable input range. Measure the current consumption, etc.

**Week 12**

* Take notes as you work through the items below and submit them as your weekly report. If you are not working on the template project, you need to define suitable tasks on your own. 
* Document any issues that you observe and add your questions for the next class meeting [here](https://docs.google.com/document/d/1sxiMK8YySP9BN6mlV8Gm9bcBho1SJc_OXievlb69DG8/edit?usp=sharing).
* Configure KLayout as shown in the (updated) tools section. This fixes all known bugs to date.
* Complete a "significant" piece of layout (e.g., the clock generator cell) this week and fix all DRC errors (except for density rules).
* Continue to work toward your final set schematics and evaluation of your design's top-level performance. For the latter, create a suitable Jupyter notebook that computes the decimated digital output for at least five input voltages and assess your converter's linearity.
* Skim through the following paper on ESD protection: https://ieeexplore.ieee.org/document/10320105 (read as much as you like).

**Week 11**

* Spring break.

**Week 10**

* Submit your team presentation as this week's deliverable (no other deliverables).
* Document any issues that you observe and add your questions for the next class meeting [here](https://docs.google.com/document/d/1sxiMK8YySP9BN6mlV8Gm9bcBho1SJc_OXievlb69DG8/edit?usp=sharing).

**Week 9**

* Take notes as you work through the items below and submit them as your weekly report. If you are not working on the template project, you need to define suitable tasks on your own.
* Document any issues that you observe and add your questions for the next class meeting [here](https://docs.google.com/document/d/1sxiMK8YySP9BN6mlV8Gm9bcBho1SJc_OXievlb69DG8/edit?usp=sharing).
* Work on your team presentation for March 13. See lecture 14 for a suggested outline.
* Configure KLayout as shown in the (updated) tools section. This will allow you to use IHP PyCells as well as the standard cell and primitive layout libraries going forward.
* Create a DRC-clean layout of an inverter in IHP technology. You can watch this video if you need some guidance: https://www.youtube.com/watch?v=MwwiYSQ2JX8. Note that this example uses a different technology, but the steps will be similar. A few suggestions:
    - I'd use paths instead of boxes to connect the transistors.
    - The pcells used in this example automatically  generate P and N bulk taps. The IHP PyCells don't do this (yet). You can daw the taps manually or use the ptap/ntap cells from the primitives library.
* As a next exercise, try to create a DRC-clean layout of your clock generator using standard cells.

**Week 8**

* Take notes as you work through the items below and submit them as your weekly report. If you are not working on the template project, you need to define suitable tasks on your own.
* Continue to work toward a fully transistorized version of the delta-sigma modulator. Document any issues that you observe and add your questions for the next class meeting [here](https://docs.google.com/document/d/1sxiMK8YySP9BN6mlV8Gm9bcBho1SJc_OXievlb69DG8/edit?usp=sharing).
* In preparation for the layout phase of our project, watch the KLayout tutorial videos at https://www.youtube.com/@qnfcf6093/videos. As mentioned in class, you can skip the installation part and simply run `klayout -e` from the Linux prompt inside the tool container. These are the most important videos to watch: 0, 1, 2, 3, 4, 6, 7. I recommend that you duplicate all the shown work in your own KLayout window.
* For additional resources on KLayout, browse the tool's doc page: https://www.klayout.de/doc.html. You can also consider watching this longer tutorial by the creator of KLayout: https://www.youtube.com/watch?v=5t78kJ991js.  


**Week 7**

* Take notes as you work through the items below and submit them as your weekly report. If you are not working on the template project, you need to define suitable tasks on your own.
* Design an integrator stage using the capacitor and inverter sizing discussed at the end of lecture 11. Verify functionality through a transient simulation.
* Now implement the switches using the sizing discussed in lecture 12.
* Build the clock generator shown on slide 36 of lecture 12. While doing this, investigate the various logic gate sizes available in the standard cell library. Use 2x NAND and 4x inverters for the time being; we can re-size these later as needed. Run a transient analysis and measure the non-overlap delay as well as the delay between the early and delayed clocks.
* Time permitting, try putting all of the above together and verify functionality through a transient simulation.
* Document any issues that you observed in the above steps and bring them to the next class meeting for discussion and resolution.

**Week 6**

* Take notes as you work through the items below and submit them as your weekly report. If you are not working on the template project, you need to define suitable tasks on your own.
* Enter the inverter-based integrator on slide 8 of lecture 10 in Xschem and verify its functionality. Vary the P/N ration (of both inverters) slightly slightly to see how this affects vmid. We want vmid to be close to 0.6 V.
* Read the first few paragraphs (or as much as like) of the paper linked below (we will talk about thermal noise in lecture 11): https://ieeexplore.ieee.org/document/6218338
* Replicate the simple thermal noise simulation of a resistor, shown on slide 24 of lecture 11. Vary the resistor value and observe that the total integrated noise does not change.
* Try to set up the simulation shown on slide 16 of lecture 11 to determine the $\gamma$ factor of an NMOS device in our technology. Use $V_{GS}=V_{DS}=0.6V$ and $L=0.13\mu m, 1.5 \mu m$.


**Week 5**

* Take notes as you work through the items below and submit them as your weekly report. If you are not working on the template project, you need to define suitable tasks on your own.
* Enter an inverter in Xschem (NMOS: 4/0.13, PMOS: 10/0.13) and simulate its DC transfer characteristic. Plot the derivative to measure the peak gain near the middle of the transfer function.
* What is the new peak gain after doubling the channel lengths?
* Skim through the following paper (I will explain the main idea in class): https://ieeexplore.ieee.org/document/1086170
* Duplicate the simulation shown on slide 4 of lecture 9. To which value do we need to increase the amplifier gain in the bottom circuit to achieve the same integrator response? We can call this gain the "effective gain" of the amplifier in the top circuit.
* Build a testbench similar to the above, but now using an inverter as the amplifier in the top circuit. As discussed in class, use relatively long L, e.g. 1.5 um. Experiment with this circuit and try to get it to work.

**Week 4**

* Take notes as you work through the items below and submit them as your weekly report. If you are not working on the template project, you need to define suitable tasks on your own.
* Drawing good schematics is an art. Watch [this presentation](https://us06web.zoom.us/rec/share/QyU62ylOnBq1S3ej3gGK09xlF0TCBLU9ON1OTLsRgSwePeAH8aJKv5Jx_isrKeif.PiihL4kSIy2GuBtG) by Kevin Zheng on how you can be become a circuit artist. Skipping the first 5 minutes will get you to the beginning of the presentation. Watch for as long as you like (the presentation lasts for over an hour).
* Enter the comparator schematic shown in lecture 6 and duplicate the simulation results.
* Add the latch circuit to complete the design. You can use the same W/L ratios as in the comparator stage. Note that the latch's primary purpose is to hold the decision when the comparator stage transitions back to the reset state. Very this.
* Add the comparator + latch block to the IDSM2 circuit developed in lecture 4 and make sure that it still functions. Make sure that you understand the clock timing and how it relates to the transistorized comparator.
* Read the following paper to learn more about comparators: https://ieeexplore.ieee.org/abstract/document/7130773

**Week 3**

* Take notes as you work through the items below and submit them as your weekly report. If you are not working on the template project, you need to define suitable tasks on your own.
* Read through the Xschem tutorial on creating symbols: https://xschem.sourceforge.io/stefan/xschem_man/creating_symbols.html  
* Create a symbol for the integrator (including its switch circuitry) used in the "tb_ideal_idsm1" schematic. The schematic is in the design directory of this repo and also shown on slide 10 of LEC02.
* Use the symbol to create a more compact schematic of "tb_ideal_idsm1" and verify that it still works as expected.
* Expand the circuit by adding a second integrator as shown in LEC04, slide 7 (but using your integrator symbol). Simulate the circuit and look into why the int2 output does not match the Simulink result.
* In Wednesday's lecture we will talk about the performance specifications for the template project. Based on that discussion, meet with your teammates to discuss your design goals and state them in your report.

**Week 2**

* Take notes as you work through the items below and submit them as your weekly report.  
* Verify the simulation results for the second order modulator shown in lecture 2. Replace the ideal integrators (in the analog part) with leaky integrators. Determine how much leakage ($\alpha$) can be tolerated before the peak quantization error doubles.
* Finish the tool installation and be sure to resolve any issues that you encountered last week.
* Create your first schematic and simulation as described here (of course, skip the installation step):
https://xschem.sourceforge.io/stefan/xschem_man/tutorial_run_simulation.html
* For the above simulation example, go to Simulation-Edit Netlist in Xschem to inspect the circuit's netlist. Try to make sense of the format and look for "spice netlist syntax" on Google. You will need to understand the format and meaning of the various netlist elements for debugging. The Ngspice manual is another reference that you will need to consult frequently when setting up & debugging simulations.
* Inspect the idealized IDSM1 Xschem circuit discussed in lecture 3. Try to explain how the subtraction between the input and the feedback pulse is achieved. The charge conservation analysis presented in class may be useful for this (with a small modification).
* Enter your teaming details and project topic in the spreadsheet linked below (UH login required):  
https://docs.google.com/spreadsheets/d/1z1Zx_is34Pi1zjUItV7z7-M_nO--g01z7KPxaFLhrG8


**Week 1**

* Take notes as you work through the items below and submit them as your weekly report. The report does not need to be pretty, but it should document what you have done, what worked/didn't, things you don't understand, etc. You can also suggest topics that should be covered in future lectures.
* Read the following papers about Columbia's course:  
https://ieeexplore.ieee.org/document/10224621   
* Skim through the following paper, which describes the A/D converter that we'll use as our template project. You won't understand everything; we'll work things out in the coming weeks!  
https://ieeexplore.ieee.org/document/5641589
* Have a look at Raymond Yang and Yaqing Xia's Stanford EE 372 project at the link below. This will give you a feel for what your project deliverables will look like (GitHub repo, presentations, reports, etc.). Note that their circuit is also similar to our template project (albeit a little more complex).  
https://priyanka-raina.github.io/ee372-spring2022/  
* Think about your project topic. Do you have a specific idea or do you want to follow the template project?
* Network with your peers and join a team of 3-4 students. Of course, each team must work on the same project topic. The idea is to split the work and help each other toward delivering one common chip design per team.
* Begin installing the design tools on your computer. Follow the instructions under "Tools." No worries if you can't finish due to some issues; the idea is just to get started.
* If you will be working on the template project, read Section II.A of the following paper and try to replicate the results shown in Fig.1 using Scilab (or Simulink).
https://ieeexplore.ieee.org/document/1284742 

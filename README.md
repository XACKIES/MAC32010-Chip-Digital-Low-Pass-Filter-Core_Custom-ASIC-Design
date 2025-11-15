# MAC32010 Chip : Digital Low-Pass Filter Core (Custom ASIC Design)
created by [Kittiphop Phanthachart](https://bento.me/mac-kittiphop) (a 4th-year Engineering student, FPGA/DSP Engineer Intern @Thai Space Consortium, NARIT.)


----

## Description
The MAC32010 Chip project focuses on converting an FPGA-optimized Verilog FIR low-pass filter into a fully implementable ASIC core using the OpenLane open-source physical design flow. The original RTL, sourced from the “[RTL-Design-of-FIR-Filter-on-FPGA-using-Verilog](https://github.com/XACKIES/RTL-Design-of-FIR-Filter-on-FPGA-using-Verilog)” repository, was analyzed and modified to meet ASIC design constraints, including clocking, reset strategy, timing closure, and cell-based implementation.

Using the OpenLane pipeline, the design was synthesized (Yosys), floorplanned, placed, and routed (OpenROAD), followed by clock-tree synthesis, detailed routing, and physical verification on the SkyWater 130 nm process. The final layout integrates a fully functional digital low-pass filter core suitable for lightweight DSP applications such as signal smoothing, noise reduction, and embedded audio processing.



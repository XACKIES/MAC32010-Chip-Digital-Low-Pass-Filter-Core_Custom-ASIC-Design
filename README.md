# MAC32010 Chip : Digital Low-Pass Filter Core (Custom ASIC Design)
created by [Kittiphop Phanthachart](https://bento.me/mac-kittiphop) (a 4th-year Engineering student, FPGA/DSP Engineer Intern @Thai Space Consortium, NARIT.)


----

## Description
The MAC32010 Chip project focuses on converting an FPGA-optimized Verilog FIR low-pass filter into a fully implementable ASIC core using the OpenLane open-source physical design flow. The original RTL, sourced from the “[RTL-Design-of-FIR-Filter-on-FPGA-using-Verilog](https://github.com/XACKIES/RTL-Design-of-FIR-Filter-on-FPGA-using-Verilog)” repository, was analyzed and modified to meet ASIC design constraints, including clocking, reset strategy, timing closure, and cell-based implementation.

Using the OpenLane pipeline, the design was synthesized (Yosys), floorplanned, placed, and routed (OpenROAD), followed by clock-tree synthesis, detailed routing, and physical verification on the SkyWater 130 nm process. The final layout integrates a fully functional digital low-pass filter core suitable for lightweight DSP applications such as signal smoothing, noise reduction, and embedded audio processing.

## Openlane Flow
![pic](https://github.com/XACKIES/MAC32010-Chip-Digital-Low-Pass-Filter-Core_Custom-ASIC-Design/blob/main/Doc/OpenLane%20Architecture.png)



## MAC32010 Chip Digital Low-Pass Filter Core 

![pic-1](https://github.com/XACKIES/MAC32010-Chip-Digital-Low-Pass-Filter-Core_Custom-ASIC-Design/blob/main/Doc/routing.png)


## Number of Gate Level

![oic](https://github.com/XACKIES/MAC32010-Chip-Digital-Low-Pass-Filter-Core_Custom-ASIC-Design/blob/main/Doc/Printing%20Statistics.png)
----
## Overall of System


![pic0](https://github.com/XACKIES/RTL-Design-of-a-FIR-Filter-on-FPGA-using-Verilog/blob/main/Doc/FIR%20filter%20realization%20Transversal%20form.png)
```verilog
    // ===== Multiply Stage =====
    genvar i;
    generate
        for (i = 0; i < 41; i = i + 1) begin : mult_stage
            assign products[i] = delay_line[i] * coeffs[i];
        end
    endgenerate

    // ===== Main Logic =====
    integer j;
    always @(posedge clk) begin
        // Shift delay line
        for (j = 40; j > 0; j = j - 1) begin
            delay_line[j] <= delay_line[j - 1];
        end
        delay_line[0] <= data_in;

        // Single-stage sum
        sum = 0;
        for (j = 0; j < 41; j = j + 1) begin
            sum = sum + products[j];
        end

        // Assign to output
        data_out <= sum;
    end
```
Verilog Code : [FIR Filter.v](https://github.com/XACKIES/RTL-Design-of-FIR-Filter-on-FPGA-using-Verilog/blob/main/RTL/FIR_Lowpass_Filter.v) 



## Placement

![pic](https://github.com/XACKIES/MAC32010-Chip-Digital-Low-Pass-Filter-Core_Custom-ASIC-Design/blob/main/Doc/placement.png)

## Power 

![pic](https://github.com/XACKIES/MAC32010-Chip-Digital-Low-Pass-Filter-Core_Custom-ASIC-Design/blob/main/Doc/Power.png)

## Design Coners
![picc pic](https://github.com/XACKIES/MAC32010-Chip-Digital-Low-Pass-Filter-Core_Custom-ASIC-Design/blob/main/Doc/Design_Coners.png)

## LVS (Layout vs Schematic)

![pic](https://github.com/XACKIES/MAC32010-Chip-Digital-Low-Pass-Filter-Core_Custom-ASIC-Design/blob/main/Doc/LVS.png)

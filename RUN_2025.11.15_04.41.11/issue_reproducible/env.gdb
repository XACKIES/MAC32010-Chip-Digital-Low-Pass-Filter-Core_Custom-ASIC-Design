set env DESIGN_NAME FIR_Lowpass_Filter
set env MAGIC_DRC_USE_GDS 1
set env MAGIC_MAGICRC pdk/sky130A/libs.tech/magic/sky130A.magicrc
set env MAGIC_SCRIPT openlane/scripts/magic/drc.tcl
set env PACKAGED_SCRIPT_0 openlane/scripts/magic/wrapper.tcl
set env PACKAGED_SCRIPT_1 openlane/scripts/magic/drc.tcl
set env drc_prefix ./reports/signoff/drc
set env signoff_results ./results/signoff
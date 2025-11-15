#!/bin/sh
dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd $dir;
export DESIGN_NAME='FIR_Lowpass_Filter';
export MAGIC_DRC_USE_GDS='1';
export MAGIC_MAGICRC='pdk/sky130A/libs.tech/magic/sky130A.magicrc';
export MAGIC_SCRIPT='openlane/scripts/magic/drc.tcl';
export PACKAGED_SCRIPT_0='openlane/scripts/magic/wrapper.tcl';
export PACKAGED_SCRIPT_1='openlane/scripts/magic/drc.tcl';
export drc_prefix='./reports/signoff/drc';
export signoff_results='./results/signoff';
TOOL_BIN=${TOOL_BIN:-magic}
$TOOL_BIN -dnull -noconsole -rcfile $MAGIC_MAGICRC < $PACKAGED_SCRIPT_0

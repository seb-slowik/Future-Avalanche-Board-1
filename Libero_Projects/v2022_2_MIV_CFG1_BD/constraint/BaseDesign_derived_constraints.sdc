# Microsemi Corp.
# Date: 2023-Feb-27 16:55:30
# This file was generated based on the following SDC source files:
#   C:/gh-lsd-updates/Future-Avalanche-Board-1/Libero_Projects/MIV_CFG1_BD/component/work/PF_CCC_0/PF_CCC_0_0/PF_CCC_0_PF_CCC_0_0_PF_CCC.sdc
#   C:/Microchip/Libero_SoC_v2022.2/Designer/data/aPA5M/cores/constraints/osc_rc160mhz.sdc
# *** Any modifications to this file will be lost if derived constraints is re-run. ***
#

create_clock -name {PF_OSC_0_inst_0/PF_OSC_0_0/I_OSC_160/CLK} -period 6.25 [ get_pins { PF_OSC_0_inst_0/PF_OSC_0_0/I_OSC_160/CLK } ]
create_generated_clock -name {PF_CCC_0_inst_0/PF_CCC_0_0/pll_inst_0/OUT0} -multiply_by 5 -divide_by 16 -source [ get_pins { PF_CCC_0_inst_0/PF_CCC_0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { PF_CCC_0_inst_0/PF_CCC_0_0/pll_inst_0/OUT0 } ]

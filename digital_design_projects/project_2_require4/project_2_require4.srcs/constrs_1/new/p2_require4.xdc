#Switches
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { coolantLow }]; #IO_L19N_T3_VREF_34 Schematic=SW0
set_property -dict { PACKAGE_PIN U20   IOSTANDARD LVCMOS33 } [get_ports { coolantTEMPhigh }]; #IO_L15N_T2_DQS_34 Schematic=SW1
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { oilLow }]; #IO_L19P_T3_34 Schematic=SW2
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { oilTEMPhigh }]; #IO_L21N_T3_DQS_AD14N_35 Schematic=SW3

#led[10] to be yellow light
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { greentoYellow }]; #IO_L18N_T2_34 Schematic=LD10_G
set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { redtoYellow }]; #IO_L22P_T3_34  Schematic=LD10_R


#led[11] to be red light
set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { redWarning }]; #IO_L8N_T1_34 Schematic=LD11_R

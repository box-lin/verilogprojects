set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CLK_IBUF];

set_property -dict { PACKAGE_PIN N20   IOSTANDARD LVCMOS33 } [get_ports { Y[0] }];
set_property -dict { PACKAGE_PIN P20   IOSTANDARD LVCMOS33 } [get_ports { Y[1] }];
set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { Y[2] }];
set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports { Y[3] }];
set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { Y[4] }];
set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { Y[5] }];
set_property -dict { PACKAGE_PIN V20   IOSTANDARD LVCMOS33 } [get_ports { Y[6] }];
set_property -dict { PACKAGE_PIN W20   IOSTANDARD LVCMOS33 } [get_ports { Y[7] }];

set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { I0 }];

set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { CLK }];

set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { RST }];


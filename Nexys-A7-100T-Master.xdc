## Nexys A7-100T - VGA Project Constraints
## (C)2025 top_tiny_lion
## Adapted from Digilent Official XDC and Project F

## FPGA 配置 I/O 选项
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## 板载 100 MHz 时钟
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports {clk_100m}];
create_clock -name clk_100m -period 10.00 [get_ports {clk_100m}];

## 复位按键（BTN0）
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports {btn_rst_n}];

## VGA 连接器（板载 VGA，不使用 Pmod）
## 红色通道 (VGA_R)
set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports {VGA_R[0]}];
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS33} [get_ports {VGA_R[1]}];
set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports {VGA_R[2]}];
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports {VGA_R[3]}];

## 绿色通道 (VGA_G)
set_property -dict {PACKAGE_PIN C6 IOSTANDARD LVCMOS33} [get_ports {VGA_G[0]}];
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports {VGA_G[1]}];
set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS33} [get_ports {VGA_G[2]}];
set_property -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS33} [get_ports {VGA_G[3]}];

## 蓝色通道 (VGA_B)
set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports {VGA_B[0]}];
set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports {VGA_B[1]}];
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports {VGA_B[2]}];
set_property -dict {PACKAGE_PIN B8 IOSTANDARD LVCMOS33} [get_ports {VGA_B[3]}];

## VGA 行同步信号 (VGA_HS) 和 场同步信号 (VGA_VS)
set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS33} [get_ports {VGA_HS}];
set_property -dict {PACKAGE_PIN B12 IOSTANDARD LVCMOS33} [get_ports {VGA_VS}];


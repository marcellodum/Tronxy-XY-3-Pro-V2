; XY-2 Start Code
G21
G90
M82
M107 T0
M140 S{material_bed_temperature_layer_0}
M190 S{material_bed_temperature_layer_0}
G28 ; Home all axes
G29 ; probe ABL
M104 S{material_print_temperature_layer_0} T0
G1 Z5.0 F1200.0; Raise nozzle to prevent scratching of heat bed
G1 X0 Y0 F3600.0; Move nozzle to Home before heating
M109 S{material_print_temperature_layer_0} T0
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z{layer_height} F5000.0 ; Move to start position
G1 X0.1 Y280.0 Z{layer_height} F1500.0 E15 ; Draw the first line
G1 X0.4 Y280.0 Z{layer_height} F5000.0 ; Move to side a little
G1 X0.4 Y20 Z{layer_height} F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z{layer_height} F5000.0 ; Move over to prevent blob squish
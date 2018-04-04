setMode -acecf
setAttribute -configdevice -attr size -value "134217728"
setMode -acecf
addConfigDevice -size 134217728 -name "regmm1" -path "/nfs/home/x/x_ti/Modelsim/VHDL/Xilinx/registers_min_max_sig/"
addCollection -name "regmm1"
addDesign -version 0 -name "rev0"
setMode -acecf
addDeviceChain -index 0
setAttribute -configdevice -attr compressed -value "FALSE"
setAttribute -configdevice -attr compressed -value "FALSE"
setMode -acecf
setCurrentCollection -collection "regmm1"
setCurrentDesign -version 0
deleteDesign -version 0
setCurrentDesign -version -1
deleteCollection -name "regmm1"
setAttribute -configdevice -attr size -value "128000000"
setMode -acecf
addConfigDevice -size 128000000 -name "XCACECF" -path "/nfs/home/x/x_ti/Modelsim/VHDL/Xilinx/registers_min_max_sig/regmm1"
addCollection -name "regmm1"
setMode -acecf
setAttribute -configdevice -attr size -value "134217728"
setAttribute -configdevice -attr reserveSize -value "0"
setAttribute -configdevice -attr name -value "XCCACE128-I"
addDesign -version 0 -name "rev0"
setMode -acecf
addDeviceChain -index 0
setMode -acecf
addDevice -p 1 -file "/nfs/home/x/x_ti/Modelsim/VHDL/Xilinx/registers_min_max_sig/registers_min_max.bit"
setAttribute -configdevice -attr path -value "/nfs/home/x/x_ti/Modelsim/VHDL/Xilinx/registers_min_max_sig"
generate -active regmm1
saveProjectFile -file "/nfs/home/x/x_ti/Modelsim/VHDL/Xilinx/registers_min_max_sig/default.ipf"
saveProjectFile -file "/nfs/home/x/x_ti/Modelsim/VHDL/Xilinx/registers_min_max_sig/default.ipf"

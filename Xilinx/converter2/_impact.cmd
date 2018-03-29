setMode -acecf
setAttribute -configdevice -attr size -value "134217728"
setMode -acecf
addConfigDevice -size 134217728 -name "conv3" -path "/nfs/home/x/x_ti/Modelsim/Xilinx/lab3_2/"
addCollection -name "conv3"
addDesign -version 0 -name "rev0"
setMode -acecf
addDeviceChain -index 0
setAttribute -configdevice -attr compressed -value "FALSE"
setAttribute -configdevice -attr compressed -value "FALSE"
setMode -acecf
setCurrentCollection -collection "conv3"
setCurrentDesign -version 0
deleteDesign -version 0
setCurrentDesign -version -1
deleteCollection -name "conv3"
setAttribute -configdevice -attr size -value "128000000"
setMode -acecf
addConfigDevice -size 128000000 -name "XCACECF" -path "/nfs/home/x/x_ti/Modelsim/Xilinx/lab3_2/conv3"
addCollection -name "conv3"
setMode -acecf
setAttribute -configdevice -attr size -value "134217728"
setAttribute -configdevice -attr reserveSize -value "0"
setAttribute -configdevice -attr name -value "XCCACE128-I"
addDesign -version 0 -name "rev0"
setMode -acecf
addDeviceChain -index 0
setMode -acecf
addDevice -p 1 -file "/nfs/home/x/x_ti/Modelsim/Xilinx/lab3_2/converter.bit"
setAttribute -configdevice -attr path -value "/nfs/home/x/x_ti/Modelsim/Xilinx/lab3_2"
generate -active conv3
saveProjectFile -file "/nfs/home/x/x_ti/Modelsim/Xilinx/converter2/default.ipf"

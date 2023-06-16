	#!bin/bash

cp ./dump_nvtcool_83.8K.relax ./dump.final.xyz
xmin=$(awk 'NR==6{print $1}' dump.final.xyz | awk '{printf("%f",$0)}')
xmax=$(awk 'NR==6{print $2}' dump.final.xyz | awk '{printf("%f",$0)}')
ymin=$(awk 'NR==7{print $1}' dump.final.xyz | awk '{printf("%f",$0)}')
ymax=$(awk 'NR==7{print $2}' dump.final.xyz | awk '{printf("%f",$0)}')
zmin=$(awk 'NR==8{print $1}' dump.final.xyz | awk '{printf("%f",$0)}')
zmax=$(awk 'NR==8{print $2}' dump.final.xyz | awk '{printf("%f",$0)}')

sed -n '10,$ p' dump.final.xyz > ./voro_in1
awk '{print $1,$3,$4,$5}' ./voro_in1 > ./voro_in
g++ -o voro_in_ex voro_in_Trans.cpp
./voro_in_ex
voro++ -o $xmin $xmax $ymin $ymax $zmin $zmax ./voro_in_Trans


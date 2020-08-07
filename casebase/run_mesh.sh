#!/bin/bash



foamCleanTutorials

rm -rf 0

surfaceFeatureExtract -dict system/surfaceFeatureExtractDict | tee log.surfaceFeatureExtract

blockMesh

decomposePar 

#mpirun -np 4 snappyHexMesh -parallel | tee log.snappy
mpirun -np 4 snappyHexMesh -parallel -overwrite| tee log.snappy

mpirun -np 4 checkMesh -parallel | tee log.checkMesh

#reconstructParMesh -latestTime | tee log.reconstructParMesh
reconstructParMesh -constant | tee log.reconstructParMesh

createPatch -overwrite | tee log.createPatch 

checkMesh | tee log.checkMesh

#rm -r 0

#cp -r 0_org 0



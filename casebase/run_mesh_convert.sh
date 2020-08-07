#!/bin/bash



foamCleanTutorials

rm -rf 0

fluent3DMeshToFoam mesh/ascii.msh

cp system/boundary constant/polyMesh/

checkMesh | tee log.checkMesh

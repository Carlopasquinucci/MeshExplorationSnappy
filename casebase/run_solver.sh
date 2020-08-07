 #!/bin/bash



cp -r 0_org 0

decomposePar -force

mpirun -np 4 renumberMesh -overwrite -parallel

mpirun -np 4 potentialFoam -initialiseUBCs -noFunctionObjects -parallel | tee log.potential

mpirun -np 4 simpleFoam -parallel | tee log.simplefoam

mpirun -np 4 postProcess -func Q -parallel -latestTime

mpirun -np 4 postProcess -func vorticity -parallel -latestTime

mpirun -np 4 postProcess -func sample -parallel -latestTime 

# MeshExplorationSnappy
Exploration on the snappyHexMesh parameters using Dakota


## What does

It will perform an exploration on the number of layers, finalLayerThickens and expansionFactor on the snappyHexMesh to calculate the influence of this number on the % of boundary layers created on 5 patches.

## How to run

You can choose betwenn

-dakota dakota_case.in

-dakota -i dakota_case.in -o out out.out

-dakota dakota_case.in | tee out.out

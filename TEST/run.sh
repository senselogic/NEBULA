#!/bin/sh
set -x
../nebula --read-pts IN/triangle.pts --decimate 1 --write-pts OUT/decimated_pts_triangle.pts
../nebula --read-pts IN/triangle.pts --triangulate 1 --write-obj OUT/triangulated_pts_triangle.obj
../nebula --read-xyz IN/triangle.xyz --decimate 1 --write-xyz OUT/decimated_xyz_triangle.xyz
../nebula --read-xyz IN/triangle.xyz --triangulate 1 --write-obj OUT/triangulated_xyz_triangle.obj
../nebula --read-xyz IN/cube.xyz --position-scaling 2 2 2 --read-xyz IN/cube.xyz --write-xyz OUT/merged_xyz_cubes.xyz
../nebula --read-xyz IN/cube.xyz --position-scaling 2 2 2 --read-xyz IN/cube.xyz --decimate 1 --write-xyz OUT/decimated_xyz_cubes.xyz
../nebula --read-xyz IN/cube.xyz --position-scaling 2 2 2 --read-xyz IN/cube.xyz --triangulate 1 --write-obj OUT/triangulated_xyz_cubes.obj
../nebula --read-xyz IN/cube.xyz --scale 1 2 3 --write-xyz OUT/scaled_xyz_cube.xyz
../nebula --read-xyz IN/cube.xyz --scale 2 2 2 --rotate-z 45 --write-xyz OUT/rotated_scaled_xyz_cube.xyz
../nebula --read-xyz IN/cube.xyz --decimate 1 --write-xyz OUT/decimated_xyz_cube.xyz
../nebula --read-xyz IN/cube.xyz --triangulate 1 --write-obj OUT/triangulated_xyz_cube.obj
../nebula --read-pts IN/bunny.pts --decimate 0.01 --write-xyz OUT/decimated_pts_bunny.xyz
../nebula --read-pts IN/bunny.pts --triangulate 0.01 --write-obj OUT/triangulated_pts_bunny.obj
../nebula --read-pts IN/bunny_2.pts --decimate 0.01 --write-xyz OUT/decimated_pts_bunny_2.xyz
../nebula --read-pts IN/bunny_2.pts --triangulate 0.01 --write-obj OUT/triangulated_pts_bunny_2.obj
../nebula --read-pts IN/bunny_3.pts --decimate 0.01 --write-xyz OUT/decimated_pts_bunny_3.xyz
../nebula --read-pts IN/bunny_3.pts --triangulate 0.01 --write-obj OUT/triangulated_pts_bunny_3.obj
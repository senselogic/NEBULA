#!/bin/sh
set -x
../nebula --read-cloud IN/triangle.xyz 0 0 3 3 "" xZY --write-xyz-cloud OUT/flipped_xyz_triangle.xyz
../nebula --read-cloud IN/triangle.pts 0 1 3 7 "" xZYIRGB --write-pts-cloud OUT/flipped_pts_triangle.pts
../nebula --read-cloud IN/triangle.pts 0 1 3 7 "" xZYIRGB --decimate 1 --write-obj-mesh OUT/triangulated_flipped_pts_triangle.obj
../nebula --read-pts-cloud IN/triangle.pts 0 --write-cloud OUT/written_pts_triangle.pts "{{point_count}}\n" "{{x}} {{Z}} {{Y}} {{I}} {{R}} {{G}} {{B}}\n" "\n"
../nebula --read-pts-cloud IN/triangle.pts 0 --write-xyz-cloud OUT/converted_pts_triangle.xyz
../nebula --read-pts-cloud IN/triangle.pts 1 --write-pts-cloud OUT/decimated_pts_triangle.pts
../nebula --read-pts-cloud IN/triangle.pts 1 --write-obj-mesh OUT/triangulated_pts_triangle.obj
../nebula --read-xyz-cloud IN/triangle.xyz 1 --write-xyz-cloud OUT/decimated_xyz_triangle.xyz
../nebula --read-xyz-cloud IN/triangle.xyz 1 --write-obj-mesh OUT/triangulated_xyz_triangle.obj
../nebula --read-xyz-cloud IN/cube.xyz 0 --position-scaling 2 2 2 --read-xyz-cloud IN/cube.xyz 0 --write-xyz-cloud OUT/merged_xyz_cubes.xyz
../nebula --read-xyz-cloud IN/cube.xyz 1 --position-scaling 2 2 2 --read-xyz-cloud IN/cube.xyz 1 --write-xyz-cloud OUT/decimated_merged_xyz_cubes.xyz
../nebula --read-xyz-cloud IN/cube.xyz 1 --position-scaling 2 2 2 --read-xyz-cloud IN/cube.xyz 1 --write-obj-mesh OUT/triangulated_merged_xyz_cubes.obj
../nebula --read-xyz-cloud IN/cube.xyz 0 --scale 1 2 3 --write-xyz-cloud OUT/scaled_xyz_cube.xyz
../nebula --read-xyz-cloud IN/cube.xyz 0 --scale 2 2 2 --rotate-z 45 --write-xyz-cloud OUT/transformed_xyz_cube.xyz
../nebula --read-xyz-cloud IN/cube.xyz 1 --write-xyz-cloud OUT/decimated_xyz_cube.xyz
../nebula --read-xyz-cloud IN/cube.xyz 1 --write-obj-mesh OUT/triangulated_xyz_cube.obj
../nebula --read-pts-cloud IN/bunny.pts 0.01 --write-xyz-cloud OUT/decimated_pts_bunny.xyz
../nebula --read-pts-cloud IN/bunny.pts 0.01 --write-obj-mesh OUT/triangulated_pts_bunny.obj
../nebula --read-pts-cloud IN/bunny_2.pts 0.01 --write-xyz-cloud OUT/decimated_pts_bunny_2.xyz
../nebula --read-pts-cloud IN/bunny_2.pts 0.01 --write-obj-mesh OUT/triangulated_pts_bunny_2.obj
../nebula --read-pts-cloud IN/bunny_3.pts 0.01 --write-xyz-cloud OUT/decimated_pts_bunny_3.xyz
../nebula --read-pts-cloud IN/bunny_3.pts 0.01 --write-obj-mesh OUT/triangulated_pts_bunny_3.obj
../nebula --get-e57-cloud-document IN/triangle.e57 OUT/converted_e57_triangle.xml
../nebula --get-e57-cloud-document IN/triangle_2.e57 OUT/converted_e57_triangle_2.xml
../nebula --get-e57-cloud-document IN/triangle_3.e57 OUT/converted_e57_triangle_3.xml
../nebula --get-e57-cloud-document IN/cube.e57 OUT/converted_e57_cube.xml
../nebula --get-e57-cloud-document IN/cube_2.e57 OUT/converted_e57_cube_2.xml
../nebula --get-e57-cloud-document IN/cube_3.e57 OUT/converted_e57_cube_3.xml
../nebula --get-e57-cloud-document IN/teapot.e57 OUT/converted_e57_teapot.xml
../nebula --get-e57-cloud-document IN/bunny.e57 OUT/converted_e57_bunny.xml
../nebula --read-e57-cloud IN/triangle.e57 0 --write-xyz-cloud OUT/converted_e57_triangle.xyz
../nebula --read-e57-cloud IN/triangle_2.e57 0 --write-xyz-cloud OUT/converted_e57_triangle_2.xyz
../nebula --read-e57-cloud IN/triangle_3.e57 0 --write-xyz-cloud OUT/converted_e57_triangle_3.xyz
../nebula --read-e57-cloud IN/cube.e57 0 --write-xyz-cloud OUT/converted_e57_cube.xyz
../nebula --read-e57-cloud IN/cube_2.e57 0 --write-xyz-cloud OUT/converted_e57_cube_2.xyz
../nebula --read-e57-cloud IN/cube_3.e57 0 --write-xyz-cloud OUT/converted_e57_cube_3.xyz
../nebula --read-e57-cloud IN/teapot.e57 0 --write-xyz-cloud OUT/converted_e57_teapot.xyz
../nebula --read-e57-cloud IN/bunny.e57 0 --write-xyz-cloud OUT/converted_e57_bunny.xyz
../nebula --read-obj-mesh IN/cube.obj --sample 0.1 --write-xyz-cloud OUT/sampled_obj_cube.xyz
../nebula --read-obj-mesh IN/dodecahedron.obj --sample 0.1 --write-xyz-cloud OUT/sampled_obj_dodecahedron.xyz
../nebula --read-obj-mesh IN/teapot.obj --sample 3 --write-xyz-cloud OUT/sampled_obj_teapot.xyz
../nebula --read-obj-mesh IN/bunny.obj --sample 0.01 --write-xyz-cloud OUT/sampled_obj_bunny.xyz

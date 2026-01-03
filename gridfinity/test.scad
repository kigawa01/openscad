// Gridfinity drawer system.
// Intended for Gridfinity bins to sit in the drawers, meaning the outer chest will not fit neatly on to a gridfinity grid.
//
// Original OpenSCAD design was provided by @monniasza
// Inspiration for their design was https://www.printables.com/pl/model/363389
// The design has deviated significantly, I would not consider this compatible with the original.

use <gridfinity_extended/modules/module_gridfinity_cup.scad>
use <gridfinity_extended/modules/module_gridfinity_block.scad>
use <gridfinity_extended/modules/module_gridfinity_baseplate.scad>
include <gridfinity_extended/modules/gridfinity_constants.scad>
include <gridfinity_extended/modules/polyround.scad>
use <gridfinity_extended/modules/module_item_holder.scad>
include <gridfinity_extended/modules/module_patterns.scad>

baseplate(
width = 1,
depth = 1,
outer_width = 1,
outer_depth = 1,
//outer_height = topBasePlateReducedWallHeight,
//magnetSize = topBasePlateMagnetSize,
plateOptions = "default",
plate_corner_radius = 0,
//reducedWallHeight = ,
//reduceWallTaper = topBasePlateReducedWallTaper,
connectorClipEnabled = true
);
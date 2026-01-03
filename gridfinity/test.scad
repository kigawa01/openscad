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

$gci=[1,1,1];
$gc_count=[1,1, 1];
$gc_size=[1,1, 1];
$allowConnectors=[true,true,true,true];

frame_connectors(
connectorClipEnabled=true
);
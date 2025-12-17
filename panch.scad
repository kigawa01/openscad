echo(version = version());

module line(length = 12.5, width = 0.6) {
    rotate([0, 90, 0]) {
        cylinder(h = length, r = width / 2, center = false);
    }
}
module txt(str, length = 12.5, height = 0.2, line = 1) {
    translate([0.3, -4.5 * line, 0]) {
        rotate([0, 0, 0]) {
            linear_extrude(height = height) {
                text(str, size = 4);
            }
        }
    }
}
// simple 2D -> 3D extrusion of a rectangle
color("red") {
    underSize = [9.8, 110, 0.8];

    translate([0, -2, 0])
        cube([underSize[0], underSize[1] + 2, underSize[2]], center = false);

    circleR = underSize[0] / 2;
    circleZ = underSize[2];
    circlePosition = [underSize[0] / 2, underSize[1], 0];
    translate(circlePosition)
        cylinder(h = circleZ, r = circleR, center = false);

    topOverUnderFront = 1.2;
    topSize = [14.5, underSize[1] + circleR + topOverUnderFront, 1.1];
    topPosition = [-(topSize[0] - underSize[0]) / 2, 0, 0.8];
    topGrooveSize = [
            topSize[0] - 2,
                topSize[1] - 2.2 + 1,
            0.5 + 1,
        ];
    topGroovePosition = [
            topPosition[0] - (topGrooveSize[0] - topSize[0]) / 2,
        -1,
                    topPosition[2] + topSize[2] - topGrooveSize[2] + 1,
        ];

    difference() {
        translate(topPosition)
            cube(topSize, center = false);

        translate(topGroovePosition)
            cube(topGrooveSize, center = false);
    }
    hemspherePosition = [circlePosition[0], circlePosition[1],
            topGroovePosition[2] - 0.5
        ];
    translate(hemspherePosition) {
        difference() {
            sphere(r = 2, $fn = 100);
            translate([-20, -20, -20])
                cube([40, 40, 20]);
        }
    }
    stopperSize = [topSize[0], 2, 10];
    stopperPosition = [topPosition[0], -2, topPosition[2]];
    translate(stopperPosition) {
        cube(stopperSize, center = false);
    }


    translate([topGroovePosition[0], 10.1, topGroovePosition[2]]) {
        line();
        txt("888");
    }
    translate([topGroovePosition[0], 15.2, topGroovePosition[2]]) {
        line();
        txt("A5-E");
    }
    translate([topGroovePosition[0], 32.2, topGroovePosition[2]]) {
        line();
        txt("B6-S");
        txt("B5-E",line=2);
    }
    translate([topGroovePosition[0], 46, topGroovePosition[2]]) {
        line();
        txt("A5-S");
        txt("A4-E",line=2);
    }
    translate([topGroovePosition[0], 70.1, topGroovePosition[2]]) {
        line();
        txt("B5-S");
        txt("B4-E",line=2);
    }
    translate([topGroovePosition[0], 90.1, topGroovePosition[2]]) {
        line();
        txt("A4-S");
        txt("A3-E",line=2);
    }
}
// using the scale parameter a frustum can be constructed
//color("green")
//    translate([-30, 0, 0])
//        linear_extrude(height = 20, scale = 0.2)
//            square([20, 10], center = true);

// with twist the extruded shape will rotate around the Z axis
//color("cyan")
//    translate([30, 0, 0])
//        linear_extrude(height = 20, twist = 90)
//            square([20, 10], center = true);

// combining both relatively complex shapes can be created
//color("gray")
//    translate([0, 30, 0])
//        linear_extrude(height = 40, twist = -360, scale = 0, center = true, slices = 200)
//            square([20, 10], center = true);

// Written in 2015 by Torsten Paul <Torsten.Paul@gmx.de>
//
// To the extent possible under law, the author(s) have dedicated all
// copyright and related and neighboring rights to this software to the
// public domain worldwide. This software is distributed without any
// warranty.
//
// You should have received a copy of the CC0 Public Domain
// Dedication along with this software.
// If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

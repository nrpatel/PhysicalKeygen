// Physical Keygen - by Nirav Patel <http://eclecti.cc>
//
// Parametric Key Gauges to easily decode existing keys.
//
// This work is licensed under a Creative Commons Attribution 3.0 Unported License.

use <sc1.scad>
use <kw1.scad>
use <FreeSans.scad>

module letter(charcode) {
    scale([0.08, 0.08, 0.3]) FreeSans(charcode);
}

gauge_wall = 5.0;

module gauge(key_width, depth_inc, num_depths, name) {
    width = 80.0;
    height = 20.0;
    thickness = 2.0;
    key_width = key_width + 0.35; // give a little extra space for the key
    wall = gauge_wall;
    g_w = (width-4*wall)/num_depths;
    depth_chars = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
    
    difference() {
        rounded([width, height, thickness], 5);
        for (i = [0:num_depths-1]) {
            translate([3*wall+i*g_w, wall, 0.0]) {
                // cut out the channel for the pin depth
                cube([g_w, key_width-depth_inc*i, thickness+1.0]);
                // cut out the number character for the depth
                translate([g_w/2, key_width-depth_inc*i+1.0, thickness]) letter(depth_chars[i]);
            }
        }
        // keychain hole
        translate([width-wall, height-wall, 0.0]) cylinder(r=2.5, h=thickness);
        // single character reprensenting the key type
        translate([wall, height-wall, thickness]) letter(name);
    }
}

module sc1_gauge() {
    difference() {
        gauge(mm(.335), mm(.015), 10, "S");
        // cut out a keyhole to test if the gauge is the right one for the key
        // FIXME: minkowski isn't working here, so fake it by unioning scales
        union() {
            for (i = [1.0,1.15,1.3])
                translate([gauge_wall, gauge_wall, 10.0]) rotate([0, 90, 0]) scale([i, i, i]) sc1([0, 0, 0, 0, 0]);
        }
    }
}

module kw1_gauge() {
    difference() {
        gauge(mm(.337), mm(.023), 8, "K");
        // cut out a keyhole to test if the gauge is the right one for the key
        // FIXME: minkowski isn't working here, so fake it by unioning scales
        union() {
            for (i = [1.0,1.15,1.3])
                translate([gauge_wall, gauge_wall, 10.0]) rotate([0, 90, 0]) scale([i, i, i]) kw1([0, 0, 0, 0, 0]);
        }
    }
}

sc1_gauge();
translate([0.0, 30.0, 0.0]) kw1_gauge();


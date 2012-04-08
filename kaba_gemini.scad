// Physical Keygen - by Nirav Patel <http://eclecti.cc>
//
// Generate a duplicate of an ABUS Plus key by editing the last line of the file
// and entering in the key code of the lock.  If you don't know the key code,
// you're going to need to get creative.  The first digit of the code is on the
// side closest to the shoulder. 6 is the minimum cut, which is uncut. 1 (0?)
// is the maximum cut.
//
// This work is licensed under a Creative Commons Attribution 3.0 Unported License.

module key_profile(width, length) {
    union() {
        // Handle
        hull() {
            translate([-11.5, 0, 0]) circle(r=11.5);
            translate([-10.0, -6.5, 0]) square([10.0, 13.0]);
        }
        // Blade
        hull() {
            translate([length-width/2, 0, 0]) circle(r=width/2, $fn=16);
            translate([0, -width/2, 0]) square([length-width/2, width]);
        }
    }
}

module rounded_edge(length, diameter) {
    difference() {
        translate([0, -diameter/2, -diameter]) cube([length, diameter, diameter]);
        rotate([0, 90, 0]) cylinder(h=length, r=diameter/2, $fn=32);
    }
}

module blank(width, length, thickness) {
    c_d = 9.6; // lock cylinder diameter

    difference() {
        linear_extrude(height=thickness, center=false, convexity=10, twist=0) key_profile(width, length);
        // key ring hole
        translate([-17, 0, -1]) cylinder(r=3,h=thickness+2);
        // round the edges
        translate([0, -c_d/2+width/2, thickness/2]) rotate([90, 0, 0]) rounded_edge(length, c_d);
        translate([0, c_d/2-width/2, thickness/2]) rotate([-90, 0, 0]) rounded_edge(length, c_d);
        // round the tip
        translate([length, 0, thickness/2]) rotate([0, 225, 0]) translate([0, 0, c_d/2]) rounded_edge(length, c_d);
        rotate([180, 0, 0]) translate([length, 0, -thickness/2]) rotate([0, 225, 0]) translate([0, 0, c_d/2]) rounded_edge(length, c_d);
    }
}

module bit() {
    scale([2, 1, 1]) cylinder(h=2, r1=0.5, r2=2.3, $fn=16);
}

module wbit() {
    scale([1, 1.5, 1]) bit();
}

module kaba_gemini(left, right, edge) {
    
    thickness = 2.45;
    width = 6.77;
    length = 25;
    offset = 0.9;
    spacing = 3.5;
    
    difference() {
        blank(width, length, thickness);
        for (i = [0:5]) {
            translate([0, 0, thickness]) rotate([-15, 0, 0]) translate([3.25+i*spacing, -offset, -(5-left[i])*0.35]) wbit();
        }
        for (i = [0:4]) {
            mirror([0, 0, 1]) rotate([-15, 0, 0]) translate([5.1+i*spacing, -offset, -(5-right[i])*0.35]) wbit();
        }
        for (i = [0:9]) {
            translate([4.25+i*spacing/2, -width/2+(5-edge[i])*0.35, thickness/2]) rotate([90, 0, 0]) bit();
        }
    }
}

kaba_gemini([3,4,4,4,2,3],[1,3,1,2,4],[5,5,1,5,3,5,2,5,3,5]);

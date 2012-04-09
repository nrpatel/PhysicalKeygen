/*
Free UCS scalable fonts is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License as published
by the Free Software Foundation; either version 3 of the License, or
(at your option) any later version.

The fonts are distributed in the hope that they will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

As a special exception, if you create a document which uses this font, and
embed this font or unaltered portions of this font into the document, this
font does not by itself cause the resulting document to be covered by the
GNU General Public License. This exception does not however invalidate any
other reasons why the document might be covered by the GNU General Public
License. If you modify this font, you may extend this exception to your
version of the font, but you are not obligated to do so.  If you do not
wish to do so, delete this exception statement from your version.
*/

module BezConic(p0,p1,p2,steps=5,h=10) {

	stepsize1 = (p1-p0)/steps;
	stepsize2 = (p2-p1)/steps;

	for (i=[0:steps-1]) {
		assign(point1 = p0+stepsize1*i) 
		assign(point2 = p1+stepsize2*i) 
		assign(point3 = p0+stepsize1*(i+1))
		assign(point4 = p1+stepsize2*(i+1))  {
			assign(bpoint1 = point1+(point2-point1)*(i/steps))
			assign(bpoint2 = point3+(point4-point3)*((i+1)/steps)) {
				//polygon(points=[bpoint1,bpoint2,p1]);
				linear_extrude(height=h) polygon(points=[bpoint1,bpoint2,p1]);
			}
		}
	}
}

module FreeSans_contour00x21_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[13, 47], [13.0, 36.0], [13, 25], 
		[12.5, 18.0], [12, 11], [10.5, 11.0], 
		[9, 11], [8.5, 18.0], [8, 25], 
		[8.0, 36.0], [8, 47], [10.5, 47.0], 
		 ]);
}

module FreeSans_contour00x21_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x21_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x21(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x21_skeleton();
			FreeSans_contour00x21_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x21_subtractive_curves(steps);
	}
}

module FreeSans_contour10x21_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[13, 7], [13.0, 3.5], [13, 0], 
		[10.5, 0.0], [8, 0], [8.0, 3.5], 
		[8, 7],[10.5, 7.0], ]);
}

module FreeSans_contour10x21_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x21_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x21(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x21_skeleton();
			FreeSans_contour10x21_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x21_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x21(steps=2) {
	difference() {
		FreeSans_contour00x21(steps);
		
	}
}

module FreeSans_chunk20x21(steps=2) {
	difference() {
		FreeSans_contour10x21(steps);
		
	}
}

FreeSans_bbox0x21=[[8, 0], [13, 47]];

module FreeSans_letter0x21(detail=2) {
	FreeSans_chunk10x21(steps=detail);
	FreeSans_chunk20x21(steps=detail);
} //end skeleton

module FreeSans_contour00x22_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 45], [6.0, 45.0], [9, 45], 
		[9.0, 41.5], [9, 38], [8.5, 34.0], 
		[8, 30], [6.5, 30.0], [5, 30], 
		[4.0, 34.0], [3, 38], [3.0, 41.5], 
		 ]);
}

module FreeSans_contour00x22_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x22_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x22(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x22_skeleton();
			FreeSans_contour00x22_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x22_subtractive_curves(steps);
	}
}

module FreeSans_contour10x22_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 45], [17.0, 45.0], [20, 45], 
		[20.0, 41.5], [20, 38], [19.0, 34.0], 
		[18, 30], [16.5, 30.0], [15, 30], 
		[14.5, 34.0], [14, 38], [14.0, 41.5], 
		 ]);
}

module FreeSans_contour10x22_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x22_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x22(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x22_skeleton();
			FreeSans_contour10x22_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x22_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x22(steps=2) {
	difference() {
		FreeSans_contour00x22(steps);
		
	}
}

module FreeSans_chunk20x22(steps=2) {
	difference() {
		FreeSans_contour10x22(steps);
		
	}
}

FreeSans_bbox0x22=[[3, 30], [20, 45]];

module FreeSans_letter0x22(detail=2) {
	FreeSans_chunk10x22(steps=detail);
	FreeSans_chunk20x22(steps=detail);
} //end skeleton

module FreeSans_contour00x23_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[31, 45], [30.0, 38.5], [29, 32], 
		[32.0, 32.0], [35, 32], [35.0, 30.0], 
		[35, 28], [31.5, 28.0], [28, 28], 
		[27.0, 22.5], [26, 17], [29.5, 17.0], 
		[33, 17], [33.0, 14.5], [33, 12], 
		[29.0, 12.0], [25, 12], [24.0, 5.5], 
		[23, -1], [20.5, -1.0], [18, -1], 
		[19.0, 5.5], [20, 12], [16.0, 12.0], 
		[12, 12], [11.0, 5.5], [10, -1], 
		[7.5, -1.0], [5, -1], [6.0, 5.5], 
		[7, 12], [4.0, 12.0], [1, 12], 
		[1.0, 14.5], [1, 17], [4.5, 17.0], 
		[8, 17], [9.0, 22.5], [10, 28], 
		[6.5, 28.0], [3, 28], [3.0, 30.0], 
		[3, 32], [7.0, 32.0], [11, 32], 
		[12.0, 38.5], [13, 45], [15.5, 45.0], 
		[18, 45], [17.0, 38.5], [16, 32], 
		[20.0, 32.0], [24, 32], [25.0, 38.5], 
		[26, 45],[28.5, 45.0], ]);
}

module FreeSans_contour00x23_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x23_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x23(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x23_skeleton();
			FreeSans_contour00x23_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x23_subtractive_curves(steps);
	}
}

module FreeSans_contour10x23_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[23, 28], [19.0, 28.0], [15, 28], 
		[14.0, 22.5], [13, 17], [17.0, 17.0], 
		[21, 17],[22.0, 22.5], ]);
}

module FreeSans_contour10x23_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x23_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x23(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x23_skeleton();
			FreeSans_contour10x23_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x23_additive_curves(steps);
	}
}

module FreeSans_chunk10x23(steps=2) {
	difference() {
		FreeSans_contour00x23(steps);
		scale([1,1,1.1]) FreeSans_contour10x23(steps);
	}
}

FreeSans_bbox0x23=[[1, -1], [35, 45]];

module FreeSans_letter0x23(detail=2) {
	FreeSans_chunk10x23(steps=detail);
} //end skeleton

module FreeSans_contour00x24_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[33, 12], [33, 6], [29.5, 2.5], 
		[26, -1], [19, -1], [19.0, -4.5], 
		[19, -8], [17.5, -8.0], [16, -8], 
		[16.0, -4.5], [16, -1], [9, -1], 
		[5.5, 2.5], [2, 6], [2, 12], 
		[2.0, 12.5], [2, 13], [4.5, 13.0], 
		[7, 13], [7, 12], [7.0, 11.5], 
		[7, 11], [7.5, 10.0], [8, 9], 
		[8.0, 8.5], [8, 8], [8.5, 7.0], 
		[9, 6], [9.5, 5.5], [10, 5], 
		[11.0, 4.5], [12, 4], [13.0, 3.5], 
		[14, 3], [16, 3], [16.0, 11.5], 
		[16, 20], [10, 22], [7, 24], 
		[3, 27], [3, 33], [3, 38], 
		[6.0, 41.5], [9, 45], [16, 46], 
		[16.0, 47.5], [16, 49], [17.5, 49.0], 
		[19, 49], [19.0, 47.5], [19, 46], 
		[25, 45], [28.5, 42.0], [32, 39], 
		[32, 33], [29.5, 33.0], [27, 33], 
		[27, 37], [25.0, 39.0], [23, 41], 
		[19, 41], [19.0, 33.0], [19, 25], 
		[20, 25], [21.5, 24.5], [23, 24], 
		[24.0, 24.0], [25, 24], [26.5, 23.0], 
		[28, 22], [29.0, 21.5], [30, 21], 
		[31.0, 19.5], [32, 18], [32.5, 16.5], 
		[33, 15], ]);
}

module FreeSans_contour00x24_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([7, 13], [7, 12], [7.0, 11.5],steps,10);
	BezConic([7.0, 11.5], [7, 11], [7.5, 10.0],steps,10);
	BezConic([8.0, 8.5], [8, 8], [8.5, 7.0],steps,10);
	BezConic([8.5, 7.0], [9, 6], [9.5, 5.5],steps,10);
	BezConic([9.5, 5.5], [10, 5], [11.0, 4.5],steps,10);
	BezConic([11.0, 4.5], [12, 4], [13.0, 3.5],steps,10);
	BezConic([13.0, 3.5], [14, 3], [16, 3],steps,10);
	BezConic([27, 33], [27, 37], [25.0, 39.0],steps,10);
	BezConic([25.0, 39.0], [23, 41], [19, 41],steps,10);
	BezConic([21.5, 24.5], [23, 24], [24.0, 24.0],steps,10);
	BezConic([26.5, 23.0], [28, 22], [29.0, 21.5],steps,10);
}
}

module FreeSans_contour00x24_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([33, 12], [33, 6], [29.5, 2.5],steps,10);
	BezConic([29.5, 2.5], [26, -1], [19, -1],steps,10);
	BezConic([16, -1], [9, -1], [5.5, 2.5],steps,10);
	BezConic([5.5, 2.5], [2, 6], [2, 12],steps,10);
	BezConic([7.5, 10.0], [8, 9], [8.0, 8.5],steps,10);
	BezConic([16, 20], [10, 22], [7, 24],steps,10);
	BezConic([7, 24], [3, 27], [3, 33],steps,10);
	BezConic([3, 33], [3, 38], [6.0, 41.5],steps,10);
	BezConic([6.0, 41.5], [9, 45], [16, 46],steps,10);
	BezConic([19, 46], [25, 45], [28.5, 42.0],steps,10);
	BezConic([28.5, 42.0], [32, 39], [32, 33],steps,10);
	BezConic([19, 25], [20, 25], [21.5, 24.5],steps,10);
	BezConic([24.0, 24.0], [25, 24], [26.5, 23.0],steps,10);
	BezConic([29.0, 21.5], [30, 21], [31.0, 19.5],steps,10);
	BezConic([31.0, 19.5], [32, 18], [32.5, 16.5],steps,10);
	BezConic([32.5, 16.5], [33, 15], [33, 12],steps,10);
}
}

module FreeSans_contour00x24(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x24_skeleton();
			FreeSans_contour00x24_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x24_subtractive_curves(steps);
	}
}

module FreeSans_contour10x24_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[16, 26], [16.0, 33.5], [16, 41], 
		[12, 41], [10.0, 39.0], [8, 37], 
		[8, 34],[8, 28], ]);
}

module FreeSans_contour10x24_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([16, 41], [12, 41], [10.0, 39.0],steps,10);
	BezConic([10.0, 39.0], [8, 37], [8, 34],steps,10);
	BezConic([8, 34], [8, 28], [16, 26],steps,10);
}
}

module FreeSans_contour10x24_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x24(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x24_skeleton();
			FreeSans_contour10x24_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x24_additive_curves(steps);
	}
}

module FreeSans_contour20x24_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[19, 3], [24, 3], [26.0, 5.5], 
		[28, 8], [28, 12], [28, 15], 
		[26.0, 16.5], [24, 18], [19, 20], 
		[19.0, 11.5], ]);
}

module FreeSans_contour20x24_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([19, 3], [24, 3], [26.0, 5.5],steps,10);
	BezConic([26.0, 5.5], [28, 8], [28, 12],steps,10);
	BezConic([28, 12], [28, 15], [26.0, 16.5],steps,10);
	BezConic([26.0, 16.5], [24, 18], [19, 20],steps,10);
}
}

module FreeSans_contour20x24_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour20x24(steps=2) {
	difference() {
		union() {
			FreeSans_contour20x24_skeleton();
			FreeSans_contour20x24_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour20x24_additive_curves(steps);
	}
}

module FreeSans_chunk10x24(steps=2) {
	difference() {
		FreeSans_contour00x24(steps);
		scale([1,1,1.1]) FreeSans_contour10x24(steps);
	scale([1,1,1.1]) FreeSans_contour20x24(steps);
	}
}

FreeSans_bbox0x24=[[2, -8], [33, 49]];

module FreeSans_letter0x24(detail=2) {
	FreeSans_chunk10x24(steps=detail);
} //end skeleton

module FreeSans_contour00x25_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[13, 44], [17, 44], [20.5, 40.5], 
		[24, 37], [24, 33], [24, 28], 
		[20.5, 25.0], [17, 22], [12.5, 22.0], 
		[8, 22], [5.0, 25.0], [2, 28], 
		[2.0, 32.5], [2, 37], [5.0, 40.5], 
		[8, 44], ]);
}

module FreeSans_contour00x25_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x25_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([13, 44], [17, 44], [20.5, 40.5],steps,10);
	BezConic([20.5, 40.5], [24, 37], [24, 33],steps,10);
	BezConic([24, 33], [24, 28], [20.5, 25.0],steps,10);
	BezConic([20.5, 25.0], [17, 22], [12.5, 22.0],steps,10);
	BezConic([12.5, 22.0], [8, 22], [5.0, 25.0],steps,10);
	BezConic([5.0, 25.0], [2, 28], [2.0, 32.5],steps,10);
	BezConic([2.0, 32.5], [2, 37], [5.0, 40.5],steps,10);
	BezConic([5.0, 40.5], [8, 44], [13, 44],steps,10);
}
}

module FreeSans_contour00x25(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x25_skeleton();
			FreeSans_contour00x25_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x25_subtractive_curves(steps);
	}
}

module FreeSans_contour10x25_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[13, 39], [10, 39], [8.0, 37.5], 
		[6, 36], [6, 33], [6, 30], 
		[8.0, 28.0], [10, 26], [13, 26], 
		[15, 26], [17.0, 28.0], [19, 30], 
		[19, 33], [19, 36], [17.0, 37.5], 
		[15, 39], ]);
}

module FreeSans_contour10x25_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([13, 39], [10, 39], [8.0, 37.5],steps,10);
	BezConic([8.0, 37.5], [6, 36], [6, 33],steps,10);
	BezConic([6, 33], [6, 30], [8.0, 28.0],steps,10);
	BezConic([8.0, 28.0], [10, 26], [13, 26],steps,10);
	BezConic([13, 26], [15, 26], [17.0, 28.0],steps,10);
	BezConic([17.0, 28.0], [19, 30], [19, 33],steps,10);
	BezConic([19, 33], [19, 36], [17.0, 37.5],steps,10);
	BezConic([17.0, 37.5], [15, 39], [13, 39],steps,10);
}
}

module FreeSans_contour10x25_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x25(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x25_skeleton();
			FreeSans_contour10x25_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x25_additive_curves(steps);
	}
}

module FreeSans_contour20x25_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[39, 45], [41.0, 45.0], [43, 45], 
		[30.5, 22.0], [18, -1], [16.0, -1.0], 
		[14, -1],[26.5, 22.0], ]);
}

module FreeSans_contour20x25_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour20x25_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour20x25(steps=2) {
	difference() {
		union() {
			FreeSans_contour20x25_skeleton();
			FreeSans_contour20x25_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour20x25_subtractive_curves(steps);
	}
}

module FreeSans_contour30x25_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[44, 21], [49, 21], [52.0, 17.5], 
		[55, 14], [55, 10], [55, 5], 
		[52.0, 2.0], [49, -1], [44, -1], 
		[40, -1], [36.5, 2.0], [33, 5], 
		[33.0, 9.5], [33, 14], [36.5, 17.5], 
		[40, 21], ]);
}

module FreeSans_contour30x25_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour30x25_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([44, 21], [49, 21], [52.0, 17.5],steps,10);
	BezConic([52.0, 17.5], [55, 14], [55, 10],steps,10);
	BezConic([55, 10], [55, 5], [52.0, 2.0],steps,10);
	BezConic([52.0, 2.0], [49, -1], [44, -1],steps,10);
	BezConic([44, -1], [40, -1], [36.5, 2.0],steps,10);
	BezConic([36.5, 2.0], [33, 5], [33.0, 9.5],steps,10);
	BezConic([33.0, 9.5], [33, 14], [36.5, 17.5],steps,10);
	BezConic([36.5, 17.5], [40, 21], [44, 21],steps,10);
}
}

module FreeSans_contour30x25(steps=2) {
	difference() {
		union() {
			FreeSans_contour30x25_skeleton();
			FreeSans_contour30x25_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour30x25_subtractive_curves(steps);
	}
}

module FreeSans_contour40x25_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[44, 16], [41, 16], [39.5, 14.0], 
		[38, 12], [38, 10], [38, 7], 
		[39.5, 5.0], [41, 3], [44, 3], 
		[47, 3], [49.0, 5.0], [51, 7], 
		[51, 10], [51, 12], [49.0, 14.0], 
		[47, 16], ]);
}

module FreeSans_contour40x25_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([44, 16], [41, 16], [39.5, 14.0],steps,10);
	BezConic([39.5, 14.0], [38, 12], [38, 10],steps,10);
	BezConic([38, 10], [38, 7], [39.5, 5.0],steps,10);
	BezConic([39.5, 5.0], [41, 3], [44, 3],steps,10);
	BezConic([44, 3], [47, 3], [49.0, 5.0],steps,10);
	BezConic([49.0, 5.0], [51, 7], [51, 10],steps,10);
	BezConic([51, 10], [51, 12], [49.0, 14.0],steps,10);
	BezConic([49.0, 14.0], [47, 16], [44, 16],steps,10);
}
}

module FreeSans_contour40x25_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour40x25(steps=2) {
	difference() {
		union() {
			FreeSans_contour40x25_skeleton();
			FreeSans_contour40x25_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour40x25_additive_curves(steps);
	}
}

module FreeSans_chunk10x25(steps=2) {
	difference() {
		FreeSans_contour00x25(steps);
		scale([1,1,1.1]) FreeSans_contour10x25(steps);
	}
}

module FreeSans_chunk20x25(steps=2) {
	difference() {
		FreeSans_contour20x25(steps);
		
	}
}

module FreeSans_chunk30x25(steps=2) {
	difference() {
		FreeSans_contour30x25(steps);
		scale([1,1,1.1]) FreeSans_contour40x25(steps);
	}
}

FreeSans_bbox0x25=[[2, -1], [55, 45]];

module FreeSans_letter0x25(detail=2) {
	FreeSans_chunk10x25(steps=detail);
	FreeSans_chunk20x25(steps=detail);
	FreeSans_chunk30x25(steps=detail);
} //end skeleton

module FreeSans_contour00x26_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[30, 5], [27, 2], [25, 1], 
		[21, -1], [16, -1], [11, -1], 
		[7.0, 2.5], [3, 6], [3, 11], 
		[3, 16], [5.5, 18.5], [8, 21], 
		[14, 25], [11, 29], [10.0, 31.0], 
		[9, 33], [9, 35], [9, 40], 
		[12.0, 42.5], [15, 45], [19.5, 45.0], 
		[24, 45], [27.0, 42.5], [30, 40], 
		[30, 35], [30, 32], [28.0, 29.5], 
		[26, 27], [21, 24], [25.5, 19.0], 
		[30, 14], [32, 17], [32, 21], 
		[32.0, 21.0], [32, 21], [34.5, 21.0], 
		[37, 21], [37, 15], [33, 10], 
		[37.0, 5.0], [41, 0], [37.5, 0.0], 
		[34, 0],[32.0, 2.5], ]);
}

module FreeSans_contour00x26_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([30, 14], [32, 17], [32, 21],steps,10);
}
}

module FreeSans_contour00x26_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([30, 5], [27, 2], [25, 1],steps,10);
	BezConic([25, 1], [21, -1], [16, -1],steps,10);
	BezConic([16, -1], [11, -1], [7.0, 2.5],steps,10);
	BezConic([7.0, 2.5], [3, 6], [3, 11],steps,10);
	BezConic([3, 11], [3, 16], [5.5, 18.5],steps,10);
	BezConic([5.5, 18.5], [8, 21], [14, 25],steps,10);
	BezConic([14, 25], [11, 29], [10.0, 31.0],steps,10);
	BezConic([10.0, 31.0], [9, 33], [9, 35],steps,10);
	BezConic([9, 35], [9, 40], [12.0, 42.5],steps,10);
	BezConic([12.0, 42.5], [15, 45], [19.5, 45.0],steps,10);
	BezConic([19.5, 45.0], [24, 45], [27.0, 42.5],steps,10);
	BezConic([27.0, 42.5], [30, 40], [30, 35],steps,10);
	BezConic([30, 35], [30, 32], [28.0, 29.5],steps,10);
	BezConic([28.0, 29.5], [26, 27], [21, 24],steps,10);
	BezConic([37, 21], [37, 15], [33, 10],steps,10);
}
}

module FreeSans_contour00x26(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x26_skeleton();
			FreeSans_contour00x26_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x26_subtractive_curves(steps);
	}
}

module FreeSans_contour10x26_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 28], [22, 30], [23.5, 31.5], 
		[25, 33], [25, 35], [25, 38], 
		[23.5, 39.5], [22, 41], [19, 41], 
		[17, 41], [15.5, 39.5], [14, 38], 
		[14, 35], [14, 34], [14.5, 32.5], 
		[15, 31], ]);
}

module FreeSans_contour10x26_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([18, 28], [22, 30], [23.5, 31.5],steps,10);
	BezConic([23.5, 31.5], [25, 33], [25, 35],steps,10);
	BezConic([25, 35], [25, 38], [23.5, 39.5],steps,10);
	BezConic([23.5, 39.5], [22, 41], [19, 41],steps,10);
	BezConic([19, 41], [17, 41], [15.5, 39.5],steps,10);
	BezConic([15.5, 39.5], [14, 38], [14, 35],steps,10);
	BezConic([14, 35], [14, 34], [14.5, 32.5],steps,10);
	BezConic([14.5, 32.5], [15, 31], [18, 28],steps,10);
}
}

module FreeSans_contour10x26_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x26(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x26_skeleton();
			FreeSans_contour10x26_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x26_additive_curves(steps);
	}
}

module FreeSans_contour20x26_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[27, 9], [22.0, 15.5], [17, 22], 
		[12, 19], [10.5, 16.5], [9, 14], 
		[9, 12], [9, 8], [11.5, 6.0], 
		[14, 4], [17, 4], [22, 4], 
		 ]);
}

module FreeSans_contour20x26_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17, 22], [12, 19], [10.5, 16.5],steps,10);
	BezConic([10.5, 16.5], [9, 14], [9, 12],steps,10);
	BezConic([9, 12], [9, 8], [11.5, 6.0],steps,10);
	BezConic([11.5, 6.0], [14, 4], [17, 4],steps,10);
	BezConic([17, 4], [22, 4], [27, 9],steps,10);
}
}

module FreeSans_contour20x26_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour20x26(steps=2) {
	difference() {
		union() {
			FreeSans_contour20x26_skeleton();
			FreeSans_contour20x26_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour20x26_additive_curves(steps);
	}
}

module FreeSans_chunk10x26(steps=2) {
	difference() {
		FreeSans_contour00x26(steps);
		scale([1,1,1.1]) FreeSans_contour10x26(steps);
	scale([1,1,1.1]) FreeSans_contour20x26(steps);
	}
}

FreeSans_bbox0x26=[[3, -1], [41, 45]];

module FreeSans_letter0x26(detail=2) {
	FreeSans_chunk10x26(steps=detail);
} //end skeleton

module FreeSans_contour00x27_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 45], [6.0, 45.0], [9, 45], 
		[9.0, 41.5], [9, 38], [8.0, 34.0], 
		[7, 30], [6.0, 30.0], [5, 30], 
		[4.0, 34.0], [3, 38], [3.0, 41.5], 
		 ]);
}

module FreeSans_contour00x27_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x27_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x27(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x27_skeleton();
			FreeSans_contour00x27_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x27_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x27(steps=2) {
	difference() {
		FreeSans_contour00x27(steps);
		
	}
}

FreeSans_bbox0x27=[[3, 30], [9, 45]];

module FreeSans_letter0x27(detail=2) {
	FreeSans_chunk10x27(steps=detail);
} //end skeleton

module FreeSans_contour00x28_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[15, 47], [17.0, 47.0], [19, 47], 
		[10, 33], [10, 17], [10, 1], 
		[19, -14], [17.0, -14.0], [15, -14], 
		[10, -7], [7.5, 1.0], [5, 9], 
		[5.0, 16.5], [5, 24], [7.5, 32.0], 
		[10, 40], ]);
}

module FreeSans_contour00x28_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([19, 47], [10, 33], [10, 17],steps,10);
	BezConic([10, 17], [10, 1], [19, -14],steps,10);
}
}

module FreeSans_contour00x28_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([15, -14], [10, -7], [7.5, 1.0],steps,10);
	BezConic([7.5, 1.0], [5, 9], [5.0, 16.5],steps,10);
	BezConic([5.0, 16.5], [5, 24], [7.5, 32.0],steps,10);
	BezConic([7.5, 32.0], [10, 40], [15, 47],steps,10);
}
}

module FreeSans_contour00x28(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x28_skeleton();
			FreeSans_contour00x28_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x28_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x28(steps=2) {
	difference() {
		FreeSans_contour00x28(steps);
		
	}
}

FreeSans_bbox0x28=[[5, -14], [19, 47]];

module FreeSans_letter0x28(detail=2) {
	FreeSans_chunk10x28(steps=detail);
} //end skeleton

module FreeSans_contour00x29_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[6, -14], [4.0, -14.0], [2, -14], 
		[11, 1], [11, 17], [11, 32], 
		[2, 47], [4.0, 47.0], [6, 47], 
		[11, 40], [13.5, 32.0], [16, 24], 
		[16.0, 16.5], [16, 9], [13.5, 1.0], 
		[11, -7], ]);
}

module FreeSans_contour00x29_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([2, -14], [11, 1], [11, 17],steps,10);
	BezConic([11, 17], [11, 32], [2, 47],steps,10);
}
}

module FreeSans_contour00x29_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([6, 47], [11, 40], [13.5, 32.0],steps,10);
	BezConic([13.5, 32.0], [16, 24], [16.0, 16.5],steps,10);
	BezConic([16.0, 16.5], [16, 9], [13.5, 1.0],steps,10);
	BezConic([13.5, 1.0], [11, -7], [6, -14],steps,10);
}
}

module FreeSans_contour00x29(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x29_skeleton();
			FreeSans_contour00x29_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x29_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x29(steps=2) {
	difference() {
		FreeSans_contour00x29(steps);
		
	}
}

FreeSans_bbox0x29=[[2, -14], [16, 47]];

module FreeSans_letter0x29(detail=2) {
	FreeSans_chunk10x29(steps=detail);
} //end skeleton

module FreeSans_contour00x2a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[10, 47], [12.0, 47.0], [14, 47], 
		[14.0, 43.0], [14, 39], [17.5, 40.5], 
		[21, 42], [21.5, 40.0], [22, 38], 
		[18.5, 37.0], [15, 36], [17.5, 33.5], 
		[20, 31], [18.0, 29.5], [16, 28], 
		[14.0, 31.0], [12, 34], [10.0, 31.0], 
		[8, 28], [6.5, 29.5], [5, 31], 
		[7.0, 33.5], [9, 36], [6.0, 37.0], 
		[3, 38], [3.5, 40.0], [4, 42], 
		[7.5, 40.5], [11, 39], [10.5, 43.0], 
		 ]);
}

module FreeSans_contour00x2a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x2a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x2a(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x2a_skeleton();
			FreeSans_contour00x2a_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x2a_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x2a(steps=2) {
	difference() {
		FreeSans_contour00x2a(steps);
		
	}
}

FreeSans_bbox0x2a=[[3, 28], [22, 47]];

module FreeSans_letter0x2a(detail=2) {
	FreeSans_chunk10x2a(steps=detail);
} //end skeleton

module FreeSans_contour00x2b_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[34, 17], [34.0, 15.0], [34, 13], 
		[27.5, 13.0], [21, 13], [21.0, 6.0], 
		[21, -1], [18.5, -1.0], [16, -1], 
		[16.0, 6.0], [16, 13], [9.5, 13.0], 
		[3, 13], [3.0, 15.0], [3, 17], 
		[9.5, 17.0], [16, 17], [16.0, 23.5], 
		[16, 30], [18.5, 30.0], [21, 30], 
		[21.0, 23.5], [21, 17], [27.5, 17.0], 
		 ]);
}

module FreeSans_contour00x2b_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x2b_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x2b(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x2b_skeleton();
			FreeSans_contour00x2b_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x2b_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x2b(steps=2) {
	difference() {
		FreeSans_contour00x2b(steps);
		
	}
}

FreeSans_bbox0x2b=[[3, -1], [34, 30]];

module FreeSans_letter0x2b(detail=2) {
	FreeSans_chunk10x2b(steps=detail);
} //end skeleton

module FreeSans_contour00x2c_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[6, 7], [9.0, 7.0], [12, 7], 
		[12.0, 3.0], [12, -1], [12, -9], 
		[6, -9], [6.0, -8.0], [6, -7], 
		[8, -7], [8.5, -5.5], [9, -4], 
		[9, -1], [9.0, -0.5], [9, 0], 
		[7.5, 0.0], [6, 0], [6.0, 3.5], 
		 ]);
}

module FreeSans_contour00x2c_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([6, -7], [8, -7], [8.5, -5.5],steps,10);
	BezConic([8.5, -5.5], [9, -4], [9, -1],steps,10);
}
}

module FreeSans_contour00x2c_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([12, -1], [12, -9], [6, -9],steps,10);
}
}

module FreeSans_contour00x2c(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x2c_skeleton();
			FreeSans_contour00x2c_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x2c_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x2c(steps=2) {
	difference() {
		FreeSans_contour00x2c(steps);
		
	}
}

FreeSans_bbox0x2c=[[6, -9], [12, 7]];

module FreeSans_letter0x2c(detail=2) {
	FreeSans_chunk10x2c(steps=detail);
} //end skeleton

module FreeSans_contour00x2d_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 20], [18.0, 17.5], [18, 15], 
		[10.5, 15.0], [3, 15], [3.0, 17.5], 
		[3, 20],[10.5, 20.0], ]);
}

module FreeSans_contour00x2d_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x2d_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x2d(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x2d_skeleton();
			FreeSans_contour00x2d_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x2d_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x2d(steps=2) {
	difference() {
		FreeSans_contour00x2d(steps);
		
	}
}

FreeSans_bbox0x2d=[[3, 15], [18, 20]];

module FreeSans_letter0x2d(detail=2) {
	FreeSans_chunk10x2d(steps=detail);
} //end skeleton

module FreeSans_contour00x2e_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[12, 7], [12.0, 3.5], [12, 0], 
		[9.0, 0.0], [6, 0], [6.0, 3.5], 
		[6, 7],[9.0, 7.0], ]);
}

module FreeSans_contour00x2e_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x2e_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x2e(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x2e_skeleton();
			FreeSans_contour00x2e_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x2e_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x2e(steps=2) {
	difference() {
		FreeSans_contour00x2e(steps);
		
	}
}

FreeSans_bbox0x2e=[[6, 0], [12, 7]];

module FreeSans_letter0x2e(detail=2) {
	FreeSans_chunk10x2e(steps=detail);
} //end skeleton

module FreeSans_contour00x2f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[15, 47], [16.5, 47.0], [18, 47], 
		[10.5, 23.0], [3, -1], [1.0, -1.0], 
		[-1, -1],[7.0, 23.0], ]);
}

module FreeSans_contour00x2f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x2f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x2f(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x2f_skeleton();
			FreeSans_contour00x2f_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x2f_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x2f(steps=2) {
	difference() {
		FreeSans_contour00x2f(steps);
		
	}
}

FreeSans_bbox0x2f=[[-1, -1], [18, 47]];

module FreeSans_letter0x2f(detail=2) {
	FreeSans_chunk10x2f(steps=detail);
} //end skeleton

module FreeSans_contour00x30_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 22], [3, 28], [4.0, 32.0], 
		[5, 36], [6.5, 38.5], [8, 41], 
		[10.0, 42.5], [12, 44], [13.5, 44.5], 
		[15, 45], [18, 45], [32, 45], 
		[32, 22], [32, 10], [28.5, 4.5], 
		[25, -1], [18, -1], [10, -1], 
		[6.5, 4.5],[3, 10], ]);
}

module FreeSans_contour00x30_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x30_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([3, 22], [3, 28], [4.0, 32.0],steps,10);
	BezConic([4.0, 32.0], [5, 36], [6.5, 38.5],steps,10);
	BezConic([6.5, 38.5], [8, 41], [10.0, 42.5],steps,10);
	BezConic([10.0, 42.5], [12, 44], [13.5, 44.5],steps,10);
	BezConic([13.5, 44.5], [15, 45], [18, 45],steps,10);
	BezConic([18, 45], [32, 45], [32, 22],steps,10);
	BezConic([32, 22], [32, 10], [28.5, 4.5],steps,10);
	BezConic([28.5, 4.5], [25, -1], [18, -1],steps,10);
	BezConic([18, -1], [10, -1], [6.5, 4.5],steps,10);
	BezConic([6.5, 4.5], [3, 10], [3, 22],steps,10);
}
}

module FreeSans_contour00x30(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x30_skeleton();
			FreeSans_contour00x30_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x30_subtractive_curves(steps);
	}
}

module FreeSans_contour10x30_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[27, 22], [27, 40], [18.0, 40.0], 
		[9, 40], [9, 22], [9, 3], 
		[17, 3], [22, 3], [24.5, 7.5], 
		[27, 12], ]);
}

module FreeSans_contour10x30_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([27, 22], [27, 40], [18.0, 40.0],steps,10);
	BezConic([18.0, 40.0], [9, 40], [9, 22],steps,10);
	BezConic([9, 22], [9, 3], [17, 3],steps,10);
	BezConic([17, 3], [22, 3], [24.5, 7.5],steps,10);
	BezConic([24.5, 7.5], [27, 12], [27, 22],steps,10);
}
}

module FreeSans_contour10x30_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x30(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x30_skeleton();
			FreeSans_contour10x30_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x30_additive_curves(steps);
	}
}

module FreeSans_chunk10x30(steps=2) {
	difference() {
		FreeSans_contour00x30(steps);
		scale([1,1,1.1]) FreeSans_contour10x30(steps);
	}
}

FreeSans_bbox0x30=[[3, -1], [32, 45]];

module FreeSans_letter0x30(detail=2) {
	FreeSans_chunk10x30(steps=detail);
} //end skeleton

module FreeSans_contour00x31_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[17, 32], [12.0, 32.0], [7, 32], 
		[7.0, 34.0], [7, 36], [13, 37], 
		[15.0, 38.5], [17, 40], [18, 45], 
		[20.0, 45.0], [22, 45], [22.0, 22.5], 
		[22, 0], [19.5, 0.0], [17, 0], 
		[17.0, 16.0], ]);
}

module FreeSans_contour00x31_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([7, 36], [13, 37], [15.0, 38.5],steps,10);
	BezConic([15.0, 38.5], [17, 40], [18, 45],steps,10);
}
}

module FreeSans_contour00x31_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x31(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x31_skeleton();
			FreeSans_contour00x31_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x31_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x31(steps=2) {
	difference() {
		FreeSans_contour00x31(steps);
		
	}
}

FreeSans_bbox0x31=[[7, 0], [22, 45]];

module FreeSans_letter0x31(detail=2) {
	FreeSans_chunk10x31(steps=detail);
} //end skeleton

module FreeSans_contour00x32_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 30], [4, 45], [18, 45], 
		[25, 45], [29.0, 41.5], [33, 38], 
		[33, 32], [33, 24], [23, 18], 
		[20.0, 16.5], [17, 15], [13, 13], 
		[11.0, 10.5], [9, 8], [9, 6], 
		[20.5, 6.0], [32, 6], [32.0, 3.0], 
		[32, 0], [17.0, 0.0], [2, 0], 
		[3, 7], [5.5, 11.5], [8, 16], 
		[15, 20], [18.0, 21.5], [21, 23], 
		[27, 26], [27, 32], [27, 36], 
		[24.5, 38.0], [22, 40], [18, 40], 
		[9, 40], [9, 30], [6.0, 30.0], 
		 ]);
}

module FreeSans_contour00x32_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17, 15], [13, 13], [11.0, 10.5],steps,10);
	BezConic([11.0, 10.5], [9, 8], [9, 6],steps,10);
	BezConic([21, 23], [27, 26], [27, 32],steps,10);
	BezConic([27, 32], [27, 36], [24.5, 38.0],steps,10);
	BezConic([24.5, 38.0], [22, 40], [18, 40],steps,10);
	BezConic([18, 40], [9, 40], [9, 30],steps,10);
}
}

module FreeSans_contour00x32_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([3, 30], [4, 45], [18, 45],steps,10);
	BezConic([18, 45], [25, 45], [29.0, 41.5],steps,10);
	BezConic([29.0, 41.5], [33, 38], [33, 32],steps,10);
	BezConic([33, 32], [33, 24], [23, 18],steps,10);
	BezConic([2, 0], [3, 7], [5.5, 11.5],steps,10);
	BezConic([5.5, 11.5], [8, 16], [15, 20],steps,10);
}
}

module FreeSans_contour00x32(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x32_skeleton();
			FreeSans_contour00x32_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x32_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x32(steps=2) {
	difference() {
		FreeSans_contour00x32(steps);
		
	}
}

FreeSans_bbox0x32=[[2, 0], [33, 45]];

module FreeSans_letter0x32(detail=2) {
	FreeSans_chunk10x32(steps=detail);
} //end skeleton

module FreeSans_contour00x33_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[17, 40], [12, 40], [10.5, 37.5], 
		[9, 35], [9, 31], [6.0, 31.0], 
		[3, 31], [3, 45], [17, 45], 
		[24, 45], [27.5, 42.0], [31, 39], 
		[31, 33], [31, 26], [25, 23], 
		[29, 22], [30.5, 19.5], [32, 17], 
		[32, 13], [32, 6], [28.0, 2.5], 
		[24, -1], [17, -1], [3, -1], 
		[2, 13], [5.0, 13.0], [8, 13], 
		[8, 8], [10.5, 6.0], [13, 4], 
		[17, 4], [22, 4], [24.5, 6.0], 
		[27, 8], [27, 13], [27, 21], 
		[17, 21], [16.0, 21.0], [15, 21], 
		[14.5, 21.0], [14, 21], [14.0, 23.5], 
		[14, 26], [20, 26], [22.5, 27.5], 
		[25, 29], [25, 33], [25, 36], 
		[23.0, 38.0],[21, 40], ]);
}

module FreeSans_contour00x33_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17, 40], [12, 40], [10.5, 37.5],steps,10);
	BezConic([10.5, 37.5], [9, 35], [9, 31],steps,10);
	BezConic([8, 13], [8, 8], [10.5, 6.0],steps,10);
	BezConic([10.5, 6.0], [13, 4], [17, 4],steps,10);
	BezConic([17, 4], [22, 4], [24.5, 6.0],steps,10);
	BezConic([24.5, 6.0], [27, 8], [27, 13],steps,10);
	BezConic([27, 13], [27, 21], [17, 21],steps,10);
	BezConic([14, 26], [20, 26], [22.5, 27.5],steps,10);
	BezConic([22.5, 27.5], [25, 29], [25, 33],steps,10);
	BezConic([25, 33], [25, 36], [23.0, 38.0],steps,10);
	BezConic([23.0, 38.0], [21, 40], [17, 40],steps,10);
}
}

module FreeSans_contour00x33_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([3, 31], [3, 45], [17, 45],steps,10);
	BezConic([17, 45], [24, 45], [27.5, 42.0],steps,10);
	BezConic([27.5, 42.0], [31, 39], [31, 33],steps,10);
	BezConic([31, 33], [31, 26], [25, 23],steps,10);
	BezConic([25, 23], [29, 22], [30.5, 19.5],steps,10);
	BezConic([30.5, 19.5], [32, 17], [32, 13],steps,10);
	BezConic([32, 13], [32, 6], [28.0, 2.5],steps,10);
	BezConic([28.0, 2.5], [24, -1], [17, -1],steps,10);
	BezConic([17, -1], [3, -1], [2, 13],steps,10);
}
}

module FreeSans_contour00x33(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x33_skeleton();
			FreeSans_contour00x33_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x33_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x33(steps=2) {
	difference() {
		FreeSans_contour00x33(steps);
		
	}
}

FreeSans_bbox0x33=[[2, -1], [32, 45]];

module FreeSans_letter0x33(detail=2) {
	FreeSans_chunk10x33(steps=detail);
} //end skeleton

module FreeSans_contour00x34_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[21, 11], [11.5, 11.0], [2, 11], 
		[2.0, 14.0], [2, 17], [12.0, 31.0], 
		[22, 45], [24.5, 45.0], [27, 45], 
		[27.0, 30.5], [27, 16], [30.0, 16.0], 
		[33, 16], [33.0, 13.5], [33, 11], 
		[30.0, 11.0], [27, 11], [27.0, 5.5], 
		[27, 0], [24.0, 0.0], [21, 0], 
		[21.0, 5.5], ]);
}

module FreeSans_contour00x34_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x34_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x34(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x34_skeleton();
			FreeSans_contour00x34_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x34_subtractive_curves(steps);
	}
}

module FreeSans_contour10x34_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[21, 16], [21.0, 26.0], [21, 36], 
		[14.0, 26.0], [7, 16], [14.0, 16.0], 
		 ]);
}

module FreeSans_contour10x34_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x34_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x34(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x34_skeleton();
			FreeSans_contour10x34_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x34_additive_curves(steps);
	}
}

module FreeSans_chunk10x34(steps=2) {
	difference() {
		FreeSans_contour00x34(steps);
		scale([1,1,1.1]) FreeSans_contour10x34(steps);
	}
}

FreeSans_bbox0x34=[[2, 0], [33, 45]];

module FreeSans_letter0x34(detail=2) {
	FreeSans_chunk10x34(steps=detail);
} //end skeleton

module FreeSans_contour00x35_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[30, 45], [30.0, 42.5], [30, 40], 
		[21.0, 40.0], [12, 40], [11.0, 33.5], 
		[10, 27], [14, 30], [18, 30], 
		[25, 30], [29.0, 26.0], [33, 22], 
		[33, 15], [33, 8], [28.5, 3.5], 
		[24, -1], [17, -1], [15, -1], 
		[12.5, -0.5], [10, 0], [8.5, 0.5], 
		[7, 1], [6.0, 2.5], [5, 4], 
		[4.5, 5.0], [4, 6], [3.5, 7.5], 
		[3, 9], [2.5, 9.5], [2, 10], 
		[2, 11], [5.0, 11.0], [8, 11], 
		[10, 4], [17, 4], [22, 4], 
		[24.5, 6.5], [27, 9], [27, 14], 
		[27, 19], [24.5, 22.0], [22, 25], 
		[17, 25], [15, 25], [13.0, 24.0], 
		[11, 23], [9, 21], [6.5, 21.0], 
		[4, 21], [5.5, 33.0], [7, 45], 
		[18.5, 45.0], ]);
}

module FreeSans_contour00x35_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([3.5, 7.5], [3, 9], [2.5, 9.5],steps,10);
	BezConic([8, 11], [10, 4], [17, 4],steps,10);
	BezConic([17, 4], [22, 4], [24.5, 6.5],steps,10);
	BezConic([24.5, 6.5], [27, 9], [27, 14],steps,10);
	BezConic([27, 14], [27, 19], [24.5, 22.0],steps,10);
	BezConic([24.5, 22.0], [22, 25], [17, 25],steps,10);
	BezConic([17, 25], [15, 25], [13.0, 24.0],steps,10);
	BezConic([13.0, 24.0], [11, 23], [9, 21],steps,10);
}
}

module FreeSans_contour00x35_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([10, 27], [14, 30], [18, 30],steps,10);
	BezConic([18, 30], [25, 30], [29.0, 26.0],steps,10);
	BezConic([29.0, 26.0], [33, 22], [33, 15],steps,10);
	BezConic([33, 15], [33, 8], [28.5, 3.5],steps,10);
	BezConic([28.5, 3.5], [24, -1], [17, -1],steps,10);
	BezConic([17, -1], [15, -1], [12.5, -0.5],steps,10);
	BezConic([12.5, -0.5], [10, 0], [8.5, 0.5],steps,10);
	BezConic([8.5, 0.5], [7, 1], [6.0, 2.5],steps,10);
	BezConic([6.0, 2.5], [5, 4], [4.5, 5.0],steps,10);
	BezConic([4.5, 5.0], [4, 6], [3.5, 7.5],steps,10);
	BezConic([2.5, 9.5], [2, 10], [2, 11],steps,10);
}
}

module FreeSans_contour00x35(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x35_skeleton();
			FreeSans_contour00x35_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x35_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x35(steps=2) {
	difference() {
		FreeSans_contour00x35(steps);
		
	}
}

FreeSans_bbox0x35=[[2, -1], [33, 45]];

module FreeSans_letter0x35(detail=2) {
	FreeSans_chunk10x35(steps=detail);
} //end skeleton

module FreeSans_contour00x36_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 21], [3, 27], [4.0, 31.5], 
		[5, 36], [6.5, 38.5], [8, 41], 
		[10.5, 42.5], [13, 44], [15.0, 44.5], 
		[17, 45], [19, 45], [24, 45], 
		[27.5, 42.0], [31, 39], [32, 34], 
		[29.0, 34.0], [26, 34], [26, 37], 
		[24.0, 38.5], [22, 40], [19, 40], 
		[14, 40], [11.5, 35.5], [9, 31], 
		[9, 23], [12, 28], [19, 28], 
		[25, 28], [29.0, 24.0], [33, 20], 
		[33, 14], [33, 7], [28.5, 3.0], 
		[24, -1], [18, -1], [3, -1], 
		 ]);
}

module FreeSans_contour00x36_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([26, 34], [26, 37], [24.0, 38.5],steps,10);
	BezConic([24.0, 38.5], [22, 40], [19, 40],steps,10);
	BezConic([19, 40], [14, 40], [11.5, 35.5],steps,10);
	BezConic([11.5, 35.5], [9, 31], [9, 23],steps,10);
}
}

module FreeSans_contour00x36_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([3, 21], [3, 27], [4.0, 31.5],steps,10);
	BezConic([4.0, 31.5], [5, 36], [6.5, 38.5],steps,10);
	BezConic([6.5, 38.5], [8, 41], [10.5, 42.5],steps,10);
	BezConic([10.5, 42.5], [13, 44], [15.0, 44.5],steps,10);
	BezConic([15.0, 44.5], [17, 45], [19, 45],steps,10);
	BezConic([19, 45], [24, 45], [27.5, 42.0],steps,10);
	BezConic([27.5, 42.0], [31, 39], [32, 34],steps,10);
	BezConic([9, 23], [12, 28], [19, 28],steps,10);
	BezConic([19, 28], [25, 28], [29.0, 24.0],steps,10);
	BezConic([29.0, 24.0], [33, 20], [33, 14],steps,10);
	BezConic([33, 14], [33, 7], [28.5, 3.0],steps,10);
	BezConic([28.5, 3.0], [24, -1], [18, -1],steps,10);
	BezConic([18, -1], [3, -1], [3, 21],steps,10);
}
}

module FreeSans_contour00x36(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x36_skeleton();
			FreeSans_contour00x36_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x36_subtractive_curves(steps);
	}
}

module FreeSans_contour10x36_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 23], [14, 23], [11.5, 20.5], 
		[9, 18], [9, 14], [9, 9], 
		[11.5, 6.5], [14, 4], [18, 4], 
		[22, 4], [24.5, 6.5], [27, 9], 
		[27, 13], [27, 18], [24.5, 20.5], 
		[22, 23], ]);
}

module FreeSans_contour10x36_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([18, 23], [14, 23], [11.5, 20.5],steps,10);
	BezConic([11.5, 20.5], [9, 18], [9, 14],steps,10);
	BezConic([9, 14], [9, 9], [11.5, 6.5],steps,10);
	BezConic([11.5, 6.5], [14, 4], [18, 4],steps,10);
	BezConic([18, 4], [22, 4], [24.5, 6.5],steps,10);
	BezConic([24.5, 6.5], [27, 9], [27, 13],steps,10);
	BezConic([27, 13], [27, 18], [24.5, 20.5],steps,10);
	BezConic([24.5, 20.5], [22, 23], [18, 23],steps,10);
}
}

module FreeSans_contour10x36_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x36(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x36_skeleton();
			FreeSans_contour10x36_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x36_additive_curves(steps);
	}
}

module FreeSans_chunk10x36(steps=2) {
	difference() {
		FreeSans_contour00x36(steps);
		scale([1,1,1.1]) FreeSans_contour10x36(steps);
	}
}

FreeSans_bbox0x36=[[3, -1], [33, 45]];

module FreeSans_letter0x36(detail=2) {
	FreeSans_chunk10x36(steps=detail);
} //end skeleton

module FreeSans_contour00x37_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[33, 45], [33.0, 43.0], [33, 41], 
		[26, 30], [21.5, 20.5], [17, 11], 
		[15, 0], [12.0, 0.0], [9, 0], 
		[11, 11], [15.0, 19.5], [19, 28], 
		[27, 40], [15.0, 40.0], [3, 40], 
		[3.0, 42.5], [3, 45], [18.0, 45.0], 
		 ]);
}

module FreeSans_contour00x37_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([33, 41], [26, 30], [21.5, 20.5],steps,10);
	BezConic([21.5, 20.5], [17, 11], [15, 0],steps,10);
}
}

module FreeSans_contour00x37_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([9, 0], [11, 11], [15.0, 19.5],steps,10);
	BezConic([15.0, 19.5], [19, 28], [27, 40],steps,10);
}
}

module FreeSans_contour00x37(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x37_skeleton();
			FreeSans_contour00x37_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x37_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x37(steps=2) {
	difference() {
		FreeSans_contour00x37(steps);
		
	}
}

FreeSans_bbox0x37=[[3, 0], [33, 45]];

module FreeSans_letter0x37(detail=2) {
	FreeSans_chunk10x37(steps=detail);
} //end skeleton

module FreeSans_contour00x38_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[25, 24], [33, 20], [33, 13], 
		[33, 6], [28.5, 2.5], [24, -1], 
		[17.5, -1.0], [11, -1], [6.5, 2.5], 
		[2, 6], [2, 13], [2, 20], 
		[10, 24], [7, 26], [5.5, 28.0], 
		[4, 30], [4, 33], [4, 39], 
		[8.0, 42.0], [12, 45], [18.0, 45.0], 
		[24, 45], [27.5, 42.0], [31, 39], 
		[31, 33], [31, 30], [30.0, 28.0], 
		[29, 26], ]);
}

module FreeSans_contour00x38_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x38_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([25, 24], [33, 20], [33, 13],steps,10);
	BezConic([33, 13], [33, 6], [28.5, 2.5],steps,10);
	BezConic([28.5, 2.5], [24, -1], [17.5, -1.0],steps,10);
	BezConic([17.5, -1.0], [11, -1], [6.5, 2.5],steps,10);
	BezConic([6.5, 2.5], [2, 6], [2, 13],steps,10);
	BezConic([2, 13], [2, 20], [10, 24],steps,10);
	BezConic([10, 24], [7, 26], [5.5, 28.0],steps,10);
	BezConic([5.5, 28.0], [4, 30], [4, 33],steps,10);
	BezConic([4, 33], [4, 39], [8.0, 42.0],steps,10);
	BezConic([8.0, 42.0], [12, 45], [18.0, 45.0],steps,10);
	BezConic([18.0, 45.0], [24, 45], [27.5, 42.0],steps,10);
	BezConic([27.5, 42.0], [31, 39], [31, 33],steps,10);
	BezConic([31, 33], [31, 30], [30.0, 28.0],steps,10);
	BezConic([30.0, 28.0], [29, 26], [25, 24],steps,10);
}
}

module FreeSans_contour00x38(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x38_skeleton();
			FreeSans_contour00x38_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x38_subtractive_curves(steps);
	}
}

module FreeSans_contour10x38_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[23.0, 38.0], [21, 40], [17.5, 40.0], 
		[14, 40], [12.0, 38.0], [10, 36], 
		[10, 33], [10, 30], [12.0, 28.0], 
		[14, 26], [18, 26], [21, 26], 
		[23.0, 28.0], [25, 30], [25, 33], 
		[25, 36], ]);
}

module FreeSans_contour10x38_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([23.0, 38.0], [21, 40], [17.5, 40.0],steps,10);
	BezConic([17.5, 40.0], [14, 40], [12.0, 38.0],steps,10);
	BezConic([12.0, 38.0], [10, 36], [10, 33],steps,10);
	BezConic([10, 33], [10, 30], [12.0, 28.0],steps,10);
	BezConic([12.0, 28.0], [14, 26], [18, 26],steps,10);
	BezConic([18, 26], [21, 26], [23.0, 28.0],steps,10);
	BezConic([23.0, 28.0], [25, 30], [25, 33],steps,10);
	BezConic([25, 33], [25, 36], [23.0, 38.0],steps,10);
}
}

module FreeSans_contour10x38_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x38(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x38_skeleton();
			FreeSans_contour10x38_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x38_additive_curves(steps);
	}
}

module FreeSans_contour20x38_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[24.5, 18.5], [22, 21], [17.5, 21.0], 
		[13, 21], [10.5, 18.5], [8, 16], 
		[8.0, 12.5], [8, 9], [10.5, 6.5], 
		[13, 4], [17, 4], [22, 4], 
		[24.5, 6.0], [27, 8], [27, 12], 
		[27, 16], ]);
}

module FreeSans_contour20x38_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([24.5, 18.5], [22, 21], [17.5, 21.0],steps,10);
	BezConic([17.5, 21.0], [13, 21], [10.5, 18.5],steps,10);
	BezConic([10.5, 18.5], [8, 16], [8.0, 12.5],steps,10);
	BezConic([8.0, 12.5], [8, 9], [10.5, 6.5],steps,10);
	BezConic([10.5, 6.5], [13, 4], [17, 4],steps,10);
	BezConic([17, 4], [22, 4], [24.5, 6.0],steps,10);
	BezConic([24.5, 6.0], [27, 8], [27, 12],steps,10);
	BezConic([27, 12], [27, 16], [24.5, 18.5],steps,10);
}
}

module FreeSans_contour20x38_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour20x38(steps=2) {
	difference() {
		union() {
			FreeSans_contour20x38_skeleton();
			FreeSans_contour20x38_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour20x38_additive_curves(steps);
	}
}

module FreeSans_chunk10x38(steps=2) {
	difference() {
		FreeSans_contour00x38(steps);
		scale([1,1,1.1]) FreeSans_contour10x38(steps);
	scale([1,1,1.1]) FreeSans_contour20x38(steps);
	}
}

FreeSans_bbox0x38=[[2, -1], [33, 45]];

module FreeSans_letter0x38(detail=2) {
	FreeSans_chunk10x38(steps=detail);
} //end skeleton

module FreeSans_contour00x39_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[33, 23], [33, 17], [31.5, 12.5], 
		[30, 8], [28.5, 5.5], [27, 3], 
		[25.0, 1.5], [23, 0], [20.5, -0.5], 
		[18, -1], [16, -1], [11, -1], 
		[7.5, 2.0], [4, 5], [3, 10], 
		[6.0, 10.0], [9, 10], [10, 7], 
		[12.0, 5.5], [14, 4], [17, 4], 
		[22, 4], [24.5, 8.0], [27, 12], 
		[27, 21], [23, 16], [16.5, 16.0], 
		[10, 16], [6.0, 20.0], [2, 24], 
		[2, 30], [2, 37], [6.5, 41.0], 
		[11, 45], [17, 45], [33, 45], 
		 ]);
}

module FreeSans_contour00x39_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([9, 10], [10, 7], [12.0, 5.5],steps,10);
	BezConic([12.0, 5.5], [14, 4], [17, 4],steps,10);
	BezConic([17, 4], [22, 4], [24.5, 8.0],steps,10);
	BezConic([24.5, 8.0], [27, 12], [27, 21],steps,10);
}
}

module FreeSans_contour00x39_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([33, 23], [33, 17], [31.5, 12.5],steps,10);
	BezConic([31.5, 12.5], [30, 8], [28.5, 5.5],steps,10);
	BezConic([28.5, 5.5], [27, 3], [25.0, 1.5],steps,10);
	BezConic([25.0, 1.5], [23, 0], [20.5, -0.5],steps,10);
	BezConic([20.5, -0.5], [18, -1], [16, -1],steps,10);
	BezConic([16, -1], [11, -1], [7.5, 2.0],steps,10);
	BezConic([7.5, 2.0], [4, 5], [3, 10],steps,10);
	BezConic([27, 21], [23, 16], [16.5, 16.0],steps,10);
	BezConic([16.5, 16.0], [10, 16], [6.0, 20.0],steps,10);
	BezConic([6.0, 20.0], [2, 24], [2, 30],steps,10);
	BezConic([2, 30], [2, 37], [6.5, 41.0],steps,10);
	BezConic([6.5, 41.0], [11, 45], [17, 45],steps,10);
	BezConic([17, 45], [33, 45], [33, 23],steps,10);
}
}

module FreeSans_contour00x39(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x39_skeleton();
			FreeSans_contour00x39_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x39_subtractive_curves(steps);
	}
}

module FreeSans_contour10x39_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[17, 40], [13, 40], [10.5, 37.5], 
		[8, 35], [8, 31], [8, 26], 
		[10.5, 23.5], [13, 21], [17.0, 21.0], 
		[21, 21], [23.5, 23.5], [26, 26], 
		[26, 30], [26, 35], [23.5, 37.5], 
		[21, 40], ]);
}

module FreeSans_contour10x39_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17, 40], [13, 40], [10.5, 37.5],steps,10);
	BezConic([10.5, 37.5], [8, 35], [8, 31],steps,10);
	BezConic([8, 31], [8, 26], [10.5, 23.5],steps,10);
	BezConic([10.5, 23.5], [13, 21], [17.0, 21.0],steps,10);
	BezConic([17.0, 21.0], [21, 21], [23.5, 23.5],steps,10);
	BezConic([23.5, 23.5], [26, 26], [26, 30],steps,10);
	BezConic([26, 30], [26, 35], [23.5, 37.5],steps,10);
	BezConic([23.5, 37.5], [21, 40], [17, 40],steps,10);
}
}

module FreeSans_contour10x39_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x39(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x39_skeleton();
			FreeSans_contour10x39_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x39_additive_curves(steps);
	}
}

module FreeSans_chunk10x39(steps=2) {
	difference() {
		FreeSans_contour00x39(steps);
		scale([1,1,1.1]) FreeSans_contour10x39(steps);
	}
}

FreeSans_bbox0x39=[[2, -1], [33, 45]];

module FreeSans_letter0x39(detail=2) {
	FreeSans_chunk10x39(steps=detail);
} //end skeleton

module FreeSans_contour00x3a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 7], [14.0, 3.5], [14, 0], 
		[10.5, 0.0], [7, 0], [7.0, 3.5], 
		[7, 7],[10.5, 7.0], ]);
}

module FreeSans_contour00x3a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x3a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x3a(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x3a_skeleton();
			FreeSans_contour00x3a_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x3a_subtractive_curves(steps);
	}
}

module FreeSans_contour10x3a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 34], [14.0, 30.5], [14, 27], 
		[10.5, 27.0], [7, 27], [7.0, 30.5], 
		[7, 34],[10.5, 34.0], ]);
}

module FreeSans_contour10x3a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x3a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x3a(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x3a_skeleton();
			FreeSans_contour10x3a_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x3a_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x3a(steps=2) {
	difference() {
		FreeSans_contour00x3a(steps);
		
	}
}

module FreeSans_chunk20x3a(steps=2) {
	difference() {
		FreeSans_contour10x3a(steps);
		
	}
}

FreeSans_bbox0x3a=[[7, 0], [14, 34]];

module FreeSans_letter0x3a(detail=2) {
	FreeSans_chunk10x3a(steps=detail);
	FreeSans_chunk20x3a(steps=detail);
} //end skeleton

module FreeSans_contour00x3b_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 34], [14.0, 30.5], [14, 27], 
		[10.5, 27.0], [7, 27], [7.0, 30.5], 
		[7, 34],[10.5, 34.0], ]);
}

module FreeSans_contour00x3b_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x3b_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x3b(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x3b_skeleton();
			FreeSans_contour00x3b_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x3b_subtractive_curves(steps);
	}
}

module FreeSans_contour10x3b_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[7, 7], [10.5, 7.0], [14, 7], 
		[14.0, 3.0], [14, -1], [14, -9], 
		[7, -9], [7.0, -8.0], [7, -7], 
		[9, -7], [10.0, -5.5], [11, -4], 
		[11, -1], [11.0, -0.5], [11, 0], 
		[9.0, 0.0], [7, 0], [7.0, 3.5], 
		 ]);
}

module FreeSans_contour10x3b_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([7, -7], [9, -7], [10.0, -5.5],steps,10);
	BezConic([10.0, -5.5], [11, -4], [11, -1],steps,10);
}
}

module FreeSans_contour10x3b_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, -1], [14, -9], [7, -9],steps,10);
}
}

module FreeSans_contour10x3b(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x3b_skeleton();
			FreeSans_contour10x3b_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x3b_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x3b(steps=2) {
	difference() {
		FreeSans_contour00x3b(steps);
		
	}
}

module FreeSans_chunk20x3b(steps=2) {
	difference() {
		FreeSans_contour10x3b(steps);
		
	}
}

FreeSans_bbox0x3b=[[7, -9], [14, 34]];

module FreeSans_letter0x3b(detail=2) {
	FreeSans_chunk10x3b(steps=detail);
	FreeSans_chunk20x3b(steps=detail);
} //end skeleton

module FreeSans_contour00x3c_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 13], [3.0, 15.0], [3, 17], 
		[18.5, 23.5], [34, 30], [34.0, 27.5], 
		[34, 25], [21.5, 20.0], [9, 15], 
		[21.5, 9.5], [34, 4], [34.0, 1.5], 
		[34, -1],[18.5, 6.0], ]);
}

module FreeSans_contour00x3c_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x3c_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x3c(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x3c_skeleton();
			FreeSans_contour00x3c_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x3c_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x3c(steps=2) {
	difference() {
		FreeSans_contour00x3c(steps);
		
	}
}

FreeSans_bbox0x3c=[[3, -1], [34, 30]];

module FreeSans_letter0x3c(detail=2) {
	FreeSans_chunk10x3c(steps=detail);
} //end skeleton

module FreeSans_contour00x3d_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[34, 23], [34.0, 20.5], [34, 18], 
		[18.5, 18.0], [3, 18], [3.0, 20.5], 
		[3, 23],[18.5, 23.0], ]);
}

module FreeSans_contour00x3d_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x3d_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x3d(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x3d_skeleton();
			FreeSans_contour00x3d_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x3d_subtractive_curves(steps);
	}
}

module FreeSans_contour10x3d_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[34, 12], [34.0, 9.5], [34, 7], 
		[18.5, 7.0], [3, 7], [3.0, 9.5], 
		[3, 12],[18.5, 12.0], ]);
}

module FreeSans_contour10x3d_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x3d_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x3d(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x3d_skeleton();
			FreeSans_contour10x3d_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x3d_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x3d(steps=2) {
	difference() {
		FreeSans_contour00x3d(steps);
		
	}
}

module FreeSans_chunk20x3d(steps=2) {
	difference() {
		FreeSans_contour10x3d(steps);
		
	}
}

FreeSans_bbox0x3d=[[3, 7], [34, 23]];

module FreeSans_letter0x3d(detail=2) {
	FreeSans_chunk10x3d(steps=detail);
	FreeSans_chunk20x3d(steps=detail);
} //end skeleton

module FreeSans_contour00x3e_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[34, 17], [34.0, 15.0], [34, 13], 
		[18.5, 6.0], [3, -1], [3.0, 1.5], 
		[3, 4], [15.5, 9.5], [28, 15], 
		[15.5, 20.0], [3, 25], [3.0, 27.5], 
		[3, 30],[18.5, 23.5], ]);
}

module FreeSans_contour00x3e_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x3e_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x3e(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x3e_skeleton();
			FreeSans_contour00x3e_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x3e_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x3e(steps=2) {
	difference() {
		FreeSans_contour00x3e(steps);
		
	}
}

FreeSans_bbox0x3e=[[3, -1], [34, 30]];

module FreeSans_letter0x3e(detail=2) {
	FreeSans_chunk10x3e(steps=detail);
} //end skeleton

module FreeSans_contour00x3f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[33, 35], [33, 32], [31.5, 29.5], 
		[30, 27], [28.5, 25.5], [27, 24], 
		[25.0, 22.5], [23, 21], [22.0, 19.5], 
		[21, 18], [21, 16], [21.0, 14.5], 
		[21, 13], [18.0, 13.0], [15, 13], 
		[15.0, 14.5], [15, 16], [15, 19], 
		[16.5, 21.0], [18, 23], [19.5, 24.5], 
		[21, 26], [22.5, 27.5], [24, 29], 
		[25.5, 31.0], [27, 33], [27, 35], 
		[27, 38], [24.5, 40.0], [22, 42], 
		[19, 42], [14, 42], [12.0, 39.5], 
		[10, 37], [10, 32], [7.5, 32.0], 
		[5, 32], [5, 40], [8.5, 43.5], 
		[12, 47], [19, 47], [25, 47], 
		[29.0, 44.0],[33, 41], ]);
}

module FreeSans_contour00x3f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([25.0, 22.5], [23, 21], [22.0, 19.5],steps,10);
	BezConic([22.0, 19.5], [21, 18], [21, 16],steps,10);
	BezConic([22.5, 27.5], [24, 29], [25.5, 31.0],steps,10);
	BezConic([25.5, 31.0], [27, 33], [27, 35],steps,10);
	BezConic([27, 35], [27, 38], [24.5, 40.0],steps,10);
	BezConic([24.5, 40.0], [22, 42], [19, 42],steps,10);
	BezConic([19, 42], [14, 42], [12.0, 39.5],steps,10);
	BezConic([12.0, 39.5], [10, 37], [10, 32],steps,10);
}
}

module FreeSans_contour00x3f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([33, 35], [33, 32], [31.5, 29.5],steps,10);
	BezConic([31.5, 29.5], [30, 27], [28.5, 25.5],steps,10);
	BezConic([28.5, 25.5], [27, 24], [25.0, 22.5],steps,10);
	BezConic([15, 16], [15, 19], [16.5, 21.0],steps,10);
	BezConic([16.5, 21.0], [18, 23], [19.5, 24.5],steps,10);
	BezConic([19.5, 24.5], [21, 26], [22.5, 27.5],steps,10);
	BezConic([5, 32], [5, 40], [8.5, 43.5],steps,10);
	BezConic([8.5, 43.5], [12, 47], [19, 47],steps,10);
	BezConic([19, 47], [25, 47], [29.0, 44.0],steps,10);
	BezConic([29.0, 44.0], [33, 41], [33, 35],steps,10);
}
}

module FreeSans_contour00x3f(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x3f_skeleton();
			FreeSans_contour00x3f_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x3f_subtractive_curves(steps);
	}
}

module FreeSans_contour10x3f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[21, 7], [21.0, 3.5], [21, 0], 
		[18.0, 0.0], [15, 0], [15.0, 3.5], 
		[15, 7],[18.0, 7.0], ]);
}

module FreeSans_contour10x3f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x3f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x3f(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x3f_skeleton();
			FreeSans_contour10x3f_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x3f_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x3f(steps=2) {
	difference() {
		FreeSans_contour00x3f(steps);
		
	}
}

module FreeSans_chunk20x3f(steps=2) {
	difference() {
		FreeSans_contour10x3f(steps);
		
	}
}

FreeSans_bbox0x3f=[[5, 0], [33, 47]];

module FreeSans_letter0x3f(detail=2) {
	FreeSans_chunk10x3f(steps=detail);
	FreeSans_chunk20x3f(steps=detail);
} //end skeleton

module FreeSans_contour00x40_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[43, 32], [45.5, 32.0], [48, 32], 
		[45.0, 23.0], [42, 14], [41, 12], 
		[41, 11], [41, 10], [42.0, 9.0], 
		[43, 8], [45, 8], [49, 8], 
		[52.0, 12.5], [55, 17], [55, 23], 
		[55, 31], [48.5, 36.5], [42, 42], 
		[33, 42], [23, 42], [15.5, 35.0], 
		[8, 28], [8, 17], [8, 8], 
		[14.5, 2.0], [21, -4], [32, -4], 
		[37, -4], [44, -2], [45.0, -4.0], 
		[46, -6], [39, -9], [31, -9], 
		[23, -9], [16.5, -5.5], [10, -2], 
		[6.0, 4.0], [2, 10], [2, 17], 
		[2, 23], [5.0, 29.0], [8, 35], 
		[12, 39], [17, 43], [22.5, 45.0], 
		[28, 47], [34, 47], [45, 47], 
		[53.0, 40.0], [61, 33], [61, 24], 
		[61, 16], [55, 9], [50, 4], 
		[43, 4], [37, 4], [36, 9], 
		[32, 4], [27, 4], [23, 4], 
		[20.0, 7.5], [17, 11], [17, 16], 
		[17, 23], [22.0, 28.0], [27, 33], 
		[33, 33], [39, 33], [41, 28], 
		[42.0, 30.0], ]);
}

module FreeSans_contour00x40_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([42, 14], [41, 12], [41, 11],steps,10);
	BezConic([41, 11], [41, 10], [42.0, 9.0],steps,10);
	BezConic([42.0, 9.0], [43, 8], [45, 8],steps,10);
	BezConic([45, 8], [49, 8], [52.0, 12.5],steps,10);
	BezConic([52.0, 12.5], [55, 17], [55, 23],steps,10);
	BezConic([55, 23], [55, 31], [48.5, 36.5],steps,10);
	BezConic([48.5, 36.5], [42, 42], [33, 42],steps,10);
	BezConic([33, 42], [23, 42], [15.5, 35.0],steps,10);
	BezConic([15.5, 35.0], [8, 28], [8, 17],steps,10);
	BezConic([8, 17], [8, 8], [14.5, 2.0],steps,10);
	BezConic([14.5, 2.0], [21, -4], [32, -4],steps,10);
	BezConic([32, -4], [37, -4], [44, -2],steps,10);
}
}

module FreeSans_contour00x40_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([46, -6], [39, -9], [31, -9],steps,10);
	BezConic([31, -9], [23, -9], [16.5, -5.5],steps,10);
	BezConic([16.5, -5.5], [10, -2], [6.0, 4.0],steps,10);
	BezConic([6.0, 4.0], [2, 10], [2, 17],steps,10);
	BezConic([2, 17], [2, 23], [5.0, 29.0],steps,10);
	BezConic([5.0, 29.0], [8, 35], [12, 39],steps,10);
	BezConic([12, 39], [17, 43], [22.5, 45.0],steps,10);
	BezConic([22.5, 45.0], [28, 47], [34, 47],steps,10);
	BezConic([34, 47], [45, 47], [53.0, 40.0],steps,10);
	BezConic([53.0, 40.0], [61, 33], [61, 24],steps,10);
	BezConic([61, 24], [61, 16], [55, 9],steps,10);
	BezConic([55, 9], [50, 4], [43, 4],steps,10);
	BezConic([43, 4], [37, 4], [36, 9],steps,10);
	BezConic([36, 9], [32, 4], [27, 4],steps,10);
	BezConic([27, 4], [23, 4], [20.0, 7.5],steps,10);
	BezConic([20.0, 7.5], [17, 11], [17, 16],steps,10);
	BezConic([17, 16], [17, 23], [22.0, 28.0],steps,10);
	BezConic([22.0, 28.0], [27, 33], [33, 33],steps,10);
	BezConic([33, 33], [39, 33], [41, 28],steps,10);
}
}

module FreeSans_contour00x40(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x40_skeleton();
			FreeSans_contour00x40_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x40_subtractive_curves(steps);
	}
}

module FreeSans_contour10x40_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[29, 8], [33, 8], [36.0, 13.5], 
		[39, 19], [39, 24], [39, 26], 
		[37.5, 27.5], [36, 29], [33, 29], 
		[29, 29], [26.0, 25.0], [23, 21], 
		[23, 16], [23, 12], [24.5, 10.0], 
		[26, 8], ]);
}

module FreeSans_contour10x40_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([29, 8], [33, 8], [36.0, 13.5],steps,10);
	BezConic([36.0, 13.5], [39, 19], [39, 24],steps,10);
	BezConic([39, 24], [39, 26], [37.5, 27.5],steps,10);
	BezConic([37.5, 27.5], [36, 29], [33, 29],steps,10);
	BezConic([33, 29], [29, 29], [26.0, 25.0],steps,10);
	BezConic([26.0, 25.0], [23, 21], [23, 16],steps,10);
	BezConic([23, 16], [23, 12], [24.5, 10.0],steps,10);
	BezConic([24.5, 10.0], [26, 8], [29, 8],steps,10);
}
}

module FreeSans_contour10x40_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x40(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x40_skeleton();
			FreeSans_contour10x40_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x40_additive_curves(steps);
	}
}

module FreeSans_chunk10x40(steps=2) {
	difference() {
		FreeSans_contour00x40(steps);
		scale([1,1,1.1]) FreeSans_contour10x40(steps);
	}
}

FreeSans_bbox0x40=[[2, -9], [61, 47]];

module FreeSans_letter0x40(detail=2) {
	FreeSans_chunk10x40(steps=detail);
} //end skeleton

module FreeSans_contour00x41_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[30, 14], [21.0, 14.0], [12, 14], 
		[9.5, 7.0], [7, 0], [4.0, 0.0], 
		[1, 0], [9.5, 23.5], [18, 47], 
		[21.5, 47.0], [25, 47], [33.5, 23.5], 
		[42, 0], [38.5, 0.0], [35, 0], 
		[32.5, 7.0], ]);
}

module FreeSans_contour00x41_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x41_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x41(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x41_skeleton();
			FreeSans_contour00x41_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x41_subtractive_curves(steps);
	}
}

module FreeSans_contour10x41_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[29, 19], [25.5, 29.5], [22, 40], 
		[18.0, 29.5], [14, 19], [21.5, 19.0], 
		 ]);
}

module FreeSans_contour10x41_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x41_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x41(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x41_skeleton();
			FreeSans_contour10x41_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x41_additive_curves(steps);
	}
}

module FreeSans_chunk10x41(steps=2) {
	difference() {
		FreeSans_contour00x41(steps);
		scale([1,1,1.1]) FreeSans_contour10x41(steps);
	}
}

FreeSans_bbox0x41=[[1, 0], [42, 47]];

module FreeSans_letter0x41(detail=2) {
	FreeSans_chunk10x41(steps=detail);
} //end skeleton

module FreeSans_contour00x42_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[40, 13], [40, 7], [36.0, 3.5], 
		[32, 0], [26, 0], [15.5, 0.0], 
		[5, 0], [5.0, 23.5], [5, 47], 
		[14.5, 47.0], [24, 47], [28, 47], 
		[31.0, 45.5], [34, 44], [35.5, 42.5], 
		[37, 41], [37.5, 39.0], [38, 37], 
		[38, 35], [38, 28], [31, 25], 
		[36, 23], [38.0, 20.5], [40, 18], 
		 ]);
}

module FreeSans_contour00x42_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x42_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([40, 13], [40, 7], [36.0, 3.5],steps,10);
	BezConic([36.0, 3.5], [32, 0], [26, 0],steps,10);
	BezConic([24, 47], [28, 47], [31.0, 45.5],steps,10);
	BezConic([31.0, 45.5], [34, 44], [35.5, 42.5],steps,10);
	BezConic([35.5, 42.5], [37, 41], [37.5, 39.0],steps,10);
	BezConic([37.5, 39.0], [38, 37], [38, 35],steps,10);
	BezConic([38, 35], [38, 28], [31, 25],steps,10);
	BezConic([31, 25], [36, 23], [38.0, 20.5],steps,10);
	BezConic([38.0, 20.5], [40, 18], [40, 13],steps,10);
}
}

module FreeSans_contour00x42(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x42_skeleton();
			FreeSans_contour00x42_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x42_subtractive_curves(steps);
	}
}

module FreeSans_contour10x42_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[23, 27], [32, 27], [32.0, 34.0], 
		[32, 41], [23, 41], [17.0, 41.0], 
		[11, 41], [11.0, 34.0], [11, 27], 
		[17.0, 27.0], ]);
}

module FreeSans_contour10x42_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([23, 27], [32, 27], [32.0, 34.0],steps,10);
	BezConic([32.0, 34.0], [32, 41], [23, 41],steps,10);
}
}

module FreeSans_contour10x42_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x42(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x42_skeleton();
			FreeSans_contour10x42_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x42_additive_curves(steps);
	}
}

module FreeSans_contour20x42_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[26, 5], [29, 5], [31.0, 6.5], 
		[33, 8], [33.5, 9.5], [34, 11], 
		[34, 13], [34, 17], [32.0, 19.0], 
		[30, 21], [26, 21], [18.5, 21.0], 
		[11, 21], [11.0, 13.0], [11, 5], 
		[18.5, 5.0], ]);
}

module FreeSans_contour20x42_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([26, 5], [29, 5], [31.0, 6.5],steps,10);
	BezConic([31.0, 6.5], [33, 8], [33.5, 9.5],steps,10);
	BezConic([33.5, 9.5], [34, 11], [34, 13],steps,10);
	BezConic([34, 13], [34, 17], [32.0, 19.0],steps,10);
	BezConic([32.0, 19.0], [30, 21], [26, 21],steps,10);
}
}

module FreeSans_contour20x42_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour20x42(steps=2) {
	difference() {
		union() {
			FreeSans_contour20x42_skeleton();
			FreeSans_contour20x42_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour20x42_additive_curves(steps);
	}
}

module FreeSans_chunk10x42(steps=2) {
	difference() {
		FreeSans_contour00x42(steps);
		scale([1,1,1.1]) FreeSans_contour10x42(steps);
	scale([1,1,1.1]) FreeSans_contour20x42(steps);
	}
}

FreeSans_bbox0x42=[[5, 0], [40, 47]];

module FreeSans_letter0x42(detail=2) {
	FreeSans_chunk10x42(steps=detail);
} //end skeleton

module FreeSans_contour00x43_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 23], [3, 26], [3.5, 29.0], 
		[4, 32], [5.5, 35.5], [7, 39], 
		[9.5, 41.5], [12, 44], [16.0, 45.5], 
		[20, 47], [24, 47], [40, 47], 
		[42, 32], [39.0, 32.0], [36, 32], 
		[35, 37], [32.0, 39.5], [29, 42], 
		[24, 42], [17, 42], [13.0, 37.0], 
		[9, 32], [9, 23], [9, 14], 
		[13.0, 9.0], [17, 4], [24, 4], 
		[30, 4], [33.0, 7.0], [36, 10], 
		[37, 17], [40.0, 17.0], [43, 17], 
		[41, -1], [24, -1], [19, -1], 
		[15.5, 0.5], [12, 2], [9.5, 4.5], 
		[7, 7], [5.5, 10.5], [4, 14], 
		[3.5, 17.0],[3, 20], ]);
}

module FreeSans_contour00x43_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([36, 32], [35, 37], [32.0, 39.5],steps,10);
	BezConic([32.0, 39.5], [29, 42], [24, 42],steps,10);
	BezConic([24, 42], [17, 42], [13.0, 37.0],steps,10);
	BezConic([13.0, 37.0], [9, 32], [9, 23],steps,10);
	BezConic([9, 23], [9, 14], [13.0, 9.0],steps,10);
	BezConic([13.0, 9.0], [17, 4], [24, 4],steps,10);
	BezConic([24, 4], [30, 4], [33.0, 7.0],steps,10);
	BezConic([33.0, 7.0], [36, 10], [37, 17],steps,10);
}
}

module FreeSans_contour00x43_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([3, 23], [3, 26], [3.5, 29.0],steps,10);
	BezConic([3.5, 29.0], [4, 32], [5.5, 35.5],steps,10);
	BezConic([5.5, 35.5], [7, 39], [9.5, 41.5],steps,10);
	BezConic([9.5, 41.5], [12, 44], [16.0, 45.5],steps,10);
	BezConic([16.0, 45.5], [20, 47], [24, 47],steps,10);
	BezConic([24, 47], [40, 47], [42, 32],steps,10);
	BezConic([43, 17], [41, -1], [24, -1],steps,10);
	BezConic([24, -1], [19, -1], [15.5, 0.5],steps,10);
	BezConic([15.5, 0.5], [12, 2], [9.5, 4.5],steps,10);
	BezConic([9.5, 4.5], [7, 7], [5.5, 10.5],steps,10);
	BezConic([5.5, 10.5], [4, 14], [3.5, 17.0],steps,10);
	BezConic([3.5, 17.0], [3, 20], [3, 23],steps,10);
}
}

module FreeSans_contour00x43(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x43_skeleton();
			FreeSans_contour00x43_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x43_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x43(steps=2) {
	difference() {
		FreeSans_contour00x43(steps);
		
	}
}

FreeSans_bbox0x43=[[3, -1], [43, 47]];

module FreeSans_letter0x43(detail=2) {
	FreeSans_chunk10x43(steps=detail);
} //end skeleton

module FreeSans_contour00x44_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[6, 0], [6.0, 23.5], [6, 47], 
		[15.0, 47.0], [24, 47], [33, 47], 
		[38.0, 40.5], [43, 34], [43.0, 23.0], 
		[43, 12], [38.0, 6.0], [33, 0], 
		[24, 0],[15.0, 0.0], ]);
}

module FreeSans_contour00x44_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x44_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([24, 47], [33, 47], [38.0, 40.5],steps,10);
	BezConic([38.0, 40.5], [43, 34], [43.0, 23.0],steps,10);
	BezConic([43.0, 23.0], [43, 12], [38.0, 6.0],steps,10);
	BezConic([38.0, 6.0], [33, 0], [24, 0],steps,10);
}
}

module FreeSans_contour00x44(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x44_skeleton();
			FreeSans_contour00x44_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x44_subtractive_curves(steps);
	}
}

module FreeSans_contour10x44_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[12, 5], [17.5, 5.0], [23, 5], 
		[30, 5], [33.5, 9.5], [37, 14], 
		[37, 23], [37, 32], [33.5, 36.5], 
		[30, 41], [23, 41], [17.5, 41.0], 
		[12, 41],[12.0, 23.0], ]);
}

module FreeSans_contour10x44_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([23, 5], [30, 5], [33.5, 9.5],steps,10);
	BezConic([33.5, 9.5], [37, 14], [37, 23],steps,10);
	BezConic([37, 23], [37, 32], [33.5, 36.5],steps,10);
	BezConic([33.5, 36.5], [30, 41], [23, 41],steps,10);
}
}

module FreeSans_contour10x44_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x44(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x44_skeleton();
			FreeSans_contour10x44_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x44_additive_curves(steps);
	}
}

module FreeSans_chunk10x44(steps=2) {
	difference() {
		FreeSans_contour00x44(steps);
		scale([1,1,1.1]) FreeSans_contour10x44(steps);
	}
}

FreeSans_bbox0x44=[[6, 0], [43, 47]];

module FreeSans_letter0x44(detail=2) {
	FreeSans_chunk10x44(steps=detail);
} //end skeleton

module FreeSans_contour00x45_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[12, 21], [12.0, 13.0], [12, 5], 
		[25.5, 5.0], [39, 5], [39.0, 2.5], 
		[39, 0], [22.5, 0.0], [6, 0], 
		[6.0, 23.5], [6, 47], [22.0, 47.0], 
		[38, 47], [38.0, 44.0], [38, 41], 
		[25.0, 41.0], [12, 41], [12.0, 33.5], 
		[12, 26], [24.5, 26.0], [37, 26], 
		[37.0, 23.5], [37, 21], [24.5, 21.0], 
		 ]);
}

module FreeSans_contour00x45_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x45_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x45(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x45_skeleton();
			FreeSans_contour00x45_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x45_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x45(steps=2) {
	difference() {
		FreeSans_contour00x45(steps);
		
	}
}

FreeSans_bbox0x45=[[6, 0], [39, 47]];

module FreeSans_letter0x45(detail=2) {
	FreeSans_chunk10x45(steps=detail);
} //end skeleton

module FreeSans_contour00x46_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[12, 21], [12.0, 10.5], [12, 0], 
		[9.0, 0.0], [6, 0], [6.0, 23.5], 
		[6, 47], [21.5, 47.0], [37, 47], 
		[37.0, 44.0], [37, 41], [24.5, 41.0], 
		[12, 41], [12.0, 33.5], [12, 26], 
		[23.0, 26.0], [34, 26], [34.0, 23.5], 
		[34, 21],[23.0, 21.0], ]);
}

module FreeSans_contour00x46_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x46_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x46(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x46_skeleton();
			FreeSans_contour00x46_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x46_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x46(steps=2) {
	difference() {
		FreeSans_contour00x46(steps);
		
	}
}

FreeSans_bbox0x46=[[6, 0], [37, 47]];

module FreeSans_letter0x46(detail=2) {
	FreeSans_chunk10x46(steps=detail);
} //end skeleton

module FreeSans_contour00x47_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[9, 23], [9, 21], [9.5, 18.5], 
		[10, 16], [11.0, 13.0], [12, 10], 
		[14.0, 8.0], [16, 6], [19.0, 5.0], 
		[22, 4], [25, 4], [32, 4], 
		[36.0, 8.0], [40, 12], [40, 18], 
		[40.0, 18.5], [40, 19], [33.0, 19.0], 
		[26, 19], [26.0, 22.0], [26, 25], 
		[35.5, 25.0], [45, 25], [45.0, 12.5], 
		[45, 0], [43.5, 0.0], [42, 0], 
		[41.0, 3.0], [40, 6], [33, -1], 
		[24, -1], [15, -1], [9.0, 5.5], 
		[3, 12], [3, 23], [3, 26], 
		[3.5, 29.0], [4, 32], [5.5, 35.5], 
		[7, 39], [9.5, 41.5], [12, 44], 
		[16.0, 45.5], [20, 47], [25, 47], 
		[33, 47], [38.5, 43.5], [44, 40], 
		[45, 33], [42.0, 33.0], [39, 33], 
		[38, 37], [34.0, 39.5], [30, 42], 
		[25, 42], [18, 42], [13.5, 37.0], 
		[9, 32], ]);
}

module FreeSans_contour00x47_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([9, 23], [9, 21], [9.5, 18.5],steps,10);
	BezConic([9.5, 18.5], [10, 16], [11.0, 13.0],steps,10);
	BezConic([11.0, 13.0], [12, 10], [14.0, 8.0],steps,10);
	BezConic([14.0, 8.0], [16, 6], [19.0, 5.0],steps,10);
	BezConic([19.0, 5.0], [22, 4], [25, 4],steps,10);
	BezConic([25, 4], [32, 4], [36.0, 8.0],steps,10);
	BezConic([36.0, 8.0], [40, 12], [40, 18],steps,10);
	BezConic([39, 33], [38, 37], [34.0, 39.5],steps,10);
	BezConic([34.0, 39.5], [30, 42], [25, 42],steps,10);
	BezConic([25, 42], [18, 42], [13.5, 37.0],steps,10);
	BezConic([13.5, 37.0], [9, 32], [9, 23],steps,10);
}
}

module FreeSans_contour00x47_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([40, 6], [33, -1], [24, -1],steps,10);
	BezConic([24, -1], [15, -1], [9.0, 5.5],steps,10);
	BezConic([9.0, 5.5], [3, 12], [3, 23],steps,10);
	BezConic([3, 23], [3, 26], [3.5, 29.0],steps,10);
	BezConic([3.5, 29.0], [4, 32], [5.5, 35.5],steps,10);
	BezConic([5.5, 35.5], [7, 39], [9.5, 41.5],steps,10);
	BezConic([9.5, 41.5], [12, 44], [16.0, 45.5],steps,10);
	BezConic([16.0, 45.5], [20, 47], [25, 47],steps,10);
	BezConic([25, 47], [33, 47], [38.5, 43.5],steps,10);
	BezConic([38.5, 43.5], [44, 40], [45, 33],steps,10);
}
}

module FreeSans_contour00x47(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x47_skeleton();
			FreeSans_contour00x47_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x47_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x47(steps=2) {
	difference() {
		FreeSans_contour00x47(steps);
		
	}
}

FreeSans_bbox0x47=[[3, -1], [45, 47]];

module FreeSans_letter0x47(detail=2) {
	FreeSans_chunk10x47(steps=detail);
} //end skeleton

module FreeSans_contour00x48_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[35, 21], [23.0, 21.0], [11, 21], 
		[11.0, 10.5], [11, 0], [8.0, 0.0], 
		[5, 0], [5.0, 23.5], [5, 47], 
		[8.0, 47.0], [11, 47], [11.0, 36.5], 
		[11, 26], [23.0, 26.0], [35, 26], 
		[35.0, 36.5], [35, 47], [38.0, 47.0], 
		[41, 47], [41.0, 23.5], [41, 0], 
		[38.0, 0.0], [35, 0], [35.0, 10.5], 
		 ]);
}

module FreeSans_contour00x48_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x48_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x48(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x48_skeleton();
			FreeSans_contour00x48_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x48_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x48(steps=2) {
	difference() {
		FreeSans_contour00x48(steps);
		
	}
}

FreeSans_bbox0x48=[[5, 0], [41, 47]];

module FreeSans_letter0x48(detail=2) {
	FreeSans_chunk10x48(steps=detail);
} //end skeleton

module FreeSans_contour00x49_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[12, 47], [12.0, 23.5], [12, 0], 
		[9.0, 0.0], [6, 0], [6.0, 23.5], 
		[6, 47],[9.0, 47.0], ]);
}

module FreeSans_contour00x49_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x49_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x49(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x49_skeleton();
			FreeSans_contour00x49_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x49_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x49(steps=2) {
	difference() {
		FreeSans_contour00x49(steps);
		
	}
}

FreeSans_bbox0x49=[[6, 0], [12, 47]];

module FreeSans_letter0x49(detail=2) {
	FreeSans_chunk10x49(steps=detail);
} //end skeleton

module FreeSans_contour00x4a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[14, 4], [18, 4], [19.5, 6.5], 
		[21, 9], [21, 14], [21.0, 30.5], 
		[21, 47], [24.0, 47.0], [27, 47], 
		[27.0, 29.5], [27, 12], [27, 6], 
		[23.5, 2.5], [20, -1], [14, -1], 
		[8, -1], [4.5, 2.0], [1, 5], 
		[1, 11], [1.0, 13.0], [1, 15], 
		[4.0, 15.0], [7, 15], [7.0, 13.5], 
		[7, 12], [7, 8], [9.0, 6.0], 
		[11, 4], ]);
}

module FreeSans_contour00x4a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 4], [18, 4], [19.5, 6.5],steps,10);
	BezConic([19.5, 6.5], [21, 9], [21, 14],steps,10);
	BezConic([7, 12], [7, 8], [9.0, 6.0],steps,10);
	BezConic([9.0, 6.0], [11, 4], [14, 4],steps,10);
}
}

module FreeSans_contour00x4a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([27, 12], [27, 6], [23.5, 2.5],steps,10);
	BezConic([23.5, 2.5], [20, -1], [14, -1],steps,10);
	BezConic([14, -1], [8, -1], [4.5, 2.0],steps,10);
	BezConic([4.5, 2.0], [1, 5], [1, 11],steps,10);
}
}

module FreeSans_contour00x4a(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x4a_skeleton();
			FreeSans_contour00x4a_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x4a_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x4a(steps=2) {
	difference() {
		FreeSans_contour00x4a(steps);
		
	}
}

FreeSans_bbox0x4a=[[1, -1], [27, 47]];

module FreeSans_letter0x4a(detail=2) {
	FreeSans_chunk10x4a(steps=detail);
} //end skeleton

module FreeSans_contour00x4b_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[11, 16], [11.0, 8.0], [11, 0], 
		[8.0, 0.0], [5, 0], [5.0, 23.5], 
		[5, 47], [8.0, 47.0], [11, 47], 
		[11.0, 35.0], [11, 23], [22.5, 35.0], 
		[34, 47], [38.0, 47.0], [42, 47], 
		[32.5, 37.5], [23, 28], [32.5, 14.0], 
		[42, 0], [38.5, 0.0], [35, 0], 
		[27.0, 12.0], [19, 24], [15.0, 20.0], 
		 ]);
}

module FreeSans_contour00x4b_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x4b_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x4b(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x4b_skeleton();
			FreeSans_contour00x4b_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x4b_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x4b(steps=2) {
	difference() {
		FreeSans_contour00x4b(steps);
		
	}
}

FreeSans_bbox0x4b=[[5, 0], [42, 47]];

module FreeSans_letter0x4b(detail=2) {
	FreeSans_chunk10x4b(steps=detail);
} //end skeleton

module FreeSans_contour00x4c_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[11, 47], [11.0, 26.0], [11, 5], 
		[22.5, 5.0], [34, 5], [34.0, 2.5], 
		[34, 0], [19.5, 0.0], [5, 0], 
		[5.0, 23.5], [5, 47], [8.0, 47.0], 
		 ]);
}

module FreeSans_contour00x4c_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x4c_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x4c(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x4c_skeleton();
			FreeSans_contour00x4c_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x4c_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x4c(steps=2) {
	difference() {
		FreeSans_contour00x4c(steps);
		
	}
}

FreeSans_bbox0x4c=[[5, 0], [34, 47]];

module FreeSans_letter0x4c(detail=2) {
	FreeSans_chunk10x4c(steps=detail);
} //end skeleton

module FreeSans_contour00x4d_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[30, 0], [27.0, 0.0], [24, 0], 
		[17.0, 19.5], [10, 39], [10.0, 19.5], 
		[10, 0], [7.5, 0.0], [5, 0], 
		[5.0, 23.5], [5, 47], [9.0, 47.0], 
		[13, 47], [20.0, 26.5], [27, 6], 
		[33.5, 26.5], [40, 47], [44.5, 47.0], 
		[49, 47], [49.0, 23.5], [49, 0], 
		[46.0, 0.0], [43, 0], [43.0, 19.5], 
		[43, 39],[36.5, 19.5], ]);
}

module FreeSans_contour00x4d_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x4d_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x4d(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x4d_skeleton();
			FreeSans_contour00x4d_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x4d_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x4d(steps=2) {
	difference() {
		FreeSans_contour00x4d(steps);
		
	}
}

FreeSans_bbox0x4d=[[5, 0], [49, 47]];

module FreeSans_letter0x4d(detail=2) {
	FreeSans_chunk10x4d(steps=detail);
} //end skeleton

module FreeSans_contour00x4e_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[41, 47], [41.0, 23.5], [41, 0], 
		[38.0, 0.0], [35, 0], [22.5, 19.0], 
		[10, 38], [10.0, 19.0], [10, 0], 
		[7.5, 0.0], [5, 0], [5.0, 23.5], 
		[5, 47], [8.0, 47.0], [11, 47], 
		[23.5, 28.0], [36, 9], [36.0, 28.0], 
		[36, 47],[38.5, 47.0], ]);
}

module FreeSans_contour00x4e_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x4e_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x4e(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x4e_skeleton();
			FreeSans_contour00x4e_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x4e_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x4e(steps=2) {
	difference() {
		FreeSans_contour00x4e(steps);
		
	}
}

FreeSans_bbox0x4e=[[5, 0], [41, 47]];

module FreeSans_letter0x4e(detail=2) {
	FreeSans_chunk10x4e(steps=detail);
} //end skeleton

module FreeSans_contour00x4f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[47, 23], [47, 12], [41.0, 5.5], 
		[35, -1], [25, -1], [15, -1], 
		[8.5, 5.5], [2, 12], [2.0, 23.0], 
		[2, 34], [8.5, 40.5], [15, 47], 
		[25, 47], [35, 47], [41.0, 40.5], 
		[47, 34], ]);
}

module FreeSans_contour00x4f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x4f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([47, 23], [47, 12], [41.0, 5.5],steps,10);
	BezConic([41.0, 5.5], [35, -1], [25, -1],steps,10);
	BezConic([25, -1], [15, -1], [8.5, 5.5],steps,10);
	BezConic([8.5, 5.5], [2, 12], [2.0, 23.0],steps,10);
	BezConic([2.0, 23.0], [2, 34], [8.5, 40.5],steps,10);
	BezConic([8.5, 40.5], [15, 47], [25, 47],steps,10);
	BezConic([25, 47], [35, 47], [41.0, 40.5],steps,10);
	BezConic([41.0, 40.5], [47, 34], [47, 23],steps,10);
}
}

module FreeSans_contour00x4f(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x4f_skeleton();
			FreeSans_contour00x4f_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x4f_subtractive_curves(steps);
	}
}

module FreeSans_contour10x4f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[25, 42], [17, 42], [12.5, 37.0], 
		[8, 32], [8.0, 23.0], [8, 14], 
		[13.0, 9.0], [18, 4], [25.0, 4.0], 
		[32, 4], [37.0, 9.0], [42, 14], 
		[42, 23], [42, 32], [37.0, 37.0], 
		[32, 42], ]);
}

module FreeSans_contour10x4f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([25, 42], [17, 42], [12.5, 37.0],steps,10);
	BezConic([12.5, 37.0], [8, 32], [8.0, 23.0],steps,10);
	BezConic([8.0, 23.0], [8, 14], [13.0, 9.0],steps,10);
	BezConic([13.0, 9.0], [18, 4], [25.0, 4.0],steps,10);
	BezConic([25.0, 4.0], [32, 4], [37.0, 9.0],steps,10);
	BezConic([37.0, 9.0], [42, 14], [42, 23],steps,10);
	BezConic([42, 23], [42, 32], [37.0, 37.0],steps,10);
	BezConic([37.0, 37.0], [32, 42], [25, 42],steps,10);
}
}

module FreeSans_contour10x4f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x4f(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x4f_skeleton();
			FreeSans_contour10x4f_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x4f_additive_curves(steps);
	}
}

module FreeSans_chunk10x4f(steps=2) {
	difference() {
		FreeSans_contour00x4f(steps);
		scale([1,1,1.1]) FreeSans_contour10x4f(steps);
	}
}

FreeSans_bbox0x4f=[[2, -1], [47, 47]];

module FreeSans_letter0x4f(detail=2) {
	FreeSans_chunk10x4f(steps=detail);
} //end skeleton

module FreeSans_contour00x50_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[39, 33], [39, 27], [35.5, 23.5], 
		[32, 20], [26, 20], [19.0, 20.0], 
		[12, 20], [12.0, 10.0], [12, 0], 
		[9.0, 0.0], [6, 0], [6.0, 23.5], 
		[6, 47], [15.5, 47.0], [25, 47], 
		[32, 47], [35.5, 43.5], [39, 40], 
		 ]);
}

module FreeSans_contour00x50_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x50_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([39, 33], [39, 27], [35.5, 23.5],steps,10);
	BezConic([35.5, 23.5], [32, 20], [26, 20],steps,10);
	BezConic([25, 47], [32, 47], [35.5, 43.5],steps,10);
	BezConic([35.5, 43.5], [39, 40], [39, 33],steps,10);
}
}

module FreeSans_contour00x50(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x50_skeleton();
			FreeSans_contour00x50_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x50_subtractive_curves(steps);
	}
}

module FreeSans_contour10x50_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[12, 25], [18.0, 25.0], [24, 25], 
		[28, 25], [30.5, 27.0], [33, 29], 
		[33.0, 33.0], [33, 37], [30.5, 39.0], 
		[28, 41], [24, 41], [18.0, 41.0], 
		[12, 41],[12.0, 33.0], ]);
}

module FreeSans_contour10x50_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([24, 25], [28, 25], [30.5, 27.0],steps,10);
	BezConic([30.5, 27.0], [33, 29], [33.0, 33.0],steps,10);
	BezConic([33.0, 33.0], [33, 37], [30.5, 39.0],steps,10);
	BezConic([30.5, 39.0], [28, 41], [24, 41],steps,10);
}
}

module FreeSans_contour10x50_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x50(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x50_skeleton();
			FreeSans_contour10x50_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x50_additive_curves(steps);
	}
}

module FreeSans_chunk10x50(steps=2) {
	difference() {
		FreeSans_contour00x50(steps);
		scale([1,1,1.1]) FreeSans_contour10x50(steps);
	}
}

FreeSans_bbox0x50=[[6, 0], [39, 47]];

module FreeSans_letter0x50(detail=2) {
	FreeSans_chunk10x50(steps=detail);
} //end skeleton

module FreeSans_contour00x51_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[47, 0], [45.5, -2.0], [44, -4], 
		[40.5, -1.0], [37, 2], [32, -1], 
		[25, -1], [15, -1], [8.5, 5.5], 
		[2, 12], [2.0, 23.0], [2, 34], 
		[8.5, 40.5], [15, 47], [25, 47], 
		[35, 47], [41.0, 40.5], [47, 34], 
		[47, 23], [47, 12], [41, 5], 
		[44.0, 2.5], ]);
}

module FreeSans_contour00x51_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x51_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([37, 2], [32, -1], [25, -1],steps,10);
	BezConic([25, -1], [15, -1], [8.5, 5.5],steps,10);
	BezConic([8.5, 5.5], [2, 12], [2.0, 23.0],steps,10);
	BezConic([2.0, 23.0], [2, 34], [8.5, 40.5],steps,10);
	BezConic([8.5, 40.5], [15, 47], [25, 47],steps,10);
	BezConic([25, 47], [35, 47], [41.0, 40.5],steps,10);
	BezConic([41.0, 40.5], [47, 34], [47, 23],steps,10);
	BezConic([47, 23], [47, 12], [41, 5],steps,10);
}
}

module FreeSans_contour00x51(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x51_skeleton();
			FreeSans_contour00x51_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x51_subtractive_curves(steps);
	}
}

module FreeSans_contour10x51_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[31, 13], [33.5, 10.5], [36, 8], 
		[42, 14], [42, 23], [42, 32], 
		[37.0, 37.0], [32, 42], [25.0, 42.0], 
		[18, 42], [13.0, 37.0], [8, 32], 
		[8.0, 23.0], [8, 14], [12.5, 9.0], 
		[17, 4], [25, 4], [29, 4], 
		[33, 6], [30.5, 8.0], [28, 10], 
		[29.5, 11.5], ]);
}

module FreeSans_contour10x51_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([36, 8], [42, 14], [42, 23],steps,10);
	BezConic([42, 23], [42, 32], [37.0, 37.0],steps,10);
	BezConic([37.0, 37.0], [32, 42], [25.0, 42.0],steps,10);
	BezConic([25.0, 42.0], [18, 42], [13.0, 37.0],steps,10);
	BezConic([13.0, 37.0], [8, 32], [8.0, 23.0],steps,10);
	BezConic([8.0, 23.0], [8, 14], [12.5, 9.0],steps,10);
	BezConic([12.5, 9.0], [17, 4], [25, 4],steps,10);
	BezConic([25, 4], [29, 4], [33, 6],steps,10);
}
}

module FreeSans_contour10x51_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x51(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x51_skeleton();
			FreeSans_contour10x51_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x51_additive_curves(steps);
	}
}

module FreeSans_chunk10x51(steps=2) {
	difference() {
		FreeSans_contour00x51(steps);
		scale([1,1,1.1]) FreeSans_contour10x51(steps);
	}
}

FreeSans_bbox0x51=[[2, -4], [47, 47]];

module FreeSans_letter0x51(detail=2) {
	FreeSans_chunk10x51(steps=detail);
} //end skeleton

module FreeSans_contour00x52_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[34, 23], [36, 22], [37.5, 21.0], 
		[39, 20], [39.5, 18.5], [40, 17], 
		[40.5, 15.5], [41, 14], [41, 12], 
		[41, 12], [41.0, 10.5], [41, 9], 
		[41, 9], [41, 6], [41.5, 4.5], 
		[42, 3], [43, 1], [43.0, 0.5], 
		[43, 0], [39.5, 0.0], [36, 0], 
		[35, 3], [35, 8], [35.0, 10.0], 
		[35, 12], [35, 16], [33.0, 18.0], 
		[31, 20], [27, 20], [19.5, 20.0], 
		[12, 20], [12.0, 10.0], [12, 0], 
		[9.0, 0.0], [6, 0], [6.0, 23.5], 
		[6, 47], [16.5, 47.0], [27, 47], 
		[34, 47], [38.0, 43.5], [42, 40], 
		[42, 34], [42, 30], [40.0, 27.5], 
		[38, 25], ]);
}

module FreeSans_contour00x52_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([39.5, 18.5], [40, 17], [40.5, 15.5],steps,10);
	BezConic([41.0, 10.5], [41, 9], [41, 9],steps,10);
	BezConic([41, 9], [41, 6], [41.5, 4.5],steps,10);
	BezConic([41.5, 4.5], [42, 3], [43, 1],steps,10);
	BezConic([35, 12], [35, 16], [33.0, 18.0],steps,10);
	BezConic([33.0, 18.0], [31, 20], [27, 20],steps,10);
}
}

module FreeSans_contour00x52_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([34, 23], [36, 22], [37.5, 21.0],steps,10);
	BezConic([37.5, 21.0], [39, 20], [39.5, 18.5],steps,10);
	BezConic([40.5, 15.5], [41, 14], [41, 12],steps,10);
	BezConic([41, 12], [41, 12], [41.0, 10.5],steps,10);
	BezConic([36, 0], [35, 3], [35, 8],steps,10);
	BezConic([27, 47], [34, 47], [38.0, 43.5],steps,10);
	BezConic([38.0, 43.5], [42, 40], [42, 34],steps,10);
	BezConic([42, 34], [42, 30], [40.0, 27.5],steps,10);
	BezConic([40.0, 27.5], [38, 25], [34, 23],steps,10);
}
}

module FreeSans_contour00x52(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x52_skeleton();
			FreeSans_contour00x52_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x52_subtractive_curves(steps);
	}
}

module FreeSans_contour10x52_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[35, 33], [35, 38], [33.0, 39.5], 
		[31, 41], [26, 41], [19.0, 41.0], 
		[12, 41], [12.0, 33.0], [12, 25], 
		[19.0, 25.0], [26, 25], [31, 25], 
		[33.0, 27.0],[35, 29], ]);
}

module FreeSans_contour10x52_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([35, 33], [35, 38], [33.0, 39.5],steps,10);
	BezConic([33.0, 39.5], [31, 41], [26, 41],steps,10);
	BezConic([26, 25], [31, 25], [33.0, 27.0],steps,10);
	BezConic([33.0, 27.0], [35, 29], [35, 33],steps,10);
}
}

module FreeSans_contour10x52_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x52(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x52_skeleton();
			FreeSans_contour10x52_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x52_additive_curves(steps);
	}
}

module FreeSans_chunk10x52(steps=2) {
	difference() {
		FreeSans_contour00x52(steps);
		scale([1,1,1.1]) FreeSans_contour10x52(steps);
	}
}

FreeSans_bbox0x52=[[6, 0], [43, 47]];

module FreeSans_letter0x52(detail=2) {
	FreeSans_chunk10x52(steps=detail);
} //end skeleton

module FreeSans_contour00x53_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[22, 4], [25, 4], [27.5, 4.5], 
		[30, 5], [31.5, 6.5], [33, 8], 
		[33.5, 9.5], [34, 11], [34, 12], 
		[34, 18], [25, 20], [19.5, 21.5], 
		[14, 23], [4, 25], [4, 34], 
		[4, 40], [8.5, 43.5], [13, 47], 
		[21, 47], [29, 47], [33.5, 43.5], 
		[38, 40], [38, 33], [35.5, 33.0], 
		[33, 33], [32, 38], [29.0, 40.0], 
		[26, 42], [21, 42], [16, 42], 
		[13.0, 40.0], [10, 38], [10, 35], 
		[10, 32], [12.0, 30.5], [14, 29], 
		[18, 28], [24.0, 26.5], [30, 25], 
		[35, 23], [37.5, 20.0], [40, 17], 
		[40, 13], [40, 11], [39.5, 9.0], 
		[39, 7], [37.5, 5.0], [36, 3], 
		[34.0, 1.5], [32, 0], [29.0, -0.5], 
		[26, -1], [22, -1], [19, -1], 
		[16.5, -1.0], [14, -1], [11.5, 0.5], 
		[9, 2], [7.5, 3.5], [6, 5], 
		[4.5, 8.0], [3, 11], [3, 15], 
		[6.0, 15.0], [9, 15], [9.0, 15.0], 
		[9, 15], [9, 13], [9.5, 11.0], 
		[10, 9], [11.5, 7.5], [13, 6], 
		[15.5, 5.0],[18, 4], ]);
}

module FreeSans_contour00x53_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([22, 4], [25, 4], [27.5, 4.5],steps,10);
	BezConic([27.5, 4.5], [30, 5], [31.5, 6.5],steps,10);
	BezConic([31.5, 6.5], [33, 8], [33.5, 9.5],steps,10);
	BezConic([33.5, 9.5], [34, 11], [34, 12],steps,10);
	BezConic([34, 12], [34, 18], [25, 20],steps,10);
	BezConic([33, 33], [32, 38], [29.0, 40.0],steps,10);
	BezConic([29.0, 40.0], [26, 42], [21, 42],steps,10);
	BezConic([21, 42], [16, 42], [13.0, 40.0],steps,10);
	BezConic([13.0, 40.0], [10, 38], [10, 35],steps,10);
	BezConic([10, 35], [10, 32], [12.0, 30.5],steps,10);
	BezConic([12.0, 30.5], [14, 29], [18, 28],steps,10);
	BezConic([22, -1], [19, -1], [16.5, -1.0],steps,10);
	BezConic([9, 15], [9, 13], [9.5, 11.0],steps,10);
	BezConic([9.5, 11.0], [10, 9], [11.5, 7.5],steps,10);
	BezConic([11.5, 7.5], [13, 6], [15.5, 5.0],steps,10);
	BezConic([15.5, 5.0], [18, 4], [22, 4],steps,10);
}
}

module FreeSans_contour00x53_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 23], [4, 25], [4, 34],steps,10);
	BezConic([4, 34], [4, 40], [8.5, 43.5],steps,10);
	BezConic([8.5, 43.5], [13, 47], [21, 47],steps,10);
	BezConic([21, 47], [29, 47], [33.5, 43.5],steps,10);
	BezConic([33.5, 43.5], [38, 40], [38, 33],steps,10);
	BezConic([30, 25], [35, 23], [37.5, 20.0],steps,10);
	BezConic([37.5, 20.0], [40, 17], [40, 13],steps,10);
	BezConic([40, 13], [40, 11], [39.5, 9.0],steps,10);
	BezConic([39.5, 9.0], [39, 7], [37.5, 5.0],steps,10);
	BezConic([37.5, 5.0], [36, 3], [34.0, 1.5],steps,10);
	BezConic([34.0, 1.5], [32, 0], [29.0, -0.5],steps,10);
	BezConic([29.0, -0.5], [26, -1], [22, -1],steps,10);
	BezConic([16.5, -1.0], [14, -1], [11.5, 0.5],steps,10);
	BezConic([11.5, 0.5], [9, 2], [7.5, 3.5],steps,10);
	BezConic([7.5, 3.5], [6, 5], [4.5, 8.0],steps,10);
	BezConic([4.5, 8.0], [3, 11], [3, 15],steps,10);
}
}

module FreeSans_contour00x53(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x53_skeleton();
			FreeSans_contour00x53_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x53_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x53(steps=2) {
	difference() {
		FreeSans_contour00x53(steps);
		
	}
}

FreeSans_bbox0x53=[[3, -1], [40, 47]];

module FreeSans_letter0x53(detail=2) {
	FreeSans_chunk10x53(steps=detail);
} //end skeleton

module FreeSans_contour00x54_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[23, 41], [23.0, 20.5], [23, 0], 
		[20.0, 0.0], [17, 0], [17.0, 20.5], 
		[17, 41], [9.0, 41.0], [1, 41], 
		[1.0, 44.0], [1, 47], [19.5, 47.0], 
		[38, 47], [38.0, 44.0], [38, 41], 
		[30.5, 41.0], ]);
}

module FreeSans_contour00x54_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x54_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x54(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x54_skeleton();
			FreeSans_contour00x54_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x54_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x54(steps=2) {
	difference() {
		FreeSans_contour00x54(steps);
		
	}
}

FreeSans_bbox0x54=[[1, 0], [38, 47]];

module FreeSans_letter0x54(detail=2) {
	FreeSans_chunk10x54(steps=detail);
} //end skeleton

module FreeSans_contour00x55_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[35, 47], [38.0, 47.0], [41, 47], 
		[41.0, 30.5], [41, 14], [41, 7], 
		[36.0, 3.0], [31, -1], [23, -1], 
		[15, -1], [10.0, 3.0], [5, 7], 
		[5, 14], [5.0, 30.5], [5, 47], 
		[8.0, 47.0], [11, 47], [11.0, 30.5], 
		[11, 14], [11, 9], [14.5, 6.5], 
		[18, 4], [23, 4], [29, 4], 
		[32.0, 6.5], [35, 9], [35, 14], 
		[35.0, 30.5], ]);
}

module FreeSans_contour00x55_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([11, 14], [11, 9], [14.5, 6.5],steps,10);
	BezConic([14.5, 6.5], [18, 4], [23, 4],steps,10);
	BezConic([23, 4], [29, 4], [32.0, 6.5],steps,10);
	BezConic([32.0, 6.5], [35, 9], [35, 14],steps,10);
}
}

module FreeSans_contour00x55_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([41, 14], [41, 7], [36.0, 3.0],steps,10);
	BezConic([36.0, 3.0], [31, -1], [23, -1],steps,10);
	BezConic([23, -1], [15, -1], [10.0, 3.0],steps,10);
	BezConic([10.0, 3.0], [5, 7], [5, 14],steps,10);
}
}

module FreeSans_contour00x55(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x55_skeleton();
			FreeSans_contour00x55_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x55_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x55(steps=2) {
	difference() {
		FreeSans_contour00x55(steps);
		
	}
}

FreeSans_bbox0x55=[[5, -1], [41, 47]];

module FreeSans_letter0x55(detail=2) {
	FreeSans_chunk10x55(steps=detail);
} //end skeleton

module FreeSans_contour00x56_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[25, 0], [22.0, 0.0], [19, 0], 
		[10.5, 23.5], [2, 47], [5.0, 47.0], 
		[8, 47], [15.0, 27.0], [22, 7], 
		[28.5, 27.0], [35, 47], [38.0, 47.0], 
		[41, 47],[33.0, 23.5], ]);
}

module FreeSans_contour00x56_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x56_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x56(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x56_skeleton();
			FreeSans_contour00x56_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x56_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x56(steps=2) {
	difference() {
		FreeSans_contour00x56(steps);
		
	}
}

FreeSans_bbox0x56=[[2, 0], [41, 47]];

module FreeSans_letter0x56(detail=2) {
	FreeSans_chunk10x56(steps=detail);
} //end skeleton

module FreeSans_contour00x57_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[48, 0], [44.5, 0.0], [41, 0], 
		[35.5, 19.0], [30, 38], [25.0, 19.0], 
		[20, 0], [16.5, 0.0], [13, 0], 
		[7.0, 23.5], [1, 47], [4.5, 47.0], 
		[8, 47], [12.5, 28.0], [17, 9], 
		[22.0, 28.0], [27, 47], [30.5, 47.0], 
		[34, 47], [39.0, 28.0], [44, 9], 
		[48.5, 28.0], [53, 47], [56.0, 47.0], 
		[59, 47],[53.5, 23.5], ]);
}

module FreeSans_contour00x57_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x57_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x57(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x57_skeleton();
			FreeSans_contour00x57_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x57_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x57(steps=2) {
	difference() {
		FreeSans_contour00x57(steps);
		
	}
}

FreeSans_bbox0x57=[[1, 0], [59, 47]];

module FreeSans_letter0x57(detail=2) {
	FreeSans_chunk10x57(steps=detail);
} //end skeleton

module FreeSans_contour00x58_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[25, 24], [33.5, 12.0], [42, 0], 
		[38.0, 0.0], [34, 0], [27.5, 9.5], 
		[21, 19], [15.0, 9.5], [9, 0], 
		[5.0, 0.0], [1, 0], [9.5, 12.0], 
		[18, 24], [10.0, 35.5], [2, 47], 
		[6.0, 47.0], [10, 47], [16.0, 37.5], 
		[22, 28], [28.0, 37.5], [34, 47], 
		[37.5, 47.0], [41, 47], [33.0, 35.5], 
		 ]);
}

module FreeSans_contour00x58_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x58_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x58(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x58_skeleton();
			FreeSans_contour00x58_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x58_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x58(steps=2) {
	difference() {
		FreeSans_contour00x58(steps);
		
	}
}

FreeSans_bbox0x58=[[1, 0], [42, 47]];

module FreeSans_letter0x58(detail=2) {
	FreeSans_chunk10x58(steps=detail);
} //end skeleton

module FreeSans_contour00x59_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[25, 18], [25.0, 9.0], [25, 0], 
		[22.0, 0.0], [19, 0], [19.0, 9.0], 
		[19, 18], [10.0, 32.5], [1, 47], 
		[4.5, 47.0], [8, 47], [15.0, 35.5], 
		[22, 24], [28.5, 35.5], [35, 47], 
		[38.5, 47.0], [42, 47], [33.5, 32.5], 
		 ]);
}

module FreeSans_contour00x59_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x59_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x59(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x59_skeleton();
			FreeSans_contour00x59_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x59_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x59(steps=2) {
	difference() {
		FreeSans_contour00x59(steps);
		
	}
}

FreeSans_bbox0x59=[[1, 0], [42, 47]];

module FreeSans_letter0x59(detail=2) {
	FreeSans_chunk10x59(steps=detail);
} //end skeleton

module FreeSans_contour00x5a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[37, 47], [37.0, 44.0], [37, 41], 
		[23.0, 23.0], [9, 5], [23.0, 5.0], 
		[37, 5], [37.0, 2.5], [37, 0], 
		[19.5, 0.0], [2, 0], [2.0, 2.5], 
		[2, 5], [16.0, 23.0], [30, 41], 
		[17.0, 41.0], [4, 41], [4.0, 44.0], 
		[4, 47],[20.5, 47.0], ]);
}

module FreeSans_contour00x5a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x5a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x5a(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x5a_skeleton();
			FreeSans_contour00x5a_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x5a_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x5a(steps=2) {
	difference() {
		FreeSans_contour00x5a(steps);
		
	}
}

FreeSans_bbox0x5a=[[2, 0], [37, 47]];

module FreeSans_letter0x5a(detail=2) {
	FreeSans_chunk10x5a(steps=detail);
} //end skeleton

module FreeSans_contour00x5b_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[16, 47], [16.0, 44.5], [16, 42], 
		[12.5, 42.0], [9, 42], [9.0, 16.5], 
		[9, -9], [12.5, -9.0], [16, -9], 
		[16.0, -11.5], [16, -14], [10.0, -14.0], 
		[4, -14], [4.0, 16.5], [4, 47], 
		[10.0, 47.0], ]);
}

module FreeSans_contour00x5b_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x5b_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x5b(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x5b_skeleton();
			FreeSans_contour00x5b_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x5b_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x5b(steps=2) {
	difference() {
		FreeSans_contour00x5b(steps);
		
	}
}

FreeSans_bbox0x5b=[[4, -14], [16, 47]];

module FreeSans_letter0x5b(detail=2) {
	FreeSans_chunk10x5b(steps=detail);
} //end skeleton

module FreeSans_contour00x5c_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 47], [10.5, 23.0], [18, -1], 
		[16.5, -1.0], [15, -1], [7.0, 23.0], 
		[-1, 47],[1.0, 47.0], ]);
}

module FreeSans_contour00x5c_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x5c_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x5c(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x5c_skeleton();
			FreeSans_contour00x5c_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x5c_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x5c(steps=2) {
	difference() {
		FreeSans_contour00x5c(steps);
		
	}
}

FreeSans_bbox0x5c=[[-1, -1], [18, 47]];

module FreeSans_letter0x5c(detail=2) {
	FreeSans_chunk10x5c(steps=detail);
} //end skeleton

module FreeSans_contour00x5d_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[1, -14], [1.0, -11.5], [1, -9], 
		[4.5, -9.0], [8, -9], [8.0, 16.5], 
		[8, 42], [4.5, 42.0], [1, 42], 
		[1.0, 44.5], [1, 47], [7.0, 47.0], 
		[13, 47], [13.0, 16.5], [13, -14], 
		[7.0, -14.0], ]);
}

module FreeSans_contour00x5d_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x5d_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x5d(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x5d_skeleton();
			FreeSans_contour00x5d_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x5d_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x5d(steps=2) {
	difference() {
		FreeSans_contour00x5d(steps);
		
	}
}

FreeSans_bbox0x5d=[[1, -14], [13, 47]];

module FreeSans_letter0x5d(detail=2) {
	FreeSans_chunk10x5d(steps=detail);
} //end skeleton

module FreeSans_contour00x5e_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[13, 45], [15.0, 45.0], [17, 45], 
		[22.0, 33.0], [27, 21], [25.0, 21.0], 
		[23, 21], [19.0, 30.5], [15, 40], 
		[11.0, 30.5], [7, 21], [5.0, 21.0], 
		[3, 21],[8.0, 33.0], ]);
}

module FreeSans_contour00x5e_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x5e_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x5e(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x5e_skeleton();
			FreeSans_contour00x5e_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x5e_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x5e(steps=2) {
	difference() {
		FreeSans_contour00x5e(steps);
		
	}
}

FreeSans_bbox0x5e=[[3, 21], [27, 45]];

module FreeSans_letter0x5e(detail=2) {
	FreeSans_chunk10x5e(steps=detail);
} //end skeleton

module FreeSans_contour00x5f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[37, -8], [37.0, -9.5], [37, -11], 
		[18.0, -11.0], [-1, -11], [-1.0, -9.5], 
		[-1, -8],[18.0, -8.0], ]);
}

module FreeSans_contour00x5f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x5f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x5f(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x5f_skeleton();
			FreeSans_contour00x5f_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x5f_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x5f(steps=2) {
	difference() {
		FreeSans_contour00x5f(steps);
		
	}
}

FreeSans_bbox0x5f=[[-1, -11], [37, -8]];

module FreeSans_letter0x5f(detail=2) {
	FreeSans_chunk10x5f(steps=detail);
} //end skeleton

module FreeSans_contour00x60_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[9, 47], [12.0, 42.5], [15, 38], 
		[13.0, 38.0], [11, 38], [6.0, 42.5], 
		[1, 47],[5.0, 47.0], ]);
}

module FreeSans_contour00x60_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x60_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x60(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x60_skeleton();
			FreeSans_contour00x60_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x60_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x60(steps=2) {
	difference() {
		FreeSans_contour00x60(steps);
		
	}
}

FreeSans_bbox0x60=[[1, 38], [15, 47]];

module FreeSans_letter0x60(detail=2) {
	FreeSans_chunk10x60(steps=detail);
} //end skeleton

module FreeSans_contour00x61_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[4, 24], [5, 34], [18, 34], 
		[24, 34], [27.0, 32.0], [30, 30], 
		[30, 25], [30.0, 15.5], [30, 6], 
		[30, 3], [33, 3], [34, 3], 
		[34, 3], [34.0, 1.0], [34, -1], 
		[32, -1], [31, -1], [28, -1], 
		[26.5, 0.0], [25, 1], [25, 3], 
		[20, -1], [14, -1], [9, -1], 
		[6.0, 1.5], [3, 4], [3, 8], 
		[3, 10], [3.0, 11.0], [3, 12], 
		[3.5, 13.0], [4, 14], [5.0, 15.0], 
		[6, 16], [6.5, 16.5], [7, 17], 
		[8.5, 17.5], [10, 18], [10.5, 18.0], 
		[11, 18], [13.0, 18.5], [15, 19], 
		[16.0, 19.0], [17, 19], [19, 19], 
		[22, 20], [23.5, 21.0], [25, 22], 
		[25, 23], [25.0, 24.0], [25, 25], 
		[25, 27], [23.0, 28.5], [21, 30], 
		[17, 30], [14, 30], [12.0, 28.5], 
		[10, 27], [10, 24], [7.0, 24.0], 
		 ]);
}

module FreeSans_contour00x61_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([30, 6], [30, 3], [33, 3],steps,10);
	BezConic([33, 3], [34, 3], [34, 3],steps,10);
	BezConic([34, -1], [32, -1], [31, -1],steps,10);
	BezConic([3, 8], [3, 10], [3.0, 11.0],steps,10);
	BezConic([10.5, 18.0], [11, 18], [13.0, 18.5],steps,10);
	BezConic([16.0, 19.0], [17, 19], [19, 19],steps,10);
	BezConic([19, 19], [22, 20], [23.5, 21.0],steps,10);
	BezConic([23.5, 21.0], [25, 22], [25, 23],steps,10);
	BezConic([25, 25], [25, 27], [23.0, 28.5],steps,10);
	BezConic([23.0, 28.5], [21, 30], [17, 30],steps,10);
	BezConic([17, 30], [14, 30], [12.0, 28.5],steps,10);
	BezConic([12.0, 28.5], [10, 27], [10, 24],steps,10);
}
}

module FreeSans_contour00x61_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([4, 24], [5, 34], [18, 34],steps,10);
	BezConic([18, 34], [24, 34], [27.0, 32.0],steps,10);
	BezConic([27.0, 32.0], [30, 30], [30, 25],steps,10);
	BezConic([31, -1], [28, -1], [26.5, 0.0],steps,10);
	BezConic([26.5, 0.0], [25, 1], [25, 3],steps,10);
	BezConic([25, 3], [20, -1], [14, -1],steps,10);
	BezConic([14, -1], [9, -1], [6.0, 1.5],steps,10);
	BezConic([6.0, 1.5], [3, 4], [3, 8],steps,10);
	BezConic([3.0, 11.0], [3, 12], [3.5, 13.0],steps,10);
	BezConic([3.5, 13.0], [4, 14], [5.0, 15.0],steps,10);
	BezConic([5.0, 15.0], [6, 16], [6.5, 16.5],steps,10);
	BezConic([6.5, 16.5], [7, 17], [8.5, 17.5],steps,10);
	BezConic([8.5, 17.5], [10, 18], [10.5, 18.0],steps,10);
	BezConic([13.0, 18.5], [15, 19], [16.0, 19.0],steps,10);
}
}

module FreeSans_contour00x61(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x61_skeleton();
			FreeSans_contour00x61_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x61_subtractive_curves(steps);
	}
}

module FreeSans_contour10x61_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[15, 3], [19, 3], [22.0, 5.5], 
		[25, 8], [25, 11], [25.0, 14.0], 
		[25, 17], [23, 16], [20.0, 15.5], 
		[17, 15], [14.5, 14.5], [12, 14], 
		[10.0, 12.5], [8, 11], [8.0, 8.5], 
		[8, 6], [10.0, 4.5], [12, 3], 
		 ]);
}

module FreeSans_contour10x61_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([15, 3], [19, 3], [22.0, 5.5],steps,10);
	BezConic([22.0, 5.5], [25, 8], [25, 11],steps,10);
	BezConic([20.0, 15.5], [17, 15], [14.5, 14.5],steps,10);
	BezConic([14.5, 14.5], [12, 14], [10.0, 12.5],steps,10);
	BezConic([10.0, 12.5], [8, 11], [8.0, 8.5],steps,10);
	BezConic([8.0, 8.5], [8, 6], [10.0, 4.5],steps,10);
	BezConic([10.0, 4.5], [12, 3], [15, 3],steps,10);
}
}

module FreeSans_contour10x61_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([25, 17], [23, 16], [20.0, 15.5],steps,10);
}
}

module FreeSans_contour10x61(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x61_skeleton();
			FreeSans_contour10x61_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x61_additive_curves(steps);
	}
}

module FreeSans_chunk10x61(steps=2) {
	difference() {
		FreeSans_contour00x61(steps);
		scale([1,1,1.1]) FreeSans_contour10x61(steps);
	}
}

FreeSans_bbox0x61=[[3, -1], [34, 34]];

module FreeSans_letter0x61(detail=2) {
	FreeSans_chunk10x61(steps=detail);
} //end skeleton

module FreeSans_contour00x62_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, 47], [6.0, 47.0], [9, 47], 
		[9.0, 38.0], [9, 29], [12, 34], 
		[19, 34], [26, 34], [29.5, 29.5], 
		[33, 25], [33, 17], [33, 9], 
		[29.5, 4.0], [26, -1], [19, -1], 
		[12, -1], [8, 4], [8.0, 2.0], 
		[8, 0], [5.5, 0.0], [3, 0], 
		[3.0, 23.5], ]);
}

module FreeSans_contour00x62_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x62_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([9, 29], [12, 34], [19, 34],steps,10);
	BezConic([19, 34], [26, 34], [29.5, 29.5],steps,10);
	BezConic([29.5, 29.5], [33, 25], [33, 17],steps,10);
	BezConic([33, 17], [33, 9], [29.5, 4.0],steps,10);
	BezConic([29.5, 4.0], [26, -1], [19, -1],steps,10);
	BezConic([19, -1], [12, -1], [8, 4],steps,10);
}
}

module FreeSans_contour00x62(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x62_skeleton();
			FreeSans_contour00x62_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x62_subtractive_curves(steps);
	}
}

module FreeSans_contour10x62_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 30], [14, 30], [11.5, 26.0], 
		[9, 22], [9.0, 16.5], [9, 11], 
		[11.5, 7.5], [14, 4], [18, 4], 
		[22, 4], [25.0, 7.5], [28, 11], 
		[28, 16], [28, 22], [25.5, 26.0], 
		[23, 30], ]);
}

module FreeSans_contour10x62_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([18, 30], [14, 30], [11.5, 26.0],steps,10);
	BezConic([11.5, 26.0], [9, 22], [9.0, 16.5],steps,10);
	BezConic([9.0, 16.5], [9, 11], [11.5, 7.5],steps,10);
	BezConic([11.5, 7.5], [14, 4], [18, 4],steps,10);
	BezConic([18, 4], [22, 4], [25.0, 7.5],steps,10);
	BezConic([25.0, 7.5], [28, 11], [28, 16],steps,10);
	BezConic([28, 16], [28, 22], [25.5, 26.0],steps,10);
	BezConic([25.5, 26.0], [23, 30], [18, 30],steps,10);
}
}

module FreeSans_contour10x62_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x62(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x62_skeleton();
			FreeSans_contour10x62_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x62_additive_curves(steps);
	}
}

module FreeSans_chunk10x62(steps=2) {
	difference() {
		FreeSans_contour00x62(steps);
		scale([1,1,1.1]) FreeSans_contour10x62(steps);
	}
}

FreeSans_bbox0x62=[[3, -1], [33, 47]];

module FreeSans_letter0x62(detail=2) {
	FreeSans_chunk10x62(steps=detail);
} //end skeleton

module FreeSans_contour00x63_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[30, 22], [27.5, 22.0], [25, 22], 
		[24, 26], [22.0, 28.0], [20, 30], 
		[17, 30], [12, 30], [10.0, 26.0], 
		[8, 22], [8, 16], [8, 10], 
		[10.5, 6.5], [13, 3], [17, 3], 
		[24, 3], [25, 12], [28.0, 12.0], 
		[31, 12], [30, 5], [26.5, 2.0], 
		[23, -1], [17, -1], [10, -1], 
		[6.0, 3.5], [2, 8], [2, 16], 
		[2, 25], [6.0, 29.5], [10, 34], 
		[17, 34], [23, 34], [26.5, 31.0], 
		[30, 28], ]);
}

module FreeSans_contour00x63_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([25, 22], [24, 26], [22.0, 28.0],steps,10);
	BezConic([22.0, 28.0], [20, 30], [17, 30],steps,10);
	BezConic([17, 30], [12, 30], [10.0, 26.0],steps,10);
	BezConic([10.0, 26.0], [8, 22], [8, 16],steps,10);
	BezConic([8, 16], [8, 10], [10.5, 6.5],steps,10);
	BezConic([10.5, 6.5], [13, 3], [17, 3],steps,10);
	BezConic([17, 3], [24, 3], [25, 12],steps,10);
}
}

module FreeSans_contour00x63_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([31, 12], [30, 5], [26.5, 2.0],steps,10);
	BezConic([26.5, 2.0], [23, -1], [17, -1],steps,10);
	BezConic([17, -1], [10, -1], [6.0, 3.5],steps,10);
	BezConic([6.0, 3.5], [2, 8], [2, 16],steps,10);
	BezConic([2, 16], [2, 25], [6.0, 29.5],steps,10);
	BezConic([6.0, 29.5], [10, 34], [17, 34],steps,10);
	BezConic([17, 34], [23, 34], [26.5, 31.0],steps,10);
	BezConic([26.5, 31.0], [30, 28], [30, 22],steps,10);
}
}

module FreeSans_contour00x63(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x63_skeleton();
			FreeSans_contour00x63_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x63_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x63(steps=2) {
	difference() {
		FreeSans_contour00x63(steps);
		
	}
}

FreeSans_bbox0x63=[[2, -1], [31, 34]];

module FreeSans_letter0x63(detail=2) {
	FreeSans_chunk10x63(steps=detail);
} //end skeleton

module FreeSans_contour00x64_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[32, 47], [32.0, 23.5], [32, 0], 
		[29.5, 0.0], [27, 0], [27.0, 2.0], 
		[27, 4], [25, 1], [22.5, 0.0], 
		[20, -1], [16, -1], [9, -1], 
		[5.5, 3.5], [2, 8], [2, 17], 
		[2, 25], [6.0, 29.5], [10, 34], 
		[16, 34], [23, 34], [26, 29], 
		[26.0, 38.0], [26, 47], [29.0, 47.0], 
		 ]);
}

module FreeSans_contour00x64_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x64_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([27, 4], [25, 1], [22.5, 0.0],steps,10);
	BezConic([22.5, 0.0], [20, -1], [16, -1],steps,10);
	BezConic([16, -1], [9, -1], [5.5, 3.5],steps,10);
	BezConic([5.5, 3.5], [2, 8], [2, 17],steps,10);
	BezConic([2, 17], [2, 25], [6.0, 29.5],steps,10);
	BezConic([6.0, 29.5], [10, 34], [16, 34],steps,10);
	BezConic([16, 34], [23, 34], [26, 29],steps,10);
}
}

module FreeSans_contour00x64(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x64_skeleton();
			FreeSans_contour00x64_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x64_subtractive_curves(steps);
	}
}

module FreeSans_contour10x64_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[17, 30], [13, 30], [10.0, 26.0], 
		[7, 22], [7, 17], [7, 11], 
		[10.0, 7.5], [13, 4], [17, 4], 
		[21, 4], [23.5, 7.5], [26, 11], 
		[26, 16], [26, 22], [23.5, 26.0], 
		[21, 30], ]);
}

module FreeSans_contour10x64_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17, 30], [13, 30], [10.0, 26.0],steps,10);
	BezConic([10.0, 26.0], [7, 22], [7, 17],steps,10);
	BezConic([7, 17], [7, 11], [10.0, 7.5],steps,10);
	BezConic([10.0, 7.5], [13, 4], [17, 4],steps,10);
	BezConic([17, 4], [21, 4], [23.5, 7.5],steps,10);
	BezConic([23.5, 7.5], [26, 11], [26, 16],steps,10);
	BezConic([26, 16], [26, 22], [23.5, 26.0],steps,10);
	BezConic([23.5, 26.0], [21, 30], [17, 30],steps,10);
}
}

module FreeSans_contour10x64_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x64(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x64_skeleton();
			FreeSans_contour10x64_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x64_additive_curves(steps);
	}
}

module FreeSans_chunk10x64(steps=2) {
	difference() {
		FreeSans_contour00x64(steps);
		scale([1,1,1.1]) FreeSans_contour10x64(steps);
	}
}

FreeSans_bbox0x64=[[2, -1], [32, 47]];

module FreeSans_letter0x64(detail=2) {
	FreeSans_chunk10x64(steps=detail);
} //end skeleton

module FreeSans_contour00x65_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[33, 15], [20.5, 15.0], [8, 15], 
		[8, 10], [10, 8], [13, 3], 
		[18, 3], [25, 3], [27, 10], 
		[29.5, 10.0], [32, 10], [31, 5], 
		[27.5, 2.0], [24, -1], [18, -1], 
		[11, -1], [7.0, 3.5], [3, 8], 
		[3.0, 16.5], [3, 25], [7.0, 29.5], 
		[11, 34], [18, 34], [23, 34], 
		[26.5, 32.0], [30, 30], [31, 26], 
		[33, 22], ]);
}

module FreeSans_contour00x65_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([8, 15], [8, 10], [10, 8],steps,10);
	BezConic([10, 8], [13, 3], [18, 3],steps,10);
	BezConic([18, 3], [25, 3], [27, 10],steps,10);
}
}

module FreeSans_contour00x65_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([32, 10], [31, 5], [27.5, 2.0],steps,10);
	BezConic([27.5, 2.0], [24, -1], [18, -1],steps,10);
	BezConic([18, -1], [11, -1], [7.0, 3.5],steps,10);
	BezConic([7.0, 3.5], [3, 8], [3.0, 16.5],steps,10);
	BezConic([3.0, 16.5], [3, 25], [7.0, 29.5],steps,10);
	BezConic([7.0, 29.5], [11, 34], [18, 34],steps,10);
	BezConic([18, 34], [23, 34], [26.5, 32.0],steps,10);
	BezConic([26.5, 32.0], [30, 30], [31, 26],steps,10);
	BezConic([31, 26], [33, 22], [33, 15],steps,10);
}
}

module FreeSans_contour00x65(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x65_skeleton();
			FreeSans_contour00x65_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x65_subtractive_curves(steps);
	}
}

module FreeSans_contour10x65_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[8, 19], [17.5, 19.0], [27, 19], 
		[27, 19], [27, 20], [27, 24], 
		[24.5, 27.0], [22, 30], [18, 30], 
		[14, 30], [11.5, 27.0], [9, 24], 
		 ]);
}

module FreeSans_contour10x65_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([27, 19], [27, 19], [27, 20],steps,10);
	BezConic([27, 20], [27, 24], [24.5, 27.0],steps,10);
	BezConic([24.5, 27.0], [22, 30], [18, 30],steps,10);
	BezConic([18, 30], [14, 30], [11.5, 27.0],steps,10);
	BezConic([11.5, 27.0], [9, 24], [8, 19],steps,10);
}
}

module FreeSans_contour10x65_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x65(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x65_skeleton();
			FreeSans_contour10x65_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x65_additive_curves(steps);
	}
}

module FreeSans_chunk10x65(steps=2) {
	difference() {
		FreeSans_contour00x65(steps);
		scale([1,1,1.1]) FreeSans_contour10x65(steps);
	}
}

FreeSans_bbox0x65=[[3, -1], [33, 34]];

module FreeSans_letter0x65(detail=2) {
	FreeSans_chunk10x65(steps=detail);
} //end skeleton

module FreeSans_contour00x66_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[17, 34], [17.0, 31.5], [17, 29], 
		[14.0, 29.0], [11, 29], [11.0, 14.5], 
		[11, 0], [8.5, 0.0], [6, 0], 
		[6.0, 14.5], [6, 29], [3.5, 29.0], 
		[1, 29], [1.0, 31.5], [1, 34], 
		[3.5, 34.0], [6, 34], [6.0, 36.5], 
		[6, 39], [6, 43], [8.0, 45.0], 
		[10, 47], [14, 47], [15, 47], 
		[17, 47], [17.0, 44.5], [17, 42], 
		[15, 42], [15, 42], [11, 42], 
		[11, 39], [11.0, 36.5], [11, 34], 
		[14.0, 34.0], ]);
}

module FreeSans_contour00x66_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 47], [15, 47], [17, 47],steps,10);
	BezConic([17, 42], [15, 42], [15, 42],steps,10);
	BezConic([15, 42], [11, 42], [11, 39],steps,10);
}
}

module FreeSans_contour00x66_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([6, 39], [6, 43], [8.0, 45.0],steps,10);
	BezConic([8.0, 45.0], [10, 47], [14, 47],steps,10);
}
}

module FreeSans_contour00x66(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x66_skeleton();
			FreeSans_contour00x66_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x66_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x66(steps=2) {
	difference() {
		FreeSans_contour00x66(steps);
		
	}
}

FreeSans_bbox0x66=[[1, 0], [17, 47]];

module FreeSans_letter0x66(detail=2) {
	FreeSans_chunk10x66(steps=detail);
} //end skeleton

module FreeSans_contour00x67_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[16, -1], [10, -1], [6.0, 3.5], 
		[2, 8], [2, 16], [2, 24], 
		[6.0, 29.0], [10, 34], [16, 34], 
		[22, 34], [26, 29], [26.0, 31.5], 
		[26, 34], [28.5, 34.0], [31, 34], 
		[31.0, 20.0], [31, 6], [31, 1], 
		[30.5, -2.5], [30, -6], [28.5, -8.5], 
		[27, -11], [24.0, -12.5], [21, -14], 
		[16, -14], [10, -14], [6.5, -11.5], 
		[3, -9], [3, -4], [5.5, -4.0], 
		[8, -4], [9, -9], [17, -9], 
		[22, -9], [24.0, -6.0], [26, -3], 
		[26, 3], [26.0, 4.0], [26, 5], 
		[24, 1], [21.5, 0.0], [19, -1], 
		 ]);
}

module FreeSans_contour00x67_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([8, -4], [9, -9], [17, -9],steps,10);
	BezConic([17, -9], [22, -9], [24.0, -6.0],steps,10);
	BezConic([24.0, -6.0], [26, -3], [26, 3],steps,10);
}
}

module FreeSans_contour00x67_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([16, -1], [10, -1], [6.0, 3.5],steps,10);
	BezConic([6.0, 3.5], [2, 8], [2, 16],steps,10);
	BezConic([2, 16], [2, 24], [6.0, 29.0],steps,10);
	BezConic([6.0, 29.0], [10, 34], [16, 34],steps,10);
	BezConic([16, 34], [22, 34], [26, 29],steps,10);
	BezConic([31, 6], [31, 1], [30.5, -2.5],steps,10);
	BezConic([30.5, -2.5], [30, -6], [28.5, -8.5],steps,10);
	BezConic([28.5, -8.5], [27, -11], [24.0, -12.5],steps,10);
	BezConic([24.0, -12.5], [21, -14], [16, -14],steps,10);
	BezConic([16, -14], [10, -14], [6.5, -11.5],steps,10);
	BezConic([6.5, -11.5], [3, -9], [3, -4],steps,10);
	BezConic([26, 5], [24, 1], [21.5, 0.0],steps,10);
	BezConic([21.5, 0.0], [19, -1], [16, -1],steps,10);
}
}

module FreeSans_contour00x67(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x67_skeleton();
			FreeSans_contour00x67_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x67_subtractive_curves(steps);
	}
}

module FreeSans_contour10x67_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[17, 30], [12, 30], [9.5, 26.5], 
		[7, 23], [7, 17], [7, 10], 
		[9.5, 6.5], [12, 3], [17, 3], 
		[21, 3], [23.5, 6.5], [26, 10], 
		[26, 16], [26, 23], [23.5, 26.5], 
		[21, 30], ]);
}

module FreeSans_contour10x67_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17, 30], [12, 30], [9.5, 26.5],steps,10);
	BezConic([9.5, 26.5], [7, 23], [7, 17],steps,10);
	BezConic([7, 17], [7, 10], [9.5, 6.5],steps,10);
	BezConic([9.5, 6.5], [12, 3], [17, 3],steps,10);
	BezConic([17, 3], [21, 3], [23.5, 6.5],steps,10);
	BezConic([23.5, 6.5], [26, 10], [26, 16],steps,10);
	BezConic([26, 16], [26, 23], [23.5, 26.5],steps,10);
	BezConic([23.5, 26.5], [21, 30], [17, 30],steps,10);
}
}

module FreeSans_contour10x67_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x67(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x67_skeleton();
			FreeSans_contour10x67_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x67_additive_curves(steps);
	}
}

module FreeSans_chunk10x67(steps=2) {
	difference() {
		FreeSans_contour00x67(steps);
		scale([1,1,1.1]) FreeSans_contour10x67(steps);
	}
}

FreeSans_bbox0x67=[[2, -14], [31, 34]];

module FreeSans_letter0x67(detail=2) {
	FreeSans_chunk10x67(steps=detail);
} //end skeleton

module FreeSans_contour00x68_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[26, 23], [26, 27], [24.0, 28.5], 
		[22, 30], [19, 30], [15, 30], 
		[12.5, 27.0], [10, 24], [10, 18], 
		[10.0, 9.0], [10, 0], [7.0, 0.0], 
		[4, 0], [4.0, 23.5], [4, 47], 
		[7.0, 47.0], [10, 47], [10.0, 38.0], 
		[10, 29], [12, 32], [14.5, 33.0], 
		[17, 34], [21, 34], [25, 34], 
		[28.0, 32.0], [31, 30], [31, 25], 
		[31.0, 12.5], [31, 0], [28.5, 0.0], 
		[26, 0],[26.0, 11.5], ]);
}

module FreeSans_contour00x68_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([26, 23], [26, 27], [24.0, 28.5],steps,10);
	BezConic([24.0, 28.5], [22, 30], [19, 30],steps,10);
	BezConic([19, 30], [15, 30], [12.5, 27.0],steps,10);
	BezConic([12.5, 27.0], [10, 24], [10, 18],steps,10);
}
}

module FreeSans_contour00x68_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([10, 29], [12, 32], [14.5, 33.0],steps,10);
	BezConic([14.5, 33.0], [17, 34], [21, 34],steps,10);
	BezConic([21, 34], [25, 34], [28.0, 32.0],steps,10);
	BezConic([28.0, 32.0], [31, 30], [31, 25],steps,10);
}
}

module FreeSans_contour00x68(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x68_skeleton();
			FreeSans_contour00x68_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x68_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x68(steps=2) {
	difference() {
		FreeSans_contour00x68(steps);
		
	}
}

FreeSans_bbox0x68=[[4, 0], [31, 47]];

module FreeSans_letter0x68(detail=2) {
	FreeSans_chunk10x68(steps=detail);
} //end skeleton

module FreeSans_contour00x69_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[10, 34], [10.0, 17.0], [10, 0], 
		[7.0, 0.0], [4, 0], [4.0, 17.0], 
		[4, 34],[7.0, 34.0], ]);
}

module FreeSans_contour00x69_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x69_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x69(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x69_skeleton();
			FreeSans_contour00x69_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x69_subtractive_curves(steps);
	}
}

module FreeSans_contour10x69_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[10, 47], [10.0, 43.5], [10, 40], 
		[7.0, 40.0], [4, 40], [4.0, 43.5], 
		[4, 47],[7.0, 47.0], ]);
}

module FreeSans_contour10x69_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x69_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x69(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x69_skeleton();
			FreeSans_contour10x69_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x69_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x69(steps=2) {
	difference() {
		FreeSans_contour00x69(steps);
		
	}
}

module FreeSans_chunk20x69(steps=2) {
	difference() {
		FreeSans_contour10x69(steps);
		
	}
}

FreeSans_bbox0x69=[[4, 0], [10, 47]];

module FreeSans_letter0x69(detail=2) {
	FreeSans_chunk10x69(steps=detail);
	FreeSans_chunk20x69(steps=detail);
} //end skeleton

module FreeSans_contour00x6a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[4, 34], [7.0, 34.0], [10, 34], 
		[10.0, 13.5], [10, -7], [10, -14], 
		[1, -14], [0, -14], [-1, -14], 
		[-1.0, -11.5], [-1, -9], [0, -9], 
		[0, -9], [3, -9], [3.5, -8.0], 
		[4, -7], [4, -5], [4.0, 14.5], 
		 ]);
}

module FreeSans_contour00x6a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([1, -14], [0, -14], [-1, -14],steps,10);
	BezConic([-1, -9], [0, -9], [0, -9],steps,10);
	BezConic([0, -9], [3, -9], [3.5, -8.0],steps,10);
	BezConic([3.5, -8.0], [4, -7], [4, -5],steps,10);
}
}

module FreeSans_contour00x6a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([10, -7], [10, -14], [1, -14],steps,10);
}
}

module FreeSans_contour00x6a(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x6a_skeleton();
			FreeSans_contour00x6a_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x6a_subtractive_curves(steps);
	}
}

module FreeSans_contour10x6a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[10, 47], [10.0, 43.5], [10, 40], 
		[7.0, 40.0], [4, 40], [4.0, 43.5], 
		[4, 47],[7.0, 47.0], ]);
}

module FreeSans_contour10x6a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x6a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x6a(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x6a_skeleton();
			FreeSans_contour10x6a_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x6a_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x6a(steps=2) {
	difference() {
		FreeSans_contour00x6a(steps);
		
	}
}

module FreeSans_chunk20x6a(steps=2) {
	difference() {
		FreeSans_contour10x6a(steps);
		
	}
}

FreeSans_bbox0x6a=[[-1, -14], [10, 47]];

module FreeSans_letter0x6a(detail=2) {
	FreeSans_chunk10x6a(steps=detail);
	FreeSans_chunk20x6a(steps=detail);
} //end skeleton

module FreeSans_contour00x6b_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[9, 47], [9.0, 33.0], [9, 19], 
		[16.0, 26.5], [23, 34], [26.5, 34.0], 
		[30, 34], [24.0, 28.0], [18, 22], 
		[25.0, 11.0], [32, 0], [29.0, 0.0], 
		[26, 0], [20.0, 9.0], [14, 18], 
		[11.5, 15.5], [9, 13], [9.0, 6.5], 
		[9, 0], [6.5, 0.0], [4, 0], 
		[4.0, 23.5], [4, 47], [6.5, 47.0], 
		 ]);
}

module FreeSans_contour00x6b_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x6b_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x6b(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x6b_skeleton();
			FreeSans_contour00x6b_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x6b_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x6b(steps=2) {
	difference() {
		FreeSans_contour00x6b(steps);
		
	}
}

FreeSans_bbox0x6b=[[4, 0], [32, 47]];

module FreeSans_letter0x6b(detail=2) {
	FreeSans_chunk10x6b(steps=detail);
} //end skeleton

module FreeSans_contour00x6c_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[10, 47], [10.0, 23.5], [10, 0], 
		[7.0, 0.0], [4, 0], [4.0, 23.5], 
		[4, 47],[7.0, 47.0], ]);
}

module FreeSans_contour00x6c_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x6c_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x6c(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x6c_skeleton();
			FreeSans_contour00x6c_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x6c_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x6c(steps=2) {
	difference() {
		FreeSans_contour00x6c(steps);
		
	}
}

FreeSans_bbox0x6c=[[4, 0], [10, 47]];

module FreeSans_letter0x6c(detail=2) {
	FreeSans_chunk10x6c(steps=detail);
} //end skeleton

module FreeSans_contour00x6d_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[4, 34], [6.5, 34.0], [9, 34], 
		[9.0, 31.5], [9, 29], [12, 32], 
		[14.0, 33.0], [16, 34], [20, 34], 
		[26, 34], [29, 29], [31, 32], 
		[33.5, 33.0], [36, 34], [39, 34], 
		[44, 34], [46.5, 32.0], [49, 30], 
		[49, 25], [49.0, 12.5], [49, 0], 
		[46.0, 0.0], [43, 0], [43.0, 11.5], 
		[43, 23], [43, 26], [41.5, 28.0], 
		[40, 30], [37, 30], [34, 30], 
		[31.5, 27.5], [29, 25], [29, 21], 
		[29.0, 10.5], [29, 0], [26.5, 0.0], 
		[24, 0], [24.0, 11.5], [24, 23], 
		[24, 26], [22.5, 28.0], [21, 30], 
		[18, 30], [14, 30], [12.0, 27.5], 
		[10, 25], [10, 21], [10.0, 10.5], 
		[10, 0], [7.0, 0.0], [4, 0], 
		[4.0, 17.0], ]);
}

module FreeSans_contour00x6d_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([43, 23], [43, 26], [41.5, 28.0],steps,10);
	BezConic([41.5, 28.0], [40, 30], [37, 30],steps,10);
	BezConic([37, 30], [34, 30], [31.5, 27.5],steps,10);
	BezConic([31.5, 27.5], [29, 25], [29, 21],steps,10);
	BezConic([24, 23], [24, 26], [22.5, 28.0],steps,10);
	BezConic([22.5, 28.0], [21, 30], [18, 30],steps,10);
	BezConic([18, 30], [14, 30], [12.0, 27.5],steps,10);
	BezConic([12.0, 27.5], [10, 25], [10, 21],steps,10);
}
}

module FreeSans_contour00x6d_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([9, 29], [12, 32], [14.0, 33.0],steps,10);
	BezConic([14.0, 33.0], [16, 34], [20, 34],steps,10);
	BezConic([20, 34], [26, 34], [29, 29],steps,10);
	BezConic([29, 29], [31, 32], [33.5, 33.0],steps,10);
	BezConic([33.5, 33.0], [36, 34], [39, 34],steps,10);
	BezConic([39, 34], [44, 34], [46.5, 32.0],steps,10);
	BezConic([46.5, 32.0], [49, 30], [49, 25],steps,10);
}
}

module FreeSans_contour00x6d(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x6d_skeleton();
			FreeSans_contour00x6d_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x6d_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x6d(steps=2) {
	difference() {
		FreeSans_contour00x6d(steps);
		
	}
}

FreeSans_bbox0x6d=[[4, 0], [49, 34]];

module FreeSans_letter0x6d(detail=2) {
	FreeSans_chunk10x6d(steps=detail);
} //end skeleton

module FreeSans_contour00x6e_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[4, 34], [6.5, 34.0], [9, 34], 
		[9.0, 31.0], [9, 28], [12, 31], 
		[14.5, 32.5], [17, 34], [21, 34], 
		[25, 34], [28.0, 32.0], [31, 30], 
		[31, 25], [31.0, 12.5], [31, 0], 
		[28.5, 0.0], [26, 0], [26.0, 11.5], 
		[26, 23], [26, 26], [24.0, 28.0], 
		[22, 30], [19, 30], [15, 30], 
		[12.5, 27.0], [10, 24], [10, 18], 
		[10.0, 9.0], [10, 0], [7.0, 0.0], 
		[4, 0],[4.0, 17.0], ]);
}

module FreeSans_contour00x6e_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([26, 23], [26, 26], [24.0, 28.0],steps,10);
	BezConic([24.0, 28.0], [22, 30], [19, 30],steps,10);
	BezConic([19, 30], [15, 30], [12.5, 27.0],steps,10);
	BezConic([12.5, 27.0], [10, 24], [10, 18],steps,10);
}
}

module FreeSans_contour00x6e_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([9, 28], [12, 31], [14.5, 32.5],steps,10);
	BezConic([14.5, 32.5], [17, 34], [21, 34],steps,10);
	BezConic([21, 34], [25, 34], [28.0, 32.0],steps,10);
	BezConic([28.0, 32.0], [31, 30], [31, 25],steps,10);
}
}

module FreeSans_contour00x6e(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x6e_skeleton();
			FreeSans_contour00x6e_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x6e_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x6e(steps=2) {
	difference() {
		FreeSans_contour00x6e(steps);
		
	}
}

FreeSans_bbox0x6e=[[4, 0], [31, 34]];

module FreeSans_letter0x6e(detail=2) {
	FreeSans_chunk10x6e(steps=detail);
} //end skeleton

module FreeSans_contour00x6f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[17, 34], [25, 34], [29.0, 29.5], 
		[33, 25], [33, 16], [33, 8], 
		[29.0, 3.5], [25, -1], [17, -1], 
		[10, -1], [6.0, 3.5], [2, 8], 
		[2.0, 16.5], [2, 25], [6.0, 29.5], 
		[10, 34], ]);
}

module FreeSans_contour00x6f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x6f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17, 34], [25, 34], [29.0, 29.5],steps,10);
	BezConic([29.0, 29.5], [33, 25], [33, 16],steps,10);
	BezConic([33, 16], [33, 8], [29.0, 3.5],steps,10);
	BezConic([29.0, 3.5], [25, -1], [17, -1],steps,10);
	BezConic([17, -1], [10, -1], [6.0, 3.5],steps,10);
	BezConic([6.0, 3.5], [2, 8], [2.0, 16.5],steps,10);
	BezConic([2.0, 16.5], [2, 25], [6.0, 29.5],steps,10);
	BezConic([6.0, 29.5], [10, 34], [17, 34],steps,10);
}
}

module FreeSans_contour00x6f(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x6f_skeleton();
			FreeSans_contour00x6f_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x6f_subtractive_curves(steps);
	}
}

module FreeSans_contour10x6f_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[17, 30], [13, 30], [10.5, 26.5], 
		[8, 23], [8.0, 16.5], [8, 10], 
		[10.5, 6.5], [13, 3], [17, 3], 
		[22, 3], [24.5, 6.5], [27, 10], 
		[27, 16], [27, 23], [24.5, 26.5], 
		[22, 30], ]);
}

module FreeSans_contour10x6f_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17, 30], [13, 30], [10.5, 26.5],steps,10);
	BezConic([10.5, 26.5], [8, 23], [8.0, 16.5],steps,10);
	BezConic([8.0, 16.5], [8, 10], [10.5, 6.5],steps,10);
	BezConic([10.5, 6.5], [13, 3], [17, 3],steps,10);
	BezConic([17, 3], [22, 3], [24.5, 6.5],steps,10);
	BezConic([24.5, 6.5], [27, 10], [27, 16],steps,10);
	BezConic([27, 16], [27, 23], [24.5, 26.5],steps,10);
	BezConic([24.5, 26.5], [22, 30], [17, 30],steps,10);
}
}

module FreeSans_contour10x6f_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x6f(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x6f_skeleton();
			FreeSans_contour10x6f_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x6f_additive_curves(steps);
	}
}

module FreeSans_chunk10x6f(steps=2) {
	difference() {
		FreeSans_contour00x6f(steps);
		scale([1,1,1.1]) FreeSans_contour10x6f(steps);
	}
}

FreeSans_bbox0x6f=[[2, -1], [33, 34]];

module FreeSans_letter0x6f(detail=2) {
	FreeSans_chunk10x6f(steps=detail);
} //end skeleton

module FreeSans_contour00x70_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[3, -14], [3.0, 10.0], [3, 34], 
		[5.5, 34.0], [8, 34], [8.0, 31.0], 
		[8, 28], [12, 34], [19, 34], 
		[26, 34], [29.5, 29.5], [33, 25], 
		[33, 16], [33, 8], [29.5, 3.5], 
		[26, -1], [19, -1], [13, -1], 
		[9, 4], [9.0, -5.0], [9, -14], 
		[6.0, -14.0], ]);
}

module FreeSans_contour00x70_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x70_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([8, 28], [12, 34], [19, 34],steps,10);
	BezConic([19, 34], [26, 34], [29.5, 29.5],steps,10);
	BezConic([29.5, 29.5], [33, 25], [33, 16],steps,10);
	BezConic([33, 16], [33, 8], [29.5, 3.5],steps,10);
	BezConic([29.5, 3.5], [26, -1], [19, -1],steps,10);
	BezConic([19, -1], [13, -1], [9, 4],steps,10);
}
}

module FreeSans_contour00x70(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x70_skeleton();
			FreeSans_contour00x70_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x70_subtractive_curves(steps);
	}
}

module FreeSans_contour10x70_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 30], [14, 30], [11.5, 26.0], 
		[9, 22], [9.0, 16.5], [9, 11], 
		[11.5, 7.5], [14, 4], [18, 4], 
		[23, 4], [25.5, 7.5], [28, 11], 
		[28, 16], [28, 22], [25.5, 26.0], 
		[23, 30], ]);
}

module FreeSans_contour10x70_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([18, 30], [14, 30], [11.5, 26.0],steps,10);
	BezConic([11.5, 26.0], [9, 22], [9.0, 16.5],steps,10);
	BezConic([9.0, 16.5], [9, 11], [11.5, 7.5],steps,10);
	BezConic([11.5, 7.5], [14, 4], [18, 4],steps,10);
	BezConic([18, 4], [23, 4], [25.5, 7.5],steps,10);
	BezConic([25.5, 7.5], [28, 11], [28, 16],steps,10);
	BezConic([28, 16], [28, 22], [25.5, 26.0],steps,10);
	BezConic([25.5, 26.0], [23, 30], [18, 30],steps,10);
}
}

module FreeSans_contour10x70_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x70(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x70_skeleton();
			FreeSans_contour10x70_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x70_additive_curves(steps);
	}
}

module FreeSans_chunk10x70(steps=2) {
	difference() {
		FreeSans_contour00x70(steps);
		scale([1,1,1.1]) FreeSans_contour10x70(steps);
	}
}

FreeSans_bbox0x70=[[3, -14], [33, 34]];

module FreeSans_letter0x70(detail=2) {
	FreeSans_chunk10x70(steps=detail);
} //end skeleton

module FreeSans_contour00x71_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[32, -14], [29.0, -14.0], [26, -14], 
		[26.0, -5.0], [26, 4], [23, -1], 
		[16, -1], [9, -1], [5.5, 3.5], 
		[2, 8], [2, 16], [2, 24], 
		[6.0, 29.0], [10, 34], [16, 34], 
		[23, 34], [27, 29], [27.0, 31.5], 
		[27, 34], [29.5, 34.0], [32, 34], 
		[32.0, 10.0], ]);
}

module FreeSans_contour00x71_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x71_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([26, 4], [23, -1], [16, -1],steps,10);
	BezConic([16, -1], [9, -1], [5.5, 3.5],steps,10);
	BezConic([5.5, 3.5], [2, 8], [2, 16],steps,10);
	BezConic([2, 16], [2, 24], [6.0, 29.0],steps,10);
	BezConic([6.0, 29.0], [10, 34], [16, 34],steps,10);
	BezConic([16, 34], [23, 34], [27, 29],steps,10);
}
}

module FreeSans_contour00x71(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x71_skeleton();
			FreeSans_contour00x71_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x71_subtractive_curves(steps);
	}
}

module FreeSans_contour10x71_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[17, 30], [13, 30], [10.0, 26.0], 
		[7, 22], [7, 17], [7, 11], 
		[10.0, 7.5], [13, 4], [17, 4], 
		[21, 4], [23.5, 7.5], [26, 11], 
		[26, 16], [26, 22], [23.5, 26.0], 
		[21, 30], ]);
}

module FreeSans_contour10x71_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17, 30], [13, 30], [10.0, 26.0],steps,10);
	BezConic([10.0, 26.0], [7, 22], [7, 17],steps,10);
	BezConic([7, 17], [7, 11], [10.0, 7.5],steps,10);
	BezConic([10.0, 7.5], [13, 4], [17, 4],steps,10);
	BezConic([17, 4], [21, 4], [23.5, 7.5],steps,10);
	BezConic([23.5, 7.5], [26, 11], [26, 16],steps,10);
	BezConic([26, 16], [26, 22], [23.5, 26.0],steps,10);
	BezConic([23.5, 26.0], [21, 30], [17, 30],steps,10);
}
}

module FreeSans_contour10x71_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour10x71(steps=2) {
	difference() {
		union() {
			FreeSans_contour10x71_skeleton();
			FreeSans_contour10x71_subtractive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour10x71_additive_curves(steps);
	}
}

module FreeSans_chunk10x71(steps=2) {
	difference() {
		FreeSans_contour00x71(steps);
		scale([1,1,1.1]) FreeSans_contour10x71(steps);
	}
}

FreeSans_bbox0x71=[[2, -14], [32, 34]];

module FreeSans_letter0x71(detail=2) {
	FreeSans_chunk10x71(steps=detail);
} //end skeleton

module FreeSans_contour00x72_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[21, 29], [15, 29], [12.5, 26.5], 
		[10, 24], [10, 17], [10.0, 8.5], 
		[10, 0], [7.0, 0.0], [4, 0], 
		[4.0, 17.0], [4, 34], [6.5, 34.0], 
		[9, 34], [9.0, 30.5], [9, 27], 
		[12, 31], [14.0, 32.5], [16, 34], 
		[18, 34], [19, 34], [21, 34], 
		[21.0, 31.5], ]);
}

module FreeSans_contour00x72_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([21, 29], [15, 29], [12.5, 26.5],steps,10);
	BezConic([12.5, 26.5], [10, 24], [10, 17],steps,10);
	BezConic([18, 34], [19, 34], [21, 34],steps,10);
}
}

module FreeSans_contour00x72_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([9, 27], [12, 31], [14.0, 32.5],steps,10);
	BezConic([14.0, 32.5], [16, 34], [18, 34],steps,10);
}
}

module FreeSans_contour00x72(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x72_skeleton();
			FreeSans_contour00x72_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x72_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x72(steps=2) {
	difference() {
		FreeSans_contour00x72(steps);
		
	}
}

FreeSans_bbox0x72=[[4, 0], [21, 34]];

module FreeSans_letter0x72(detail=2) {
	FreeSans_chunk10x72(steps=detail);
} //end skeleton

module FreeSans_contour00x73_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[8, 10], [8, 7], [10.0, 5.0], 
		[12, 3], [16, 3], [20, 3], 
		[22.0, 4.5], [24, 6], [24, 9], 
		[24, 11], [22.5, 12.0], [21, 13], 
		[19, 13], [16.5, 14.0], [14, 15], 
		[8, 16], [5.5, 18.0], [3, 20], 
		[3, 24], [3, 29], [6.5, 31.5], 
		[10, 34], [16.0, 34.0], [22, 34], 
		[25.0, 31.5], [28, 29], [28, 24], 
		[25.0, 24.0], [22, 24], [22, 30], 
		[16, 30], [12, 30], [10.5, 28.5], 
		[9, 27], [9, 25], [9, 23], 
		[10.5, 21.5], [12, 20], [15, 20], 
		[17.5, 19.0], [20, 18], [25, 17], 
		[27.0, 15.0], [29, 13], [29, 9], 
		[29, 4], [25.5, 1.5], [22, -1], 
		[16, -1], [3, -1], [2, 10], 
		[5.0, 10.0], ]);
}

module FreeSans_contour00x73_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([8, 10], [8, 7], [10.0, 5.0],steps,10);
	BezConic([10.0, 5.0], [12, 3], [16, 3],steps,10);
	BezConic([16, 3], [20, 3], [22.0, 4.5],steps,10);
	BezConic([22.0, 4.5], [24, 6], [24, 9],steps,10);
	BezConic([24, 9], [24, 11], [22.5, 12.0],steps,10);
	BezConic([22.5, 12.0], [21, 13], [19, 13],steps,10);
	BezConic([22, 24], [22, 30], [16, 30],steps,10);
	BezConic([16, 30], [12, 30], [10.5, 28.5],steps,10);
	BezConic([10.5, 28.5], [9, 27], [9, 25],steps,10);
	BezConic([9, 25], [9, 23], [10.5, 21.5],steps,10);
	BezConic([10.5, 21.5], [12, 20], [15, 20],steps,10);
}
}

module FreeSans_contour00x73_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([14, 15], [8, 16], [5.5, 18.0],steps,10);
	BezConic([5.5, 18.0], [3, 20], [3, 24],steps,10);
	BezConic([3, 24], [3, 29], [6.5, 31.5],steps,10);
	BezConic([6.5, 31.5], [10, 34], [16.0, 34.0],steps,10);
	BezConic([16.0, 34.0], [22, 34], [25.0, 31.5],steps,10);
	BezConic([25.0, 31.5], [28, 29], [28, 24],steps,10);
	BezConic([20, 18], [25, 17], [27.0, 15.0],steps,10);
	BezConic([27.0, 15.0], [29, 13], [29, 9],steps,10);
	BezConic([29, 9], [29, 4], [25.5, 1.5],steps,10);
	BezConic([25.5, 1.5], [22, -1], [16, -1],steps,10);
	BezConic([16, -1], [3, -1], [2, 10],steps,10);
}
}

module FreeSans_contour00x73(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x73_skeleton();
			FreeSans_contour00x73_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x73_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x73(steps=2) {
	difference() {
		FreeSans_contour00x73(steps);
		
	}
}

FreeSans_bbox0x73=[[2, -1], [29, 34]];

module FreeSans_letter0x73(detail=2) {
	FreeSans_chunk10x73(steps=detail);
} //end skeleton

module FreeSans_contour00x74_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[16, 34], [16.0, 31.5], [16, 29], 
		[13.5, 29.0], [11, 29], [11.0, 17.5], 
		[11, 6], [11, 4], [11.5, 3.5], 
		[12, 3], [14, 3], [15, 3], 
		[16, 3], [16.0, 1.0], [16, -1], 
		[14, -1], [12, -1], [9, -1], 
		[7.0, 0.0], [5, 1], [5, 4], 
		[5.0, 16.5], [5, 29], [3.0, 29.0], 
		[1, 29], [1.0, 31.5], [1, 34], 
		[3.0, 34.0], [5, 34], [5.0, 38.5], 
		[5, 43], [8.0, 43.0], [11, 43], 
		[11.0, 38.5], [11, 34], [13.5, 34.0], 
		 ]);
}

module FreeSans_contour00x74_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([11, 6], [11, 4], [11.5, 3.5],steps,10);
	BezConic([11.5, 3.5], [12, 3], [14, 3],steps,10);
	BezConic([14, 3], [15, 3], [16, 3],steps,10);
	BezConic([16, -1], [14, -1], [12, -1],steps,10);
}
}

module FreeSans_contour00x74_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([12, -1], [9, -1], [7.0, 0.0],steps,10);
	BezConic([7.0, 0.0], [5, 1], [5, 4],steps,10);
}
}

module FreeSans_contour00x74(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x74_skeleton();
			FreeSans_contour00x74_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x74_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x74(steps=2) {
	difference() {
		FreeSans_contour00x74(steps);
		
	}
}

FreeSans_bbox0x74=[[1, -1], [16, 43]];

module FreeSans_letter0x74(detail=2) {
	FreeSans_chunk10x74(steps=detail);
} //end skeleton

module FreeSans_contour00x75_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[31, 0], [28.5, 0.0], [26, 0], 
		[26.0, 2.5], [26, 5], [24, 1], 
		[21.5, 0.0], [19, -1], [15, -1], 
		[10, -1], [7.0, 1.5], [4, 4], 
		[4, 8], [4.0, 21.0], [4, 34], 
		[6.5, 34.0], [9, 34], [9.0, 22.0], 
		[9, 10], [9, 7], [11.0, 5.0], 
		[13, 3], [16, 3], [21, 3], 
		[23.5, 6.0], [26, 9], [26, 15], 
		[26.0, 24.5], [26, 34], [28.5, 34.0], 
		[31, 34],[31.0, 17.0], ]);
}

module FreeSans_contour00x75_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([9, 10], [9, 7], [11.0, 5.0],steps,10);
	BezConic([11.0, 5.0], [13, 3], [16, 3],steps,10);
	BezConic([16, 3], [21, 3], [23.5, 6.0],steps,10);
	BezConic([23.5, 6.0], [26, 9], [26, 15],steps,10);
}
}

module FreeSans_contour00x75_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([26, 5], [24, 1], [21.5, 0.0],steps,10);
	BezConic([21.5, 0.0], [19, -1], [15, -1],steps,10);
	BezConic([15, -1], [10, -1], [7.0, 1.5],steps,10);
	BezConic([7.0, 1.5], [4, 4], [4, 8],steps,10);
}
}

module FreeSans_contour00x75(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x75_skeleton();
			FreeSans_contour00x75_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x75_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x75(steps=2) {
	difference() {
		FreeSans_contour00x75(steps);
		
	}
}

FreeSans_bbox0x75=[[4, -1], [31, 34]];

module FreeSans_letter0x75(detail=2) {
	FreeSans_chunk10x75(steps=detail);
} //end skeleton

module FreeSans_contour00x76_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 0], [15.0, 0.0], [12, 0], 
		[6.5, 17.0], [1, 34], [4.0, 34.0], 
		[7, 34], [11.5, 20.0], [16, 6], 
		[20.5, 20.0], [25, 34], [28.0, 34.0], 
		[31, 34],[24.5, 17.0], ]);
}

module FreeSans_contour00x76_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x76_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x76(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x76_skeleton();
			FreeSans_contour00x76_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x76_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x76(steps=2) {
	difference() {
		FreeSans_contour00x76(steps);
		
	}
}

FreeSans_bbox0x76=[[1, 0], [31, 34]];

module FreeSans_letter0x76(detail=2) {
	FreeSans_chunk10x76(steps=detail);
} //end skeleton

module FreeSans_contour00x77_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[35, 0], [32.0, 0.0], [29, 0], 
		[26.0, 13.0], [23, 26], [19.5, 13.0], 
		[16, 0], [13.0, 0.0], [10, 0], 
		[5.0, 17.0], [0, 34], [3.0, 34.0], 
		[6, 34], [9.5, 20.5], [13, 7], 
		[16.5, 20.5], [20, 34], [23.0, 34.0], 
		[26, 34], [29.5, 20.5], [33, 7], 
		[36.0, 20.5], [39, 34], [42.0, 34.0], 
		[45, 34],[40.0, 17.0], ]);
}

module FreeSans_contour00x77_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x77_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x77(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x77_skeleton();
			FreeSans_contour00x77_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x77_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x77(steps=2) {
	difference() {
		FreeSans_contour00x77(steps);
		
	}
}

FreeSans_bbox0x77=[[0, 0], [45, 34]];

module FreeSans_letter0x77(detail=2) {
	FreeSans_chunk10x77(steps=detail);
} //end skeleton

module FreeSans_contour00x78_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[19, 17], [24.5, 8.5], [30, 0], 
		[27.0, 0.0], [24, 0], [20.0, 6.5], 
		[16, 13], [11.5, 6.5], [7, 0], 
		[4.0, 0.0], [1, 0], [7.0, 8.5], 
		[13, 17], [7.5, 25.5], [2, 34], 
		[5.0, 34.0], [8, 34], [12.0, 27.5], 
		[16, 21], [20.0, 27.5], [24, 34], 
		[27.0, 34.0], [30, 34], [24.5, 25.5], 
		 ]);
}

module FreeSans_contour00x78_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x78_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x78(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x78_skeleton();
			FreeSans_contour00x78_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x78_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x78(steps=2) {
	difference() {
		FreeSans_contour00x78(steps);
		
	}
}

FreeSans_bbox0x78=[[1, 0], [30, 34]];

module FreeSans_letter0x78(detail=2) {
	FreeSans_chunk10x78(steps=detail);
} //end skeleton

module FreeSans_contour00x79_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[25, 34], [28.0, 34.0], [31, 34], 
		[23.5, 13.5], [16, -7], [13, -14], 
		[7, -14], [5, -14], [3, -13], 
		[3.0, -10.5], [3, -8], [5, -9], 
		[6, -9], [8, -9], [9.0, -8.0], 
		[10, -7], [11, -5], [12.0, -2.5], 
		[13, 0], [7.0, 17.0], [1, 34], 
		[4.0, 34.0], [7, 34], [11.5, 20.5], 
		[16, 7],[20.5, 20.5], ]);
}

module FreeSans_contour00x79_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([3, -8], [5, -9], [6, -9],steps,10);
	BezConic([6, -9], [8, -9], [9.0, -8.0],steps,10);
	BezConic([9.0, -8.0], [10, -7], [11, -5],steps,10);
}
}

module FreeSans_contour00x79_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([16, -7], [13, -14], [7, -14],steps,10);
	BezConic([7, -14], [5, -14], [3, -13],steps,10);
}
}

module FreeSans_contour00x79(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x79_skeleton();
			FreeSans_contour00x79_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x79_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x79(steps=2) {
	difference() {
		FreeSans_contour00x79(steps);
		
	}
}

FreeSans_bbox0x79=[[1, -14], [31, 34]];

module FreeSans_letter0x79(detail=2) {
	FreeSans_chunk10x79(steps=detail);
} //end skeleton

module FreeSans_contour00x7a_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[28, 34], [28.0, 31.5], [28, 29], 
		[18.0, 17.0], [8, 5], [18.5, 5.0], 
		[29, 5], [29.0, 2.5], [29, 0], 
		[15.5, 0.0], [2, 0], [2.0, 2.5], 
		[2, 5], [12.0, 17.0], [22, 29], 
		[12.5, 29.0], [3, 29], [3.0, 31.5], 
		[3, 34],[15.5, 34.0], ]);
}

module FreeSans_contour00x7a_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x7a_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x7a(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x7a_skeleton();
			FreeSans_contour00x7a_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x7a_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x7a(steps=2) {
	difference() {
		FreeSans_contour00x7a(steps);
		
	}
}

FreeSans_bbox0x7a=[[2, 0], [29, 34]];

module FreeSans_letter0x7a(detail=2) {
	FreeSans_chunk10x7a(steps=detail);
} //end skeleton

module FreeSans_contour00x7b_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[18, 47], [18.0, 44.5], [18, 42], 
		[17.5, 42.0], [17, 42], [14, 42], 
		[13.5, 41.5], [13, 41], [13, 38], 
		[13.0, 32.5], [13, 27], [13, 22], 
		[11.5, 20.0], [10, 18], [7, 17], 
		[13, 14], [13, 6], [13.0, 0.5], 
		[13, -5], [13, -8], [13.5, -8.5], 
		[14, -9], [17, -9], [17.5, -9.0], 
		[18, -9], [18.0, -11.5], [18, -14], 
		[16.5, -14.0], [15, -14], [11, -14], 
		[9.5, -11.5], [8, -9], [8, -5], 
		[8.0, 0.5], [8, 6], [8, 10], 
		[7.0, 12.0], [6, 14], [3, 14], 
		[3.0, 16.5], [3, 19], [6, 19], 
		[7.0, 21.0], [8, 23], [8, 28], 
		[8.0, 33.0], [8, 38], [8, 42], 
		[9.5, 44.5], [11, 47], [15, 47], 
		[16.5, 47.0], ]);
}

module FreeSans_contour00x7b_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([17, 42], [14, 42], [13.5, 41.5],steps,10);
	BezConic([13.5, 41.5], [13, 41], [13, 38],steps,10);
	BezConic([13, -5], [13, -8], [13.5, -8.5],steps,10);
	BezConic([13.5, -8.5], [14, -9], [17, -9],steps,10);
	BezConic([8, 6], [8, 10], [7.0, 12.0],steps,10);
	BezConic([7.0, 12.0], [6, 14], [3, 14],steps,10);
	BezConic([3, 19], [6, 19], [7.0, 21.0],steps,10);
	BezConic([7.0, 21.0], [8, 23], [8, 28],steps,10);
}
}

module FreeSans_contour00x7b_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([13, 27], [13, 22], [11.5, 20.0],steps,10);
	BezConic([11.5, 20.0], [10, 18], [7, 17],steps,10);
	BezConic([7, 17], [13, 14], [13, 6],steps,10);
	BezConic([15, -14], [11, -14], [9.5, -11.5],steps,10);
	BezConic([9.5, -11.5], [8, -9], [8, -5],steps,10);
	BezConic([8, 38], [8, 42], [9.5, 44.5],steps,10);
	BezConic([9.5, 44.5], [11, 47], [15, 47],steps,10);
}
}

module FreeSans_contour00x7b(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x7b_skeleton();
			FreeSans_contour00x7b_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x7b_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x7b(steps=2) {
	difference() {
		FreeSans_contour00x7b(steps);
		
	}
}

FreeSans_bbox0x7b=[[3, -14], [18, 47]];

module FreeSans_letter0x7b(detail=2) {
	FreeSans_chunk10x7b(steps=detail);
} //end skeleton

module FreeSans_contour00x7c_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[6, 47], [8.0, 47.0], [10, 47], 
		[10.0, 16.5], [10, -14], [8.0, -14.0], 
		[6, -14],[6.0, 16.5], ]);
}

module FreeSans_contour00x7c_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x7c_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
}
}

module FreeSans_contour00x7c(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x7c_skeleton();
			FreeSans_contour00x7c_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x7c_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x7c(steps=2) {
	difference() {
		FreeSans_contour00x7c(steps);
		
	}
}

FreeSans_bbox0x7c=[[6, -14], [10, 47]];

module FreeSans_letter0x7c(detail=2) {
	FreeSans_chunk10x7c(steps=detail);
} //end skeleton

module FreeSans_contour00x7d_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[2, -14], [2.0, -11.5], [2, -9], 
		[2.5, -9.0], [3, -9], [5, -9], 
		[6.0, -8.5], [7, -8], [7, -5], 
		[7.0, 0.5], [7, 6], [7, 14], 
		[12, 17], [7, 19], [7, 27], 
		[7.0, 32.5], [7, 38], [7, 41], 
		[6.0, 41.5], [5, 42], [3, 42], 
		[2.5, 42.0], [2, 42], [2.0, 44.5], 
		[2, 47], [3.5, 47.0], [5, 47], 
		[8, 47], [10.0, 44.5], [12, 42], 
		[12, 38], [12.0, 33.0], [12, 28], 
		[12, 23], [13.0, 21.0], [14, 19], 
		[17, 19], [17.0, 16.5], [17, 14], 
		[14, 14], [13.0, 12.0], [12, 10], 
		[12, 6], [12.0, 0.5], [12, -5], 
		[12, -9], [10.0, -11.5], [8, -14], 
		[5, -14],[3.5, -14.0], ]);
}

module FreeSans_contour00x7d_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([3, -9], [5, -9], [6.0, -8.5],steps,10);
	BezConic([6.0, -8.5], [7, -8], [7, -5],steps,10);
	BezConic([7, 38], [7, 41], [6.0, 41.5],steps,10);
	BezConic([6.0, 41.5], [5, 42], [3, 42],steps,10);
	BezConic([12, 28], [12, 23], [13.0, 21.0],steps,10);
	BezConic([13.0, 21.0], [14, 19], [17, 19],steps,10);
	BezConic([17, 14], [14, 14], [13.0, 12.0],steps,10);
	BezConic([13.0, 12.0], [12, 10], [12, 6],steps,10);
}
}

module FreeSans_contour00x7d_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([7, 6], [7, 14], [12, 17],steps,10);
	BezConic([12, 17], [7, 19], [7, 27],steps,10);
	BezConic([5, 47], [8, 47], [10.0, 44.5],steps,10);
	BezConic([10.0, 44.5], [12, 42], [12, 38],steps,10);
	BezConic([12, -5], [12, -9], [10.0, -11.5],steps,10);
	BezConic([10.0, -11.5], [8, -14], [5, -14],steps,10);
}
}

module FreeSans_contour00x7d(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x7d_skeleton();
			FreeSans_contour00x7d_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x7d_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x7d(steps=2) {
	difference() {
		FreeSans_contour00x7d(steps);
		
	}
}

FreeSans_bbox0x7d=[[2, -14], [17, 47]];

module FreeSans_letter0x7d(detail=2) {
	FreeSans_chunk10x7d(steps=detail);
} //end skeleton

module FreeSans_contour00x7e_skeleton() {
translate([0,0,-10/2]) 	linear_extrude(height=10) polygon( points=[
		[12, 24], [9, 24], [8, 19], 
		[6.5, 19.0], [5, 19], [5, 23], 
		[7.0, 25.5], [9, 28], [12, 28], 
		[13, 28], [15, 27], [19.0, 25.0], 
		[23, 23], [24, 22], [26, 22], 
		[28, 22], [28.5, 23.0], [29, 24], 
		[29, 26], [31.0, 26.0], [33, 26], 
		[33, 17], [26, 17], [23, 17], 
		[21, 19], [17.5, 21.0], [14, 23], 
		[13, 24], ]);
}

module FreeSans_contour00x7e_additive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([12, 24], [9, 24], [8, 19],steps,10);
	BezConic([23, 23], [24, 22], [26, 22],steps,10);
	BezConic([26, 22], [28, 22], [28.5, 23.0],steps,10);
	BezConic([28.5, 23.0], [29, 24], [29, 26],steps,10);
	BezConic([14, 23], [13, 24], [12, 24],steps,10);
}
}

module FreeSans_contour00x7e_subtractive_curves(steps=2) {
translate([0,0,-10/2]){ 
	BezConic([5, 19], [5, 23], [7.0, 25.5],steps,10);
	BezConic([7.0, 25.5], [9, 28], [12, 28],steps,10);
	BezConic([12, 28], [13, 28], [15, 27],steps,10);
	BezConic([33, 26], [33, 17], [26, 17],steps,10);
	BezConic([26, 17], [23, 17], [21, 19],steps,10);
}
}

module FreeSans_contour00x7e(steps=2) {
	difference() {
		union() {
			FreeSans_contour00x7e_skeleton();
			FreeSans_contour00x7e_additive_curves(steps);
		}
		scale([1,1,1.1]) FreeSans_contour00x7e_subtractive_curves(steps);
	}
}

module FreeSans_chunk10x7e(steps=2) {
	difference() {
		FreeSans_contour00x7e(steps);
		
	}
}

FreeSans_bbox0x7e=[[5, 17], [33, 28]];

module FreeSans_letter0x7e(detail=2) {
	FreeSans_chunk10x7e(steps=detail);
} //end skeleton



module FreeSans(charcode,center=true, steps=2){
    if (charcode == "0x21" || charcode == 33 || charcode=="!"){
        if(center==true){
            translate([-FreeSans_bbox0x21[1][0]/2,0,0]) FreeSans_letter0x21(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x21(steps);
        }
    }
    if (charcode == "0x22" || charcode == 34 || charcode=="\""){
        if(center==true){
            translate([-FreeSans_bbox0x22[1][0]/2,0,0]) FreeSans_letter0x22(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x22(steps);
        }
    }
    if (charcode == "0x23" || charcode == 35 || charcode=="#"){
        if(center==true){
            translate([-FreeSans_bbox0x23[1][0]/2,0,0]) FreeSans_letter0x23(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x23(steps);
        }
    }
    if (charcode == "0x24" || charcode == 36 || charcode=="$"){
        if(center==true){
            translate([-FreeSans_bbox0x24[1][0]/2,0,0]) FreeSans_letter0x24(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x24(steps);
        }
    }
    if (charcode == "0x25" || charcode == 37 || charcode=="%"){
        if(center==true){
            translate([-FreeSans_bbox0x25[1][0]/2,0,0]) FreeSans_letter0x25(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x25(steps);
        }
    }
    if (charcode == "0x26" || charcode == 38 || charcode=="&"){
        if(center==true){
            translate([-FreeSans_bbox0x26[1][0]/2,0,0]) FreeSans_letter0x26(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x26(steps);
        }
    }
    if (charcode == "0x27" || charcode == 39 || charcode=="'"){
        if(center==true){
            translate([-FreeSans_bbox0x27[1][0]/2,0,0]) FreeSans_letter0x27(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x27(steps);
        }
    }
    if (charcode == "0x28" || charcode == 40 || charcode=="("){
        if(center==true){
            translate([-FreeSans_bbox0x28[1][0]/2,0,0]) FreeSans_letter0x28(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x28(steps);
        }
    }
    if (charcode == "0x29" || charcode == 41 || charcode==")"){
        if(center==true){
            translate([-FreeSans_bbox0x29[1][0]/2,0,0]) FreeSans_letter0x29(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x29(steps);
        }
    }
    if (charcode == "0x2a" || charcode == 42 || charcode=="*"){
        if(center==true){
            translate([-FreeSans_bbox0x2a[1][0]/2,0,0]) FreeSans_letter0x2a(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x2a(steps);
        }
    }
    if (charcode == "0x2b" || charcode == 43 || charcode=="+"){
        if(center==true){
            translate([-FreeSans_bbox0x2b[1][0]/2,0,0]) FreeSans_letter0x2b(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x2b(steps);
        }
    }
    if (charcode == "0x2c" || charcode == 44 || charcode==","){
        if(center==true){
            translate([-FreeSans_bbox0x2c[1][0]/2,0,0]) FreeSans_letter0x2c(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x2c(steps);
        }
    }
    if (charcode == "0x2d" || charcode == 45 || charcode=="-"){
        if(center==true){
            translate([-FreeSans_bbox0x2d[1][0]/2,0,0]) FreeSans_letter0x2d(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x2d(steps);
        }
    }
    if (charcode == "0x2e" || charcode == 46 || charcode=="."){
        if(center==true){
            translate([-FreeSans_bbox0x2e[1][0]/2,0,0]) FreeSans_letter0x2e(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x2e(steps);
        }
    }
    if (charcode == "0x2f" || charcode == 47 || charcode=="/"){
        if(center==true){
            translate([-FreeSans_bbox0x2f[1][0]/2,0,0]) FreeSans_letter0x2f(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x2f(steps);
        }
    }
    if (charcode == "0x30" || charcode == 48 || charcode=="0"){
        if(center==true){
            translate([-FreeSans_bbox0x30[1][0]/2,0,0]) FreeSans_letter0x30(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x30(steps);
        }
    }
    if (charcode == "0x31" || charcode == 49 || charcode=="1"){
        if(center==true){
            translate([-FreeSans_bbox0x31[1][0]/2,0,0]) FreeSans_letter0x31(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x31(steps);
        }
    }
    if (charcode == "0x32" || charcode == 50 || charcode=="2"){
        if(center==true){
            translate([-FreeSans_bbox0x32[1][0]/2,0,0]) FreeSans_letter0x32(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x32(steps);
        }
    }
    if (charcode == "0x33" || charcode == 51 || charcode=="3"){
        if(center==true){
            translate([-FreeSans_bbox0x33[1][0]/2,0,0]) FreeSans_letter0x33(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x33(steps);
        }
    }
    if (charcode == "0x34" || charcode == 52 || charcode=="4"){
        if(center==true){
            translate([-FreeSans_bbox0x34[1][0]/2,0,0]) FreeSans_letter0x34(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x34(steps);
        }
    }
    if (charcode == "0x35" || charcode == 53 || charcode=="5"){
        if(center==true){
            translate([-FreeSans_bbox0x35[1][0]/2,0,0]) FreeSans_letter0x35(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x35(steps);
        }
    }
    if (charcode == "0x36" || charcode == 54 || charcode=="6"){
        if(center==true){
            translate([-FreeSans_bbox0x36[1][0]/2,0,0]) FreeSans_letter0x36(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x36(steps);
        }
    }
    if (charcode == "0x37" || charcode == 55 || charcode=="7"){
        if(center==true){
            translate([-FreeSans_bbox0x37[1][0]/2,0,0]) FreeSans_letter0x37(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x37(steps);
        }
    }
    if (charcode == "0x38" || charcode == 56 || charcode=="8"){
        if(center==true){
            translate([-FreeSans_bbox0x38[1][0]/2,0,0]) FreeSans_letter0x38(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x38(steps);
        }
    }
    if (charcode == "0x39" || charcode == 57 || charcode=="9"){
        if(center==true){
            translate([-FreeSans_bbox0x39[1][0]/2,0,0]) FreeSans_letter0x39(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x39(steps);
        }
    }
    if (charcode == "0x3a" || charcode == 58 || charcode==":"){
        if(center==true){
            translate([-FreeSans_bbox0x3a[1][0]/2,0,0]) FreeSans_letter0x3a(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x3a(steps);
        }
    }
    if (charcode == "0x3b" || charcode == 59 || charcode==";"){
        if(center==true){
            translate([-FreeSans_bbox0x3b[1][0]/2,0,0]) FreeSans_letter0x3b(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x3b(steps);
        }
    }
    if (charcode == "0x3c" || charcode == 60 || charcode=="<"){
        if(center==true){
            translate([-FreeSans_bbox0x3c[1][0]/2,0,0]) FreeSans_letter0x3c(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x3c(steps);
        }
    }
    if (charcode == "0x3d" || charcode == 61 || charcode=="="){
        if(center==true){
            translate([-FreeSans_bbox0x3d[1][0]/2,0,0]) FreeSans_letter0x3d(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x3d(steps);
        }
    }
    if (charcode == "0x3e" || charcode == 62 || charcode==">"){
        if(center==true){
            translate([-FreeSans_bbox0x3e[1][0]/2,0,0]) FreeSans_letter0x3e(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x3e(steps);
        }
    }
    if (charcode == "0x3f" || charcode == 63 || charcode=="?"){
        if(center==true){
            translate([-FreeSans_bbox0x3f[1][0]/2,0,0]) FreeSans_letter0x3f(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x3f(steps);
        }
    }
    if (charcode == "0x40" || charcode == 64 || charcode=="@"){
        if(center==true){
            translate([-FreeSans_bbox0x40[1][0]/2,0,0]) FreeSans_letter0x40(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x40(steps);
        }
    }
    if (charcode == "0x41" || charcode == 65 || charcode=="A"){
        if(center==true){
            translate([-FreeSans_bbox0x41[1][0]/2,0,0]) FreeSans_letter0x41(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x41(steps);
        }
    }
    if (charcode == "0x42" || charcode == 66 || charcode=="B"){
        if(center==true){
            translate([-FreeSans_bbox0x42[1][0]/2,0,0]) FreeSans_letter0x42(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x42(steps);
        }
    }
    if (charcode == "0x43" || charcode == 67 || charcode=="C"){
        if(center==true){
            translate([-FreeSans_bbox0x43[1][0]/2,0,0]) FreeSans_letter0x43(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x43(steps);
        }
    }
    if (charcode == "0x44" || charcode == 68 || charcode=="D"){
        if(center==true){
            translate([-FreeSans_bbox0x44[1][0]/2,0,0]) FreeSans_letter0x44(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x44(steps);
        }
    }
    if (charcode == "0x45" || charcode == 69 || charcode=="E"){
        if(center==true){
            translate([-FreeSans_bbox0x45[1][0]/2,0,0]) FreeSans_letter0x45(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x45(steps);
        }
    }
    if (charcode == "0x46" || charcode == 70 || charcode=="F"){
        if(center==true){
            translate([-FreeSans_bbox0x46[1][0]/2,0,0]) FreeSans_letter0x46(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x46(steps);
        }
    }
    if (charcode == "0x47" || charcode == 71 || charcode=="G"){
        if(center==true){
            translate([-FreeSans_bbox0x47[1][0]/2,0,0]) FreeSans_letter0x47(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x47(steps);
        }
    }
    if (charcode == "0x48" || charcode == 72 || charcode=="H"){
        if(center==true){
            translate([-FreeSans_bbox0x48[1][0]/2,0,0]) FreeSans_letter0x48(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x48(steps);
        }
    }
    if (charcode == "0x49" || charcode == 73 || charcode=="I"){
        if(center==true){
            translate([-FreeSans_bbox0x49[1][0]/2,0,0]) FreeSans_letter0x49(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x49(steps);
        }
    }
    if (charcode == "0x4a" || charcode == 74 || charcode=="J"){
        if(center==true){
            translate([-FreeSans_bbox0x4a[1][0]/2,0,0]) FreeSans_letter0x4a(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x4a(steps);
        }
    }
    if (charcode == "0x4b" || charcode == 75 || charcode=="K"){
        if(center==true){
            translate([-FreeSans_bbox0x4b[1][0]/2,0,0]) FreeSans_letter0x4b(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x4b(steps);
        }
    }
    if (charcode == "0x4c" || charcode == 76 || charcode=="L"){
        if(center==true){
            translate([-FreeSans_bbox0x4c[1][0]/2,0,0]) FreeSans_letter0x4c(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x4c(steps);
        }
    }
    if (charcode == "0x4d" || charcode == 77 || charcode=="M"){
        if(center==true){
            translate([-FreeSans_bbox0x4d[1][0]/2,0,0]) FreeSans_letter0x4d(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x4d(steps);
        }
    }
    if (charcode == "0x4e" || charcode == 78 || charcode=="N"){
        if(center==true){
            translate([-FreeSans_bbox0x4e[1][0]/2,0,0]) FreeSans_letter0x4e(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x4e(steps);
        }
    }
    if (charcode == "0x4f" || charcode == 79 || charcode=="O"){
        if(center==true){
            translate([-FreeSans_bbox0x4f[1][0]/2,0,0]) FreeSans_letter0x4f(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x4f(steps);
        }
    }
    if (charcode == "0x50" || charcode == 80 || charcode=="P"){
        if(center==true){
            translate([-FreeSans_bbox0x50[1][0]/2,0,0]) FreeSans_letter0x50(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x50(steps);
        }
    }
    if (charcode == "0x51" || charcode == 81 || charcode=="Q"){
        if(center==true){
            translate([-FreeSans_bbox0x51[1][0]/2,0,0]) FreeSans_letter0x51(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x51(steps);
        }
    }
    if (charcode == "0x52" || charcode == 82 || charcode=="R"){
        if(center==true){
            translate([-FreeSans_bbox0x52[1][0]/2,0,0]) FreeSans_letter0x52(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x52(steps);
        }
    }
    if (charcode == "0x53" || charcode == 83 || charcode=="S"){
        if(center==true){
            translate([-FreeSans_bbox0x53[1][0]/2,0,0]) FreeSans_letter0x53(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x53(steps);
        }
    }
    if (charcode == "0x54" || charcode == 84 || charcode=="T"){
        if(center==true){
            translate([-FreeSans_bbox0x54[1][0]/2,0,0]) FreeSans_letter0x54(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x54(steps);
        }
    }
    if (charcode == "0x55" || charcode == 85 || charcode=="U"){
        if(center==true){
            translate([-FreeSans_bbox0x55[1][0]/2,0,0]) FreeSans_letter0x55(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x55(steps);
        }
    }
    if (charcode == "0x56" || charcode == 86 || charcode=="V"){
        if(center==true){
            translate([-FreeSans_bbox0x56[1][0]/2,0,0]) FreeSans_letter0x56(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x56(steps);
        }
    }
    if (charcode == "0x57" || charcode == 87 || charcode=="W"){
        if(center==true){
            translate([-FreeSans_bbox0x57[1][0]/2,0,0]) FreeSans_letter0x57(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x57(steps);
        }
    }
    if (charcode == "0x58" || charcode == 88 || charcode=="X"){
        if(center==true){
            translate([-FreeSans_bbox0x58[1][0]/2,0,0]) FreeSans_letter0x58(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x58(steps);
        }
    }
    if (charcode == "0x59" || charcode == 89 || charcode=="Y"){
        if(center==true){
            translate([-FreeSans_bbox0x59[1][0]/2,0,0]) FreeSans_letter0x59(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x59(steps);
        }
    }
    if (charcode == "0x5a" || charcode == 90 || charcode=="Z"){
        if(center==true){
            translate([-FreeSans_bbox0x5a[1][0]/2,0,0]) FreeSans_letter0x5a(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x5a(steps);
        }
    }
    if (charcode == "0x5b" || charcode == 91 || charcode=="["){
        if(center==true){
            translate([-FreeSans_bbox0x5b[1][0]/2,0,0]) FreeSans_letter0x5b(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x5b(steps);
        }
    }
    if (charcode == "0x5c" || charcode == 92 || charcode=="\\"){
        if(center==true){
            translate([-FreeSans_bbox0x5c[1][0]/2,0,0]) FreeSans_letter0x5c(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x5c(steps);
        }
    }
    if (charcode == "0x5d" || charcode == 93 || charcode=="]"){
        if(center==true){
            translate([-FreeSans_bbox0x5d[1][0]/2,0,0]) FreeSans_letter0x5d(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x5d(steps);
        }
    }
    if (charcode == "0x5e" || charcode == 94 || charcode=="^"){
        if(center==true){
            translate([-FreeSans_bbox0x5e[1][0]/2,0,0]) FreeSans_letter0x5e(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x5e(steps);
        }
    }
    if (charcode == "0x5f" || charcode == 95 || charcode=="_"){
        if(center==true){
            translate([-FreeSans_bbox0x5f[1][0]/2,0,0]) FreeSans_letter0x5f(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x5f(steps);
        }
    }
    if (charcode == "0x60" || charcode == 96 || charcode=="`"){
        if(center==true){
            translate([-FreeSans_bbox0x60[1][0]/2,0,0]) FreeSans_letter0x60(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x60(steps);
        }
    }
    if (charcode == "0x61" || charcode == 97 || charcode=="a"){
        if(center==true){
            translate([-FreeSans_bbox0x61[1][0]/2,0,0]) FreeSans_letter0x61(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x61(steps);
        }
    }
    if (charcode == "0x62" || charcode == 98 || charcode=="b"){
        if(center==true){
            translate([-FreeSans_bbox0x62[1][0]/2,0,0]) FreeSans_letter0x62(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x62(steps);
        }
    }
    if (charcode == "0x63" || charcode == 99 || charcode=="c"){
        if(center==true){
            translate([-FreeSans_bbox0x63[1][0]/2,0,0]) FreeSans_letter0x63(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x63(steps);
        }
    }
    if (charcode == "0x64" || charcode == 100 || charcode=="d"){
        if(center==true){
            translate([-FreeSans_bbox0x64[1][0]/2,0,0]) FreeSans_letter0x64(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x64(steps);
        }
    }
    if (charcode == "0x65" || charcode == 101 || charcode=="e"){
        if(center==true){
            translate([-FreeSans_bbox0x65[1][0]/2,0,0]) FreeSans_letter0x65(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x65(steps);
        }
    }
    if (charcode == "0x66" || charcode == 102 || charcode=="f"){
        if(center==true){
            translate([-FreeSans_bbox0x66[1][0]/2,0,0]) FreeSans_letter0x66(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x66(steps);
        }
    }
    if (charcode == "0x67" || charcode == 103 || charcode=="g"){
        if(center==true){
            translate([-FreeSans_bbox0x67[1][0]/2,0,0]) FreeSans_letter0x67(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x67(steps);
        }
    }
    if (charcode == "0x68" || charcode == 104 || charcode=="h"){
        if(center==true){
            translate([-FreeSans_bbox0x68[1][0]/2,0,0]) FreeSans_letter0x68(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x68(steps);
        }
    }
    if (charcode == "0x69" || charcode == 105 || charcode=="i"){
        if(center==true){
            translate([-FreeSans_bbox0x69[1][0]/2,0,0]) FreeSans_letter0x69(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x69(steps);
        }
    }
    if (charcode == "0x6a" || charcode == 106 || charcode=="j"){
        if(center==true){
            translate([-FreeSans_bbox0x6a[1][0]/2,0,0]) FreeSans_letter0x6a(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x6a(steps);
        }
    }
    if (charcode == "0x6b" || charcode == 107 || charcode=="k"){
        if(center==true){
            translate([-FreeSans_bbox0x6b[1][0]/2,0,0]) FreeSans_letter0x6b(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x6b(steps);
        }
    }
    if (charcode == "0x6c" || charcode == 108 || charcode=="l"){
        if(center==true){
            translate([-FreeSans_bbox0x6c[1][0]/2,0,0]) FreeSans_letter0x6c(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x6c(steps);
        }
    }
    if (charcode == "0x6d" || charcode == 109 || charcode=="m"){
        if(center==true){
            translate([-FreeSans_bbox0x6d[1][0]/2,0,0]) FreeSans_letter0x6d(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x6d(steps);
        }
    }
    if (charcode == "0x6e" || charcode == 110 || charcode=="n"){
        if(center==true){
            translate([-FreeSans_bbox0x6e[1][0]/2,0,0]) FreeSans_letter0x6e(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x6e(steps);
        }
    }
    if (charcode == "0x6f" || charcode == 111 || charcode=="o"){
        if(center==true){
            translate([-FreeSans_bbox0x6f[1][0]/2,0,0]) FreeSans_letter0x6f(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x6f(steps);
        }
    }
    if (charcode == "0x70" || charcode == 112 || charcode=="p"){
        if(center==true){
            translate([-FreeSans_bbox0x70[1][0]/2,0,0]) FreeSans_letter0x70(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x70(steps);
        }
    }
    if (charcode == "0x71" || charcode == 113 || charcode=="q"){
        if(center==true){
            translate([-FreeSans_bbox0x71[1][0]/2,0,0]) FreeSans_letter0x71(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x71(steps);
        }
    }
    if (charcode == "0x72" || charcode == 114 || charcode=="r"){
        if(center==true){
            translate([-FreeSans_bbox0x72[1][0]/2,0,0]) FreeSans_letter0x72(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x72(steps);
        }
    }
    if (charcode == "0x73" || charcode == 115 || charcode=="s"){
        if(center==true){
            translate([-FreeSans_bbox0x73[1][0]/2,0,0]) FreeSans_letter0x73(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x73(steps);
        }
    }
    if (charcode == "0x74" || charcode == 116 || charcode=="t"){
        if(center==true){
            translate([-FreeSans_bbox0x74[1][0]/2,0,0]) FreeSans_letter0x74(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x74(steps);
        }
    }
    if (charcode == "0x75" || charcode == 117 || charcode=="u"){
        if(center==true){
            translate([-FreeSans_bbox0x75[1][0]/2,0,0]) FreeSans_letter0x75(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x75(steps);
        }
    }
    if (charcode == "0x76" || charcode == 118 || charcode=="v"){
        if(center==true){
            translate([-FreeSans_bbox0x76[1][0]/2,0,0]) FreeSans_letter0x76(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x76(steps);
        }
    }
    if (charcode == "0x77" || charcode == 119 || charcode=="w"){
        if(center==true){
            translate([-FreeSans_bbox0x77[1][0]/2,0,0]) FreeSans_letter0x77(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x77(steps);
        }
    }
    if (charcode == "0x78" || charcode == 120 || charcode=="x"){
        if(center==true){
            translate([-FreeSans_bbox0x78[1][0]/2,0,0]) FreeSans_letter0x78(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x78(steps);
        }
    }
    if (charcode == "0x79" || charcode == 121 || charcode=="y"){
        if(center==true){
            translate([-FreeSans_bbox0x79[1][0]/2,0,0]) FreeSans_letter0x79(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x79(steps);
        }
    }
    if (charcode == "0x7a" || charcode == 122 || charcode=="z"){
        if(center==true){
            translate([-FreeSans_bbox0x7a[1][0]/2,0,0]) FreeSans_letter0x7a(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x7a(steps);
        }
    }
    if (charcode == "0x7b" || charcode == 123 || charcode=="{"){
        if(center==true){
            translate([-FreeSans_bbox0x7b[1][0]/2,0,0]) FreeSans_letter0x7b(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x7b(steps);
        }
    }
    if (charcode == "0x7c" || charcode == 124 || charcode=="|"){
        if(center==true){
            translate([-FreeSans_bbox0x7c[1][0]/2,0,0]) FreeSans_letter0x7c(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x7c(steps);
        }
    }
    if (charcode == "0x7d" || charcode == 125 || charcode=="}"){
        if(center==true){
            translate([-FreeSans_bbox0x7d[1][0]/2,0,0]) FreeSans_letter0x7d(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x7d(steps);
        }
    }
    if (charcode == "0x7e" || charcode == 126 || charcode=="~"){
        if(center==true){
            translate([-FreeSans_bbox0x7e[1][0]/2,0,0]) FreeSans_letter0x7e(steps);
        }else{
            translate([0,0,10/2]) FreeSans_letter0x7e(steps);
        }
    }
}

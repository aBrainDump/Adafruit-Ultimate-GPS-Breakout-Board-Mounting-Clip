// Adafruit Ultimate GPS Breakout Mounting Cip 
//
//  I printed in PLA .4
//
//  Push the GPS board on the clip then onto the studs
//
//  This script used stuff 
//  I found on Thingiverse
//
//  Round corners for Openscad - Tutorial
//  by WilliamAAdams, published	 Jun 15, 2011
//  https://www.thingiverse.com/thing:9347
//


use <MCAD/boxes.scad>;
//cube([34,25.4,1.2]);
difference(){
union(){
    //base
		translate([3,3,0])
		miniround([35,25.4,1.2],3);

    //studs
    translate([2,23,0])
    cylinder(r=1,h=6);
    translate([2,2.75,0])
    cylinder(r=1,h=6);

		//clip
    translate([31,9.2,0])
		cube([4,7,6.2]);
}
    //hollow clip
		translate([31,9.2,1.2])
		cube([2.5,7,4]);

    //screw holes
    translate([16.5,6,0])
    cylinder(r=2,h=6);
    translate([16.5,18,0])
    cylinder(r=2,h=6);

    //reduce material
  	translate([4,2,0])
	  cube(9,14,2);
  	translate([20,2,0])
	  cube(9,14,2);
  	translate([4,14,0])
	  cube(9,18,2);
  	translate([20,14,0])
	  cube(9,18,2);

}


module miniround(size, radius)
{
$fn=50;
x = size[0]-radius*2;
y = size[1]-radius*2;

minkowski()
{
cube(size=[x,y,size[2]]);
cylinder(r=radius);
}
}

// end
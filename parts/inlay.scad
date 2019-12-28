

module motorwave() {
    difference() {
        cylinder(d=5.2, h=80, $fn=80);
        translate([2.0, -4, -1]) cube([3, 10, 85]);
    }
}


difference() {
    union() {
        cube([20, 23.5, 3], center=true);
        rotate([45, 0, 0]) cube([20, 23.5, 3], center=true);
        rotate([90, 0, 0]) cube([20, 23.5, 3], center=true);
        rotate([-45, 0, 0]) cube([20, 23.5, 3], center=true);

        rotate([0, 90, 0]) cylinder(d=10, h=13, $fn=80);
        translate([10, 0, 0]) {
            rotate([0, 90, 0]) cylinder(d=30, h=3, $fn=80);
        }
    }
    translate([-30, 0, 0]) {
        rotate([0, 90, 0]) motorwave();
    }
}

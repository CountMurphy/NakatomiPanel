module basePlate(){
    difference(){
        difference(){
            difference(){
                difference(){
                    difference(){
                        difference(){
                            difference(){
                                difference(){
                                    linear_extrude(height=2){
                                        hull(){
                                            translate([6-5.13,9.75,0]){
                                                circle(r=5);
                                            }
                                            translate([234,9.75,0]){
                                                circle(r=5);
                                            }
                                            translate([234,146,0]){
                                                circle(r=5);
                                            }
                                            translate([6-5.13,146,0]){
                                                circle(r=5);
                                            }
                                        }
                                    }


                                    translate([6.5-2.52-4.13,5+3.6,-5]){
                                        screw();
                                    }
                                }

                                translate([118.16+1.6-3.14,4+3.6-2,-5]){
                                    screw();
                                }

                            }
                            //right corner
                            translate([118.16+115.38,6+3.6-2.5,-5]){
                                screw();
                            }
                        }


                        //left middle
                        translate([6.5-3.53-5.13,68.47+7.8+.5+2.25,-5]){
                            screw();
                        }
                    }
                    //left corner
                    translate([6.5-8.53+2.7,68.47+75.35+4.13,-5]){
                        screw();
                    }
                }

                //right middle
                translate([237,68.47+7.5-2.5+3-1.4,-5]){
                    screw();
                }
            }
            translate([235+1.4-1.6,68.47+77.35-.4,-5]){
                screw();
            }
        }
        translate([118,144+3.6,-5]){
            screw();
        }
    }
}
module screw(){
    cylinder(r=(2.5)/2,h=15, $fn=200);
}


module PlateWithKnobs(){
    difference(){
        difference(){
            difference(){
                difference(){
                    basePlate();
                    //button holes
                    translate([23.63-3.30,15.6+2.75,-2]){
                        cylinder(r=9.5/2,h=5,$fn=200);
                    }
                }
                //Color btn
                translate([23.63-3.30+46.5,15.6+2.75,-2]){
                    cylinder(r=11.7/2,h=5,$fn=200);
                }
            }
            //Playbtn
            translate([23.63-3.30+46.5+92.9,15.6+2.75,-2]){
                cylinder(r=11.7/2,h=5,$fn=200);
            }
        }
        //Pwrbtn
        translate([23.63-3.30+46.5+92.9+46.5,15.6+2.75,-2]){
            cylinder(r=11.7/2,h=5,$fn=200);
        }
    }
}


difference()
{
    PlateWithKnobs();
    translate([0,27,-3]){linear_extrude(height=7){square(size=[230.3,115.5]);};};
}

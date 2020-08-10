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


module screenWithRod(){
    union(){
        cube(size=[98,1.7+31,60.20]);
        translate([0,1.7+31,10.6]){cube(size=[98,9.4,40.5]);}
    }
    translate([2.5,10+31,3.8]){
        rotate(a=[90,0,0]){
            cylinder(r=1.5,h=115, $fn=200);
        }
    }
    translate([99-2-1.7,10+31,2.9]){
        rotate(a=[90,0,0]){
            cylinder(r=1.5,h=115, $fn=200);
        }
    }
    translate([2.5,10+31,60.2-1.5]){
        rotate(a=[90,0,0]){
            cylinder(r=1.5,h=115, $fn=200);
        }
    }
    translate([99-4,10+31,60.2-1.5]){
        rotate(a=[90,0,0]){
            cylinder(r=1.5,h=115, $fn=200);
        }
    }
}

module screen(){
    difference(){
        difference(){
            difference(){
                difference(){
                    union(){
                        cube(size=[98,1.7+31,60.20]);
                        translate([0,1.7+31,10.6]){cube(size=[98,9.4,40]);}
                    }
                    translate([1.5,10+31,1.5]){
                        rotate(a=[90,0,0]){
                            cylinder(r=1,h=115, $fn=200);
                        }
                    }
                }
                translate([98-1.5,10+31,1.5]){
                    rotate(a=[90,0,0]){
                        cylinder(r=1,h=115, $fn=200);
                    }
                }
            }
            translate([1.5,10+31,60.2-1.5]){
                rotate(a=[90,0,0]){
                    cylinder(r=1,h=115, $fn=200);
                }
            }
        }
        translate([98-1.5,10+31,60.2-1.5]){
            rotate(a=[90,0,0]){
                cylinder(r=1,h=115, $fn=200);
            }
        }
    }
}


//difference()
//{
//    PlateWithKnobs();
//    translate([0,27,-3]){linear_extrude(height=7){square(size=[230.3,115.5]);};};
//}
//

module screenHolder(){
    difference(){
        difference(){
            difference(){
                translate([120,85,-57]){
                    sphere(d = 165, $fn=200);
                }
                translate([10,0,-200]){
                    cube([200,200,200]);
                }
            }
            translate([94+(150/2),55,-30]){
                rotate(a=[90,0,180]){
                    screenWithRod();
                }
            }
        }
        translate([10,0,12]){
            cube([200,200,200]);
        }
    }
}

difference(){
    difference(){
        difference(){
            difference(){
                difference(){
                    difference(){
                        union(){
                            screenHolder();
                            difference(){
                                PlateWithKnobs();
                                translate([120,85,-57]){
                                    sphere(d = 165);
                                }
                            }
                        }


                        translate([42.5,85,-3]){cylinder(r=(7)/2,h=15, $fn=200);}
                    }

                    translate([201.5,27,.5]){
                        linear_extrude(height=5){
                            import("icons/Power.svg", dpi = 850);
                        }
                    }
                }
                translate([60,25,.5]){
                    linear_extrude(height=5){
                        import("icons/Artboard_14-512.svg", dpi = 1200);
                    }
                }
            }
            translate([153,28,.5]){
                linear_extrude(height=5){
                    import("icons/RGB_color_model.svg", dpi = 2000);
                }
            }
        }
        translate([15+23,12,.5]){
            linear_extrude(height=5){
                import("icons/bluetooth.svg", dpi = 6000);
            }
        }
    }
    translate([10,15+23,.5]){
        linear_extrude(height=5){
            text("MPD", size=7);
        }
    }
}

//translate([30,90,0]){
//    import("/tmp/Philco_knob.stl");
//}

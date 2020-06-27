difference(){
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


                                    color("red"){linear_extrude(height=10){color("red"){translate([3,12.5,0]){square(size=[230.3,132.5]);};};}};
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
module screw(){
    cylinder(r=(2.5)/2,h=15, $fn=200);
}

/*translate([0,0,-10]){
  color("green"){
  linear_extrude(height=2){
  hull(){
  translate([15,21.25,0]){
  circle(r=15);
  }
  translate([226,21.25,0]){
  circle(r=15);
  }
  translate([226,137,0]){
  circle(r=15);
  }
  translate([15,137,0]){
  circle(r=15);
  }
  }
  }}
  }
  */

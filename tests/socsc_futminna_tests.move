#[test_only]
module socsc_futminna::workshop_test;
 
use std::debug;
// use socsc_futminna::workshop;
use socsc_futminna::workshop;

#[test]
fun add_test(){
    let result =  workshop::add(6, 6);
    debug::print(&result);
}

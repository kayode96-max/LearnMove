module socsc_futminna::workshop;
use std::string::String;
// unsigned --> 0,1,23 --> u8, u16, u32, u64, u128, u256 
// boolean --> true/flase
// strings --> "Joy", "Adamu"

// u8 --> 0-255 2^8
// u16 --> 0-65535

// address --> 0x0000000000000000000000000000000000000000000000000000000000000002

public struct Result has key{
    id: UID,
    answer: u8,
    operation: String
}

public fun add(num1: u8, num2: u16, addr: address, ctx: &mut TxContext){
    let result: u8 = num1 + (num2 as u8);
    let res = Result{
        id: object::new(ctx),
        answer: result,
        operation: b"Addtion".to_string()
    };
    transfer::transfer(res, addr);
}

public fun subtract(num1: u8, num2: u16, addr: address, ctx: &mut TxContext){
    let result: u8 = num1 - (num2 as u8);
    let res = Result{
        id: object::new(ctx),
        answer: result,
        operation: b"Subtraction".to_string()
    };
    transfer::transfer(res, addr);
}

public fun multiply(num1: u8, num2: u16, addr: address, ctx: &mut TxContext){
    let result: u8 = num1 + (num2 as u8);
    let res = Result{
        id: object::new(ctx),
        answer: result,
        operation: b"Multiplication".to_string()
    };
    transfer::transfer(res, addr);
}


public fun divide(num1: u8, num2: u16, addr: address, ctx: &mut TxContext){
    let result: u8 = num1 + (num2 as u8);
    let res = Result{
        id: object::new(ctx),
        answer: result,
        operation: b"Division".to_string()
    };
    transfer::transfer(res, addr);
}


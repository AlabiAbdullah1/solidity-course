// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Base Contract x
contract x{
    string public name;


    constructor(string memory _name){
        name=_name;

    }
}

    
// Base Contract Y
contract Y{
    string public  text;
    constructor(string memory _text){
        text=_text;
        
    }
}

// There are 2 ways to innitialize parent contracts with parameter

// pass the parameter here in the inheritance list

contract B is x("Input to x"), Y("Input to Y"){

}

contract C is x, Y{
    // pass the parameters here in the constructor, 
    // similar to function modifiers.
    constructor(string memory _name, string memory _text) x(_name) Y(_text){

    }
}

// parent constructors are always called in the order of inheritance regardless of the order of parent contracts listed in the 
// constructor of the child contract
// order of constructor called:
// 1. x
// 2. Y
// 3. D

contract D is x, Y{
    constructor() x("x was called") Y("Y was called"){}
}

// Order of constructor called:
// 1. x
// 2. Y
// 3. E

contract E is x, Y{
    constructor() Y("Y was called") x("X was called"){}
}


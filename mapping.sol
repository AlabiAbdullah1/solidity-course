// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Mapping{
    // Mapping from address to uint
    mapping(address=> uint) public myMap;

    function get(address _addr) public view returns(uint){
        // Maping always return a value
        // If the value was never set, it will return the default value.

        return  myMap[_addr];
    }

    function set(address _addr, uint _i) public{
        // Update the value at this address

        myMap[_addr]= _i;
    }

    function remove(address _addr) public  {
        delete  myMap[_addr];
    }
}

contract NestedMapping{
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public  nested;

    function get(address _addr1, uint _i) public view returns (bool){
        return  nested[_addr1][_i];

    }

    function set(address _addr1, uint _i, bool _boo)public {
        nested[_addr1][_i]= _boo;
    }

    function remove(address _addr1, uint _i)public {
        delete  nested[_addr1][_i];
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract DataLocation {
    uint[] public arr;

    mapping(uint => address) map;

    struct myStruct {
        uint foo;
    }

    mapping(uint => myStruct) myStructs;

    function f() public {
        // Call _f with state variable
        _f(arr, myStructs[1]);

        // Get struct from a mapping
        myStruct storage myStructInstance = myStructs[1];

        // Create struct in memory
        // myStruct memory myMemStruct = myStruct({foo: 0});
        myStruct memory myMemStruct = myStruct(0);
    }

    function _f(uint[] storage _arr, myStruct storage _myStruct) internal {
        // Do something with storage variables
    }

    // You can return memory variables
    function g(uint[] memory _arr) public pure returns (uint[] memory) {
        // Do something with memory array
        return _arr;
    }

    function h(uint[] calldata _arr) external {
        // Do something with calldata array
    }
}

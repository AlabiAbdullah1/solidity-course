// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Array{
    // several Way to initialize array:
    uint[] public myarr;
    uint[] public myarr2= [1,2,3,4];
    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSIzeArr;

    function get(uint i) public view returns (uint) {
        return myarr[i];
    }

    // Solidity can return the ntire array, But this Kind of thing should be avoided for arrays that can grow indefinetely in length
    function getArray() public view returns (uint[] memory){
        return  myarr2;

    }

    function push(uint i)public {
        // appends element to an array, This will increase the array by 1.
        myarr.push(i);
    }

    function pop()public{
        // Remove the last element from an array
        // Decrease the array length by 1
        myarr2.pop();
    }

    function getLength() public view returns (uint i){
        return  myarr2.length;
    }

    function remove(uint index) public{
        // Resets the value at that particular index to its default value(0)
        delete  myarr2[index];
    }

    function examples() external  {
        // create an array in memory, only fixed size can be created
        uint[] memory a= new uint[](5);
    }

}
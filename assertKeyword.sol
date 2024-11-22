// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract AssertStatement{
    bool public  result;

    function checkOverFlow(uint256 _num1, uint256 _num2) public{
        uint256 sum= _num1 +_num2;
        assert(sum<=255);
        result= true;
    }

    function getResult() public  view returns (string memory){
        if(result== true){
            return  "No overFlow";
        }else{
            return  "Overflow Exists";
        }

    }
}
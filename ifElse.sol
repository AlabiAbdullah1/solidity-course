// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ifElse{
    uint256 Num1= 4;
    uint256 Num2= 7;


    function condition() public view  returns(bool  value) {
        value= true;
        if (Num2<10) {
            return value;
        }else if(Num1 == 10){
                return  false;
        }else{
            return  true;
        }

    }
}
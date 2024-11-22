// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Enum{
    // Enum stands for enumerable

    // Lets create an enum representing shipping status:

    enum Status{
        pending, 
        shipped, 
        accepted, 
        rejected, 
        cacelled
    }
    // Default value of an enum is the first element listed, in this case "pending"

    Status public  status;
    // returns uint
    // pending -0, 
    // shipped- 1,
    //  accepted-2, 
    // rejected-3, 
    // cacelled-4

    function get() public view returns(Status){
        return  status;
    }

    // update status by passing uint into input
    function set(Status _status) public{
        status= _status;
    }

    // You can update to a specific enum like this
    function cancel() public {
        status= Status.cacelled;
    }

    // "delete" resets the enum to its first value, 0
    function reset() public {
        delete  status;
    }

}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Ticket{
    uint256 ticketPrice;
    uint256 numberofTicket;
    uint256 totalAmount;
    uint256 endAt;
    uint256 startAt;
    uint256 timeRange;

    constructor(uint256 _ticketprice){
        ticketPrice= _ticketprice;
        startAt= block.timestamp;
        endAt= block.timestamp + 7;
        timeRange= (endAt-startAt)/60/60/24; //Turn to seconds
    }

    function buyTicket(uint256 _value) public returns (uint256 ticketId){
     numberofTicket++;
     totalAmount += _value;
     ticketId=numberofTicket;
    }

    function getAmount()public view returns(uint256) {
        return  totalAmount;

    }
}
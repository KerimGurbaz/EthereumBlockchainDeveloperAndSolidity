//SPDX-License-Identifier:MIT

pragma solidity 0.8.16; 


contract InheritanceModifierExample{
    mapping(address => uint) public tokenBalance;

    address owner;

    uint tokenPrice =1 ether;
    
    
        constructor(){
        owner = msg.sender ; 
        tokenBalance[owner] = 100;
    }

    function createNewToken() public{
        require(msg.sender == owner, "You are not allowed");
        tokenBalance[owner]++;
    }
}

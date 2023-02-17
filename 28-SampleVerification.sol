//SPDX-License-Identifier:MIT

pragma solidity 0.8.16; 

contract MyContract{
    mapping(address => uint) public balance;

    constructor(){
        balance[msg.sender] = 100;
    }
}

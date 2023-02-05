//SPDX-License-Identifier:MIT

pragma solidity 0.8.15; 

contract SmartContractWallet {

    address payable owner;

    constructor(){
        owner = payable(msg.sender);
    }
    
    
    function setAllowance(address _for, uint _amount) public{
        require(msg.sender == owner, "you are not the owner, aborting");
        allowance[msg.sender] = _amount;


        if(_amount > 0) {
            isAllowedToSend[_for] = true;
        } else{
            isAllowedToSend[_for] = false;
        }
    }

    function transfer(address payable _to, uint _amount, bytes memory _payload) public returns(bytes memory){
        require(msg.sender == owner, "You are not the owner, aborting");

        (bool success, bytes memory returnData) = _to.call{value: _amount}(_payload);
        require(success, "Aborting, call was not successful");
        return returnData;
    }

    receive() external payable{}
}

//SPDX-License-Identifier:MIT
pragma solidity 0.8.15;

contract SendWithdrawMoney{
    
    uint public balanceReceived;

    function deposit() public payable{
        balanceReceived += msg.value;
    }

    function getContractBlance() public view returns(uint){
        return address(this).balance;
    }

}

//SPDX-License-Identifier:MIT

pragma solidity 0.8.15;


contract Wallet {

    PaymentReceived public payment;

    address sender ;
    uint valueSent;

    function payContract() public payable{
     payment = new PaymentReceived(msg.sender, msg.value);
    }
}

contract PaymentReceived{
    address public from;
    uint public amount;

    constructor(address _from, uint _amount){
        from = _from;
        amount = _amount;
    }
    
    
    PaymentReceivedStruct public payment;

    function payContract() payable public{
        // payment = PaymentReceivedStruct(msg.sender, msg.value);

        payment.from = msg.sender;
        payment.amount = msg.value;
    }
}


//SPDX-License-Identifier:MIT
pragma solidity 0.8.15;


contract SampleFallback{

    uint public lastValueSent;
    
    string public lastFunctionCalled;
    
    uint public myUnit;

    function setMyUint(uint _myNewUint) public {
        myUnit = _myNewUint;
    }
    
    receive() external payable{
        lastValueSent = msg.value;
        lastFunctionCalled = 'receive';
    }
    
    fallback() external payable{
        lastValueSent = msg.value;
        lastFunctionCalled = 'fallback';
    }
}

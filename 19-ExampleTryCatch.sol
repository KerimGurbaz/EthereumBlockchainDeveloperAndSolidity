//SPDX-License-Identifier:MIT

pragma solidity 0.8.15;


contract WillThrow{
    function aFunction() public pure{
        require(false, 'Error message');
    }
}

contract ErrorHandling{
    event ErrorLogging(string reason);
    function catchTheError() public{
        WillThrow will = new WillThrow();
        try will.aFunction(){
            // add code here if it works
        } catch Error(string memory reason){
            emit ErrorLogging(reason);
        }
    }
}

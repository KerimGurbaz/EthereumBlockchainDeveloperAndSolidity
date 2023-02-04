//SPDX-License-Identifier:MIT

pragma solidity 0.8.15;

    function withdrawTransfer(address payable _to) public{
        _to.transfer(10);
    }

    function withdrawSend(address payable _to) public{
        _to.send(10);
    }

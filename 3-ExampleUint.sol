//SPDX-License-Identifier:MIT

pragma solidity ^0.8.7;

contract ExampleUint{
    uint256 public myUint; //0 - (2^256)-1

    uint8 public myUint8 =250;

    int public myInt = -10; // -2^128 to +2^128-1

    function setMyUint(uint _myUint) public{
        myUint = _myUint;
    }

    function decrementUint() public{
        myUint--;
    }

    function increementUint8() public{
        myUint8++;
    }

    function incrementint() public{
        myInt++;
    }
}

//SPDX-License-Identifier:MIT

pragma solidity 0.8.15;


contract WillThrow{
    function aFunction() public pure{
        require(false, 'Error message');
    }
}

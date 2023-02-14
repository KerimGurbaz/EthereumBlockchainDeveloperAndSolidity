//SPDX-License-Identifier:MIT
pragma solidity 0.8.16;

contract SampleUint{
    modifier betweenOneAndTwoEth(){
        require(msg.value >= 1 ether && msg.value <= 2 ether);
        _;
    }

    uint runUntilTimestamp;
    uint startTimestamp;

    constructor(uint startInDays){
        startTimestamp = block.timestamp + (startInDays * 24 * 60 * 60);
        runUntilTimestamp = startTimestamp + (7 * 24 * 60 * 60);
    }
}

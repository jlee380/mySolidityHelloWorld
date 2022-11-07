// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GlobalVariables {
    function globalVars() external view returns (address, uint, uint) {
        // msg.sender is a global variable. for example, variable sender will be my account address
        // when i call this function
        address sender = msg.sender;

        uint timestamp = block.timestamp;
        uint blockNum = block.number;

        return (sender, timestamp, blockNum);
    }
}
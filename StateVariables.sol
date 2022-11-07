// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract StateVariables {
    // state variables means it's stored in blockchain
    uint public myUnit = 123;

    function foo() external {
        // this is local variable. function foo can be called when it's deployed
        // but notStateVariable only exists inside function while it's executing
        uint notStateVariable = 456;
    }
} 
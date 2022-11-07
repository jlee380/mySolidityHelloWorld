// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


//
contract Constants {
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;
}

// one of the benefits using constant is to save gas
// 
contract Var {
    address public MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
}
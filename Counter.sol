// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter {
    uint public count;

    function increment() external {
        unchecked {count += 1;}
    }
    
    function decrement() external {
        unchecked {count -= 1;}
    }
}
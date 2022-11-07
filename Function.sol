// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Functionintro {
    // The keyword "external" make the function possible to be accessed when it's deployed
    // pure means it's read only
    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }

    function sub(uint x, uint y) external pure returns (uint) {
        return x - y;
    }

}
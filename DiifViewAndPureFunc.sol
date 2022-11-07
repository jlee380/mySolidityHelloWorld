// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DiffViewAndPureFunc {
    // view can read from blockchain whereas pure can't read anything from blockchain

    function viewFunc() external view returns (uint) {
        return num;
    }
    function pureFunc() external pure returns (uint) {
        return l;
    }
    function addToNum() external view returns (uint) {
        return num + x;
    }
    function add() external pure returns (uint) {
        return x + y;
    }
}
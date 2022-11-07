// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract LocalVariables {
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external {
        // below two variable are gone after executing the function
        // as it's declared inside the function
        uint x = 123;
        bool f = false;
        
        x += 456;
        f = true;

        // below variables exist after the function call 
        // as it's declared outside the function
        i = 123;
        b = true;
        myAddress = address(1);
    }
}
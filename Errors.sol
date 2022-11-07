// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// require, revert, assert
// gas refund, state updates are reverted
// custom error - save gas

contract Error {
    // require is usually used to validate inputs and access control
    function testRequire(uint _i) public pure {
        require(_i <= 10, "i > 10");
        // when it's true, codes here will be executed
    }
    // revert is a better option when there is a nested if statement
    function testRevert(uint _i) public pure {
        if(_i > 1) {
            //code
            if(_i > 2) {
                //code 
            } if (_i > 10) {
                revert("_i > 10");
            }
        }
    }

    // it's used to validate when a condition should always be true
    uint public nums = 123;

    function testAssert() public view {
        assert(nums == 123);
    }

    function foo(uint _i) public {
        nums += 1; // this will be undone whenever the statement is untrue in require below
        require(_i < 10);
    }

    // the longer error messages the mroe gas uses
    // custom error can save gas usage
    // custom error can be used with revert only now
    error MyError(address caller, uint i);

    function testCustomError(uint _i) public view {
        if(_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
}
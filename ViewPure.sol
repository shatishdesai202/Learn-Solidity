// view indicates that the function will not alter the storage state in any way. But it allows you to "view" it

// pure is even more strict, indicating that it will not even read the storage state.

// A pure function is a function which given the same input, always returns the same output. But the state of the contract keeps changing as users interact with it. So if you pass a state variable as an argument to the function, since the state is changing, that function will not be pure. That's why pure functions cannot access to state.

// if you call view or pure functions externally, you do not pay a gas fee.

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ViewPure {
    uint256 age = 10;

    function test() public view returns (uint256) {
        return age;
    }

    function test2() public pure returns (uint256) {
        uint256 a = 2555;
        return a;
    }
}

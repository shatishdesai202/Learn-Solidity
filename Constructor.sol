// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Constructor {
    uint256 public age;

    constructor(uint256 new_age) {
        age = new_age;
    }
}

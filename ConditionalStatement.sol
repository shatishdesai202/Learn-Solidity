// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ConditionalStatement {
    function ifElse(uint256 val) public pure returns (string memory) {
        string memory text;
        if (val > 0) {
            text = "val is positive";
        } else if (val == 0) {
            text = "val is zero";
        } else {
            text = "val is negative";
        }
        return text;
    }
}

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Loop {
    uint256[3] public arr;

    function forLoop() public {
        for (uint256 i = 0; i < 3; i++) {
            arr[i] = i;
        }
    }

    function whileLoop() public {
        uint256 i = 0;
        while (i < 3) {
            arr[i] = i;
            i++;
        }
    }

    function doWhileLoop() public {
        uint256 i = 0;
        do {
            arr[i] = i;
            i++;
        } while (i < arr.length);
    }
}

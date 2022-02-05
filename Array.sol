//  Fixed size Array
// Dynamic array

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// Fixed Size Array

// contract Array {
//     uint8[4] public arr = [1, 2, 3, 4];

//     function set(uint8 index, uint8 value) public {
//         arr[index] = value;
//     }

//     function arrLength() public view returns (uint) {
//         return arr.length;
//     }
// }

//  Dynamic Array

// contract DynamicArray {
//     uint8[] public arr;

//     function push(uint8 value) public {
//         arr.push(value);
//     }

//     function pop() public {
//         arr.pop();
//     }

//     function ArrayLength() public view returns (uint256) {
//         return arr.length;
//     }
// }

//ByteArray

// contract ByteArray {
//     // bytes1 to bytes32
//     //  store value in hexadecimal
//     bytes1 public b1;

//     function set() public {
//         b1 = "a";
//     }
// }

// Dynamic bytes array

contract DynamicBytesArray {
    bytes public arr;

    function setArray() public {
        arr.push("s");
    }

    function getByIndex(uint256 index) public view returns (bytes1) {
        return arr[index];
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }
}

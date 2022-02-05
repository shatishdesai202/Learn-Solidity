// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SimpleSolidityProg {
    string name = "Shatish";
    uint256 age = 22;

    function getName() public view returns (string memory) {
        return name;
    }

    function getAge() public view returns (uint256) {
        return age;
    }

    function setAge() public {
        age = age + 1;
    }
}

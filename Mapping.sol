// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Mapping {
    struct Student {
        uint256 id;
        string name;
    }
    //  mapping from uint to string
    mapping(uint256 => string) public m1;
    mapping(uint256 => Student) public m2;

    function setMapping(uint256 _val, string memory _name) public {
        m1[_val] = _name;
    }

    function setStudentMapping(
        uint256 _val,
        uint256 _id,
        string memory _name
    ) public {
        m2[_val] = Student(_id, _name);
    }
}

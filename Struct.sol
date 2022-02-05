// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

struct LandProperty {
    uint256 sqFoot;
    string area;
}

contract Struct {
    LandProperty public properties;

    constructor(uint256 _sqFoot, string memory area) {
        properties.sqFoot = _sqFoot;
        properties.area = area;
    }

    function changeProperty(uint256 _sqFoot, string memory area) public {
        LandProperty memory newProperty = LandProperty({
            sqFoot: _sqFoot,
            area: area
        });

        properties = newProperty;
    }
}

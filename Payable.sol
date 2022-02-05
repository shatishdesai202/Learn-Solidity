// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Payable {
    address payable userAddress =
        payable(0xE79D1b24512c6f909b95A74212071787C3cD13E3);

    function payEther() public payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function sendEther() public {
        userAddress.transfer(1);
    }
}

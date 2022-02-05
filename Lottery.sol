// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Lottery {
    address public owner;
    address payable[] public players;

    constructor() {
        owner = msg.sender; // Global variable
    }

    receive() external payable {
        require(msg.value >= 2 ether);
        players.push(payable(msg.sender));
    }

    function getBalance() public view returns (uint256) {
        require(msg.sender == owner);
        return address(this).balance;
    }

    function random() public view returns (uint256) {
        require(msg.sender == owner);
        return
            uint256(
                keccak256(
                    abi.encodePacked(
                        block.difficulty,
                        block.timestamp,
                        players.length
                    )
                )
            );
    }

    function pickWinner() public payable {
        require(msg.sender == owner);
        require(players.length >= 3);
        uint r = random();
        address payable sendEtherToThisAddress;
        uint256 winner = r % players.length;
        sendEtherToThisAddress = players[winner];
        sendEtherToThisAddress.transfer(getBalance());
        players = new address payable[](0);
    }
}

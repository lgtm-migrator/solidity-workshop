// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

contract Lottery {
  address payable[] public players;
  address payable public lastWinner;
  uint public lastPickTime;

  constructor() {
    lastPickTime = block.timestamp;
  }

  function join() public payable {
    require(msg.value >= 0.01 ether);
    if (players.length <= 10 && (block.timestamp - lastPickTime <= 3600)) {
      players.push(payable(msg.sender));
    } else {
      // pick winner
      pickWinner();
    }
  }

  function pickWinner() private {
    lastPickTime = block.timestamp;
    lastWinner = players[random()];
    lastWinner.transfer(address(this).balance);
    players = new address payable[](0);
  }
  function random() private view returns (uint) {
    return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players.length)))%players.length;
  }

  function getBalance() public view returns(uint) {
    return address(this).balance;
  }

  function getPlayers() public view returns (address payable[] memory) {
    return players;
  }
}

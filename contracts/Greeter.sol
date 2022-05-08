//SPDX-License-Identifier: Unlicense
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract Greeter {
  string private greeting;

  constructor(string memory message) {
    console.log("Deploying a Greeter with greeting:", message);
    greeting = message;
  }

  function greet() public view returns (string memory) {
    return greeting;
  }

  function setGreeting(string memory message) public {
    console.log("Changing greeting from '%s' to '%s'", greeting, message);
    greeting = message;
  }
}

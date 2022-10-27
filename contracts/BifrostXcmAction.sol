// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "./XcmTransactorV2.sol";
import "./Xtokens.sol";

contract BifrostXcmAction {
  address public owner;

  constructor() {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(msg.sender == owner, "Only owner can call this.");
    _;
  }

  function setOwner(address newOwner) external onlyOwner {
    owner = newOwner;
  }

  // todo XcmTransactorV2 calls
}

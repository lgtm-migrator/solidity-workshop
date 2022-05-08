// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.13;

contract SimpleStorage {
  // 状态变量
  address public owner;
  uint256 storedData;

  // 结构类型
  struct SimpleInfo {
    uint256 amount;
    address account;
  }

  // 枚举类型
  enum SimpleState {
    Created,
    Locked,
    Inactive
  }

  constructor() {
    owner = msg.sender;
  }

  // 函数修饰器
  modifier onlyOwner() {
    require(msg.sender == owner, "Only owner can call this.");
    _;
  }

  // 事件
  event Update(uint256 value);

  // 修改函数
  function set(uint256 x) external onlyOwner {
    storedData = x;
    emit Update(x);
  }

  // 只读函数
  function get() external view returns (uint256) {
    return storedData;
  }
}

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

interface ERC20Interface {
  function totalSupply() external view returns(uint);
  function balanceOf(address tokenOwner) external view returns (uint balance);
  function allowance(address tokenOwner, address spender) external view returns (uint remaining);
  function transfer(address to, uint tokens) external returns (bool success);
  function approve(address spender, uint tokens) external returns (bool success);
  function transferFrom(address from, address to, uint tokens) external returns (bool success);

  event Transfer(address indexed from, address indexed to, uint tokens);
  event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}
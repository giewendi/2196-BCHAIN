// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract ValueTypes{
    bool public b = true;
    bool public a;
    uint public u = 123;

    int public i = -123;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0x9FC3da866e7DF3a1c57adE1a97c9f00a70f010c8;
    bytes32 public b32 = 0x66e4828ef451779339a5a4cc6d4857540fea794e4a639d5af03cf85a1d532469;
}
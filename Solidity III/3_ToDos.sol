// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./3_StructDeclaration.sol";

contract Todos{
    //An array of 'Todo' structs
    Todo[] public todos;

    // Add item to array
    function push(string calldata _text, bool _completed) public{
        Todo memory newItem;
      newItem.text = _text;
      newItem.completed = _completed;
      todos.push(newItem);
    }

    // Remove last Item
    function pop() public {
        todos.pop();
    }
}
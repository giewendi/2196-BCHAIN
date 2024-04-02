// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract EtherWallet {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint _amount) public {
        require(msg.sender == owner, "Withdrawals can only be made by the owner.");
        require(address(this).balance >= _amount, "Insufficient Balance");
        owner.transfer(_amount);
    }

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
}
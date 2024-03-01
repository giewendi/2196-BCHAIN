// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.3;

contract MQuizContract {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function.");
        _;
    }

    uint256 age;
    //Age
    function setAge(uint256 _age) external {
        age = _age;
    }

    uint256 hrsWrk;
    //Hours Worked
    function setHrsWrk(uint256 _hours) external {
        require(_hours >0, "Value must be larger than zero.");
        hrsWrk = _hours;
    }

    uint256 rate;
    //Hourly Rate
    function setRate(uint256 _rate) external onlyOwner  {
        require(_rate >0, "Value must be greater than zero.");
        rate = _rate;
    }

    function calculateTotSal() external onlyOwner view returns (uint256) {
        require(rate != 0 && hrsWrk != 0, "Hourly rate and hours worked must be set.");
        return rate * hrsWrk;
    }
}
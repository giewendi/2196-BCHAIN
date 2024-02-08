// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract GlobalVariables{
    function globalVars() external view returns (address, uint, uint){
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return (sender, timestamp, blockNum);
    }
}

// Using globalvariables can be very useful, since its scope covers the entirety of the program,
// meaning, with this, we can easily use variables that is used in different modules or functions.
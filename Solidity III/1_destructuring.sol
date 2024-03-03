// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract destructuring {
    function multiOutput() public pure returns (uint, bool) {
        return (2, true);
    }

    function nameOutput() public pure returns (uint a, bool b) {
        return (1, true);
    }

    function varAssigned() public pure returns (uint a, bool b) {
        a = 1;
        b = true;
    }

    function destructAssigned() public {
        (uint a, bool b) = multiOutput();
        (, b) = multiOutput();
        // Log the values of a and b
        emit LogValues(a, b);
    }
    event LogValues(uint a, bool _b);

    //demo 1
    function truthTable() public pure returns (bool and, bool or) {
        and = true && false;
        or = true || false;
    }

    //demo 2
    function addOperation(uint x, uint y) public pure returns (uint) {
        return (x+y);
    }
}
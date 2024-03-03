// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract arrays{ 
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    uint[20] public myFixedSizeArr;

    function get(uint i) public view returns (uint){
        return arr[i];
    }

    function getArr() public view returns (uint[] memory){
        return arr;
    }

    function push(uint i) public {
        arr.push(i);
    }
    function pop() public {
        arr.pop();
    }
     function remove(uint index) public {
        delete arr[index];
    }
    function getLength() public view  returns(uint)  {
        return myFixedSizeArr.length;
    }

    // Remove 1st element
    function resetFirstElement() public {
        delete arr[0];
    }

    // Add element twice
    function pushTwice(uint i) public {
        arr.push(i);
        arr.push(i);
    }
}
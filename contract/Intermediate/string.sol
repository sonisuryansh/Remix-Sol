// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract stringExample{
    string public myString;

    function setString (string memory newString) public {
        myString = newString;
    }
    function getString () public view returns (string memory){
        return myString;
    }
}

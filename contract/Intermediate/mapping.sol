// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract mappingExample{
    mapping(uint => string) public studentDetails;
    function insertData(uint _value , string memory _key) external {
        studentDetails [_value] = _key;
    }
    function removeValue(uint _value) external {
        delete studentDetails[_value];
    }


}
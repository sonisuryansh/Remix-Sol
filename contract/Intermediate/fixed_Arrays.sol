// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract FixedSizeArray{
    uint[5] public fixedArray;

    function getLength() public view returns( uint){
        return fixedArray.length;
    }

    function insertElement (uint _element, uint _index) external{
        fixedArray[_index] = _element;
    }
    function getElement(uint _index) public view returns(uint){
        return fixedArray[_index];
    }
    function getArray() external view returns(uint[5] memory){
        return fixedArray;
    }
}
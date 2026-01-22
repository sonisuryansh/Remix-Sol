//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CallledContract{
    uint public someNumber;

    function setNumber(uint _num) public {
        someNumber = _num;
    }
}

contract Caller {

    uint public someNumber;

    function setNumber(address _calledContractAddress, uint _num) public {
        bytes memory data = abi.encodeWithSignature("setNumber(uint256)", _num);
        (bool success, ) = _calledContractAddress.delegatecall(data);
        require(success,"Delegatecall failed");
    }
    function getNumber(uint _num) public view returns(uint){
        _num = 550;// Set by the caller contract
        return someNumber;// 0x3242a745489dc36a88d1f20dd674c86e8d2409048438c1c59669de13f137e3eb
    }
}
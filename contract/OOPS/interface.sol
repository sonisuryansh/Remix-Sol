// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface IGreeter{
    function greet() external pure returns(string memory);
}
contract Greeter is IGreeter{
    function greet() external pure returns (string memory){
        return "Hello World";
    }
}

contract SayHello{
    function getGreet(address _greeterContract) external pure returns (string memory){
        return IGreeter(_greeterContract).greet();
    }
}
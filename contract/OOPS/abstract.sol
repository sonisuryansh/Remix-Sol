// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

abstract contract Parent {
    string public str ;
    address public manager;


    constructor(){
        str = "Hello Suryansh";
        manager = msg.sender;
    }
    function setter (string memory _str) public virtual;
    function getter (string memory _str) public virtual;

}

contract Child is Parent{
    function randomChildFunction() external{
         
    }
    function setter (string memory) public override {

    }
    function getter(string memory) public override{

    }
}
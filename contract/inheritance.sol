// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Car{
    uint public wheels = 4;
    uint public doors = 4;
    string public brandName = "CTE";
    uint public headlights = 2;
    bool public saftyBags  = true
    ;
}
contract SportsCar is Car{
    uint public speed = 500;
    function headlight() external pure returns (string memory){
        return "RGB Light";
    }
}
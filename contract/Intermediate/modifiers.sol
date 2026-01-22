// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract modifierExample{
    modifier onlyTrue(){
        require(false==true, "false  is not true");
        _;
    }
    modifier  onlyFase(){
        require(true == false, "true is not false");
        _;
    }
    function check1() public pure onlyTrue onlyFase returns (uint){
      
    return 1;
    }

    function check2() public pure onlyTrue onlyFase returns (uint){
        
    return 2;
    }

    function check3() public pure onlyTrue onlyFase returns (uint){
       
    return 3;
    }
}
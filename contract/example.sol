// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


library Addition{
    function addFunc(uint a , uint b)  external pure returns(uint){
        return a+b;
    }
}
contract sum{
    function sumFunc(uint a, uint b)external pure returns(uint){
        return Addition.addFunc(a,b);
    }
}
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract structExample{
    struct Student{
        string name;
        uint256 age;
        bool isPassed;
    }
    Student public s1;
    function setDetails(string memory _name, uint256 _age, bool _isPassed) public{
        s1 = Student(_name, _age, _isPassed); 
        // s1.name = _name;
        // s1.age = _age;
        // s1.isPassed = _isPassed;
    }
    function getDetails() public view returns(Student memory){
        // return ( s1.name, s1.age, s1.isPassed);
        return s1;

    }
}
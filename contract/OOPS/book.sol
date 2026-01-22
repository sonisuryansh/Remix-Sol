// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
//0x358AA13c52544ECCEF6B0ADD0f801012ADAD5eE3
//0x6F54c9C0ea3785192deE6E93EC7540bd09001D51
contract Book{
    uint length;
    uint breadth;
    uint height;

    function setDimension (uint _length, uint _breadth, uint _height) public {
        length = _length;
        breadth = _breadth;
        height = _height;
    }

    function getDimension () public view returns (uint , uint ,uint ){
        return (length, breadth, height);
    }

}

    contract D{
        Book obj = new Book();
        function getInstances() external view returns (Book){
            return obj;
        }
        function writeDimension(uint _length, uint _breadth, uint _height) external {
            obj.setDimension(_length,_breadth,_height);
        }
        function readDimension() public view returns(uint , uint , uint ){
            return obj.getDimension();
        }
    }
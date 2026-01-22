// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC20/IERC20.sol)

pragma solidity >=0.4.16;

interface IEC20{

    event Transfer (address indexed from , address indexed to , uint256 value);
    event Approval (address indexed owner , address indexed spender , uint256 value);

    function totalSupply() external view returns (uint256);
    function balanceOf(address account ) external view returns (uint256);
    function transfer(address to , uint256 value) external returns (bool);
    function allowance (address owner , address spender) external view returns(uint256);
    function approve(address spender ,uint256 value )external returns (bool);
    function transferFrom(address from , address to , uint256 value) external returns (bool);

}
contract Suryansh is IEC20{
    address public founder ;
    uint   public totalSupply = 1000;
    uint public decimals = 0;
    mapping(address => uint ) public balanceOfUser;
    mapping (address => mapping(address=> uint ))public allowedTokens ;
    constructor (){
        founder = msg.sender;
        balanceOfUser [founder ] = totalSupply;

    }
    function balanceOf(address account ) external view override returns (uint256){
        return balanceOfUser[account];
    }
    function approve (address spender ,uint256 value ) external override returns (bool){
        require (spender !=  address(0), "Invalid Address");
        allowedTokens [msg.sender][spender] = value;
        emit Approval (msg.sender , spender , value);
        return true;
    }
    function transfer (address to ,uint256 value )external override returns (bool){
        require (to!= address(0),"Invalid Address");
        require (to)
    }
}
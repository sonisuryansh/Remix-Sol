// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC20/IERC20.sol)

pragma solidity >=0.4.16;

interface IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    // total supply of tokens
    function totalSupply() external view returns (uint256);
    // balance of an account
    function balanceOf(address account) external view returns (uint256);
    // transfer tokens
    function transfer(address to, uint256 value) external returns (bool);
    // check allowance
    function allowance(address owner, address spender) external view returns (uint256);
    // approve someone to use tokens
    function approve(address spender, uint256 value) external returns (bool);
    // transfer from one address to another using allowance
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

contract Suryansh is IERC20 {

    address public founder;
    uint public totalSupply = 1000; // number of tokens
    uint public decimals = 0;

    mapping(address => uint) public balanceOfUser;
    mapping(address => mapping(address => uint)) public allowedTokens;

    constructor() {
        founder = msg.sender;
        balanceOfUser[founder] = totalSupply;
    }

    function balanceOf(address account) external view override returns (uint256) {
        return balanceOfUser[account];
    }


    function approve(address spender, uint256 value) external override returns (bool) {
        require(spender != address(0), "Invalid Address");
        allowedTokens[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }
    function transfer(address to, uint256 value) external override returns (bool) {
        require(to != address(0), "Invalid Address");
        require(balanceOfUser[msg.sender] >= value, "Insufficient Balance");

        balanceOfUser[msg.sender] -= value;
        balanceOfUser[to] += value;
        emit Transfer(msg.sender, to, value);
        return true;
    }

    function allowance(address owner, address spender) external view override returns (uint256) {
        return allowedTokens[owner][spender];
    }

    

    function transferFrom(address from, address to, uint256 value) external override returns (bool) {
        require(from != address(0), "Invalid Address");
        require(to != address(0), "Invalid Address");
        require(balanceOfUser[from] >= value, "Insufficient Balance");
        require(allowedTokens[from][msg.sender] >= value, "Insufficient Allowance");

        allowedTokens[from][msg.sender] -= value;
        balanceOfUser[from] -= value;
        balanceOfUser[to] += value;
        emit Transfer(from, to, value);
        return true;
    }
    //0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ZDTAoken {
    string public name = "ZDTAoken";
    string public symbol = "ZDAT";
    uint8 public decimals = 8;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Mint(address indexed to, uint256 value);

    constructor() {
        totalSupply = 1000000000 * 10 ** uint256(decimals); // Установка общего количества токенов на миллиард
    }

    function mint(address _to, uint256 _value) external {
        balanceOf[_to] += _value;
        totalSupply += _value;
        emit Mint(_to, _value);
        emit Transfer(address(0), _to, _value);
    }
} 
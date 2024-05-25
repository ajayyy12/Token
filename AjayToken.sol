//SPDX-License-Identifier:MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";


contract Ajay is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("AjayToken", "AJT")
        Ownable(initialOwner)
      
    {}

    function mint(address for_mint, uint256 mint_amount) public onlyOwner {
        _mint(for_mint, mint_amount);
    }

    function burn(uint256 value) public returns(bool) {
        _burn(msg.sender,value);
        return true;
    }   
    function transfer(address for_transfer, uint256 amount) public override returns(bool){
        _transfer(msg.sender, for_transfer, amount);
        return true;
    }    
}

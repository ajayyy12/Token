# Ajay ERC20 Token

This repository contains a solidity file where I have created my own ERC20 token called AjayToken.

## Description

Firstly in the code , we have imported ERC20 functionalities from the openzeppelin library. In the demonstration video, i have shown how I interacted with my ERC20 token by minting tokens in the beginning , then burning some which reduces the supply of my newly created tokens and then I transferred some tokens from my address to some other address. In the end i showed the balance of my account after all the transactions.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., AjayToken.sol). Copy and paste the following code into the file:

```javascript
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to anything greater than "0.8.9" (or another compatible version), and then click on the "Compile AjayToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "AjayToken" contract from the dropdown menu, and then click on the "Deploy" button.


## Authors

Ajay SS

[@0j0y1512@gmail.com]


## License

This project is licensed under the MIT License - see the LICENSE.md file for details

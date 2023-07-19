# token_create
//A new token is created on the local HardHat network
//Only contract owner should be able to mint tokens
//Any user can transfer tokens
//Any user can burn tokens
# Description
ERC-20 is a technical standard used for creating and implementing tokens on the Ethereum blockchain. It defines a set of rules and functionalities that a token contract must adhere to in order to be considered ERC-20 compliant. Here are the main functions typically found in an ERC-20 token contract:

totalSupply: Returns the total supply of tokens in existence.

balanceOf(address _owner): Returns the token balance of a given address.

transfer(address _to, uint256 _value): Transfers a specified amount of tokens from the sender's account to the specified address. Returns a boolean indicating the success of the transfer.

transferFrom(address _from, address _to, uint256 _value): Transfers a specified amount of tokens on behalf of another address. This function is typically used for delegated transfers when the sender is authorized by the owner to spend tokens. Returns a boolean indicating the success of the transfer.

approve(address _spender, uint256 _value): Allows the specified address to
## code
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//This line imports the ERC20 contract from the OpenZeppelin library. 
//The OpenZeppelin library provides reusable and secure smart contract components for building decentralized applications (dApps) on the Ethereum blockchain.

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyCoin is ERC20 {
    address private owner;

    constructor() ERC20("Bitcoin", "BC") {
        owner = msg.sender;
        _mint(msg.sender, 10**decimals());
    }

    modifier Owner() {
        require(msg.sender == owner, "Only Owner can access this.");
        _;
    }

    function mint(address account, uint256 value) external Owner {
        _mint(account, value);
    }

    function burn(uint256 value) external {
        _burn(msg.sender, value);
    }

}
## How to run this code
1-> goto https://www.openzeppelin.com/contracts website

2-> click (Open in Remix) Button.

3->copy my code past it in the editor. 4 connect the wallet to hardhat network

4->goto deploy section and give a token name , toekn abh and the totall supply of the token.
## Author 
Manish Kumar

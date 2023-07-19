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

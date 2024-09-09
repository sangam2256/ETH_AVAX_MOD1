# SimpleStore 
### (Functions and Errors - ETH + AVAX)
A smart contract for managing inventory on the Ethereum blockchain. It allows users to set stock levels, purchase items, and check available stock.

## Description

SimpleStore is a Solidity-based smart contract that helps track and manage the stock of items in a store. The contract allows setting stock, purchasing items, and viewing current stock levels. The code also demonstrates error handling techniques using `require()`, `assert()`, and `revert()` functions.

## Getting Started

### Installing

* Download the code from Remix IDE or clone the repository.
* No additional modifications are needed.

### Executing program

1. Open [Remix IDE](https://remix.ethereum.org).
2. Create a new file named `SimpleStore.sol`.
3. Copy and paste the following code:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStore {
    uint256 public stock;

    function setStock(uint256 _stock) public {
        require(_stock > 0, "Stock must be greater than zero");
        stock = _stock;
    }

    function purchase(uint256 quantity) public {
        require(quantity > 0, "Quantity must be greater than zero");
        require(stock >= quantity, "Not enough stock");

        uint256 newStock = stock - quantity;
        assert(newStock <= stock);

        if (quantity > 5) {
            revert("Cannot purchase more than 5 items at once");
        }

        stock = newStock;
    }

    function checkStock() public view returns (uint256) {
        return stock;
    }
}
```

4. Compile and deploy the contract in Remix.

## Help

If you encounter issues during deployment or execution:
```
Check the Remix console for error messages
```

## Authors

Sangam Kumar
Chandigarh University

## License

This project is licensed under the MIT License. See the LICENSE file for details.

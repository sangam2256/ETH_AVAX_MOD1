// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStore {
    uint256 public stock;

    function setStock(uint256 _stock) public {
        require(_stock > 0, "tock must be greater than zeroS");    //used require function
        stock = _stock;
    }

    function purchase(uint256 quantity) public {
        require(quantity > 0, "Quantity must be greater than zero");
        require(stock >= quantity, "Not enough stock");

        uint256 newStock = stock - quantity;
        assert(newStock <= stock);                                  //used assert function

        if (quantity > 5) {
            revert("Cannot purchase more than 5 items at once");    //used revert function
        }

        stock = newStock;
    }

    function checkStock() public view returns (uint256) {
        return stock;
    }
}


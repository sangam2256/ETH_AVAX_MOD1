// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract smartContract {
    function doSomething(uint256 x, uint256 y) public pure returns (uint256) {
        // Using require()
        require(x != 0, "x should not be zero");
        require(y != 0, "y should not be zero");
        
        // Using assert()
        uint256 result = x + y;
        assert(result >= x && result >= y);

        // Using revert()
        if (x > y) {
            revert("x should be smaller than or equal to y");
        }
        
        return result;
    }
}

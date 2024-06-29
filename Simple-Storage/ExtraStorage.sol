// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {

    function store(uint256 _favNumber) public override {
        favNumber = _favNumber + 5;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleStorageArray;
    // this initializes an array to store contracts of the type "SimpleStorage"

    function createSimpleStorageContract() public  {

        SimpleStorage simpleStorage = new SimpleStorage();   
        // to create an instance of the "SimpleStorage Contract"

        simpleStorageArray.push(simpleStorage);
        //this appends the contract instance to the array
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageFavNumber)  public {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageFavNumber);
    }

    function sfRetrieve(uint256 _simpleStorageIndex) public view returns(uint256)  {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }

}

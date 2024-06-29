// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


contract SimpleStorage {

    uint256 favNumber;

    // just like dictionaries
    mapping (string => uint256) public nameToFavNumber;  


    // "People" is of structure type
    struct People {
        uint256 favNumber;
        string name;
    }
    People[] public people;  // initializes an array for "People" type objects


    // function to store the favourite number
    function store(uint256 _favNum) public virtual {
        favNumber = _favNum;
    }


    // function to get the stored favourite number
    function retrieve() public view returns(uint256) {
        return favNumber;
    }


    // function to add the data in the array as well as the dictionary
    function addPerson(string memory _name, uint256 _favNumber) public {
        people.push(People(_favNumber, _name)); // to the People structure type array
        nameToFavNumber[_name] = _favNumber;    // to the People structure
    }

}

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; // version

// EVM, Ethereum virtual machine
contract MyContract {
    // boolean, uint, bytes, adress, int
    uint256 public FavoraiteNum = 123;
    // store function is re-defining as an importing function, For the reason we have writtern a key work virtual below.
    function store(uint256 _FavoraiteNum) public virtual {
        FavoraiteNum = _FavoraiteNum;
    }

    mapping(string => uint256) public NameToAge;
    //view, pure
    function  retrieve() view public returns(uint256) {
        return FavoraiteNum;
    }

    struct Person {
        string name;
        uint256 age;
    }
    Person[] public peopleList;

    // storage, memory, calldata
    function AddPerson(string memory _name, uint256 _age) public {
        Person memory newPerson = Person(_name,_age);
        peopleList.push(newPerson);
        NameToAge[_name] = _age;

    }
}

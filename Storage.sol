// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./MyContract.sol";

contract StorageFactory {
    MyContract[] public my_contract_array;
    function createMyContract() public {
        MyContract simplecontract = new MyContract();
        my_contract_array.push(simplecontract);

    }

    function contract_store (uint256 _myContractIndex, uint256 _myContractNumber) public {
        MyContract curr_contract = my_contract_array[_myContractIndex];
        curr_contract.store(_myContractNumber);
    }

    function contract_get(uint256 _myContractIndex) view public returns (uint256){
        MyContract curr_contract = my_contract_array[_myContractIndex];
        return curr_contract.retrieve();
    }

}

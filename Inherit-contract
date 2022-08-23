//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./MyContract.sol";

contract ExtraStorage is MyContract {
    
    // store function is defined in ./MyContract.sol. So, if we redefined it, we have to add a key word override to child function and virtual key word in parent function
    function store(uint256 _FavoraiteNum) public  override{
        FavoraiteNum = _FavoraiteNum + 5;
    }
}

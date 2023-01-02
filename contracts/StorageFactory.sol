// SPDX-License-Identifer: MIT

pragma solidity ^0.8.17;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage {

    SimpleStorage[] public simpleStorageArray;

// This function deploys a new contract from this contract

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

// The following 2 functions allow us to interact with different contracts from outside those contracts 

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {      
        // this line has an explicit cast to the address type and initialises a new SimpleStorage object from the address
        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        // this line has an explicit cast to the address type and initialises a new SimpleStorage object from the address
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
    }
}
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage public  simpleStorage;
    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }
}
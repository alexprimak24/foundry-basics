// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";
//if you don't specify an RPC, it will deploy on temporary Anvil chain

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        //by this line we like say: Everything that is after this line should be sent to an RPC
        vm.startBroadcast();
        //`new` creates new contract
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}

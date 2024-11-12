//SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import {Script} from "forge-std/Script.sol";
import {scofield} from "../src/scofield.sol";

contract DeployScofield is Script {
    function run() external returns (scofield) {
        vm.startBroadcast();
        scofield SCOFIELD = new scofield();
        vm.stopBroadcast();
        return SCOFIELD;
    }
}

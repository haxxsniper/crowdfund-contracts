// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import { Script } from "forge-std/Script.sol";
import { HelperConfig } from "./HelperConfig.s.sol";
import { CrowdFund } from "../src/CrowdFund.sol";

contract DeployFundMe is Script {
    function run() external returns (CrowdFund) {
        HelperConfig helperConfig = new HelperConfig();
        address wklay = helperConfig.activeNetworkConfig();
        vm.startBroadcast();
        CrowdFund crowdFund = new CrowdFund(wklay);
        vm.stopBroadcast();
        return (crowdFund);
    }
}
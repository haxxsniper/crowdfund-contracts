// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import { Script } from "forge-std/Script.sol";
import { CrowdFund } from "../src/CrowdFund.sol";

contract DeployFundMe is Script {
    function run() external returns (CrowdFund) {
        address baobabWKLAYAddress = 0x043c471bEe060e00A56CcD02c0Ca286808a5A436;

        vm.startBroadcast();
        CrowdFund crowdFund = new CrowdFund(baobabWKLAYAddress);
        vm.stopBroadcast();
        return (crowdFund);
    }
}
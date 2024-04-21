// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { Script } from "forge-std/Script.sol";

contract HelperConfig is Script {
    NetworkConfig public activeNetworkConfig;

    struct NetworkConfig {
        address wklay;
    }

    constructor() {
        if (block.chainid == 1001) {
            activeNetworkConfig = getBaobabKlayConfig();
        } else {
            activeNetworkConfig = getCypressKlayConfig();
        }
    }

    function getBaobabKlayConfig() public pure returns (NetworkConfig memory baobabNetworkConfig) {
        baobabNetworkConfig = NetworkConfig({
            wklay: 0x043c471bEe060e00A56CcD02c0Ca286808a5A436 // WKLAY
        });
    }

    function getCypressKlayConfig() public pure returns (NetworkConfig memory cypressNetworkConfig) {
        cypressNetworkConfig = NetworkConfig({
            wklay: 0x19Aac5f612f524B754CA7e7c41cbFa2E981A4432 // WKLAY
        });
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import "../src/ZyronAttestation.sol";

contract DeployScript is Script {
  function run() external {
    vm.startBroadcast();

    // 1. Deploy ZyronAttestation registry & Soulbound badge contract
    ZyronAttestation attestation = new ZyronAttestation(msg.sender);
    console.log("ZyronAttestation Deployed at:", address(attestation));

    vm.stopBroadcast();

    console.log("--------------------------------------------------");
    console.log("Deployment Complete!");
    console.log("ATTESTATION_CONTRACT_ADDRESS=", address(attestation));
    console.log("--------------------------------------------------");
  }
}

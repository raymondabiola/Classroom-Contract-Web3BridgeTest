// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol"; 
import "../src/Classroom.sol";

contract ClassroomScript is Script {
    Classroom public classRoom;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        classRoom = new Classroom();

        vm.stopBroadcast();
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This is MyName contract
// It simply return my fullname
// My first contract written
contract MyName {
    function name() public pure returns(string memory) {
        return "Jeremy Ikwuje";
    }
}
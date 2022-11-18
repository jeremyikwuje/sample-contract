// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This contract perform
// Bodmas operation
contract Bodmas
{

    /**
     * This function add a list of numbers
     * and return result
    ********************************
     */
    function add(int[] memory values) public pure returns(int) {
        int sum = 0;
        uint valuesCount = values.length;

        for(uint i = 0; i < valuesCount; i++) {
            sum += values[i];
        }

        return sum;
    }

    /**
     * This function substract a list of numbers
     * and return result
    ********************************
     */
    function sub(int[] memory values) public pure returns(int) {
        int sum = 0;
        uint valuesCount = values.length;

        for(uint i = 0; i < valuesCount; i++) {
            sum -= values[i];
        }

        return sum;
    }

    /**
     * This function multiply a list of numbers
     * and return result
    ********************************
     */
    function mul(int[] memory values) public pure returns(int256) {
        int sum = 1;
        uint valuesCount = values.length;

        for(uint i = 0; i < valuesCount; i++) {
            sum *= values[i];
        }

        return sum;
    }

    /**
     * This function divide a list of numbers
     * and return result
    ********************************
     */
    function div(int[] memory values) public pure returns(int256) {
        int sum = 1;
        uint valuesCount = values.length;

        for(uint i = 0; i < valuesCount; i++) {
            if (i == 0) {
                sum = values[i];
                continue;
            }

            sum /= values[i];
        }

        return sum;
    }
}
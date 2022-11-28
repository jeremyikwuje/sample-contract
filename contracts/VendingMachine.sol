// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract VendingMachine {

    // state variables
    address public owner;
    mapping (address => uint) public donutBalances;

    // se the owner as the address that deployed the contract
    // set the inital vending machine to 100
    construtor() {
        owner = msg.sender;
        donutBalances[address(this)] = 100;
    }

    function getVendingMachineBalance() public view returns (uint) {
        return donutBalances[address(this)];
    }

    // Let the ower restock the vending machines
    function restock(uint amount) public {
        require(msg.sender == owner, "Only the owner is allowed to restock the vending machine.")
        donutBalances[address(this) += amount]
    }

    // Purchase donuts from the vending machine
    function purchaseDonut(uint amount) public payable {
        require(msg.value >= amount * 2 ether, "You can only purchase at least 2 ether per donut.");
        require(donutBalances[address(this)] >= amount, "There is no enough donuts in stocks to complete the purchase.");
        donutBalances[address(this)] -= amount;
        donutBalances[msg.sender] += amount;
    }
}
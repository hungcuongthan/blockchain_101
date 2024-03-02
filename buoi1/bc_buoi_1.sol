// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract FirstContract {
    // storage variables
    // solidity is a static type programming language

    // Define the  variables
    uint public monthlyRate;
    uint public depositAmount;
    uint public numMonths;
    uint public totalGain;

    function calculateTotalAmount() public pure returns (uint) {
        uint amount = depositAmount;
        for (uint i = 0; i < numMonths; i++) {
            amount += (amount * monthlyRate) / 100;
        }
        return amount;
    }
}

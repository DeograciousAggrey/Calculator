//SPDX-License-Identifier: GPL-3.0 
pragma solidity ^ 0.5.0;

contract Calculator {
    function arithmetics(uint num1, uint num2) public pure returns(uint sum, uint product) {
        sum = num1 + num2 ;
        product = num1 * num2;
    }

    function multiply(uint num1, uint num2) public pure returns (uint) {
        return num1*num2;
    }
}
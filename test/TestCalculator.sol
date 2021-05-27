//SPDX-License-Identifier: GPL-3.0;

pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Calculator.sol";


contract TestCalculator {
    //Address of the Calculator Contract to be tested
    Calculator calculator = Calculator(DeployedAddresses.Calculator());
    
    //The expected sum and product values of first function
    uint expectedSum = 10;
    uint expectedProduct = 25;

    //The expected product value of the second function
    uint expectedProduct2 = 10;

    //Test multiply() function
    function testMultiply() public {
        uint returnedProduct2 = calculator.multiply(2, 5);
        Assert.equal(returnedProduct2, expectedProduct2, "The returned product should be correct");
    }

}
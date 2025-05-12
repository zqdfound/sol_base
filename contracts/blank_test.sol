// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract HelloWorld{
    string strVal = "Hello World";
    function sayHello() public view returns (string memory){
        return strVal;
    }
    function setHello(string memory helloStr) public {
        strVal = helloStr;
    }
    
}
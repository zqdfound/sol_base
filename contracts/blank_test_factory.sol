//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import {HelloWorld} from "./blank_test.sol";
//工厂合约调用
contract HelloWorldFactory{
    HelloWorld hw;
    HelloWorld[] hws;

    function createHelloWorld() public {
        hws.push(new HelloWorld());
    }

    function getHelloWorldByIndex(uint256 _index) public view returns (HelloWorld){
        return hws[_index];
    }
    function callSetHelloByFactory(uint256 _index,string memory newStr,uint _id) public {
         hws[_index].setHello(newStr,_id);
    }
    function callSayHelloByFactory(uint256 _index,uint256 _id) public view returns (string memory){
        return hws[_index].sayHello(_id);
    }

}
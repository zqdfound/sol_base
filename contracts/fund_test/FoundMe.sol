//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
// 1. 创建一个收款函数
// 2. 记录投资人并且查看
// 3. 在锁定期内，达到目标值，生产商可以提款
// 4. 在锁定期内，没有达到目标值，投资人在锁定期以后退款
contract FundMe{

    //投资人-投资数量
    mapping (address => uint256) public funderToAmount;
    //最少需要的投资
    uint256  MINIMUM_VALUE = 1 * 10 **8;//wei

    function fund() external payable {
        require(msg.value >= MINIMUM_VALUE,"SEND MORE ETH");
        funderToAmount[msg.sender] = msg.value;
    }
}
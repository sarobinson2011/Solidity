// SPDX-License-Identifier: MIT

pragma solidity >=0.6.6 <0.9.0;

    // get the latest ETH/USD price from the Chainlink price feed

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@chainlink/contracts/src/v0.6/vendor/SafeMathChainlink.sol";

contract FundMe {
    // safe math library check uint256 for integer over/under flow

    using SafeMathChainlink for uint256;    

    // mapping to store which addresses deposited how much ETH
    mapping(address => uint256) public addressToAmountFunded;
    
    // array of addresses who deposited funds
    address[] public funders;
    
}


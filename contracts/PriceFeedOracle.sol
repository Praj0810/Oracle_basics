//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../Oracle/AggregatorV3Interface.sol";

contract PriceFeedOracle{
    AggregatorV3Interface internal priceFeed;


    constructor(address AggreAddress){
        priceFeed = AggregatorV3Interface(AggreAddress);
    }

    function getLastestprice() public view returns(int256){
        (,int256 price,,,)= priceFeed.latestRoundData();
        return price;
    }
}
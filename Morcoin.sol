pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Morcoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Morcoin(address _owner)  UpgradeableToken(_owner) {
    name = "Morcoin";
    symbol = "ACN";
    totalSupply = 2900000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}
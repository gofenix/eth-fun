pragma solidity ^0.4.20;

contract Car {
  uint speed;
  string name;

  function Car() public {
    speed = 100;
    name="奔驰";
  }

  function getSpeed() constant public returns (uint) {
    return speed;
  }

  function setSpeed(uint x) public {
    speed=x;
  }

  function currentAddr() view public returns (address) {
    return msg.sender;
  }

  function kill() {
    selfdestruct(msg.sender);
  }
}

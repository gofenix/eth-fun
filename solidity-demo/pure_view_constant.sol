pragma solidity ^0.4.20;

contract Car {
  uint speed;
  string name;
  address owner

  function Car() public {
    speed = 100;
    name="奔驰";
    owner=msg.sender;
  }

  function setSpeed(uint x) public {·
    speed=x;
  }

  function sayHello() pure public returns (string) {
    return "hello world";
  }

  function getSpeed() constant public returns (uint) {
    return speed;
  }

  function currentAddr() view public returns (address) {
    return msg.sender;
  }

  function kill() {
    if(msg.sender == owner){
      selfdestruct(msg.sender);
    }
  }
}

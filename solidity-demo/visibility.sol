pragma solidity ^0.4.20;

contract Animal {
  function test1() pure private returns (uint) {
    return 10;
  }

  function test2() pure public returns (uint) {
    return 20;
  }

  function test3() pure internal returns (uint) {
      return 30;
  }

  function test4() pure external returns (uint) {
      return 40;
  }
}

contract Cat is Animal {

}

//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;

//view (상태변수) pure(지역변수)
//상태변수를 읽어오는것은 가스비 발생 안함 , 그대신 무거움 (view)
//지역변수와 상태변수를 읽어오는것중 더쉬운것은 지역변수임.
//지역변수는 함수가 끝나게되면 휘발되는 성격을 가지고있음.
// 상태변수를 참조하면 view 상태변수를 사용하지않으면 pure

contract basic {
    uint a;

    function setA(uint _a)public {
        a= _a;
    }

    function getA() public view returns(uint){
        return a;
    }
    function getB(uint _a) public pure returns (uint){
        uint _b = _a**3;
        return (_a +_b);
    }
    function getAplusB(uint _b)public view returns (uint) {
        return a +_b;
    }
}
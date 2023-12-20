//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;

contract Basic {
    uint a;
    uint b;
    uint c =2 ;
    // 값을 넣는 함수.
    function setA(uint _a) public {
        a=_a;
    }
    function setB(uint _b) public {
        b= _b;
    }
    function setC(uint _c) public {
        c=_c;
    }
    function setAB(uint _a, uint _b) public {

    }
    function setAsNine()public {
        a=9 ;
    }

    

    function mul ( uint _a,uint _b , uint _c) public pure returns (uint){
        return _a*_b*_c;
    }

    //값을 출력하는 함수.

    function getA ()public view returns (uint) {
        return a;
    }
    function getB () public view returns (uint ) {
        return b;
    }

    function getAB () public view returns (uint,uint) {
        return (a,b);
    }
}
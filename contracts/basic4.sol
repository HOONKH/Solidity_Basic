//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;

contract basic4 {
    string a; // 숫자형의 default값은 0이지만 문자형의 default값은 빈값임 그래서 문자형이 더 무거움.
    uint b;

    // 문자형 은 숫자형에 비해 정적이 아닌 동적이기때문에 무거움 그래서 memory에 저장해줘야함.
    // data location memory 와 call data는 휘발성 저장 공간 storage는 상태변수의 저장 공간.
    function setA(string memory _a) public {
        a = _a;
    }

    function setAasABC () public {
        a="abc";
    }

    function setAB (string memory _a,uint _b) public {
        a=_a;
        b=_b;
    }
    
    function getA ()public view returns (string memory){
        return a;
    }

    function getAB () public view returns (string memory, uint) {
        return (a,b);
    }

}
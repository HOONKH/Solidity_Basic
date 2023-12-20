//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;

contract BASIC2 {
    //전역변수 : 체인전체
    //상태변수 : contract 안 전체
    //지역변수 : 해당 함수 안에서

    // 지역 변수 사용 할 경우 (상태변수를 참고/읽지 않을 경우) pure 사용 , view 보다 가스비가 저렴 
    function add (uint _a,uint _b) public pure returns(uint){
        return _a+_b;
    }
    function multiply (uint _a,uint _b) public pure returns (uint){
        return _a * _b;
    }
    function sub (uint _a , uint _b)public pure returns (uint) {
        return _a - _b;
    }
    function sub2 (int _a , int _b)public pure returns(int) {
        return _a - _b ;
    }
    function div (uint _a, uint _b)public pure returns(uint){
        return _a / _b;
    }
    function div2 (uint _a, uint _b)public pure returns(uint){
        return _a%_b;
    }

}

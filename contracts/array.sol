//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;  

contract ARRAY{
    uint[] numbers;

    //1.값넣기
    function push(uint _a)public{
        numbers.push(_a);
    }
    //전체 반환
    function returnArray () public view returns (uint[] memory){
        return numbers;
    }

    // 2. 값 빼기 
    function pop() public {
        numbers.pop();
    }
    // 3. _n번째 값보기 
    function getNumber (uint _n) public view returns (uint){
        return numbers[_n-1];
    }
    //배열의 길이.
    function arrayLength ()public view returns(uint){
        return numbers.length;
    }
    // 값 바꾸기 
    function setNumber(uint _n,uint _m) public {
        numbers[_n-1]= _m;
    }
    function deleteNumber (uint _n)public {
        delete numbers[_n-1];
    }

}
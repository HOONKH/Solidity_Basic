//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;  

contract ARRAY_S {
    string [] letters ; //동적 array :길이가 정해져있지않음.length;

    //값 넣기
    function push (string memory _a)public {
        letters.push(_a);
    }
    //전체 반환
    function letter () public view returns (string[] memory){
        return letters;
    }
    //값빼기
    function pop()public{
        letters.pop();
    }
    //n번째 값보기
    function getLetters (uint _n) public view returns(string memory){
        return letters[_n-1];
    }
    //배열의 길이
    function getLength ()public view returns(uint){
        return letters.length;
    }
    //값 바꾸기
    function setString (uint _a,string memory _b) public{
        letters[_a-1]=_b;
    }

    function deleteString (uint _a)public{
        delete letters[_a-1];
    }
}
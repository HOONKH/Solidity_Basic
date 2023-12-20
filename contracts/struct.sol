//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract STRUCT{
    // 구조체와 이름. (ex function name)
    // 하나의 주체로 관리하고싶은데 안에 다른 자료형들이 필수적으로 들어갈수밖에 없는 상황일때
    // 새로운 변수형태를 만듬 -> struct 변수가 아니라 -> 변수형태임
    struct Student {
        string name;
        bool isMale;
        uint number;
    }
    Student s;

    function setS(string memory _name,bool _isMale,uint _number)public {
        s = Student(_name,_isMale,_number);
    }
    function getS ()public view returns (Student memory){
        return s;
    }

    function getSS() public view returns (uint){
        return s.number;
    }
}
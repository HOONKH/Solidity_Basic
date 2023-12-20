//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;

contract MAPPING{
    //
    struct Student{
        // string name;
        uint number;
        uint score;
        uint home_address;
    }
    mapping (string => uint) age;
    mapping (string => bool) gender;
    mapping (string => Student) students;

    function push(string memory _name,uint _age)public{
        age[_name]=_age; //MAPPING 이름[key] = value
    }
    function get(string memory _name)public view returns(uint){
        return age[_name];
    }
    function setGender (string memory _name,bool _gender)public {
        gender[_name]=_gender;
    }
    function getGender(string memory _name) public view returns (bool){
        return gender[_name];
    }
    function setStudents(string memory _name,Student memory _students)public {
        students[_name]=_students;
    }
    function getStudents(string memory _name) public view returns(Student memory){
        return students[_name];
    }
}
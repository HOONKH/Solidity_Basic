//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;


    contract STRUCT {
    struct Student{
        string name;
        uint number;
        string[] classes;

    }

    Student[] class;

    Student s1;
    Student s2;
    Student s3;

    function setStudent1 (string memory _name,uint _number,string[] memory _classes)public {
        s1 = Student(_name,_number,_classes);
    }
    function setStudent2 (Student memory _s)public {
        s2 = _s;
    }
    function pushStudent(Student memory _s)public {
        class.push(_s);
    }
    function setStudent3 (string memory _name,uint _number,string[] memory _classes)public {
        s3 = Student({
            name:_name,
            number : _number,
            classes : _classes
        });
    }
}
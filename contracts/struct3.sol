//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract STRUCT {
    struct Student{
        string name;
        uint number;
       

    }

    Student[] class;

    Student s1;
    Student s2;
    Student s3;

    function setStudent1(string memory _name,uint _number)public {
        s1 =Student(_name,_number);
    }
    function setStudent2(string memory _name ,uint _number)public{
        s2.name = _name;
        s2.number=_number;
    }
    function setStudent3(string memory _name ,uint _number)public {
        s3 = Student({
            name:_name,
            number:_number
        });
    }
        function getStudent( )public view returns(Student memory,Student memory,Student memory){
            return (s1,s2,s3); 
        
    }
}


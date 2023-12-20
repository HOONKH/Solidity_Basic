//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract STRUCT {
    struct Student{
        string name;
        bool isMale;
        uint number;
    }
    Student[] class;

    function pushStudent(string memory _name, bool _isMale,uint _number) public {
        class.push(Student(_name,_isMale,_number));
    }

    function pushStudent2(Student memory _s) public {
        class.push(_s);
    }

    function getClass ()public view returns (Student[] memory){
        return class;
    }

    function getStudent (uint _n) public view returns (Student memory){
        return class[_n-1];
    }
}


//     contract STRUCT {
// 	strcut Student {
//         string name;
//         uint number;
//         uint score;
//         string grade;
		
// 	  }

// 	Student[] class;

//     function pushStudent (string memory _name,uint _number,uint _score,string memory _grade)public view returns (){
//         class.push(Student(_name,_number,_score,_grade));
//     }
//     function getStudent (uint _n)public view returns (Student memory){
//         return class[_n-1];
//     }
//     function getScore (uint _n) public view returns (uint){
//         return class[_n-1].score;
//     }
//     function getClass ()public view returns(uint){
//         return class;
//     }
// }
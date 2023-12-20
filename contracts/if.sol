//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;

contract IF {
    function grade(uint _score) public pure returns(string memory){
        if(_score>=90){
            return "A";
        }else if (_score>=80){
            return "B";
        }else if (_score>=70){
            return "C";
        }else{
            return "D";
        }

   }
   function div(uint _a) public pure returns(string memory){
        if(_a%2==0){
            return "A";
        }else if(_a%3==0){
            return "B";
        }else if(_a%5==0){
            return "C";
        }else{
            return "D";
        }
   }
    function answery(uint _a)public pure returns(string memory){
        if (_a%2==0 && _a >40 || _a <20 ){
            return "A";
        }else if(_a <=40 && _a>=20 && _a%2!=0){
            return "B";
        }else if(_a<=40 && _a >=20 && _a%2!=0){
            return "C";
        }else {
            return "D";
        }
   }
}
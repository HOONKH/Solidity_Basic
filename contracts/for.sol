//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;

contract FOR {

    uint[] numbers;

    function push(uint _a) public {
        numbers.push(_a);
    }

    function getArray()public view returns (uint[] memory){
        return numbers;
    }

    function Each() public {
        for(uint i=0;i<numbers.length;i++){
            numbers[i]+=2;
        }
    }
    function loop1()public pure returns(uint){
        uint a;

        for (uint i=0;i<5;i++){
            a+=i; //a= a+i
           
        }
         return a;
    }
    function loop2()public pure returns(uint,uint){
        uint a;
        uint i;

        for (i=0;i<5;i++){
            a+=i; //a= a+i
            
        }
        return (a,i);
    }
    function loop3()public pure returns(uint){
        uint a;
        for(uint i=1;i<=100;i++){
            a+=i;
        }
        return a;
    }
    function loop4()public pure returns(uint){
        uint a;
        for (uint i=0;i<=100;i+=2){
            a+=i;
        }
        return a;
    }
    function loop5()public pure returns(uint){
        uint a;
        for (uint i=0;i<=100;i*=2){
            a+=i;
        }
        return a;
    }
    function addTwoAll3 () public view returns(uint [] memory){
        uint[] memory a=numbers;
        for(uint i =0;i<numbers.length;i++){
            a[i] +=2;
        }
        return a;
    }
}
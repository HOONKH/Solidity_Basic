//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;

contract basic5{

    bytes a;
    string b;

    //string 은 특별한 형태의 bytes
    //bytes는 특별한 형태의 array
    //string은 bytes의 형태를 따라감.

    function setA(bytes memory _a)public {
        a=_a;
    }
    function setB() public {
        a ="ab";
    }

    function setC(string memory _a) public {
         a= bytes(_a); // string의 형태가 bytes의 형태로 저장됨.
    }
    function setD()public {
        a="12";
    }
    function getA()public view returns (bytes memory){
        return a;
    }
}
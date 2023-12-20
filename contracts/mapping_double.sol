//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;

contract MAPPING{
   
    mapping(string=>mapping(string=>uint))accounts;



    function setAccount(string memory _name,string memory _bank,uint _amount)public{
        accounts[_name][_bank]=_amount;
    }
    function getAccount (string memory _name ,string memory _bank)public view returns(uint){
        return accounts[_name][_bank];
    }
}

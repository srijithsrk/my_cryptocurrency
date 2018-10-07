//my token
// program for creating coins and transferring them to prescribed reciever
pragma solidity ^0.4.0;

contract Srijith
{
address public creator;


mapping(address => uint) public balance;   //mapping acts as a key value pair like that of an array
function.Srijith()
{
creator = msg.sender;   //messages are sent by the creator of the smart contract only
}
function createCoin(address _reciever, uint amount)
{                                   //only the creator of the contract has right to create coins
if(msg.sender != creator ) throw;
balance[_reciever] += amount;
}
function transfer(address _reciever, uint amount)
{
if(balance[msg.sender] < amount && amount == 0) throw; //a==0 is set to avoid spamming
if(balance[msg.sender] -= amount;
balance[_reciever] += amount;
}
}


// program for exchanging my token for ether


pragma solidity ^0.4.0;

contract Srijith
{
address public creator;
uint constant public PRICE = 5000000000000000000;   //5 ether in wei
// im planning to sell my token i.e; my cryptocurrency for 5 ether
mapping(address => uint) public balance;   //mapping acts as a key value pair like that of an array
function.Srijith()
{
creator = msg.sender;   //messages are sent by the creator of the smart contract only
}
function createCoin(address _reciever, uint amount) payable
{                                   //only the creator of the contract has right to create coins
require(msg.value > 0 && msg.value % PRICE == 0;   // if can be used instead of require
balance[msg.sender] += (msg.value/PRICE);


}
function transfer(address _reciever, uint amount)
{
if(balance[msg.sender] < amount && amount == 0) throw; //a==0 is set to avoid spamming
if(balance[msg.sender] -= amount;
balance[_reciever] += amount;
}
}

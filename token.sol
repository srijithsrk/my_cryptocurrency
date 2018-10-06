//my token
pragma solidity ^0.4.0;

contract DragonStone
{
address public creator;
mapping(address => uint) public balance;   //mapping acts as a key value pair like that of an array
function.DragonStone()
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

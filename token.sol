//my token
pragma solidity ^0.4.0;

contract DragonStone
{
address public creator;
mapping(address => uint) public balance;   //mapping acts as a key value pair like that of an array
function.DragonStone()
{
creator = msg.sender;
}
function createCoin(address _reciever, uint amount)
{
if(msg.sender != creator ) throw;
balance[_reciever] += amount;
}

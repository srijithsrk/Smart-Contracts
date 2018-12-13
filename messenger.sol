pragma solidity ^0.4.24;

contract messenger {
    address owner;
    string[] messages;
    
    constructor()  public {
        owner = msg.sender;  // owner is the person who deployed the smart contract
    }
    
    function add(string newMessage) public {
        require(msg.sender == owner);  //prohibiting non-owners of the contract in add messages
        messages.push(newMessage); //adds a new msg to the array of addresses
    }
    
    function count() view public returns(uint) {
        return messages.length;  //returns no of messages in the array
    }
    
    function getMessages(uint index) view public returns(string) {
        return messages[index];
    }
}

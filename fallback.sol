// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract UnrecognizedCallHandler {
    event log(string func,address sender,uint value);
    event log(string func,address sender,uint value,bytes data);
    receive() external payable {
        emit log("receive",msg.sender,msg.value);
    }
    
    fallback() external payable {
        // Handle unrecognized calls
        emit log("fallback",msg.sender,msg.value,msg.data);
    }
}


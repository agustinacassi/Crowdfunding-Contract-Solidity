// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7 <0.9.0;

contract Asset {
    string public tokenName = "TiniCoin";

    event ChangeName(
        address editor,
        string newName
    );

    function changeName(string memory newName) public {
        tokenName = newName;
        emit ChangeName(msg.sender, newName);
    }
}
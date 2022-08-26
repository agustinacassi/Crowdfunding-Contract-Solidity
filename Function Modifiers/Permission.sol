// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7 <0.9.0;

contract Permission {
    address private owner;
    string public projectName = "TiniProject";

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(
            msg.sender == owner,
            "Only owner can change the project name"
        );
        _;
    }

    function changeProjectName(string memory _projectName) public onlyOwner {
        projectName = _projectName;
    }
}
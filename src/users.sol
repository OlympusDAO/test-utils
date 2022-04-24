// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import {Vm} from "forge-std/Vm.sol";

//common utilities for forge tests
contract users {
    address internal constant HEVM_ADDRESS =
        address(bytes20(uint160(uint256(keccak256('hevm cheat code')))));

    Vm internal immutable vm = Vm(HEVM_ADDRESS);

    bytes32 internal nextUser = keccak256(abi.encodePacked("users"));

    function next() public returns (address payable) {
        //bytes32 to address conversion
        address payable user = payable(address(uint160(uint256(nextUser))));
        nextUser = keccak256(abi.encodePacked(nextUser));
        return user;
    }

    //create users with 100 ether balance
    function create(uint256 userNum)
        public
        returns (address payable[] memory)
    {
        address payable[] memory users = new address payable[](userNum);
        for (uint256 i = 0; i < userNum; i++) {
            address payable user = next();
            vm.deal(user, 100 ether);
            users[i] = user;
        }
        return users;
    }
}
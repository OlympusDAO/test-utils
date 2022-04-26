pragma solidity >=0.8.0;

/// DEPS
import "forge-std/Test.sol";
import {Vm} from "forge-std/Vm.sol";
import "forge-std/console2.sol";

// generalized mocking library
library mocking {
    address internal constant HEVM_ADDRESS =
        address(bytes20(uint160(uint256(keccak256("hevm cheat code")))));

    Vm internal constant vm = Vm(HEVM_ADDRESS);

    // the trick is data address data is contained in f because its a pointer to the 
    function mock(function (address,uint256) external returns(bool) f, address addr1, uint256 num1, bool returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector, addr1, num1),
            abi.encode(returned1)
        );
    }
}
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

    function mock(function (address,uint256) external returns(bool) f, address addr1, uint256 num1, bool returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector, addr1, num1),
            abi.encode(returned1)
        );
    }

    function mock(function (address,uint256) external payable returns(bool) f, address addr1, uint256 num1, bool returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector, addr1, num1),
            abi.encode(returned1)
        );
    }

    function mock(function (address,uint256) external view returns(bool) f, address addr1, uint256 num1, bool returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector, addr1, num1),
            abi.encode(returned1)
        );
    }

    function mock(function (address,uint256,uint256) external returns(bool) f, address addr1, uint256 num1, uint256 num2, bool returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector, addr1, num1, num2),
            abi.encode(returned1)
        );
    }

    function mock(function (address,uint256,uint256) external payable returns(bool) f, address addr1, uint256 num1, uint256 num2, bool returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector, addr1, num1, num2),
            abi.encode(returned1)
        );
    }

    function mock(function (address,uint256,uint256) external view returns(bool) f, address addr1, uint256 num1, uint256 num2, bool returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector, addr1, num1, num2),
            abi.encode(returned1)
        );
    }

    function mock(function (address,address) external returns(uint256) f, address addr1, address addr2, uint256 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector, addr1, addr2),
            abi.encode(returned1)
        );
    }

    function mock(function (address,address) external payable returns(uint256) f, address addr1, address addr2, uint256 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector, addr1, addr2),
            abi.encode(returned1)
        );
    }

    function mock(function (address,address) external view returns(uint256) f, address addr1, address addr2, uint256 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector, addr1, addr2),
            abi.encode(returned1)
        );
    }
}
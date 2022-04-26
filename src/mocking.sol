pragma solidity >=0.8.0;

/// DEPS
import "forge-std/Test.sol";
import {Vm} from "forge-std/Vm.sol";

// mocking library
library mocking {
    address private constant HEVM_ADDRESS =
        address(bytes20(uint160(uint256(keccak256("hevm cheat code")))));

    Vm private constant vm = Vm(HEVM_ADDRESS);

    // ,address 
    function mock(function () external returns(address) f, address returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    function mock(function () external payable returns(address) f, address returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    function mock(function () external view returns(address) f, address returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    // ,bool 
    function mock(function () external returns(bool) f, bool returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    function mock(function () external payable returns(bool) f, bool returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    function mock(function () external view returns(bool) f, bool returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    // ,bytes32
    function mock(function () external returns(bytes32) f, bytes32 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    function mock(function () external payable returns(bytes32) f, bytes32 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    function mock(function () external view returns(bytes32) f, bytes32 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    // ,string
    function mock(function () external returns(string memory) f, string memory returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    function mock(function () external payable returns(string memory) f, string memory returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    function mock(function () external view returns(string memory) f, string memory returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    // ,uint256
    function mock(function () external returns(uint256) f, uint256 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    function mock(function () external payable returns(uint256) f, uint256 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    function mock(function () external view returns(uint256) f, uint256 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

     // ,uint8
    function mock(function () external returns(uint8) f, uint8 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    function mock(function () external payable returns(uint8) f, uint8 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    }

    function mock(function () external view returns(uint8) f, uint8 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector),
            abi.encode(returned1)
        );
    } 

    // address,uint256
    function mock(function (address) external returns(uint256) f, address addr1, uint256 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector, addr1),
            abi.encode(returned1)
        );
    }

    function mock(function (address) external payable returns(uint256) f, address addr1, uint256 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector, addr1),
            abi.encode(returned1)
        );
    }

    function mock(function (address) external view returns(uint256) f, address addr1, uint256 returned1) internal {
        vm.mockCall(
            f.address,
            abi.encodeWithSelector(f.selector, addr1),
            abi.encode(returned1)
        );
    }

    // address,address,uint256
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

    // address,uint256,bool
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
    
    // address,uint256,uint256,bool
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
}
pragma solidity >=0.8.0;

/// DEPS
import {Vm} from "forge-std/Vm.sol" ;
import {IERC20} from "src/interfaces.sol";

// mock token
// understand that each function mock means
// that on call of that function it will be successfully executed
// mock.token gives original token
contract token {
    address internal constant HEVM_ADDRESS =
        address(bytes20(uint160(uint256(keccak256('hevm cheat code')))));
    
    Vm internal constant vm = Vm(HEVM_ADDRESS);

    address internal immutable _token;

    IERC20 public immutable token;

    constructor(
        address token_
    ) {
        _token = token_;
        token = IERC20(token_);
    }

    function allowance(address owner, address spender, uint256 amount) public {
        vm.mockCall(
            _token,
            abi.encodeWithSelector(token.allowance.selector, owner, spender),
            abi.encode(amount)
        );
    }

    function approve(address spender, uint256 amount) public {
        vm.mockCall(
            _token,
            abi.encodeWithSelector(token.approve.selector, spender, amount),
            abi.encode(true)
        );
    }

    function transfer(address to, uint256 amount) public {
        vm.mockCall(
            _token,
            abi.encodeWithSelector(token.transfer.selector, to, amount),
            abi.encode(true)
        );
    }

    function transferFrom(address from, uint256 to, uint256 amount) public {
        vm.mockCall(
            _token,
            abi.encodeWithSelector(token.transferFrom.selector, from, to, amount),
            abi.encode(true)
        );
    }

    function balanceOf(address account, uint256 amount) public {
        vm.mockCall(
            _token,
            abi.encodeWithSelector(token.balanceOf.selector, account),
            abi.encode(amount)
        );
    }
}
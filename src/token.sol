pragma solidity >=0.8.0;

/// DEPS
import {Vm} from "forge-std/Vm.sol";

/// LOCAL
import "solmate/tokens/ERC20.sol";

contract mtt is ERC20 {
    constructor() ERC20("mock", "mock", 18) {}
}

// mock token
// understand that each function mock means
// that on call of that function it will be successfully executed
// mock.token() gives original token
contract token {
    address internal constant HEVM_ADDRESS =
        address(bytes20(uint160(uint256(keccak256("hevm cheat code")))));

    Vm internal constant vm = Vm(HEVM_ADDRESS);

    address internal _token;

    ERC20 public token;

    constructor(address token_) {
        if (block.chainid == 99) {
            token = ERC20(address(new mtt()));
            _token = address(token);
        } else {
            _token = token_;
            token = ERC20(token_);
        }
    }

    function allowance(
        address owner,
        address spender,
        uint256 amount
    ) public {
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

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public {
        vm.mockCall(
            _token,
            abi.encodeWithSelector(
                token.transferFrom.selector,
                from,
                to,
                amount
            ),
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

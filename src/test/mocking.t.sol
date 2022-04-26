pragma solidity >=0.8.0;

/// DEPS
import "forge-std/Test.sol";
import "solmate/tokens/ERC20.sol";

/// LOCAL
import "src/mocking.sol";
import "src/coins.sol";
import "src/users.sol";

contract PERC20 is ERC20 {
    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) ERC20(_name, _symbol, _decimals) {}

    function pays(address rec, uint256 amount)
        external
        payable
        returns (bool)
    {}
}

contract mockingTest is Test {
    using mocking for *;
    PERC20 ohm;
    users usr;

    function setUp() public {
        ohm = PERC20(coins.ohm);
        usr = new users();
    }

    function testSimpleMocking() public {
        address rec = usr.next();
        address sen = usr.next();

        ohm.transfer.mock(rec, 1e21, true);
        ohm.transferFrom.mock(sen, rec, 1e21, true);
        ohm.balanceOf.mockv(rec, 1e21);
        ohm.name.mockv("dai");
        ohm.symbol.mockv("DAI");
        ohm.totalSupply.mockv(1e3);
        ohm.allowance.mockv(rec, sen, 1e21);
        ohm.decimals.mockv(20);
        ohm.approve.mock(sen, 1e21, true);
        ohm.pays.mockp(rec, 1e21, true);

        assertTrue(ohm.transfer(rec, 1e21));
        assertTrue(ohm.transferFrom(sen, rec, 1e21));
        assertEq(ohm.balanceOf(rec), 1e21);
        assertEq(ohm.name(), "dai");
        assertEq(ohm.symbol(), "DAI");
        assertEq(ohm.totalSupply(), 1e3);
        assertEq(ohm.allowance(rec, sen), 1e21);
        assertEq(ohm.decimals(), 20);
        assertTrue(ohm.approve(sen, 1e21));
        assertTrue(ohm.pays(rec, 1e21));
    }
}

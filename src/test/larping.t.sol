pragma solidity >=0.8.0;

/// DEPS
import "forge-std/Test.sol";
import "solmate/tokens/ERC20.sol";

/// LOCAL
import "src/larping.sol";
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

contract larpingTest is Test {
    using larping for *;
    PERC20 ohm;
    users usr;

    function setUp() public {
        ohm = PERC20(coins.ohm);
        usr = new users();
    }

    function testSimpleLarping() public {
        address rec = usr.next();
        address sen = usr.next();

        ohm.transfer.larp(rec, 1e21, true);
        ohm.transferFrom.larp(sen, rec, 1e21, true);
        ohm.balanceOf.larpv(rec, 1e21);
        ohm.name.larpv("dai");
        ohm.symbol.larpv("DAI");
        ohm.totalSupply.larpv(1e3);
        ohm.allowance.larpv(rec, sen, 1e21);
        ohm.decimals.larpv(20);
        ohm.approve.larp(sen, 1e21, true);
        ohm.pays.larpp(rec, 1e21, true);

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

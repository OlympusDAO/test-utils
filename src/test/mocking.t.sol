pragma solidity >=0.8.0;

/// DEPS
import "forge-std/Test.sol";
import "solmate/tokens/ERC20.sol";

/// LOCAL
import "src/mocking.sol";
import "src/coins.sol";
import "src/users.sol";

contract mockingTest is Test {
    using mocking for *;
    ERC20 ohm;
    users usr;

    function setUp() public {
        ohm = ERC20(coins.ohm);
        usr = new users();
    }

    function testSimpleMocking() public {
        address rec = usr.next();
        ohm.transfer.mock(rec, 1e21, true);
        assertTrue(ohm.transfer(rec, 1e21));
    }
}

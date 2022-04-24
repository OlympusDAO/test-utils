pragma solidity >=0.8.0;

/// DEPS
import "forge-std/Test.sol";

/// LOCAL
import "src/coins.sol";
import "src/users.sol";
import "src/token.sol";

contract tokenTest is Test {
    token mock;
    users ufac;

    function setUp() public {
        mock = token(coins.ohm);
        ufac = new users();
    }

    function testShort() public {
        address user1 = ufac.next();
        address user2 = ufac.next();

        mock.allowance(user1, user2, 1e21);

        assertEq(mock.token.allowance(user1, user2), 1e21);

        mock.approve(user2, 1e21);

        assertTrue(mock.token.approve(user2, 1e21));

        mock.transfer(user2, 1e21);

        assertTrue(mock.token.transfer(user2, 1e21));

        mock.transferFrom(user1, user2, 1e21);

        assertTrue(mock.token.transferFrom(user1, user2, 1e21));

        mock.balanceOf(user1, 1e21);

        assertEq(mock.balanceof(user1, 1e21), 1e21);
    }

}
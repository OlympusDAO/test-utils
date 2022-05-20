pragma solidity >=0.8.0;

/// DEPS

import "forge-std/Test.sol";
import "forge-std/console2.sol";
import "solmate/tokens/ERC20.sol";

/// LOCAL

import "src/larping.sol";
import "src/convert.sol";
import "src/errors.sol";
import "src/sorting.sol";
import "src/UserFactory.sol";
import "src/Permutations.sol";

/// @dev This is named `Easy` because Test is too general and can cause naming issues etc.
contract Easy is Permutations, Test {
    using larping for *;
    using convert for *;
    using errors for *;
    using sorting for *;

    UserFactory usrfac;

    constructor() {
        usrfac = new UserFactory();
    }
}

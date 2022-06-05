# Forge test-utils

For all of below except the user factory you will need to add your own types if they are not provided. Feel free to PR them.

## Showcase of most important

### larping

```solidity
using larping for *;
ohm.transfer.larp(target, amount, true); // mock a true return, via vm.mockCall
ohm.balanceOf(target, amount); // mock return amount... view function
// larpp is for payable
```
### errors

```solidity
using errors for *;
SomeError.selector.with(<some data>); // via vm.expectRevert... <some data> is expected args
SomeError.selector.with();
```

### convert

```solidity
uint128 x = uint64(5).c64u128u();
x = uint64(5).c64u128ushl(2);
x = uint64(5).c64u128ushr(2); // be careful with shifting
```

### UserFactory

```solidity
UserFactory factory = new UserFactory();
address someUser = factory.next();
address[] memory users = factory.create(40);
// users are distinct
```

### coins

```solidity
using coins for *;
coins.ohm; // ohm address
coins.usdc; // usdc address
```

### Permutations

```solidity
contract Tester is Test, Permutations {
    function test() external {
        uint256[] memory input = new uint256[](4);
        input[0] = 1;
        input[1] = 2;
        input[2] = 3;
        input[3] = 4;

        uint256[] memory result = permuteBy(13, input, false); // take 12th permutation of input and don't del data afterwards
        result = permutation(17, true); // take 16th and delete
        result = permutation(15, true); // this will fail
    }
}
```

pragma solidity >=0.8.0;

// convert library
// naming key:
// since <obj>.method works you know your orig type
// then name defines type to convert to
// and if same bit amount this is implicit
// meaning you only have necessary data about what the function does
library convert {
    /// int256,uint
    function cu(int256 number) internal pure returns (uint256) {
        return uint256(number);
    }

    function cushlb(int256 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(number) << shift;
    }

    function cushrb(int256 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(number) >> shift;
    }

    function cushla(int256 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(number << shift);
    }

    function cushra(int256 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(number >> shift);
    }

    /// uint224,uint
    function cu256(uint224 number) internal pure returns (uint256) {
        return uint256(number);
    }

    function cu256shl(uint224 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(number) << shift;
    }

    function cu256shr(uint224 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(number) >> shift;
    }

    /// uint256,uint
    function cu32(uint256 number) internal pure returns (uint32) {
        return uint32(number);
    }

    function cu32shl(uint256 number, uint256 shift)
        internal
        pure
        returns (uint32)
    {
        return uint32(number << shift);
    }

    function cu32shr(uint256 number, uint256 shift)
        internal
        pure
        returns (uint32)
    {
        return uint32(number >> shift);
    }

    function cu128(uint256 number) internal pure returns (uint128) {
        return uint128(number);
    }

    function cu128shl(uint256 number, uint256 shift)
        internal
        pure
        returns (uint128)
    {
        return uint128(number << shift);
    }

    function cu128shr(uint256 number, uint256 shift)
        internal
        pure
        returns (uint128)
    {
        return uint128(number >> shift);
    }

    function cu224(uint256 number) internal pure returns (uint224) {
        return uint224(number);
    }

    function cu224shl(uint256 number, uint256 shift)
        internal
        pure
        returns (uint224)
    {
        return uint224(number << shift);
    }

    function cu224shr(uint256 number, uint256 shift)
        internal
        pure
        returns (uint224)
    {
        return uint224(number >> shift);
    }

    /// uint256,int
    function ci(uint256 number) internal pure returns (int256) {
        return int256(number);
    }

    function cishl(uint256 number, uint256 shift)
        internal
        pure
        returns (int256)
    {
        return int256(number << shift);
    }

    function cishr(uint256 number, uint256 shift)
        internal
        pure
        returns (int256)
    {
        return int256(number >> shift);
    }
}

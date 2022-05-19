pragma solidity >=0.8.0;

// convert library
// naming key:
// since <obj>.method works you know your orig type
// meaning you only have necessary data about what the function does

// (uintx -> uinty) -> (uintx -> inty) -> (intx -> uinty) -> (intx -> inty)
// organized in that order, ascending based on arg first then return

// uint256 is unspecified,
// if not uint256, then it is specified before convert-to-type
// and if bit amount is the same then it is again not specified
library convert {
    /// uint224,uint256
    function c224u256(uint224 number) internal pure returns (uint256) {
        return uint256(number);
    }

    function c224u256shl(uint224 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(number) << shift;
    }

    function c224u256shr(uint224 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(number) >> shift;
    }

    /// uint256,uint32
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

    /// uint256,uint48
    function cu48(uint256 number) internal pure returns (uint48) {
        return uint48(number);
    }

    function cu48shl(uint256 number, uint256 shift)
        internal
        pure
        returns (uint48)
    {
        return uint48(number << shift);
    }

    function cu48shr(uint256 number, uint256 shift)
        internal
        pure
        returns (uint48)
    {
        return uint48(number >> shift);
    }

    /// uint256,uint128
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

    /// uint256,uint224
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

    /// uint32,int32
    function c32i(uint32 number) internal pure returns (int32) {
        return int32(number);
    }

    function c32ishl(uint32 number, uint256 shift)
        internal
        pure
        returns (int32)
    {
        return int32(number << uint32(shift));
    }

    function c32ishr(uint32 number, uint256 shift)
        internal
        pure
        returns (int32)
    {
        return int32(number >> shift);
    }

    /// uint224,int224
    function c224i(uint224 number) internal pure returns (int224) {
        return int224(number);
    }

    function c224ishl(uint224 number, uint256 shift)
        internal
        pure
        returns (int224)
    {
        return int224(number << uint224(shift));
    }

    function c224ishr(uint224 number, uint256 shift)
        internal
        pure
        returns (int224)
    {
        return int224(number >> shift);
    }

    /// uint256,int32
    function c32i(uint256 number) internal pure returns (int32) {
        return int32(uint32(number));
    }

    function c32ishl(uint256 number, uint256 shift)
        internal
        pure
        returns (int32)
    {
        return int32(uint32(number << shift));
    }

    function c32ishr(uint256 number, uint256 shift)
        internal
        pure
        returns (int32)
    {
        return int32(uint32(number >> shift));
    }

    /// uint256,int256
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

    /// int32,uint32
    function ci32u(int32 number) internal pure returns (uint32) {
        return uint32(number);
    }

    function ci32ushlb(int32 number, uint256 shift)
        internal
        pure
        returns (uint32)
    {
        return uint32(number) << uint32(shift);
    }

    function ci32ushrb(int32 number, uint256 shift)
        internal
        pure
        returns (uint32)
    {
        return uint32(number) >> shift;
    }

    function ci32ushla(int32 number, uint256 shift)
        internal
        pure
        returns (uint32)
    {
        return uint32(number << uint32(shift));
    }

    function ci32ushra(int32 number, uint256 shift)
        internal
        pure
        returns (uint32)
    {
        return uint32(number >> shift);
    }

    /// int32,uint256
    function c32iu(int32 number) internal pure returns (uint256) {
        return uint256(uint32(number));
    }

    function c32iushlb(int32 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(uint32(number)) << shift;
    }

    function c32iushrb(int32 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(uint32(number)) >> shift;
    }

    function c32iushla(int32 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(uint32(number) << uint32(shift));
    }

    function c32iushra(int32 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(uint32(number >> shift));
    }

    /// int256,uint224
    function c224u(int256 number) internal pure returns (uint224) {
        return uint224(uint256(number));
    }

    function c224ushl(int256 number, uint224 shift)
        internal
        pure
        returns (uint224)
    {
        return uint224(uint256(number << shift));
    }

    function c224ushr(int256 number, uint224 shift)
        internal
        pure
        returns (uint224)
    {
        return uint224(uint256(number >> shift));
    }

    /// int256,uint256
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
}

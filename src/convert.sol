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
    function c224uu(uint224 number) internal pure returns (uint256) {
        return uint256(number);
    }

    function c224uushl(uint224 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(number) << shift;
    }

    function c224uushr(uint224 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(number) >> shift;
    }

    /// uint256,uint32
    function cu32u(uint256 number) internal pure returns (uint32) {
        return uint32(number);
    }

    function cu32ushl(uint256 number, uint256 shift)
        internal
        pure
        returns (uint32)
    {
        return uint32(number << shift);
    }

    function cu32ushr(uint256 number, uint256 shift)
        internal
        pure
        returns (uint32)
    {
        return uint32(number >> shift);
    }

    /// uint256,uint48
    function cu48u(uint256 number) internal pure returns (uint48) {
        return uint48(number);
    }

    function cu48ushl(uint256 number, uint256 shift)
        internal
        pure
        returns (uint48)
    {
        return uint48(number << shift);
    }

    function cu48ushr(uint256 number, uint256 shift)
        internal
        pure
        returns (uint48)
    {
        return uint48(number >> shift);
    }

    /// uint256,uint64
    function cu64u(uint256 number) internal pure returns (uint64) {
        return uint64(number);
    }

    function cu64ushl(uint256 number, uint256 shift)
        internal
        pure
        returns (uint64)
    {
        return uint64(number << shift);
    }

    function cu64ushr(uint256 number, uint256 shift)
        internal
        pure
        returns (uint64)
    {
        return uint64(number >> shift);
    }

    /// uint256,uint128
    function cu128u(uint256 number) internal pure returns (uint128) {
        return uint128(number);
    }

    function cu128ushl(uint256 number, uint256 shift)
        internal
        pure
        returns (uint128)
    {
        return uint128(number << shift);
    }

    function cu128ushr(uint256 number, uint256 shift)
        internal
        pure
        returns (uint128)
    {
        return uint128(number >> shift);
    }

    /// uint256,uint224
    function cu224u(uint256 number) internal pure returns (uint224) {
        return uint224(number);
    }

    function cu224ushl(uint256 number, uint256 shift)
        internal
        pure
        returns (uint224)
    {
        return uint224(number << shift);
    }

    function cu224ushr(uint256 number, uint256 shift)
        internal
        pure
        returns (uint224)
    {
        return uint224(number >> shift);
    }

    /// uint32,int32
    function c32u32i(uint32 number) internal pure returns (int32) {
        return int32(number);
    }

    function c32u32ishl(uint32 number, uint256 shift)
        internal
        pure
        returns (int32)
    {
        return int32(number << uint32(shift));
    }

    function c32u32ishr(uint32 number, uint256 shift)
        internal
        pure
        returns (int32)
    {
        return int32(number >> shift);
    }

    /// uint224,int224
    function c224u224i(uint224 number) internal pure returns (int224) {
        return int224(number);
    }

    function c224u224ishl(uint224 number, uint256 shift)
        internal
        pure
        returns (int224)
    {
        return int224(number << uint224(shift));
    }

    function c224u224ishr(uint224 number, uint256 shift)
        internal
        pure
        returns (int224)
    {
        return int224(number >> shift);
    }

    /// uint256,int32
    function cu32i(uint256 number) internal pure returns (int32) {
        return int32(uint32(number));
    }

    function cu32ishl(uint256 number, uint256 shift)
        internal
        pure
        returns (int32)
    {
        return int32(uint32(number << shift));
    }

    function cu32ishr(uint256 number, uint256 shift)
        internal
        pure
        returns (int32)
    {
        return int32(uint32(number >> shift));
    }

    /// uint256,int128
    function cu128i(uint256 number) internal pure returns (int128) {
        return int128(uint128(number));
    }

    function cu128ishl(uint256 number, uint256 shift)
        internal
        pure
        returns (int128)
    {
        return int128(uint128(number << shift));
    }

    function cu128ishr(uint256 number, uint256 shift)
        internal
        pure
        returns (int128)
    {
        return int128(uint128(number >> shift));
    }

    /// uint256,int256
    function cui(uint256 number) internal pure returns (int256) {
        return int256(number);
    }

    function cuishl(uint256 number, uint256 shift)
        internal
        pure
        returns (int256)
    {
        return int256(number << shift);
    }

    function cuishr(uint256 number, uint256 shift)
        internal
        pure
        returns (int256)
    {
        return int256(number >> shift);
    }

    /// int32,uint32
    function c32i32u(int32 number) internal pure returns (uint32) {
        return uint32(number);
    }

    function c32i32ushlb(int32 number, uint256 shift)
        internal
        pure
        returns (uint32)
    {
        return uint32(number) << uint32(shift);
    }

    function c32i32ushrb(int32 number, uint256 shift)
        internal
        pure
        returns (uint32)
    {
        return uint32(number) >> shift;
    }

    function c32i32ushla(int32 number, uint256 shift)
        internal
        pure
        returns (uint32)
    {
        return uint32(number << uint32(shift));
    }

    function c32i32ushra(int32 number, uint256 shift)
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

    /// int256,uint32
    function ci32u(int256 number) internal pure returns (uint32) {
        return uint32(uint256(number));
    }

    function ci32ushl(int256 number, uint32 shift)
        internal
        pure
        returns (uint32)
    {
        return uint32(uint256(number << shift));
    }

    function ci32ushr(int256 number, uint32 shift)
        internal
        pure
        returns (uint32)
    {
        return uint32(uint256(number >> shift));
    }

    /// int256,uint128
    function ci128u(int256 number) internal pure returns (uint128) {
        return uint128(uint256(number));
    }

    function ci128ushl(int256 number, uint128 shift)
        internal
        pure
        returns (uint128)
    {
        return uint128(uint256(number << shift));
    }

    function ci128ushr(int256 number, uint128 shift)
        internal
        pure
        returns (uint128)
    {
        return uint128(uint256(number >> shift));
    }

    /// int256,uint224
    function ci224u(int256 number) internal pure returns (uint224) {
        return uint224(uint256(number));
    }

    function ci224ushl(int256 number, uint224 shift)
        internal
        pure
        returns (uint224)
    {
        return uint224(uint256(number << shift));
    }

    function ci224ushr(int256 number, uint224 shift)
        internal
        pure
        returns (uint224)
    {
        return uint224(uint256(number >> shift));
    }

    /// int256,uint256
    function ciu(int256 number) internal pure returns (uint256) {
        return uint256(number);
    }

    function ciushlb(int256 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(number) << shift;
    }

    function ciushrb(int256 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(number) >> shift;
    }

    function ciushla(int256 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(number << shift);
    }

    function ciushra(int256 number, uint256 shift)
        internal
        pure
        returns (uint256)
    {
        return uint256(number >> shift);
    }

    /// int128,int256
    function c128ii(int128 number) internal pure returns (int256) {
        return int256(number);
    }

    function c128iishl(int128 number, uint256 shift)
        internal
        pure
        returns (int256)
    {
        return int256(number) << shift;
    }

    function c128iishr(int128 number, uint256 shift)
        internal
        pure
        returns (int256)
    {
        return int256(number) >> shift;
    }

    /// int256,int128
    function ci128i(int256 number) internal pure returns (int128) {
        return int128(number);
    }

    function ci128ishl(int256 number, uint256 shift)
        internal
        pure
        returns (int128)
    {
        return int128(number << shift);
    }

    function ci128ishr(int256 number, uint256 shift)
        internal
        pure
        returns (int128)
    {
        return int128(number >> shift);
    }
}

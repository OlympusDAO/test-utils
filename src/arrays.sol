pragma solidity >=0.8.0;

library arrays {
    function atomicu64(uint64 amount)
        internal
        pure
        returns (uint64[] memory result)
    {
        result = new uint64[](1);
        result[0] = amount;
    }

    function atomicu64(uint64 amount1, uint64 amount2)
        internal
        pure
        returns (uint64[] memory result)
    {
        result = new uint64[](2);
        result[0] = amount1;
        result[1] = amount2;
    }

    function atomicu64(
        uint64 amount1,
        uint64 amount2,
        uint64 amount3
    ) internal pure returns (uint64[] memory result) {
        result = new uint64[](3);
        result[0] = amount1;
        result[1] = amount2;
        result[2] = amount3;
    }

    function atomicu224(uint224 amount)
        internal
        pure
        returns (uint224[] memory result)
    {
        result = new uint224[](1);
        result[0] = amount;
    }

    function atomicu256(uint256 amount)
        internal
        pure
        returns (uint256[] memory result)
    {
        result = new uint256[](1);
        result[0] = amount;
    }

    function atomicu256(uint256 amount1, uint256 amount2)
        internal
        pure
        returns (uint256[] memory result)
    {
        result = new uint256[](2);
        result[0] = amount1;
        result[1] = amount2;
    }

    function atomicu256(
        uint256 amount1,
        uint256 amount2,
        uint256 amount3
    ) internal pure returns (uint256[] memory result) {
        result = new uint256[](3);
        result[0] = amount1;
        result[1] = amount2;
        result[2] = amount3;
    }

    // chain this for memory arrays
    function add(uint256[] memory array, uint256 element)
        internal
        pure
        returns (uint256[] memory)
    {
        uint256 i;
        while (element != 0) {
            if (array[i] == 0) {
                array[i] = element;
                element = 0;
            }
            i++;
        }
        return array;
    }

    function inflate(uint256[] memory arr, uint256 by)
        internal
        pure
        returns (uint256[] memory)
    {
        uint256 l = arr.length;
        for (uint256 i; i < l; i++) {
            arr[i] += by;
        }
        return arr;
    }

    function clean(uint256[] memory array)
        internal
        pure
        returns (uint256[] memory)
    {
        return new uint256[](array.length);
    }
}

pragma solidity ^0.8.10;

/**
 * @title Quicksort library in Solidity
 * @author Subhod I (https://gist.github.com/subhodi/b3b86cc13ad2636420963e692a4d896f),
 *         fried adapted to 0.8.10 and added memory variant
 */
library sorting {
    function sort(
        uint256[] memory arr,
        int256 left,
        int256 right
    ) internal returns (uint256[] memory) {
        int256 i = left;
        int256 j = right;

        if (i == j) return arr;

        uint256 pivot = arr[uint256(left + (right - left) / 2)];

        while (i <= j) {
            while (arr[uint256(i)] < pivot) i++;
            while (pivot < arr[uint256(j)]) j--;
            if (i <= j) {
                (arr[uint256(i)], arr[uint256(j)]) = (
                    arr[uint256(j)],
                    arr[uint256(i)]
                );
                i++;
                j--;
            }
        }

        if (left < j) sort(arr, left, j);
        if (i < right) sort(arr, i, right);

        return arr;
    }
}

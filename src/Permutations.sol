pragma solidity >=0.8.0;

// credits to OlympusDAO
contract Permutations {
    uint256[][] public permutations;
    uint256[] public permuted;

    function permutation(uint256 i, bool del)
        internal
        returns (uint256[] memory result)
    {
        result = permutations[i];
        if (del) delete permutations;
    }

    /// @param i index of permutation to receive
    /// @param input input elements which are to be permuted input.length! - 1 times (original permutation is untouched)
    /// @param del delete permutations after receiving permutation output
    function permuteBy(
        uint256 i,
        uint256[] memory input,
        bool del
    ) internal returns (uint256[] memory result) {
        permuted = input;
        heaps(input.length, permuted); // permute
        result = permutations[i]; // return ith permutation
        if (del) delete permutations; // clean
        delete permuted;
    }

    /// @notice calculates k! permutations by calculating (1)*(k-1)! and (k-1)(k-1)! permutations
    function heaps(uint256 k, uint256[] storage arr) internal {
        if (k == 1) {
            permutations.push(arr);
        } else {
            heaps(k - 1, arr);

            for (uint256 i; i < k - 1; i++) {
                if (k % 2 == 0) (arr[i], arr[k - 1]) = (arr[k - 1], arr[i]);
                else (arr[0], arr[k - 1]) = (arr[k - 1], arr[0]);
                heaps(k - 1, arr);
            }
        }
    }
}

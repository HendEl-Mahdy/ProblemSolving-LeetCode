# LeetCode 49: Group Anagrams

## Problem Description
Given an array of strings `strs`, group the anagrams together. You can return the answer in any order. An anagram is a word or phrase formed by rearranging the letters of another, such as `"eat"` and `"tea"`.

### Examples
- **Example 1**:
  - Input: `strs = ["eat","tea","tan","ate","nat","bat"]`
  - Output: `[["bat"],["nat","tan"],["ate","eat","tea"]]`
- **Example 2**:
  - Input: `strs = [""]`
  - Output: `[[""]]`
- **Example 3**:
  - Input: `strs = ["a"]`
  - Output: `[["a"]]`

### Constraints
- `1 <= strs.length <= 10^4`
- `0 <= strs[i].length <= 100`
- `strs[i]` consists of lowercase English letters.

## Solution
The solution is implemented in Swift and uses a character frequency counting approach to group anagrams efficiently.

### Approach
1. Create a dictionary (`anagramsMap`) where the key is an array of 26 integers representing the frequency of each lowercase letter (a-z), and the value is a list of strings that are anagrams.
2. For each string in `strs`:
   - Initialize an array `charCount` of size 26 to store the frequency of each character.
   - Iterate through each character in the string, incrementing the corresponding index in `charCount` (computed as `asciiValue - 97` for lowercase letters).
   - Use `charCount` as the key in `anagramsMap` and append the original string to the list associated with this key.
3. Return the values of `anagramsMap` as an array of grouped anagrams.

#### Time Complexity: **O(n * k)**, where `N` is the length of `strs` and `K` is the maximum length of a string in `strs`.

#### Space Complexity: **O(n * k)**

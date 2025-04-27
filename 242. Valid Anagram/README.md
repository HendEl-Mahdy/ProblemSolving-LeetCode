# LeetCode 242: Valid Anagram

## Problem Description
Given two strings `s` and `t`, return `true` if `t` is an anagram of `s`, and `false` otherwise. An anagram is a word or phrase formed by rearranging the letters of another, such as `"cinema"` and `"iceman"`.

### Examples
- **Example 1**:
  - Input: `s = "anagram"`, `t = "nagaram"`
  - Output: `true`
- **Example 2**:
  - Input: `s = "rat"`, `t = "car"`
  - Output: `false`
- **Example 3**:
  - Input: `s = "racecar"`, `t = "carrace"`
  - Output: `true`

### Constraints
- `1 <= s.length, t.length <= 5 * 10^4`
- `s` and `t` consist of lowercase English letters.

## Solution
The solution is implemented in Swift and uses a character frequency counting approach to determine if two strings are anagrams.

### Approach
1. Check if the lengths of `s` and `t` are equal. If not, they cannot be anagrams, so return `false`.
2. Use a dictionary (`charCount`) to store the frequency of each character in `s`.
3. Increment the count for each character in `s`.
4. Decrement the count for each character in `t`. If a count becomes negative, `t` has extra characters, so return `false`.
5. Verify that all counts in the dictionary are zero, indicating that `s` and `t` have the same characters with the same frequencies.

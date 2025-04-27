/*
* Problem Link:- https://leetcode.com/problems/valid-anagram/description/
* Time:-  O(n)
* Space:- O(k) where k is the number of unique characters in the strings
*/


class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {return false}
        var charCount = [Character: Int]()
        
        for char in s {
            charCount[char, default: 0] += 1
        }
        
        for char in t {
            charCount[char, default: 0] -= 1
            if let count = charCount[char], count < 0 {
                return false
            }
        }
        return charCount.values.allSatisfy {$0 == 0}
    }
}

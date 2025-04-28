/*
* Problem Link:- https://leetcode.com/problems/group-anagrams/description/
* Time:  O(n * k) where n is the number of strings in the input array strs, and k is the maximum length of a string in strs.
* Space: O(n * k)
*/

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagramsMap = [[Int]: [String]]()
        for str in strs {
            var charCount = [Int](repeating: 0, count: 26)
            for char in str {
                charCount[Int(char.asciiValue!) - 97] += 1
            }
            anagramsMap[charCount, default: []].append(str)
        }
        return Array(anagramsMap.values)
    }
}

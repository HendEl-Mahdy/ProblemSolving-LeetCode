/*
* Problem Link:- https://leetcode.com/problems/contains-duplicate/
* Time Complexity: O(n)
* Space Complexity: O(n)
*/

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return Set(nums).count != nums.count
    }
}

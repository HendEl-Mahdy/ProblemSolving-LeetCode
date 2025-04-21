/*
* Problem:- 2145 Count the Hidden Sequences
* Link:- https://leetcode.com/problems/count-the-hidden-sequences/description/
* Time:- O(n) ,  Space:- O(1)
*/
class Solution {
    func numberOfArrays(_ differences: [Int], _ lower: Int, _ upper: Int) -> Int {
        var minSum = 0
        var maxSum = 0
        var currentSum = 0
        
        for diff in differences {
            currentSum += diff
            minSum = min(minSum, currentSum)
            maxSum = max(maxSum, currentSum)
        }
        
        let lowerBound = lower - minSum
        let upperBound = upper - maxSum
        
        return max(0, upperBound - lowerBound + 1)
    }
}

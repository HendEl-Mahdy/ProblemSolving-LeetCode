/*
 * Problem:- 448. Find All Numbers Disappeared in an Array
 * Link:- https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/description/
 * Time: O(n log n)
 * Space: O(n)
 */

class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var hiddenNumbers: [Int] = []
        var shownNumbers = nums
        shownNumbers.sort()
        var currentNum = 1
        for (index, num) in shownNumbers.enumerated() {
            if index + 1 == shownNumbers.count {
                if num > currentNum {
                    hiddenNumbers.append(contentsOf: currentNum..<num)
                    currentNum = num + 1
                }else if currentNum == num {
                    currentNum += 1
                }
                if currentNum <= index + 1 {
                    hiddenNumbers.append(contentsOf: currentNum...(index + 1))
                }
            }else if num == currentNum {
                currentNum += 1
            }else if num > currentNum {
                hiddenNumbers.append(contentsOf: currentNum..<num)
                currentNum = num + 1
            }
        }
        return hiddenNumbers
    }
}

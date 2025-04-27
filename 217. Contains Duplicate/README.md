# LeetCode 217: Contains Duplicate

## Problem Description
Given an integer array `nums`, return `true` if any value appears at least twice in the array, and `false` if every element is distinct.

### Example
- **Input**: `nums = [1,2,3,1]`  
  **Output**: `true` (1 appears twice)
- **Input**: `nums = [1,2,3,4]`  
  **Output**: `false` (all elements are distinct)
- **Input**: `nums = [1]`  
  **Output**: `false` (single element, no duplicates)

### Constraints
- `1 <= nums.length <= 10^5`
- `-10^9 <= nums[i] <= 10^9`

## Solution
The solution is implemented in Swift and uses a `Set` to detect duplicates efficiently.

### Approach
1. Convert the input array `nums` to a `Set`, which automatically removes duplicates.
2. Compare the `count` of the `Set` (number of unique elements) with the `count` of the input array (total elements).
3. If the counts differ, duplicates exist, so return `true`. Otherwise, return `false`.

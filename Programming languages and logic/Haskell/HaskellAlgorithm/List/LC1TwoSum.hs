import Data.List

-- Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

-- You may assume that each input would have exactly one solution, and you may not use the same element twice.

-- You can return the answer in any order.

 

-- Example 1:

-- Input: nums = [2,7,11,15], target = 9
-- Output: [0,1]
-- Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
-- Example 2:

-- Input: nums = [3,2,4], target = 6
-- Output: [1,2]
-- Example 3:

-- Input: nums = [3,3], target = 6
-- Output: [0,1]

twoSum :: [Int] -> Int -> [Int]
twoSum nums target = helper nums target 0

helper :: [Int] -> Int -> Int -> [Int]
helper nums target idx = do
  let curr = nums !! idx
  let comp = target - curr
  let indices = elemIndices comp nums 
  if length indices == 0 then helper nums target (idx+1)
    else [idx, findRes idx indices]
      where 
        findRes i (r:rs) = if i == r then findRes i rs else r


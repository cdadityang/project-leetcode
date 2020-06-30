# Median of Two Sorted Arrays

## https://leetcode.com/problems/median-of-two-sorted-arrays/

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  arr = []

  while nums1.length != 0 && nums2.length != 0 do
    temp = nums1.first <= nums2.first ? nums1.shift : nums2.shift
    arr.push(temp)
  end

  arr2 = arr + nums1 + nums2

  if arr2.length == 0
    return 0
  else
    len = arr2.length
    return (arr2[(len - 1)/2] + arr2[len/2])/2.0
  end
end

p find_median_sorted_arrays([1, 3], [2])
# => 2.0

p find_median_sorted_arrays([1, 2], [3, 4])
# => 2.5
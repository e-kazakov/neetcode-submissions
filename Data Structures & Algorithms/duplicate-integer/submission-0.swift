class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        let uniques = Set(nums)
        return nums.count != uniques.count
    }
}

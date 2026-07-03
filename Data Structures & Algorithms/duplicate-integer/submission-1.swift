class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var counts = [Int:Int]()
        counts.reserveCapacity(nums.count)
        for v in nums {
            counts[v, default: 0] += 1
            if counts[v, default: 0] > 1 { return true }
        }

        return false
    }
}

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indexed = [Int:Int]()
        indexed.reserveCapacity(nums.count)
        for (i, v) in nums.enumerated() { 
            let comp = target - v
            if let j = indexed[comp] { 
                return [j, i]
            }
            indexed[v] = i
        }

        return []
    }
}

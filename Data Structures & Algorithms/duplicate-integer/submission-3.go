func hasDuplicate(nums []int) bool {
    seen := make(map[int]struct{}, len(nums))
    for _, n := range nums { 
        seen[n] = struct{}{}
    }
    return len(seen) != len(nums)
}

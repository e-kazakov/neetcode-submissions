func twoSum(nums []int, target int) []int {
    indexed := make(map[int]int, len(nums))

    for i, v := range nums { 
        comp := target - v
        if j, ok := indexed[comp]; ok { 
            return []int{j, i}
        }

        indexed[v] = i
    }

    return nil
}

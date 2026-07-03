class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        var scounts = [Character: Int]()
        scounts.reserveCapacity(s.count)

        var tcounts = [Character: Int]()
        tcounts.reserveCapacity(t.count)

        for c in s { 
            scounts[c, default: 0] += 1
        }
        for c in t { 
            tcounts[c, default: 0] += 1
        }

        return scounts == tcounts
    }
}

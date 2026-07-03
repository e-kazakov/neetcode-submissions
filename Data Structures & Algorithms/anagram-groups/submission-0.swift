typealias RawAnagram = Dictionary<Character, Int>

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var groups = [RawAnagram: [String]]()
        for s in strs { 
            let raw = rawAnagram(from: s)
            groups[raw, default: [String]()].append(s)
        }

        return Array(groups.values)
    }

    func rawAnagram(from str: String) -> RawAnagram {
        var raw = RawAnagram()
        for (_, c) in str.enumerated() { 
            raw[c, default: 0] += 1
        }

        return raw
    }
}

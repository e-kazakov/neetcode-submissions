class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else { return "" }
        
        var prefix = ""

        let first = strs[0]
        let rest = strs.dropFirst()

        for (pos, c) in first.enumerated() { 
            let same = rest.allSatisfy { s in 
                pos < s.count && c == s[s.index(s.startIndex, offsetBy: pos)]
            }
            if !same { 
                return prefix
            }

            prefix += String(c)
        }

        return prefix
    }
}

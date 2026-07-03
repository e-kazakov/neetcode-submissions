func longestCommonPrefix(strs []string) string {
    if len(strs) == 0 {
        return ""
    }
    if len(strs) == 1 { 
        return strs[0]
    }

    var prefix []byte
    s := strs[0]
    rest := strs[1:]

    for i := 0; i < len(s); i++ {
        c := s[i]
        for _, other := range rest { 
            if i > len(other)-1 || other[i] != c {
                return string(prefix)
            }
        }

        prefix = append(prefix, c)
    }

    return string(prefix)
}

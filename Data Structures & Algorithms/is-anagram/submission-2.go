func isAnagram(s string, t string) bool {
    if len(s) != len(t) { return false }

    c := [26]int{}
    for i := 0; i < len(s); i++ {
        c[s[i]-'a']++
        c[t[i]-'a']--
    }

    for _, count := range c { 
        if count != 0 { 
            return false
        }
    }

    return true
}

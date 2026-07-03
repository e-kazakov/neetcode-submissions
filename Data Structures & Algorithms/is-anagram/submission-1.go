import "maps"

func isAnagram(s string, t string) bool {
	if len(s) != len(t) { return false }

    scounts := make(map[rune]int, len(s))
    tcounts := make(map[rune]int, len(t))

    for _, c := range s { 
        scounts[c] += 1
    }

    for _, c := range t { 
        tcounts[c] += 1
    }

    return maps.Equal(scounts, tcounts)
}

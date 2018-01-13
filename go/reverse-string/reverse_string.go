package reverse

func String(s string) string {
	rev := []rune(s)
	for i, j := 0, len(rev)-1; i < len(rev)/2; i, j = i+1, j-1 {
		rev[i], rev[j] = rev[j], rev[i]
	}
	return string(rev)
}

// Rune literals are just integer value, "mapped" to their unicode codepoint. Eg. the rule literal 'a' is 97.

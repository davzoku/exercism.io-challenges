package bob

import (
	"strings"
	//"unicode"
	"regexp"
)

func Hey(remark string) string {
	// Start with whitespace; 0 or more; End with whitespace
	ifSilent := regexp.MustCompile(`^\s*$`).MatchString(remark)
	// Matches a `?`, end with 0 or more whitespace
	ifQuestion := regexp.MustCompile(`\?\s*$`).MatchString(remark)
	// if original string == uppercase of original string and must contain 1 or more alphabet
	ifYelling := (remark == strings.ToUpper(remark)) && regexp.MustCompile(`[A-Za-z]+`).MatchString(remark)

	switch {
	case ifSilent:
		return "Fine. Be that way!"
	case ifQuestion && ifYelling:
		return "Calm down, I know what I'm doing!"
	case ifYelling:
		return "Whoa, chill out!"
	case ifQuestion:
		return "Sure."
	default:
		return "Whatever."

	}
}

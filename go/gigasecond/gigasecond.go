package gigasecond

import "time"

func AddGigasecond(t time.Time) time.Time {
	var Gigasecond = 1e+09 * time.Second
	return t.Add(Gigasecond)
}

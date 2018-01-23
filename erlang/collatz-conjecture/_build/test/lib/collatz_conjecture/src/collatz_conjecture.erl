-module(collatz_conjecture).

-export([steps/1, test_version/0]).

steps(N) when N =< 0 -> {error, "Only positive numbers are allowed"};
steps(N) -> steps(N,0).

steps(1, Count) -> Count;
steps(N,Count) ->
	case (N rem 2) of 
    	0 -> steps(N div 2, Count + 1);
        1 -> steps(N*3+1, Count + 1)
    end.

test_version() -> 2.

# My exercism.io Solutions

[Discuss my solutions on Exercism](http://exercism.io/davzoku)

# Getting started with exercism on Windows

1. Choco install the cli
```
choco install exercism-io-cli
```

2. Configure your API key from [here](http://exercism.io/account/key)
```
exercism configure --key=YOUR_API_KEY
```

3. Change default directory if needed.
```
exercism configure --dir=C:\code\exercism
```

4. Fetch 1 exercise from exercism
```
exercism fetch javascript
```

5. Work on exercise; language-specific instructions using hello-world example:
	+ [Javascript](#javascript) 
    + [Python](#python)
    + [Go](#go)


6. Once done, submit to exercism
```
exercism submit hello-world.js
```

# Javascript

+ Solve the exercise

**To run JS test**

+ Install jasmine
```
npm install -g jasmine
```

+ Run test
```
jasmine hello-world.spec.js
```

# Python

**To run py test**

+ Run `python exercise_name_test.py` in the exercise directory.

# Go

**To run Go test**

+ Run `go test` in the exercise directory.

**To format Go code before submit**
```
gofmt -w hello-world.go
```

# Helpful Tips

It was a minor pain to type `exercism` everytime I have to fetch/submit, so I added an alias in my powershell.
```
Set-Alias e exercism
```
With this alias, I can just `e fetch javascript` and `e submit hello-world.js`; saving a few keystrokes.

Check out [my powershell profile](https://github.com/davzoku/dotfiles/blob/master/Microsoft.PowerShell_profile.ps1) for more posh shortcuts!

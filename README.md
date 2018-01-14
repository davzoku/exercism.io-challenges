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
    + [Bash](#bash-on-windows-machine)


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

# Bash on Windows machine
As I work with bash using “Bash on Ubuntu on Windows” from the Windows 10's Anniversary Update, I did a little workaround to make [bats](https://github.com/sstephenson/bats), the bash testing tool to work natively on my machine.

1. git clone the bats repo
```
$ git clone https://github.com/sstephenson/bats.git
```
2. Follow the solution provided by [jonathandandries](https://github.com/sstephenson/bats/pull/234), which is not merged to master as of writing.
	+ Change this line in the `bin/bats` file; `../libexec/bats` to `$(dirname $0)/../libexec/bats "$@"`
3. Proceed with the install instructions as usual.
```
$ cd bats
$ ./install.sh /usr/local
```

*If you are using Mac or Linux, you should be fine without having to perform this workaround.* 

**To run Bash test**

```
bats hello_world_test.sh
```

# Helpful Tips

It was a minor pain to type `exercism` everytime I have to fetch/submit, so I added an alias in my powershell.
```
Set-Alias e exercism
```
To further shorten keywords like `fetch` and `submit`; you can simply use `f` and `s`. Just type `exercism` / `e` to see the list of commands

With this alias, I can just type `e f javascript` and `e s hello-world.js`; saving a few keystrokes.

Check out [my powershell profile](https://github.com/davzoku/dotfiles/blob/master/Microsoft.PowerShell_profile.ps1) for more posh shortcuts!

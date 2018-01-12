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
exerism fetch javascript
```

5. Work on exercise; language-specific instructions:
	+ [javascript](#javascript) 


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


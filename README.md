# Dotfiles
As **_simple_** as **possible**

## Setup
```
$ git clone git@github.com:pdostal/dotfiles.git
$ cd dotfiles
$ ./apply.sh
```

## Hook
1) Place into `.git/hooks/pre-commit`
```
#!/bin/sh

./apply.sh

```
2) Make it executable


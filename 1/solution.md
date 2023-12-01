## Part 1
### Vim commands

remove all letters:
`%s/[a-z]//g`

remove all digits in the middle:
`%s/\(\d\)\d*\(\d\)/\1\2/`

duplicate single digit lines:
`%s/^\(\d\)$/\1\1/`

use awk on the file to print the answer on the last line:
`%!awk '{print; total+=$1}END{print total}'`

optionally remove all other lines with vim keyboard actions:
`gg`
`V`
`G`
`k`
`d`

## Part 2
### Haskell

Recursively check if prefix of string is a "word-digit"
`ghci 1_2.hs`
`main`

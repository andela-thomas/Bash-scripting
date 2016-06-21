#variables

Naming of variables in bash

Bash only allows use of letters, numbers and underscore to name variables
The first letter of the variable name should be a letter or underscore

## Uppercase variables

Bash has many predefined Uppercase variables, e,g PATH, HOME, SECONDS etc, you don't want to override them by mistake. Therefore is advisable to use lowercase variables at all times.

GoodHabit: surrounding your variables with quotes
- Use "$x" instead of $x
- Prevent surprises when it contains spaces
- Use double quotes: keep the dollar sign intact.

# Redirection

## What is redirection?

This simply means capturing output from a file, command , program, script or even block of code within a ascipt and sending it as an imput to another file, command, program, or scripts. This is achieved by use of `>` sign.

```bash

$ [my-command] > [my-file] // outputs to a file

$ [my-command] >> [my-file] //Appends output to a file

```

The output from `my-command` will be redirected to `my-file`. simple andd easy.

## File descriptors

In some scenarios, you may want to redirect diffrent outputs to your file, example only redirect error log from your command. To achieve this we use file descriptors.

### Types of file descriptors

There are three file descriptors

- `stdin 0`
- `stdout 1`
- `stderr 2`

### Redirection using file descritptors
```
COMMAND_OUTPUT >>
  # Redirect stdout to a file.
  # Creates the file if not present, otherwise appends to it.

  # Single-line redirection commands (affect only the line they are on):
  # --------------------------------------------------------------------

  1>filename
    # Redirect stdout to file "filename."

  1>>filename
    # Redirect and append stdout to file "filename."

  2>filename
    # Redirect stderr to file "filename."

  2>>filename
    # Redirect and append stderr to file "filename."

  &>filename
    # Redirect both stdout and stderr to file "filename."
```

Lets try some few examples:

1. output

First we are going to redirect general ouput, this will be inclusive of stderr, and stdout. Lets list the files we have in our diretory. My directory tree looks as below.
```
├── LICENSE
├── README.md
├── conditionals
│   └── conditionals.sh
├── docs
│   └── redirection.md
├── helloWorld
│   └── hello.sh
├── images
├── project
│   └── notes.sh
└── variables
    └── variables.sh
```

Run the `ls` command and redirect the output to file called `listfile`.

```
$ ls > listfile

```

when i run the cat command on listfile, this file will contain the list of all my files and folders

```
$ cat listfile

```

output

```
LICENSE
README.md
conditionals
docs
helloWorld
images
logfile
project
variables
```







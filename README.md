# Learning Bash scripting

## Introduction
Bash scripts enables us to automate task that we will normally do over and over again, for example installing software, updates etc. Writing this scripts saves us time, but most of all makes us work smart. To learn bash scripting you must have basic understanding of linux command. Lets get started.

## Structure of a bash script
```bash
#!/bin/bash

# says hello world
echo "Hello, World!"

```

This script has only three lines, the first indicates the system which the program to use to run the file. just like other programs like python, ruby has compilers, bash scripts are run by the basg interpreter. The first line tells your system to run the script using the bash interpreter which is located in the `/bin/bash`.

This may not be the case for all linux systems. Some may not have bash in this location, the work around this is to use `#!/usr/bin/env bash`. To clear this will depend on the user system configuration, using the above shebang may lead you script having diffrent outputsin diffent machines.

The second lines is a comment, line any programing language -not saying bash scripting is a language, documenting code is key. This ensure anyone maintaining your scripts know what you we doing. comments in bash scripting are written starting with a hash `#`. When the bash interpreter goues trough the script, it will ignore the comments and execute the other statements.

The third line is the action which we want bash to execute or perform. In our case we are telling bash to output hello world to the terminal.

## Executing bash scripts

For bash scripts to work they have to be executed, There are tho approaches to this. One is to run them using the shell.
```bash
$ sh <name-of-the-script>

```
The shell will run this file and use the interpreter specified to execute and perform the actions. Using our first example we can run it as below
```bash
$ sh hello.sh

```

output

```
Hello world!
```

Another approach is to make the file executable. This is done using `chmod` command. I will not go into details on how to use this command. For more details run: `man chmod` to get documentation of this command.
```bash

$ man chmod

```
The file should be executable only to the owner of the file, you can make it executable to other users or groups, if this file does some crucial operation it will be safer to give such permissions with great caution.

```bash

$ chmod u+x <name-of-the-script>

$ chmod u+x hello.sh

```
This makes our file `hello.sh` executable by the owner of the file. Now run the file.

```
$ ./hello.sh

```
output

```
 Hello, World!

 ```

There we go, we have written and executed our first bash script. For more details refer to this [document](http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-3.html)

[<button> Next </button>](docs/redirection.md)

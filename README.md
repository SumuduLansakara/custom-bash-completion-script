# What is this ?

Bash command-line auto completions, or tab-completions, are indispensable when working with command-line tools. Specially the ones taking multiple command-line arguments. e.g. `git`, `docker` etc... Most of the popular command-line tools provide auto completion support scripts.

When implementing custom command-line tools, we are also able to implement custom auto completion scripts. But I find this quite tedious as different tools (obviously) have different argument schemes and it's hard to remember the syntax and tools that need to be used for defining those scripts. 

Nevertheless, all the auto-completions are doing the same thing; just providing suggestions based on the current input.
 
This is an attempt to implement a boilerplate for implementing custom bash auto-completion scripts.

# How to try the example ?
1. Source the customized bash auto-completion script to enable auto completions in the current shell.
```
    $ source completer.sh
```
2. Enter command and press `<TAB>` key in place of arguments.
```
    $ mytool r<TAB>
```

It will be immediately completed if there is only one completion possibility. If not, pressing `<TAB>` again for the second time will list all the options. There, the selection should be further refined by giving more inputs.

Press `<TAB>` whenever to request the shell to attempt an auto-completion.

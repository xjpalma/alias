# Bash shell alias
You can add user-defined aliases to your ~/.bashrc
or copy [bash_aliases](.bash_aliases) and [bash_functions](.bash_functions) to your home directory
and and this to your  ~/.bashrc
```
# User specific aliases and functions
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

if [ -e $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi
```

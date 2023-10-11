# Bash shell alias
You can add user-defined aliases to your ~/.bashrc
or copy [bash_aliases](.bash_aliases) and [bash_functions](.bash_functions) to your home directory
and and this to your  ~/.bashrc
```
# User specific aliases and functions
if [ -e ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

if [ -e ~/.bash_functions ]; then
    source ~/.bash_functions
fi
```

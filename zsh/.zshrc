# Export SHORT_HOST for ssh-agent environment file in .ssh
export SHORT_HOST=$(hostname)

# Python
# Export Homebrew’s version of python and pip path
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Load virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

# Export virtualenvwrapper ENV
export PROJECT_HOME="$HOME/Repositories"

#GNUBIN
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

# OpenSSL
# Export Homebrew's version of openssl path 
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# For compilers to find openssl@1.1 you may need to set:
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

# For pkg-config to find openssl@1.1 you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

# Antigen
# Load Antigen
source /usr/local/share/antigen/antigen.zsh

# Load Antigen configurations
antigen init ~/.antigenrc

# Using compinit -i instead of bashcompinit
autoload -U +X compinit && compinit -i
# Load HashiCorp vault auto-completion 
complete -o nospace -C /usr/local/bin/vault vault

# Azure
source /usr/local/etc/bash_completion.d/az

# Disable AutoComplete Beep (beep, histbeep, listbeep, nolistbeep)
unsetopt listbeep

export PATH="/usr/local/sbin:$PATH"

# Alias if brew not owned by current user
export brew_owner=`ls -aled /usr/local/Cellar | awk '{print $3}'`
if [ "$brew_owner" != "$USER" ]; then
  alias brew="sudo -Hu $brew_owner brew"
fi

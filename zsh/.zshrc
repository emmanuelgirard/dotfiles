# Export Homebrew’s version of python and pip path
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Export SHORT_HOST for ssh-agent environment file in .ssh
export SHORT_HOST=mbp01

# Load virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

# Export virtualenvwrapper ENV
export PROJECT_HOME="$HOME/Repositories"

# Load Antigen
source /usr/local/share/antigen/antigen.zsh

# Load Antigen configurations
antigen init ~/.antigenrc

# Using compinit -i instead of bashcompinit
autoload -U +X compinit && compinit -i
# Load HashiCorp vault auto-completion 
complete -o nospace -C /usr/local/bin/vault vault

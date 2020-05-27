# Export Homebrew’s version of python and pip path
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Load virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

# Load Antigen
source /usr/local/share/antigen/antigen.zsh

# Load Antigen configurations
antigen init ~/.antigenrc

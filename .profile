# source global definitions
  if [ -f /etc/profile ]; then
    . /etc/profile
  fi

# Git Bash completion
  if [ -r /usr/local/etc/profile.d/bash_completion.sh ]; then
    . /usr/local/etc/profile.d/bash_completion.sh
  fi

# Configure the shell environmenti
  git_branch() {
    git branch 2>/dev/null | grep '^*' | colrm 1 2
  }
  source ~/.colors.bash
  export PS1="$BGreen>>lucas@$BBlue\w $BPurple(\$(git_branch '(%s)'))$BBlack\$ $Color_Off"
  export EDITOR=/usr/bin/vim
  export BLOCKSIZE=1k # Set default blocksize for ls, df, du, from this: http://hints.macworld.com/comment.php?mode=view&cid=24491

# Add color to terminal, from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
  export CLICOLOR=1
  #export LSCOLORS="di=$BGreen" #ExFxBxDxCxegedabagacad
  #export LSCOLORS='di=4'
  export LS_COLORS="di=1;34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

# Source git specific bash scripts
  #[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh
  #source ~/.git-completion.bash  # installed with git from homebrew at /usr/local/etc/bash_completion.d/git-completion.bash
  #source ~/.git-prompt.sh        # installed with git from homebrew at /usr/local/etc/bash_completion.d/git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE=yes
  export GIT_PS1_SHOWSTASHSTATE=yes

# Aliases and Functions
  alias ls='ls -G' 			      #<-- Mac only
  #alias ls='ls --color'		              #<-- change color here
  alias la='ls -a'
  alias ll='ls -lht'
  alias ~="cd ~"                              # ~:            Go Home
  alias c='clear'                             # c:            Clear terminal display
  alias which='type -all'                     # which:        Find executables
  alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
  alias wget='wget --no-check-certificate'
  alias grep='grep --color=auto'
  # Github stuff
  alias reflogf='git log --graph --decorate --oneline $(git rev-list -g --all)'
  # For servers
  alias sshholyoke='sshuttle -r lucasmc@helios.mit.edu 192.168.11.0/24 192.168.99.0/24'
  alias sshlcp='sshuttle -r lucasmc@scheherazade.mit.edu 192.168.1.0/24 ventricle'
  alias sshcsail='sshuttle -r heimdallr@mit.edu 192.168.100.0/24'
  alias sshstaging='sshuttle -r lucasmc@helios.mit.edu 192.168.11.0/0'
  alias holdmybeer='sudo'

# Set Path and Environment Variables
  # Configure Python Virtual Environment
  export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
  export WORKON_HOME=$HOME/.virtualenvs   # Optional
  export PROJECT_HOME=$HOME/projects      # Optional
  #source /usr/local/bin/virtualenvwrapper.sh

  #PATH="/usr/local:/usr/local/sbin:$PATH"
  #PATH="./.local/bin:$PATH"
  PATH="./.local/bin:/usr/bin::$PATH"
  export PATH

# Ubuntu make installation of Ubuntu Make binary symlink
PATH=/home/lucasmc/.local/share/umake/bin:$PATH

# Create alias for VS Code
#code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# For Pythonz
[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc

# For pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Setting PATH for Python 3.6
# The original version is saved in .profile.pysave
export PATH

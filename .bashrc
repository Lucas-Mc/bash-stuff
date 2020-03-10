# Source global definitions
  if [ -f /etc/profile ]; then
    . /etc/profile
  fi

# Configure the shell environment
  source ~/.colors.bash
  export PS1="$BGreen>>lucas@$BBlue\w $BPurple\$(__git_ps1 '(%s)')$BBlack\$ $Color_Off"
  export EDITOR=/usr/bin/vim
  export BLOCKSIZE=1k # Set default blocksize for ls, df, du, from this: http://hints.macworld.com/comment.php?mode=view&cid=24491

# Add color to terminal, from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
  export CLICOLOR=1
  export LS_COLORS="di=1;34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

# Source git specific bash scripts
  export GIT_PS1_SHOWDIRTYSTATE=yes
  export GIT_PS1_SHOWSTASHSTATE=yes

# Aliases and Functions
  #alias ls='ls -G' 			      #<-- Mac only
  alias ls='ls --color'		              #<-- change color here
  alias la='ls -a'
  alias ll='ls -lht'
  alias ~="cd ~"                              # ~:            Go Home
  alias c='clear'                             # c:            Clear terminal display
  alias which='type -all'                     # which:        Find executables
  alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
  alias wget='wget --no-check-certificate'
  alias grep='grep --color=auto'

# Set Path and Environment Variables
  # Configure Python Virtual Environment
  export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
  export WORKON_HOME=$HOME/.virtualenvs   # Optional
  export PROJECT_HOME=$HOME/projects      # Optional
  #source /usr/local/bin/virtualenvwrapper.sh

  PATH="/usr/bin:./.local/bin/home/lucasmc/.local/share/umake/bin:$PATH"
  export PATH

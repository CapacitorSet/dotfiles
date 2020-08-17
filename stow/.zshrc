export LANG=en_US.utf8
export TZ=:/etc/localtime
export GOROOT=/usr/lib/go
export GOPATH=~/software/gopath
export TERMINAL=qterminal
export EDITOR=nano
export CDPATH=.:/c:/s

alias -s txt=cat
alias -s md=cat
alias -s c=subl
alias -s h=subl
alias -s py=python
alias -s cpp=subl
alias -s hpp=subl
alias -s js=code
alias -s ts=code
alias -s css=code
alias -s html=firefox-nightly
alias -s git='git clone'

if test -f /usr/bin/trizen; then
	alias S='trizen -S'
	alias Syu='trizen -Syu'
	alias Rns='trizen -Rns'
elif test -f /usr/bin/apt; then
	alias S='sudo apt install'
	alias Syu='sudo apt update'
	alias Rns='sudo apt remove --purge'
fi
# Required to make aliases work with sudo
alias sudo='sudo '
alias watch='watch '
alias mkdir='mkdir -v'
alias rm='rm -v'
alias mv='mv -v'
alias cp='cp -v'
alias chown='chown -v'
alias chmod='chmod -v'
alias killall='killall -v'
alias ga='git add'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias gcm='git commit -m'
alias gch='git checkout'
alias gr='git restore'
alias cal='cal -m'
alias dc='docker-compose'
alias dx='docker exec'
alias lh='ls -lh'
alias yeet=rm
alias cpwd='pwd | clipcopy'
alias zsrc='source ~/.zshrc'
alias mpv="mpv --save-position-on-quit --ytdl-format='bestvideo[height<=?720][fps<=?30][vcodec!=?vp9]+bestaudio/best'"
alias kde="kdeconnect-cli -d 5ab65a9a67e521a0"
alias sum="awk '{s+=\$1}END{print s}'"

# Named dirs on the client
hash -d mount=/run/media/$USER/
hash -d nginx=/etc/nginx/sites-enabled/
hash -d logs=/var/log/
hash -d docker=/docker/$USER/

if [ -f ~/.ssh/agent.env ] ; then
    . ~/.ssh/agent.env > /dev/null
    if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
        echo "Stale agent file found. Spawning a new agent. "
        eval `ssh-agent | tee ~/.ssh/agent.env`
        ssh-add
    fi
else
    echo "Starting ssh-agent"
    eval `ssh-agent | tee ~/.ssh/agent.env`
    ssh-add
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="custom"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# fzf config
export FZF_BASE=/usr/share/fzf
# bgnotify config
bgnotify_threshold=4
function bgnotify_formatted {
  ## $1=exit_status, $2=command, $3=elapsed_time
  [ $1 -eq 0 ] && title="Success" || title="Exit status $1"
  bgnotify "$title ($3 s)" "$2";
}
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(bgnotify copybuffer colored-man-pages docker docker-compose fancy-ctrl-z fzf command-not-found mosh npm ripgrep sudo kubectl)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

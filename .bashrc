#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:/var/lib/snapd/snap/bin

# Created by `pipx` on 2025-07-09 11:19:35
export PATH="$PATH:/home/jrci3/.local/bin"

# Load pywal colors
[ -f "$HOME/.cache/wal/colors.sh" ] && source "$HOME/.cache/wal/colors.sh"

# fastfetch options (uncomment what fastfetch setting you want)

#fastfetch --logo-padding-left 1 --logo ~/Pictures/kitty-logos/grape.png
#fastfetch --logo-width 35 --logo ~/Pictures/kitty-logos/rose.png
fastfetch  --logo-padding-top 3
#fastfetch --logo-width 29 --logo-height 15 --logo-padding-right 5 --logo-padding-top 3 --logo ~/.config/fastfetch/ff.txt | lolcat
#fastfetch --logo-width 36 --logo-height 14 --logo ~/Pictures/kitty-logos/arch.png
#fastfetch --logo-width 36 --logo-height 14 --logo ~/Pictures/kitty-logos/bordered-arch.png
#fastfetch --logo-width 29 --logo-height 15 --logo-padding-left 6  --logo ~/Pictures/kitty-logos/squirtle3kb.png

alias fastfetch="fastfetch --logo-padding-top 3"
alias fastfetch1="fastfetch --logo-width 25 --logo-height 15 --logo-padding-right 5 --logo-padding-top 3 --logo ~/.config/fastfetch/ff.txt | lolcat"
alias fastfetch2="fastfetch --logo ~/Pictures/kitty-logos/arch.png"
alias fastfetch3="fastfetch --logo ~/Pictures/kitty-logos/bordered-arch.png"
alias fastfetch4="fastfetch --logo-width 25 --logo-height 15 --logo-padding-left 6  --logo ~/Pictures/kitty-logos/squirtle3kb.png"

alias anifetch="anifetch blue.mp4 -r 6 -W 45 -H 50 -C -c '--symbols all' -ff"
alias unimatrix="unimatrix -a -b -c blue -f -s 97"
alias pipes.sh="pipes.sh -t 0 -p 3 -c 4 -K"
alias cbonsai="cbonsai -l --time=0.005 --infinite --wait=2 --multiplier=7 --life=65 --seed=200"
alias .="cd .."
alias lt="ls -a"
alias clock='tty-clock -c -s -C 1 -b -t -f "%A, %B, %d, %Y"' 
export EDITOR=nano
export TERM=xterm

#export POWERLINE_PROMPT="user_info cwd"

# If not running interactively, don't do anything
case $- in
	*i*) ;;
	*) return ;;
esac

# Path to the bash it configuration
export BASH_IT="/home/jrci3/.bash_it"

# Lock and Load a custom theme file.
# Leave empty to disable theming.
# location "$BASH_IT"/themes/
export BASH_IT_THEME='powerline'

# Some themes can show whether `sudo` has a current token or not.
# Set `$THEME_CHECK_SUDO` to `true` to check every prompt:
#THEME_CHECK_SUDO='true'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# (Advanced): Change this to the name of the main development branch if
# you renamed it or if it was changed for some reason
# export BASH_IT_DEVELOPMENT_BRANCH='master'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to the location of your work or project folders
#BASH_IT_PROJECT_PATHS="${HOME}/Projects:/Volumes/work/src"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true
# Set to actual location of gitstatus directory if installed
#export SCM_GIT_GITSTATUS_DIR="$HOME/gitstatus"
# per default gitstatus uses 2 times as many threads as CPU cores, you can change this here if you must
#export GITSTATUS_NUM_THREADS=8

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# If your theme use command duration, uncomment this to
# enable display of last command duration.
#export BASH_IT_COMMAND_DURATION=true
# You can choose the minimum time in seconds before
# command duration is displayed.
#export COMMAND_DURATION_MIN_SECONDS=1

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "$BASH_IT"/bash_it.sh


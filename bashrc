# All
export EDITOR=vim

# Set dir colors
export LS_COLORS='no=00:fi=00:di=01;36:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mng=01;35:*.pcx=01;35:*.yuv=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.pdf=00;32:*.ps=00;32:*.txt=00;32:*.patch=00;32:*.diff=00;32:*.log=00;32:*.tex=00;32:*.doc=00;32:*.flac=01;35:*.mp3=01;35:*.mpc=00;36:*.ogg=00;36:*.wav=00;36:*.mid=00;36:*.midi=00;36:*.au=00;36:*.flac=00;36:*.aac=00;36:';

# ls aliases
alias ls="ls -hG --color"
alias l="ls -lhG --color"
alias la="ls -lahG --color"

# dir aliases
alias ..='cd ..'
alias -- -='cd -'

alias bashrc='$EDITOR ~/.bashrc && source ~/.bashrc'
alias gitconfig='$EDITOR ~/.gitconfig'
alias vimrc='$EDITOR ~/.vimrc && source ~/.vimrc'

# SSH Key generator alias
#alias mksshkey="ssh-keygen -b 8192 -t rsa -C '$1' -f ~/.ssh/$1.rsa"

# Fancy prompt
#export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\]$(__git_ps1 " (%s)") \w \$\[\033[00m\] "
#export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "
# git's default
#export PS1="\[\033]0;$MSYSTEM:${PWD//[^[:ascii:]]/?}\007\]\n\[\033[32m\]\u@\h \[\033[33m\]\w$(__git_ps1)\[\033[0m\]\n$"

export PS1="\[\e[32m\]\u\[\e[0m\]\[\e[32m\]@\h \[\e[36m\]\w\[\e[33m\]\$(__git_ps1)\[\e[0m\]\n$ "

# Some fancy history stuff
export HISTCONTROL=erasedups  # No duplicates
export HISTSIZE=              # Bigger history
shopt -s histappend # Append to ~/.bash_history
alias h='history | grep' # Easy history grep

# Keyword Bindings
bind '\C-f:unix-filename-rubout'
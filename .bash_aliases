# Some basics
alias c="clear"
alias ls="ls --color -h --group-directories-first"
alias la="ls -A"
alias mkd="mkdir -pv"
alias g="git"
alias nt="urxvt & disown"

# System maintenance
alias sdn="sudo shutdown now"
alias wifi="sudo systemctl restart network-manager"
alias p="sudo pacman"

# Folders
alias workshop="cd ~/Dropbox/Cal\ Poly/Workshop/ && ls"
alias gsh="cd ~/Dropbox/Cal\ Poly/HIST306"
alias gsm="cd ~/Dropbox/Cal\ Poly/Math423"
alias gsc=". ~/scripts/cdCPE.sh"
alias gsp="cd ~/Dropbox/Cal\ Poly/Champster/Cal\ Poly\ Summer\ 2018\ Research\ Group/Math\ Narratives/"
alias ggt="cd ~/Dropbox/GeorgiaTech/GIOS"

# Templates
alias Txw="cp ~/Dropbox/document_templates/worksheets.tex"
alias Txg="cp ~/Dropbox/document_templates/general.tex"
alias Txab="cp ~/Dropbox/document_templates/annotated_bibliographies.tex"
alias Md="cp ~/Dropbox/document_templates/markdown.md"

# Configs
alias icf="vim ~/.config/i3/config"
alias rcf="vim ~/.config/ranger/rc.conf"
alias vrc="vim ~/.vimrc"
alias brc="vim ~/.bashrc"
alias ba="vim ~/.bash_aliases"
alias qt="vim ~/.vim/bundle/quicktex/tex_mappings.vim"

# Scripts
alias cpe=". ~/scripts/357Scripts/cdCPE.sh"
alias hist="cd ~/Dropbox/Cal\ Poly/HIST306"
alias cp357="rm -r ~/Dropbox/Cal\ Poly/cpe357 && cp -r /mnt/cpUnix/cpe357 ~/Dropbox/Cal\ Poly/"
alias dfcp="~/scripts/dotfileManagement/srcControl.sh"

# SSH
alias unix1="ssh cpcollin@unix1.csc.calpoly.edu"
alias unix2="ssh cpcollin@unix2.csc.calpoly.edu"
alias unix3="ssh cpcollin@unix3.csc.calpoly.edu"
alias unix4="ssh cpcollin@unix4.csc.calpoly.edu"
alias mserv='sudo sshfs -o allow_other,IdentityFile=/home/chad/.ssh/id_rsa cpcollin@unix1.csc.calpoly.edu://home/cpcollin /mnt/cpUnix'
alias umserv="sudo umount /mnt/cpUnix"
alias cdserv="cd /mnt/cpUnix"

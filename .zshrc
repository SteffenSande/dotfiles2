# Path to your oh-my-zsh installation.

export ZSH="~/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git z fzf safe-paste vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

export DEFAULT_USER=`whoami`
export PATH=~/.npm-global/bin:$PATH
export PATH="$PATH:/Users/steffensande/.dotnet/tools"

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias config='/usr/bin/git --git-dir=$HOME/.config/ --work-tree=$HOME'

alias gs='git status'
alias gc='git cz '
alias gps='git push --set-upstream origin $(git_current_branch)'
alias gcm='git checkout $(git_main_branch)'


alias f='fzf '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


##########
#  Keys  #
##########

export GITHUB_PRIVATE='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'

###########
#  Paths  #
###########

##############
#  Fuctions  #
##############

function note () {
	local todaysNote=~/Documents/notes/`date +%d-%m-%Y`.md	
	vim $todaysNote
}
function diary () {
	local todaysEntry=~/Documents/diary/`date +%d-%m-%Y`.md	
	if [ ! -f $todaysEntry ]; then
		echo "# Hei Steffen" > $todaysEntry
		echo '## Hva er du takknemlig for?' >> $todaysEntry
		printf '\n' >> $todaysEntry
		echo '## Hva eller hvem vil du være? Svar på formen *Jeg er*' >> $todaysEntry
		printf '\n' >> $todaysEntry
		echo '## Hva er 3 kule ting som skjedde idag?' >> $todaysEntry
		printf '\n' >> $todaysEntry
		echo '## Hva kunne gjort idag enda bedre?' >> $todaysEntry
		printf '\n' >> $todaysEntry
	fi
	vim $todaysEntry
THUB_PRIVATE -s github}


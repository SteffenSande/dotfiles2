# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/Users/steffensande/.oh-my-zsh"
export DockerDbPassword='NowWhat?'
export DockerDbUsername='sa'
export PSModulePath='~/Documents/powershell/modules'
export TEMP='~/TempBackups'
export MygetApiKey='9cd457f3-e9f3-4b43-a7c2-d72d9b20570c'

ZSH_DISABLE_COMPFIX=true

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use hyphen-insensitive c:sempletion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"


# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git z fzf safe-paste vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

export DEFAULT_USER=`whoami`
export PATH=~/.npm-global/bin:$PATH
export PATH="$PATH:/Users/steffensande/.dotnet/tools"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias gs='git status'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/opt/llvm/bin:$PATH"

# Mvn path updates 
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"

# Java path
export JAVA_HOME="/usr/local/opt/openjdk@8"

alias gc='git cz '
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gcm='git checkout $(git_main_branch)'

alias nukebin='find . -iname "bin" -o -iname "obj" | xargs rm -rf'

alias f='fzf '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#################################
#  Enable vim mode in terminal  #
#################################
#Does not work

# start typing + [Up-Arrow] - fuzzy find history forward
# if [[ "${terminfo[kcuu1]}" != "" ]]; then
#   autoload -U up-line-or-beginning-search
#   zle -N up-line-or-beginning-search
#   bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
# fi
# # start typing + [Down-Arrow] - fuzzy find history backward
# if [[ "${terminfo[kcud1]}" != "" ]]; then
#   autoload -U down-line-or-beginning-search
#   zle -N down-line-or-beginning-search
#   bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
# fi
###################
#  Spørforenvenn  #
###################

alias build='mvn clean package'
alias run='mvn azure-functions:run'
alias deploy='mvn azure-functions:deploy'
alias forward='ngrok http 3000'

################
#  Push nuget  #
################

function packDebug {
	dotnet pack -c RELEASE --version-suffix $1 $2
}

function packRelease {
	dotnet pack -c RELEASE $1
}


function pushGH {
  dotnet nuget push -k $GITHUB_PRIVATE -s github $1
}

###########
#  Slack  #
###########

export SLACK_TOKEN='xoxb-1466956810995-1923987232688-PlafpBTqtEboQ8bL8iotLKoK'
export SLACK_SIGNING_SECRET='73206ad33e376d5d0af33d4698ac8346'
export AIR_TABLE='keyI7RiV8uatkEU8D'
export SLACK_CHANNEL_ID='C01SGD5G1FU'
export SLACK_TEST_CHANNEL_ID='C01THQ8DSHH'
export GITHUB_PRIVATE='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'
export TestTimmyPassword="rqDxyc0hTR0jPdvvCMvABxtUTzWE"

###########
#  Paths  #
###########

alias excli='/Users/steffensande/udir/tim-andre/src/TimAndre.External.Web/client'

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


alias nuke='find . -iname "bin" -o -iname "obj" | xargs rm -rf';

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/riccardo/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cobalt2"

# hide the “user@hostname” info when you’re logged in as yourself on your local machine
DEFAULT_USER="riccardo"

# Add home dir scripts to the path
export PATH=~/bin:$PATH

# PATH for Android Development
export SDK_ROOT=$HOME/Development/Android/sdk
export PATH=$PATH:$SDK_ROOT/platform-tools

export GRADLE_HOME=$HOME/Development/Android/gradle
export PATH=$PATH:$GRADLE_HOME/bin/

PATH="$PATH:$HOME/bin:/usr/local/git/bin:/usr/local/bin/java:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/bin:/sbin:/usr/include/crypto++:/usr/local/share/npm/bin"
export PATH

##NVM
. ~/.nvm/nvm.sh


## RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

CLASSPATH="$CLASSPATH:/usr/local/bin/java"
export CLASSPATH

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git npm brew osx rails)

source $ZSH/oh-my-zsh.sh

# Include z
. ~/z.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Aliases
alias f="open -a Finder ./"                 # Opens current directory in MacOS Finder
alias home="cd ~"                           # Go Home
alias c="clear"                             # Clear terminal display

alias spotoff="sudo mdutil -a -i off"       # Disable Spotlight
alias spoton="sudo mdutil -a -i on"         # Enable Spotlight

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/Lavoro/Progetti"

#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

# NETWORKING
alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias localip="ipconfig getifaddr en0"              # localip:      Local IP Address
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections

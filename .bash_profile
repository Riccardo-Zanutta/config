# Add `~/bin` to the `$PATH`
export PATH="/usr/local/bin:$PATH"
# Sets JAVA_HOME env variable
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

#   Change Prompt
#   ------------------------------------------------------------
export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "
export PS2="| => "

#   Some aliases
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # Opens any file in sublime editor

alias f='open -a Finder ./'                 # Opens current directory in MacOS Finder
alias home="cd ~"                           # Go Home
alias c='clear'                             # Clear terminal display
alias reload="exec $SHELL -l"               # Reload the shell (i.e. invoke as a login shell)

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

# Various
export CLICOLOR=1
export NVM_DIR="/Users/riccardo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

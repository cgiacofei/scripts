# Upgrade script stolen from oh-my-zsh.

# Use colors, but only if connected to a terminal, and that terminal
# supports them.
if which tput >/dev/null 2>&1; then
    ncolors=$(tput colors)
fi
if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
  RED="$(tput setaf 1)"
  GREEN="$(tput setaf 2)"
  YELLOW="$(tput setaf 3)"
  BLUE="$(tput setaf 4)"
  BOLD="$(tput bold)"
  NORMAL="$(tput sgr0)"
else
  RED=""
  GREEN=""
  YELLOW=""
  BLUE=""
  BOLD=""
  NORMAL=""
fi

printf "${BLUE}%s${NORMAL}\n" "Updating Scripts."
cd "$ZSH"
if git pull --rebase --stat origin master
then
    printf '%s' "$GREEN"
    printf '%s\n' '  ______________________________________________________________'
    printf '%s\n' ' /   _____/\_   ___ \______   \   \______   \__    ___/   _____/'
    printf '%s\n' ' \_____  \ /    \  \/|       _/   ||     ___/ |    |  \_____  \ '
    printf '%s\n' ' /        \\     \___|    |   \   ||    |     |    |  /        \'
    printf '%s\n' '/_______  / \______  /____|_  /___||____|     |____| /_______  /'
    printf '%s\n' '        \/         \/       \/                               \/ '
    printf "${BLUE}%s\n" "Scripts have been updated and/or are at the current version."
else
    printf "${RED}%s${NORMAL}\n" 'There was an error updating. Try again later?'
fi

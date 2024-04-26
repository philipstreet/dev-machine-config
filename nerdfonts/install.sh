#!/bin/sh

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

user () {
  printf "\r  [ \033[0;33m??\033[0m ] $1\n"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

cd $HOME

info 'Begin cascadiacode'

COMMANDS="curl"
 
# Read the array values with space
for COMMAND in $COMMANDS; do
  if [ ! $(command -v $COMMAND) ]; then
    fail "Could not find '$COMMAND' command. Is it installed?"
  else
    info "Found command $COMMAND: $(command -v $COMMAND)"
  fi
done

unset COMMANDS

BASEURL="https://github.com"

info 'Getting latest release'
PAGE=$(curl --silent -L https://github.com/microsoft/cascadia-code/releases/latest)

if [ ! "$PAGE" ]; then
    fail 'Could not connect to GitHub'
fi

FONTS="Cascadia CascadiaMono CascadiaPL CascadiaMonoPL"

for f in $FONTS; do
    URL="https://github.com/microsoft/cascadia-code/releases/latest/download/"
    #URL="https://github.com${f}.ttf"
    OUT="$f.ttf"
    info "Downloading $URL to $OUT"
    curl -L $URL --output $OUT
done

unset PAGE BASEURL PATTERN URL

if [ ! -d ~/.local/share/fonts/truetype/cascadia-code ]; then
  info 'Creating directory: ~/.local/share/fonts/truetype/cascadia-code'
  sudo mkdir -pv ~/.local/share/fonts/truetype/cascadia-code
fi

info 'Installing fonts to ~/.local/share/fonts'

for f in $FONTS; do
  sudo cp $f.ttf ~/.local/share/fonts/truetype/cascadia-code && rm $f.ttf
done

info 'Setting ~/.local/share/fonts/truetype/cascadia-code to be world readable'
sudo chmod -R o+rX ~/.local/share/fonts/truetype

# copy fonts to ~/.local/share/fonts/truetype/cascadia-code/*
success 'Done!'

success 'Finish cascadiacode'
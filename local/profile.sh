# Set user-defined locale
export LANG=$(locale -uU)

# source the dotfiles .profile if it exists
if [ -f "${dotfiles}/profile.sh" ]; then
  . "${dotfiles}/profile.sh"
fi

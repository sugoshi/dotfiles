# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
# if [ -d "${HOME}/bin" ] ; then
#   PATH="${HOME}/bin:${PATH}"
# fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

# source the users profile if it exists
if [ -f "${HOME}/.profile" ]; then
  . "${HOME}/.profile"
fi

# source the dotfiles bash_profile if it exists
if [ -f "${dotfiles}/bash_profile.sh" ]; then
  . "${dotfiles}/bash_profile.sh"
fi

# Customize the shell prompt for each command entry
# PS1="%n$ " # get rid of computer name
# not in effect when using oh-my-posh
PS1="& " # get rid of computer name & username

# Load oh-my-posh and one of its themes.
# You also have to install a font from oh-my-posh and set it in terminal profile.
# https://ohmyposh.dev/docs/installation/fonts
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/catppuccin.omp.json)"

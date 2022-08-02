# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"

# === PROMPT ===
declare -a COLOR_SCHEMES
COLOR_SCHEMES=(
    "pink"
    "blue"
    "yellow"
    "green"
)
declare -r COLOR_SCHEMES

LAST_INDEX=(${#COLOR_SCHEMES[@]})
RANDOM_INDEX=$(( ( RANDOM % ${LAST_INDEX} )  + 1 ))
COLOR=${COLOR_SCHEMES[RANDOM_INDEX]}

DARK_COLOR=0
LIGHT_COLOR=0

echo "${COLOR}"
if [ "$COLOR" = "pink" ]; then
   DARK_COLOR=204
   LIGHT_COLOR=211
elif
   [ "$COLOR" = "blue" ]; then
   DARK_COLOR=033
   LIGHT_COLOR=039
elif
   [ "$COLOR" = "yellow" ]; then
   DARK_COLOR=220
   LIGHT_COLOR=222
elif
   [ "$COLOR" = "green" ]; then
   DARK_COLOR=119
   LIGHT_COLOR=156
fi

PROMPT="%B%F{${DARK_COLOR}} %n%f%b in %F{${LIGHT_COLOR}}%~%f %F{015}"


export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"

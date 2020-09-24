# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/nigma/.oh-my-zsh"

ZSH_THEME="cdimascio-lambda"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git zsh-completions flutter sdk archlinux gradle gitignore colored-man-pages adb)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# Compilation flags
#export ARCHFLAGS="-arch x86_64"

# Android SDK and ADB stuff
export ANDROID_HOME=/opt/android-sdk
export "PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools"
export "PATH=${PATH}:${ANDROID_HOME}/tools/bin"


# Flutter SDK
export FLUTTER_HOME=$HOME/../dev-lab/flutter
export "PATH=${PATH}:${FLUTTER_HOME}/bin"

# Dart
export DART_HOME=$HOME/../dev-lab/dart-sdk
export "PATH=${PATH}:${DART_HOME}/bin"

# Doom Emacs
export "PATH=${PATH}:${HOME}/.emacs.d/bin"

# Deno 
export DENO_INSTALL="${HOME}/.deno"
export PATH="${DENO_INSTALL}/bin:${PATH}"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/nigma/.sdkman"
[[ -s "/home/nigma/.sdkman/bin/sdkman-init.sh" ]] && source "/home/nigma/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

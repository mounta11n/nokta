#source ~/.bashrc

export PATH=/home/yazan/.local/bin:/.local/bin:/usr/local/bin:/home/yazan/.local/bin/carbonyl.d:/usr/lib/ccache/bin:/home/yazan/.cargo/bin:/opt/cuda/bin:$PATH


export DBRN="$HOME/Deepbrain"
export MODELS="$HOME/Deepbrain/models/llms"
export NOKTA="$HOME/syngit/nokta"
export SECURE="$HOME/syngit/secure"
export SYNGIT="$HOME/syngit"
export ZSH="$HOME/.oh-my-zsh"

export DISABLE_AUTO_TITLE='true'
export LANG=de_DE.UTF-8
export XDG_CONFIG_HOME="$HOME/.config"
export MANPATH="/usr/local/man:$MANPATH"
export CACA_DRIVER="ncurses"

# lynx configs
export LYNX_CFG="$HOME/.config/lynx/lynx.cfg"
export LYNX_SAVE_SPACE="$HOME/Schreibtisch"
#export LYNX_AUTO_SESSION:TRUE

# autoenv configs
export AUTOENV_ENV_FILENAME=".autoenv"
export AUTOENV_ENABLE_LEAVE=true
export AUTOENV_ENV_LEAVE_FILENAME=".autoenv.leave"
export AUTOENV_ASSUME_YES=true
#source ~/.autoenv/activate.sh

# llamacpp and nvidia and cuda specific
#export CUDA_HOME=/usr/local/cuda
#export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:$LD_LIBRARY_PATH
export CMAKE_PREFIXPATH=/usr/include/google/protobuf:${CMAKE_PREFIX_PATH}


source $ZSH/oh-my-zsh.sh
source $NOKTA/aliases-public
source $SECURE/aliases-private
source $SECURE/.env

# temporary
source /home/yazan/.config/oatmeal/oatmeal1.sh
source /home/yazan/.config/oatmeal/oatmeal2.sh


# omz configs
zstyle ':omz:update' mode reminder
ZSH_THEME="robbyrussell"
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256
DISABLE_LS_COLORS="false"
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git wd z)
#plugins=(direnv git systemadmin systemd wd z zsh-interactive-cd zsh-navigation-tools)


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='nvim'
fi


# Compilation flags
export ARCHFLAGS="-arch x86_64"
export LLAMA_CUDA=1


eval "$(starship init zsh)"

eval "$(direnv hook zsh)"

# pnpm
export PNPM_HOME="/home/yazan/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

#curl https://am.i.mullvad.net/connected

# curl https://am.i.mullvad.net/ip
# curl https://am.i.mullvad.net/city
# curl https://am.i.mullvad.net/country
#

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/yazan/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/yazan/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/home/yazan/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/yazan/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


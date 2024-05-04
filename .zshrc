export PATH=$HOME/bin:/$HOME/.local/bin:/usr/local/bin:/home/yazan/.local/bin/carbonyl.d:/usr/lib/ccache/bin:$HOME/.cargo/bin:/opt/cuda/bin:$PATH


export MODELS="$HOME/Deepbrain/models/llms"
export NOKTA="$HOME/syngit/nokta"
export SECURE="$HOME/syngit/secure"
export SYNGIT="$HOME/syngit"
export ZSH="$HOME/.oh-my-zsh"

export AUTOENV_ENV_FILENAME=".autoenv"
export AUTOENV_ENABLE_LEAVE=true
export AUTOENV_ENV_LEAVE_FILENAME=".autoenv.leave"
export AUTOENV_ASSUME_YES=true

export LANG=de_DE.UTF-8
export XDG_CONFIG_HOME="$HOME/.config"
export MANPATH="/usr/local/man:$MANPATH"


source $NOKTA/aliases-public
source $SECURE/aliases-private
source $SECURE/.env


# omz configs
ZSH_THEME="robbyrussell"
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"
DISABLE_LS_COLORS="false"
DISABLE_UNTRACKED_FILES_DIRTY="true"
zstyle ':omz:update' mode reminder
plugins=(git direnv)
source $ZSH/oh-my-zsh.sh
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi


# Compilation flags
export ARCHFLAGS="-arch x86_64"
export LLAMA_CUDA=1


eval "$(starship init zsh)"


# pnpm
export PNPM_HOME="/home/yazan/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


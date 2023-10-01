

export ZSH="$HOME/.oh-my-zsh" # Path to your oh-my-zsh installation.
export SYNGIT=""
export NOKTA=""
export SECURE=""
export AUTOENV_ENV_FILENAME=".autoenv"
export AUTOENV_ENABLE_LEAVE=true
export AUTOENV_ENV_LEAVE_FILENAME=".autoenv.leave"
export AUTOENV_ASSUME_YES=true
export LANG=de_DE.UTF-8
export HOMEBREW_NO_ENV_HINTS
export CUSTOM_ID="Example @ MyComputer"

ZSH_THEME="beyond" # customized "half-life" and "bira" theme
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"
DISABLE_LS_COLORS="false"
DISABLE_UNTRACKED_FILES_DIRTY="true"

zstyle ':omz:update' mode reminder # ':omz:update' frequency 13 # ':omz:update' mode disabled # ':omz:update' mode auto
plugins=(git colorize) # plugins are in $ZSH/plugins/ # add custom plugins to $ZSH_CUSTOM/plugins/

source $ZSH/oh-my-zsh.sh


# User configuration
ZSH_COLORIZE_STYLE="lightbulb"
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

source $NOKTA/which-device.env
source $NOKTA/aliases-public
source $SECURE/aliases-private
source $SECURE/.env
source '/usr/local/opt/autoenv/activate.sh'



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/yazanagha-schrader/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/yazanagha-schrader/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/yazanagha-schrader/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/yazanagha-schrader/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#conda update conda





####################

# export PATH=$HOME/bin:/usr/local/bin:$PATH# If you come from bash you might have to change your $PATH
# export MANPATH="/usr/local/man:$MANPATH"
# export ARCHFLAGS="-arch x86_64" # Compilation flags
# ZSH_CUSTOM=/path/to/new-custom-folder # use another custom folder than $ZSH/custom?

# DISABLE_MAGIC_FUNCTIONS="true" # Uncomment if pasting URLs and other text is messed up
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# HIST_STAMPS="mm/dd/yyyy"

####################

### AUTOENV ###
# Before sourceing activate.sh, you can set the following variables:
# AUTOENV_AUTH_FILE: Authorized env files; defaults to ~/.autoenv_authorized if it exists, otherwise, ~/.local/state/autoenv/authorized_list
# AUTOENV_NOTAUTH_FILE: Env files not authorized to be sourced; defaults to a file in the same directory as ~/.autoenv_authorized (master branch only)
# AUTOENV_ENV_FILENAME: Name of the .env file; defaults to .env
# AUTOENV_LOWER_FIRST: Set this variable to a non-empty string to flip the order of .env files executed
# AUTOENV_ENV_LEAVE_FILENAME: Name of the .env.leave file; defaults to .env.leave
# AUTOENV_ENABLE_LEAVE: Set this to a non-empty string in order to enable source env when leaving
# AUTOENV_ASSUME_YES: Set this variable to a non-empty string to silently authorize the initialization of new environments
# AUTOENV_VIEWER: Program used to display env files prior to authorization; defaults to cat (master branch only)
# AUTOENV_PRESERVE_CD: Set this variable to a non-empty string to prevent the cd builtin from being overridden (to active autoenv, you must invoke autoenv_init within a cd function of your own) (master branch only)

####################


export PROMPT="╭─$PROMPT"

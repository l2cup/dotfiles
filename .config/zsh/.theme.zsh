ZSH_THEME="powerlevel10k/powerlevel10k"


unset -m 'POWERLEVEL9K_*'

typeset -g POWERLEVEL9K_MODE="nerdfont-complete"

#Newline after every prompt
typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

#Transparent background and whitespace settings
typeset -g POWERLEVEL9K_BACKGROUND=
typeset -g POWERLEVEL9K_{LEFT,RIGHT}_{LEFT,RIGHT}_WHITESPACE=  # no surrounding whitespace
typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SUBSEGMENT_SEPARATOR=' '  # separate segments with a space
typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SEGMENT_SEPARATOR=        # no end-of-line symbol

#Pure prompt char, colors for success and error
typeset -g POWERLEVEL9K_PROMPT_CHAR="❯"
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VICMD_FOREGROUND=6
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VIVIS}_FOREGROUND=2
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VICMD_FOREGROUND=1
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VIVIS}_FOREGROUND=1
typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=''

#Elements
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(background_jobs dir_writable dir vcs newline root_indicator status prompt_char)
typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=

#Empty prefixes and sufixes for clearner look
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=
typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX=
typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=

typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_SUFIX=
typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_SUFIX=
typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_SUFIX=

# The left end of left prompt.
typeset -g POWERLEVEL9K_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL=
# The right end of right prompt.
typeset -g POWERLEVEL9K_RIGHT_PROMPT_LAST_SEGMENT_END_SYMBOL=

#Sudo icons configuration
typeset -g POWERLEVEL9K_ICON_BEFORE_CONTENT=true

typeset -g POWERLEVEL9K_ROOT_ICON="\uF09C"
typeset -g POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 

#Time format configuration
typeset -g POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"

#VCS icons configuration
typeset -g POWERLEVEL9K_VCS_MAX_SYNC_LATENCY_SECONDS=0

typeset -g POWERLEVEL9K_VCS_BACKENDS=(git)
typeset -g POWERLEVEL9K_VCS_GIT_ICON=
typeset -g POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uF408'
typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND=2
typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=2
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=3
typeset -g POWERLEVEL9k_VCS_VISUAL_IDENTIFIER_COLOR=3
typeset -g POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='⇣'
typeset -g POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='⇡'
typeset -g POWERLEVEL9K_VCS_UNSTAGED_ICON='!'
typeset -g POWERLEVEL9K_VCS_STAGED_ICON='+'
typeset -g POWERLEVEL9K_VCS_STASH_ICON='*'
typeset -g POWERLEVEL9K_VCS_COMMIT_ICON='@'
typeset -g POWERLEVEL9K_HIDE_BRANCH_ICON=true

#Folder icons configuration
typeset -g POWERLEVEL9K_HOME_ICON=''
typeset -g POWERLEVEL9K_HOME_SUB_ICON=''
typeset -g POWERLEVEL9K_FOLDER_ICON=''
typeset -g POWERLEVEL9K_ETC_ICON=''

#Directory background configuration
typeset -g POWERLEVEL9K_DIR_FOREGROUND=10

#Left indentation = 0
typeset -g ZLE_RPROMPT_INDENT=0

##########################[ status: exit code of the last command ]###########################
# Enable OK_PIPE, ERROR_PIPE and ERROR_SIGNAL status states to allow us to enable, disable and
# style them independently from the regular OK and ERROR state.
typeset -g POWERLEVEL9K_STATUS_EXTENDED_STATES=true

# Status on success. No content, just an icon. No need to show it if prompt_char is enabled as
# it will signify success by turning green.
typeset -g POWERLEVEL9K_STATUS_OK=false
typeset -g POWERLEVEL9K_STATUS_OK_FOREGROUND=2
typeset -g POWERLEVEL9K_STATUS_OK_VISUAL_IDENTIFIER_EXPANSION=''

# Status when some part of a pipe command fails but the overall exit status is zero. It may look
# like this: 1|0.
typeset -g POWERLEVEL9K_STATUS_OK_PIPE=true
typeset -g POWERLEVEL9K_STATUS_OK_PIPE_FOREGROUND=2
typeset -g POWERLEVEL9K_STATUS_OK_PIPE_VISUAL_IDENTIFIER_EXPANSION=''

# Status when it's just an error code (e.g., '1'). No need to show it if prompt_char is enabled as
# it will signify error by turning red.
typeset -g POWERLEVEL9K_STATUS_ERROR=true
typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND=1
typeset -g POWERLEVEL9K_STATUS_ERROR_VISUAL_IDENTIFIER_EXPANSION=''

# Status when the last command was terminated by a signal.
typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL=true
typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_FOREGROUND=1
# Use terse signal names: "INT" instead of "SIGINT(2)".
typeset -g POWERLEVEL9K_STATUS_VERBOSE_SIGNAME=false
typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_VISUAL_IDENTIFIER_EXPANSION=''

# Status when some part of a pipe command fails and the overall exit status is also non-zero.
# It may look like this: 1|0.
typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE=true
typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE_FOREGROUND=1
typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE_VISUAL_IDENTIFIER_EXPANSION=''

####################ZSH SYNTAX HIGHLIGHT ##################

typeset -A ZSH_HIGHLIGHT_STYLES
typeset -g ZSH_HIGHLIGHT_STYLES[path]='fg=cyan, bold'

typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=default
typeset -g POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
typeset -g POWERLEVEL9K_SHORTEN_DELIMITER=".."


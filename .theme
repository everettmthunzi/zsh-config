#!/bin/zsh

# .theme:
#     A custome theme based on the POWERLEVEL10K
# author: Everett
# created: 2020-11-04 14:35
# Github: https://github.com/antiqueeverett/

antigen theme romkatv/powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

() {
  # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  # CONFIGURATION:
  # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  emulate -L zsh -o extended_glob
  autoload -Uz is-at-least && is-at-least 5.1 || return
  unset -m '(POWERLEVEL9K_*|DEFAULT_USER)~POWERLEVEL9K_GITSTATUS_DIR'

  # font
  typeset -g POWERLEVEL9K_MODE=nerdfont-complete
  typeset -g POWERLEVEL9K_ICON_PADDING=moderate

  # set icons before content on both sides
  typeset -g POWERLEVEL9K_ICON_BEFORE_CONTENT=true

  # new empty line before prompt
  typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=false

  # connect left and right prompt using
  typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=
  typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX=
  typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_SUFFIX=
  typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_SUFFIX=
  typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_SUFFIX=

  # end left and right prompt segments using
  typeset -g POWERLEVEL9K_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL=
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_LAST_SEGMENT_END_SYMBOL=


  # directory hyperlink
  typeset -g POWERLEVEL9K_DIR_HYPERLINK=false

  # ????
  typeset -g POWERLEVEL9K_SHOW_CHANGESET=true
  typeset -g POWERLEVEL9K_CHANGESET_HASH_LENGTH=6

  # transient prompt
  typeset -g POWERLEVEL9K_TRANSIENT_PROMPT=always
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=verbose


  # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  # LEFT PROMPT SEGMENTS:
  # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)

  # general aesthetic
  typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SUBSEGMENT_SEPARATOR=' '  # separate segments with a space
  # typeset -g POWERLEVEL9K_BACKGROUND=                            # transparent background
  # typeset -g POWERLEVEL9K_{LEFT,RIGHT}_{LEFT,RIGHT}_WHITESPACE=  # no surrounding whitespace
  # typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SEGMENT_SEPARATOR=        # no end-of-line symbol

  # prompt prefix 
  typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=true
  typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{243}\uf120 "
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION=''
  typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=243    # pass
  typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=124 # fail

  # Prompt symbol in command vi mode.
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VICMD_CONTENT_EXPANSION='❮'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIVIS_CONTENT_EXPANSION='V'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIOWR_CONTENT_EXPANSION='▶'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_OVERWRITE_STATE=true

  # No line terminator if prompt_char is the last segment.
  typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=''

  # No line introducer if prompt_char is the first segment.
  typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL=

  # shorten directory
  typeset -g POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

  # /etc/ 
  typeset -g POWERLEVEL9K_ETC_ICON=
  typeset -g POWERLEVEL9K_DIR_ETC_FOREROUND='130'
  typeset -g POWERLEVEL9K_DIR_ETC_BACKGROUND='clear'

  # root -
  typeset -g POWERLEVEL9K_FOLDER_ICON=''
  typeset -g POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='130'
  typeset -g POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='clear'

  # home|user 狀
  typeset -g POWERLEVEL9K_HOME_ICON="%F{130}\uf02c "
  typeset -g POWERLEVEL9K_HOME_ICON_BACKGROUND='clear'

  # user|folder 
  typeset -g POWERLEVEL9K_HOME_SUB_ICON=' '
  typeset -g POWERLEVEL9K_DIR_HOME_BACKGROUND='clear'

  # leading tilde -
  typeset -g POWERLEVEL9K_HOME_FOLDER_ABBREVIATION=''

  # directory path delimiter 
  typeset -g POWERLEVEL9K_DIR_PATH_SEPARATOR='   '
  typeset -g POWERLEVEL9K_SHORTEN_DELIMITER="%F{239} \uf0c50 "

  # home, user, tilder, delimiter color
  typeset -g POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='000'
  typeset -g POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='130'

  # forbidden directory lock icon
  typeset -g POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='000'
  typeset -g POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='130'

  # directory path and subversion segment delimiter ????
  typeset -g POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=' -- '

  # nvm
  typeset -g POWERLEVEL9K_NVM_FOREGROUND='239'
  typeset -g POWERLEVEL9K_NVM_BACKGROUND='clear'
  typeset -g POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-remotebranch git-tagname)

  # VCS:
  typeset -g POWERLEVEL9K_VCS_GIT_ICON='  '
  typeset -g POWERLEVEL9K_VCS_GIT_GITHUB_ICON='  '
  typeset -g POWERLEVEL9K_VCS_BRANCH_ICON=' '
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_ICON=ﰗ
  typeset -g POWERLEVEL9K_VCS_UNSTAGED_ICON=ﰖ
  typeset -g POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=⇣
  typeset -g POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=⇡
  typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND='034'
  typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='124'
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='124'
  typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND='clear'
  typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='clear'
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='clear'
  typeset -g POWERLEVEL9K_VCS_{STAGED,UNSTAGED,UNTRACKED,CONFLICTED,COMMITS_AHEAD,COMMITS_BEHIND}_MAX_NUM=-1
  typeset -g POWERLEVEL9K_VCS_BACKENDS=(git)
  # typeset -g POWERLEVEL9K_VCS_VISUAL_IDENTIFIER_COLOR=76
  # typeset -g POWERLEVEL9K_VCS_LOADING_VISUAL_IDENTIFIER_COLOR=244
  # typeset -g POWERLEVEL9K_VCS_MAX_INDEX_SIZE_DIRTY=-1

  # <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  # RIGHT PROMPT SEGMENTS:
  # <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time nvm dir_writable time load public_ip)

  # exit status
  # typeset -g POWERLEVEL9K_STATUS_EXTENDED_STATES=true
  # typeset -g POWERLEVEL9K_STATUS_VERBOSE=false
  typeset -g POWERLEVEL9K_STATUS_OK=true
  typeset -g POWERLEVEL9K_STATUS_OK_VISUAL_IDENTIFIER_EXPANSION="%F{246} "
  typeset -g POWERLEVEL9K_STATUS_OK_PIPE=true
  typeset -g POWERLEVEL9K_STATUS_OK_PIPE_FOREGROUND='246'
  typeset -g POWERLEVEL9K_STATUS_OK_PIPE_VISUAL_IDENTIFIER_EXPANSION="%F{246} "
  typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE=true
  typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE_FOREGROUND=160
  typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE_VISUAL_IDENTIFIER_EXPANSION=
  typeset -g POWERLEVEL9K_STATUS_ERROR=true
  typeset -g POWERLEVEL9K_STATUS_ERROR_VISUAL_IDENTIFIER_EXPANSION=
  typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL=true
  typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_FOREGROUND=160
  typeset -g POWERLEVEL9K_STATUS_VERBOSE_SIGNAME=false
  typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_VISUAL_IDENTIFIER_EXPANSION=
  typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND='clear'
  typeset -g POWERLEVEL9K_STATUS_OK_BACKGROUND='clear'
  typeset -g POWERLEVEL9K_STATUS_BACKGROUND='clear'

  # segment separator
  typeset -g POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="%F{246} |"

  # # execution time
  typeset -g POWERLEVEL9K_EXECUTION_TIME_ICON='神'
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=0
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FORMAT='d h m s'
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='246'
  typeset -g POWERLEVEL9K_COMMAND_BACKGROUND_JOBS_FOREGROUND='246'
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='clear'
  typeset -g POWERLEVEL9K_COMMAND_BACKGROUND_JOBS_BACKGROUND='clear'
  #typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_VISUAL_IDENTIFIER_EXPANSION=

  # time
  typeset -g POWERLEVEL9K_TIME_FOREGROUND='246'
  typeset -g POWERLEVEL9K_TIME_BACKGROUND='clear'
  typeset -g POWERLEVEL9K_TIME_UPDATE_ON_COMMAND=true
  typeset -g POWERLEVEL9K_TIME_VISUAL_IDENTIFIER_EXPANSION=
  typeset -g POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uf455  %d.%m.%y}"

  # load
  typeset -g POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR='246'
  typeset -g POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR='124'
  typeset -g POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR='124'
  typeset -g POWERLEVEL9K_LOAD_NORMAL_BACKGROUND='clear'
  typeset -g POWERLEVEL9K_LOAD_WARNING_BACKGROUND='clear'
  typeset -g POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND='clear'

  # public
  typeset -g POWERLEVEL9K_PUBLIC_IP_FOREGROUND='246'
  typeset -g POWERLEVEL9K_PUBLIC_IP_BACKGROUND='clear'
  typeset -g POWERLEVEL9K_PUBLIC_IP_VISUAL_IDENTIFIER_EXPANSION=' '

  # # Todo color.
  # typeset -g POWERLEVEL9K_TODO_FOREGROUND=110
  # typeset -g POWERLEVEL9K_TODO_HIDE_ZERO_TOTAL=true
  # typeset -g POWERLEVEL9K_TODO_HIDE_ZERO_FILTERED=false

  # # privilege context
  # typeset -g POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=178
  # typeset -g POWERLEVEL9K_CONTEXT_{REMOTE,REMOTE_SUDO}_FOREGROUND=180
  # typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND=180
  # typeset -g POWERLEVEL9K_CONTEXT_ROOT_TEMPLATE='%B%n@%m'
  # typeset -g POWERLEVEL9K_CONTEXT_{REMOTE,REMOTE_SUDO}_TEMPLATE='%n@%m'
  # typeset -g POWERLEVEL9K_CONTEXT_TEMPLATE='%n@%m'

  # # always show context (remove to set true)
  # typeset -g POWERLEVEL9K_CONTEXT_{DEFAULT,SUDO}_{CONTENT,VISUAL_IDENTIFIER}_EXPANSION=

}

# color map oneliner: for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done

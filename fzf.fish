set -l color00 '#1F1F1F'
set -l color01 '#F44336'
set -l color02 '#e75a50'
set -l color03 '#a99b7a'
set -l color04 '#6d6d6d'
set -l color05 '#77838a'
set -l color06 '#b6b6b6'
set -l color07 '#efebdc'
set -l color08 '#929292'
set -l color09 '#f44336'
set -l color0A '#e75a50'
set -l color0B '#a99b7a'
set -l color0C '#6d6d6d'
set -l color0D '#77838a'
set -l color0E '#b6b6b6'
set -l color0F '#efebdc'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"

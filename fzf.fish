set -l color00 '#1F1F1F'
set -l color01 '#F44336'
set -l color02 '#e75a50'
set -l color03 '#dd726a'
set -l color04 '#df7e76'
set -l color05 '#e18a84'
set -l color06 '#db9e9a'
set -l color07 '#F9F5F4'
set -l color08 '#929292'
set -l color09 '#fe9088'
set -l color0A '#f6a39d'
set -l color0B '#f1b6b2'
set -l color0C '#f3c2be'
set -l color0D '#f5cfcc'
set -l color0E '#f4dedd'
set -l color0F '#ffffff'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"

catppuccin_rosewater="#f2d5cf"
catppuccin_flamingo="#eebebe"
catppuccin_pink="#f4b8e4"
catppuccin_mauve="#ca9ee6"
catppuccin_red="#e78284"
catppuccin_maroon="#ea999c"
catppuccin_peach="#ef9f76"
catppuccin_yellow="#e5c890"
catppuccin_green="#a6d189"
catppuccin_teal="#81c8be"
catppuccin_sky="#99d1db"
catppuccin_sapphire="#85c1dc"
catppuccin_blue="#8caaee"
catppuccin_lavender="#babbf1"
catppuccin_text="#c6d0f5"
catppuccin_subtext1="#b5bfe2"
catppuccin_subtext0="#a5adce"
catppuccin_overlay2="#949cbb"
catppuccin_overlay1="#838ba7"
catppuccin_overlay0="#737994"
catppuccin_surface2="#626880"
catppuccin_surface1="#51576d"
catppuccin_surface0="#414559"
catppuccin_base="#303446"
catppuccin_mantle="#292c3c"
catppuccin_crust="#232634"

if [ "$CATPPUCCIN_FLAVOR" = "frappe" ]; then
    source ${0:A:h}/catppuccin-flavors/catppuccin-frappe.zsh
elif [ "$CATPPUCCIN_FLAVOR" = "latte" ]; then
    source ${0:A:h}/catppuccin-flavors/catppuccin-latte.zsh
elif [ "$CATPPUCCIN_FLAVOR" = "macchiato" ]; then
    source ${0:A:h}/catppuccin-flavors/catppuccin-macchiato.zsh
else
    source ${0:A:h}/catppuccin-flavors/catppuccin-mocha.zsh
fi


PROMPT="%(?:%F{${catppuccin_green}}%1{➜%} :%F{${catppuccin_red}}%1{➜%} )"
if [ "$CATPPUCCIN_SHOW_TIME" = true ];
then
  PROMPT+="%F{${catppuccin_mauve}}%T%  "
fi

PROMPT+="%F{${catppuccin_pink}}%n%  "
PROMPT+="%F{${catppuccin_blue}}%~%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{${catppuccin_teal}}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{${catppuccin_teal}}) %F{${catppuccin_yellow}}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{${catppuccin_teal}}) %F{${catppuccin_green}}%1{✔%}"

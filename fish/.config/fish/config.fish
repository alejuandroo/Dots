if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx EDITOR nvim
end


function fish_prompt -d "Write out the prompt"
    printf '%s' (set_color yellow) $USER ' ' \
      (set_color brwhite) $PWD (set_color brblue    ) (fish_git_prompt) \
      (set_color normal ) \n'> '
end

alias vim=nvim
abbr --add v vim
abbr --add gs git status
abbr --add gd git diff
abbr --add gdd "git diff | delta --side-by-side"

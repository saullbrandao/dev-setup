function ls --wraps='eza --icons -l --group-directories-first' --description 'alias ls eza --icons -l --group-directories-first'
    eza --icons -l --group-directories-first $argv
end

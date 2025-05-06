function la --wraps=ls --wraps='eza --icons -l --group-directories-first -a' --description 'alias la eza --icons -l --group-directories-first -a'
    eza --icons -l --group-directories-first -a $argv
end

function ll --wraps ls --description "List contents of directory using long format"
    command exa --group-directories-first -lh $argv
end

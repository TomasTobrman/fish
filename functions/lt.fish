function lt --wraps ls --description  "List contents of directory using recursive tree format"
	command exa --group-directories-first -T $argv
end

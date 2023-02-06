# slightly shorten the syntax for launch remote vscode sessions
function scode
   code --remote ssh-remote+"$argv[1]" "$argv[2]"
end

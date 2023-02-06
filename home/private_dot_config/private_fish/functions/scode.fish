function scode --wraps code
   code --remote ssh-remote+"$argv[1]" "$argv[2]"
end

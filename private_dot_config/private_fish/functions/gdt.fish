function gdt -d "delete a git tag locally and remotely"
  git tag -d $argv[1]
  git push origin :refs/tags/{$argv[1]}
end

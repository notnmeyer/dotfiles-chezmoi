function glog
  git log --pretty=format:"* %an: %s" -$argv
end

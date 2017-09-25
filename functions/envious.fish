function envious -d "Source a directory of env files"
  for file in $argv
    set varname (basename "$file")
    set -q $varname
      or set -gx $varname (cat $file)
  end
end

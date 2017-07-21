function init -a path --on-event init_envious
  for file in ~/.envious.d/**
    set varname (basename "$file")
    set -q $varname
      or set -gx $varname (cat $file)
  end
end

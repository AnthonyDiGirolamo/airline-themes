#!/usr/bin/env fish
set THEMEDIR ~/.vim/bundle/vim-airline-themes/autoload/airline/themes
set OUTFILE (pwd)/vim-airline-theme-palettes.json
cd $THEMEDIR
set THEME_NAMES (ls *.vim | sort)

echo '{' > $OUTFILE

for f in $THEME_NAMES
  set CS (basename -s .vim $f)
  vim -c "AirlineTheme $CS | e $OUTFILE | call append('\$', '\"$CS\":') | call append('\$', json_encode(airline#themes#$CS#palette)) | wq"
  # if not last theme
  if not string match -q $f $THEME_NAMES[-1]
    echo ',' >> $OUTFILE
  end
end

echo '}' >> $OUTFILE

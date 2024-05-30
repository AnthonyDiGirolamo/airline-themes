#!/usr/bin/env fish
set OUTFILE (pwd)/vim-airline-theme-palettes.json
set -a THEMEDIRS ~/.vim/bundle/vim-catppuccin/autoload/airline/themes
set -a THEMEDIRS ~/.vim/bundle/vim-airline-themes/autoload/airline/themes

echo '{' > $OUTFILE

for THEMEDIR in $THEMEDIRS
    cd $THEMEDIR
    set THEME_NAMES (ls *.vim | sort)

    for f in $THEME_NAMES
        set CS (basename -s .vim $f)
        vim -c "AirlineTheme $CS | e $OUTFILE | call append('\$', '\"$CS\":') | call append('\$', json_encode(airline#themes#$CS#palette)) | wq"
        if string match -q $f $THEME_NAMES[-1] && string match -q $THEMEDIR $THEMEDIRS[-1]
            # last theme entry
        else
            echo ',' >> $OUTFILE
        end
    end

end

echo '}' >> $OUTFILE

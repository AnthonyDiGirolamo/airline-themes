#!/usr/bin/env fish

set index 1
rm -f *-cropped.png
rm -f theme-*.png
for f in (ls 2*.png | sort)
    set outfile (basename -s .png $f)-cropped.png
    set filegroup $filegroup $outfile
    echo $outfile

    if test 0 -eq (math "$index % 4") 1>/dev/null
        convert -gravity South -crop x89+0+0 $f $outfile
        set concatedfilenumber (printf "%03d" (math $index/4))
        montage $filegroup -mode concatenate -tile 1x4 theme-$concatedfilenumber.png
        set -e filegroup
        echo
    else
        convert -gravity South -crop x44+0+44 $f $outfile
    end

    set index (math $index+1)
end

#!/usr/bin/env fish

set index 1
rm -f *-cropped.png
rm -f theme-*.png
for f in (ls 2*.png | sort)
    set outfile (basename -s .png $f)-cropped.png
    set filegroup $filegroup $outfile

    if math "$index % 4 == 0" 1>/dev/null
        convert -gravity South -crop x92+0+0 $f $outfile
        montage $filegroup -mode concatenate -tile 1x4 theme-(printf "%03d" (math $index/4)).png
        set -e filegroup
    else
        convert -gravity South -crop x46+0+46 $f $outfile
    end

    set index (math $index+1)
end

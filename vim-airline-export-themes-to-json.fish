#!/usr/bin/env fish
set outfile vim-airline-theme-palettes.json
echo '{' > $outfile

for f in (ls *.vim)
  set cs (basename -s .vim $f)
  vim -c "let g:airline_theme='$cs' | e $outfile | call append('\$', '\"$cs\":') | call append('\$', json_encode(airline#themes#$cs#palette)) | call append('\$', ',')| wq"
end

echo '}' >> $outfile

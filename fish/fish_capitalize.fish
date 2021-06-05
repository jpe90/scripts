#!/usr/bin/env fish
for i in *.hs
    mv -v "$i" (echo $i | sed 's/[^ _-]*/\u&/g')
end

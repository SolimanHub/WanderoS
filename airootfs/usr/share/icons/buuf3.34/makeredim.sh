for SIZE in 16x16 22x22 24x24 32x32 48x48; do cp -r 128x128 $SIZE && find $SIZE -type l -lname '*' -printf 'ln -sf $(readlink %p | sed s/128x128/'"$SIZE"'/) %p;\n' > script.sh && chmod u+x script.sh && ./script.sh && rm ./script.sh; done
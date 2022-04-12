mkdir build -p

IFS=$'\n'
for i in $(seq 1 23); do
    echo "Compiling chapter $i"
    convert $(find Ch$i -maxdepth 1 -type f | sort -V) build/Ch$i.pdf
done

# echo "Compiling single pdf"
# pdfunite $(ls -1v build/Ch*) build/TGT.pdf

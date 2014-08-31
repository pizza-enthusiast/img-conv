#! /bin/bash

# cp /home/thomas/scripts/img-conv/img-conv.sh /usr/local/bin/img-conv ; chmod a+x /usr/local/bin/img-conv

echo "What image is coming in (no periods):"
read input

echo "What image is going out (no periods):"
read output

outdir=./$output
mkdir $outdir

convert *.$input -set filename: "%t" $outdir/%[filename:].$output

pwd && ls $outdir

#!/bin/bash

HTTP="/"
OUTPUT="index.html" 

i=0
echo "<h2>Binary builds for phayes' github projects</h2>" > $OUTPUT
echo "<UL>" >> $OUTPUT
for filepath in `find "." -maxdepth 4 -mindepth 2 -not -path '*/\.*' -type f | sort`; do
  echo "<LI><a href=\"/bin/$filepath\">$filepath</a></LI>" >> $OUTPUT
done
echo "</UL>" >> $OUTPUT

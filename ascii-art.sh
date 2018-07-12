#!/bin/sh

#Set variables
datetime=`date +%d/%m/%Y:%H:%M:%S`

#Set header variable
read -r -d '' header << EOF
  --------------------------------------------------
/ Welcome Varayut! It's now $datetime     \\
\ Happy coding and have a lovely day!! 😊 ❤️ 🌈 🦄      /
  --------------------------------------------------
EOF

#Set image variable
read -r -d '' image << "EOF"
    \
     \  (` /
       /      `\
      |  d  b   |
      =\  Y    =/--..-='````'-.
        '.=__.-'               `\
           o/                 /\ \
            |                 | \ \   / )
             \    .--''`\    <   \ '-' /
            //   |      ||    \   '---'
           ((,,_/      ((,,___/
EOF

#Print out both header and image
echo "  $header\n    $image"

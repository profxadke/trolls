#!/bin/bash

# Function to generate a frame with a specific mouth variation
generate_frame() {
  mouth_top=$1
  mouth_middle=$2
  mouth_bottom=$3
  frame=$(cat << EOF

       ░░░░░░░░░░░░░░
     ░░░▒▒▓▓▒▒▒▓▓▓▒▒░░░
    ░▒▒▒▓▓▓██████▓▓▓▒▒░░
   ░░▒▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▒░░
   ░▒▓▓▒▒▒▒▒▓▓▓▓▒▒▒▒▓▓▒▒░
   ░▒▓▒░  ░▒▒▓▓▒▒   ▒▓▓▒░  FFFFFF
   ░░▒▓▒░    ░░░   ░▒▓▓░░  F       U    U
   ░░░▓▒░░░░░▒▒░░░░░▒▓░░░  F       U    U
      ░▒▒▒░░▒▒█▒▒░░▒▒░     FFFFF   U    U
     ░▒█▓▒▒▒░░█▒██▓▓▒▒░    F       U    U
     ░▒▒█▒▓▒░░░▒█▓▓▒▒░░    F       U    U
      ░░▒▒▒▓▓▓▓▓▓░▓▒░░     F       UUUUUU
         ▒▓░▓░ ▒░ ░▒░                     - @profxadke
        ░▒ █ $mouth_top █ ░
        ▒▐ ▌$mouth_middle▐ ▐ ▒
        ░▒ ▌▌$mouth_bottom▌▐▐▒░
         ░▒▓▌▓ ▐▓▓▒░
          ░ ░░▒▒░░░

EOF
);
  echo "$frame"
};

# Arrays of mouth variations for a scarier laugh animation
mouth_variations_top=(
  "░░ "
  "▒ ▒"
  "▓▓▓"
  "░ ▒░"
  " ▒▒"
  "░ ░"
  "░▒ ░"
  "▓▓ "
  "▒ ▒"
  " ░░"
  "▒▒ "
  " ▓▓"
);

mouth_variations_middle=(
  "   "
  "░ ░"
  "▒ ▒"
  " ▓▓"
  "░░ "
  "   "
  "░░░"
  "▒ ▒"
  "▓▓▓"
  "░░░"
  " ▒▒"
  "▓ ▓"
);

mouth_variations_bottom=(
  "░ "
  " ▒"
  "▓▓"
  "░ "
  "▒▒"
  " ▓"
  "░░"
  "▒▒"
  "▓▓"
  "░░"
  "▒ "
  " ▓"
);

while :; do
  for i in "${!mouth_variations_top[@]}"; do
    clear
    generate_frame "${mouth_variations_top[$i]}" "${mouth_variations_middle[$i]}" "${mouth_variations_bottom[$i]}"
    sleep 0.02
  done
done

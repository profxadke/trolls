#!/bin/bash

# Define the ASCII art
frames=(
    ""
    "H"
    "He"
    "Hel"
    "Hell"
    "Hello"
    "Hello "
    "Hello W"
    "Hello Wo"
    "Hello Wor"
    "Hello Worl"
    "Hello World"
    "Hello World!"
    "Hello World! "
    "Hello World! T"
    "Hello World! Th"
    "Hello World! Thi"
    "Hello World! This"
    "Hello World! This "
    "Hello World! This i"
    "Hello World! This is"
    "Hello World! This is "
    "Hello World! This is P"
    "Hello World! This is pr"
    "Hello World! This is prof"
    "Hello World! This is prof"
    "Hello World! This is profx"
    "Hello World! This is profxa"
    "Hello World! This is profxa"
    "Hello World! This is profxad"
    "Hello World! This is profxad"
    "Hello World! This is profxadk"
    "Hello World! This is profxadke"
    "Hello World! This is profxadke"
    "Hello World! This is profxadk"
    "Hello World! This is profxadk"
    "Hello World! This is profxad"
    "Hello World! This is profxad"
    "Hello World! This is profxa"
    "Hello World! This is profxa"
    "Hello World! This is pro"
    "Hello World! This is pr"
    "Hello World! This is P"
    "Hello World! This is "
    "Hello World! This is"
    "Hello World! This i"
    "Hello World! This "
    "Hello World! This"
    "Hello World! Thi"
    "Hello World! Th"
    "Hello World! T"
    "Hello World! "
    "Hello World!"
    "Hello World"
    "Hello Worl"
    "Hello Wor"
    "Hello Wo"
    "Hello W"
    "Hello "
    "Hello"
    "Hell"
    "Hel"
    "He"
    "H"
    ""
)

color='\e[35m'  # This sets the color to purple

# Function to clear the terminal screen
clear_screen() {
    tput reset
}

# Function to display the frames with a specific color
display_frames() {
    for frame in "${frames[@]}"; do
        clear_screen
        echo -e "${color}${frame}\e[0m"
        sleep 0.06  # Adjust the delay for animation speed
    done
}

# Main program
while :; do
  display_frames
done

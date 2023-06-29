# get cursor position from terminal
echo -n "    "                  # Set position to 5 xD
echo -en '\033[6n'              # Sending the request to the terminal
read -s -d 'R' position         # Capturing the terminal's response
position="${position#*[}"       # Remove everything before the first '['

#vertical (row)
vertical_position="${position%;*}"
#horhorizontal (column)
horizontal_position="${position#*;}"

# Displaying the obtained cursor position
echo 
echo "The current cursor position is: $position"
echo "vertical_position: ${vertical_position}"
echo "horizontal_position: ${horizontal_position}"

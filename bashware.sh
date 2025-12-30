#!/bin/bash

# cp bashware.sh /usr/bin/bashware
# chmod +x /usr/bin/bashware
# bashware 
# OR 
# chmod +x bashware.sh
# ./bashware.sh

echo -E "
__________                 .__     __      __                        
\______   \_____     ______|  |__ /  \    /  \_____  _______   ____  
 |    |  _/\__  \   /  ___/|  |  \\   \/\/   /\__  \ \_  __ \_/ __ \ 
 |    |   \ / __ \_ \___ \ |   Y  \\        /  / __ \_|  | \/\  ___/ 
 |______  /(____  //____  >|___|  / \__/\  /  (____  /|__|    \___  >
        \/      \/      \/      \/       \/        \/             \/ "


echo -e "A Semi-Interactive Diceware Inspired Passphrase Generator. Copyright 2024 [redacted]\n"
echo -e " -Read more about Diceware at https://theworld.com/~reinhold/diceware.html."
echo -e " -Visit the EFF at https://www.eff.org!\n"
echo -e "Uses EFF Large Wordlist and a default word count of 7.\n"
# Select, confirm, or download wordlist
read -p "Path to wordlist? (ENTER for default) " WORDLIST
WORDLIST=${WORDLIST:-"/usr/share/wordlists/eff_large_wordlist.txt"}
echo -e "\tUsing $WORDLIST"
# Check for wordlist, offer to download if not present
if ! test -f $WORDLIST; then
  read -p "Wordlist $WORDLIST not found! Download default from Electronic Freedom Foundation now? (Y/n) " ANSWER
  case $ANSWER in
    [Yy]* )
      sudo wget https://www.eff.org/files/2016/07/18/eff_large_wordlist.txt -O "$WORDLIST"
      ;;
    [Nn]* )
      echo "No wordlist, no passphrase."
      echo "Try again with a valid wordlist."
      exit
      ;;
    * )
      read -p "Invalid response. Please enter Y/y for yes or N/n for no. (Y/n) " ANSWER
      case $ANSWER in
        [Yy]* )
          sudo wget https://www.eff.org/files/2016/07/18/eff_large_wordlist.txt -O "$WORDLIST"
          echo "Downloaded the EFF Large Wordlist and saved to /usr/share/wordlists/eff_large_wordlist.txt"
          ;;
        [Nn]* )
          echo "No wordlist, no passphrase."
          echo "Exiting..."
          ;;
        * )
            echo "Invalid response. Exiting..."
            exit
            ;;
        esac    
  esac
fi

# Prompt user for the number of words desired
read -p "Desired length of passphrase? (ENTER for default) " NUM_WORDS
NUM_WORDS=${NUM_WORDS:-7}
echo -e "\tUsing $NUM_WORDS words."
echo -e "\nYour $NUM_WORDS word passphrase is:\n"

# Roll the "dice" NUM_WORDS times.
for ((i=1; i<=$NUM_WORDS; i++)); do
  # 5 digit int comprised of 1-6 between 11111-66666
  RANDOM_NUMBER=$(head /dev/urandom | tr -dc '1-6' | fold -w 1 | head -n 5 | paste -sd '')

  # Read the corresponding line from the wordlist
  WORD=$(grep $RANDOM_NUMBER /usr/share/wordlists/eff_large_wordlist.txt | awk -F ' ' '{print $2}')
    echo -n "${WORD^} "
done
echo -e "\n"
exit

# TODO: 
# [ ] Shadow stdout and copy to clipboard.
# [ ] Integrate with KeePass* or create encrypted spreadsheet.
# [ ] Get min word length right.

# Copyright 2024-present [redacted]'
# Use it. Improve it. Distribute it.

# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the “Software”), to deal in
# the Software without restriction, including without limitation the rights to use,
# copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the
# Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.

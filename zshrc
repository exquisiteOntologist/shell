# Load the 'init.sh' first.
source ~/dev/shell/scripts/init.sh

# before this runs we need to brew install fd
# https://dev.to/ranelpadon/how-and-why-you-should-split-your-bashrc-or-zshrc-files-4f22

# Find all .sh files in ~/dev/shell/scripts, exclude 'init.sh'.
FILES_STR=$(fd --glob '*.sh' --exclude 'init.sh' ~/dev/shell/scripts)

# 'tr' is a find-and-replace utility.
# Outer () will convert the output of $() to array.
FILES=($(echo $FILES_STR | tr '\n' ' '))

for FILE in $FILES; do
    source $FILE
done

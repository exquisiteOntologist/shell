# Load the 'init.sh' first.
source ~/dev/shell/scripts/init.sh

# Find all '.sh' files in ~/dev/shell/scripts, exclude 'init.sh'.
FILES_STR=$(find ~/dev/shell/scripts -name '*.sh' -not -name 'init.sh')

# `tr` is a find-and-replace utility.
# Outer () will convert the output of $() to array.
FILES=($(echo $FILES_STR | tr '\n' ' '))

for FILE in $FILES; do
    source $FILE
done

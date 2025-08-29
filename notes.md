# .sh format

## shfmt install

sudo apt install -y shfmt

## Format all .sh files in a folder

shfmt -w ./*.sh

## If you have subfolders as well:

shfmt -w .

## Just review (without changing anything)

shfmt -d .

## With find (in case you have many scripts in several folders)

find . -name "*.sh" -exec shfmt -w {} \;

## Useful Options

-i 4 → Uses 4-space indentation (default is 8).

-ci → Correctly indents cases.

-sr → Splits long commands into multiple lines.
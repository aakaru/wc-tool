# A simple WC Tool Automation Script

A simple bash script that mimics the functionality of the Unix/Linux `wc` (word count) command.

## Overview

This script counts the number of lines, words, and bytes in text, either from a file or from standard input.

## Features

- Counts lines, words, and bytes
- Accepts input from a file or standard input (stdin)
- Returns formatted output similar to the standard `wc` command
- Provides error handling for non-existent files

## Usage

### Process a file

```bash
./wc_script.sh filename.txt
```

This will output the line count, word count, byte count, and the filename.

### Process standard input

```bash
cat filename.txt | ./wc_script.sh
```
or
```bash
echo "Hello World" | ./wc_script.sh
```

This will output just the line count, word count, and byte count.

## Output Format

- For file input: `[lines] [words] [bytes] [filename]`
- For stdin input: `[lines] [words] [bytes]`

## Example

```bash
$ ./wc_script.sh sample.txt
5 20 120 sample.txt

$ echo "Hello World" | ./wc_script.sh
1 2 12
```

## Installation

1. Save the script to a file (e.g., `wc_script.sh`)
2. Make it executable:
   ```bash
   chmod +x wc_script.sh
   ```
3. Run it as shown in the usage examples above

## Requirements

- Bash shell
- Standard Unix utilities (`cat`, `wc`)

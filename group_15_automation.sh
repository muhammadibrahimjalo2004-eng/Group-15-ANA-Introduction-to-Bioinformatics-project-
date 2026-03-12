#!/bin/bash

# 1. Configuration
REPO_URL="https://github.com/muhammadibrahimjalo2004-eng/Group-15-ANA-Introduction-to-Bioinformatics-project-"
OUTPUT_FILE="group_members.csv"

# 2. Add the CSV Header
echo "Name,Email,Slack Username,Area of Interest" > "$OUTPUT_FILE"

# 3. Execution Logic
echo "Processing scripts..."

# JavaScript (Muhammad.js) - Requires Node.js
node Muhammad.js | paste -sd "," - >> "$OUTPUT_FILE"

# R (dorathy_info.R)
Rscript dorathy_info.R | paste -sd "," - >> "$OUTPUT_FILE"

# Python (sodiq_info.py)
python3 sodiq_info.py | paste -sd "," - >> "$OUTPUT_FILE"

# C++ (member4_info.cpp) - Compile then run
g++ member4_info.cpp -o member4_exec
./member4_exec | paste -sd "," - >> "$OUTPUT_FILE"
rm member4_exec # Cleanup

# PHP (member5_info.php)
php member5_info.php | paste -sd "," - >> "$OUTPUT_FILE"

echo "Success! CSV generated in $OUTPUT_FILE"

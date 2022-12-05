#!/usr/bin/env bash
# set -xv
# set -euo pipefail
# IFS=$'\n\t'

# 1. grab the latest 300
for i in {1..3}
do
    curl \
        -H "Accept: application/vnd.github+json" \
        -H "Authorization: Bearer ${GITHUB_TOKEN}" \
        "https://api.github.com/repos/ghuntley/mops/stargazers?per_page=100&page=${i}" | jq '.[].html_url' 1> response.tmp 2>/dev/null

    # 2. convert to markdown    
    cat response.tmp | \
        sed 's/"https/* https/g' | \
        tr -d '"' >> stargazers-ghuntley-mops-md.tmp

done

# 3. append to markdown
cat stargazers-ghuntley-mops-md.tmp stargazers-ghuntley-mops.md | \
    sort -n | \
    uniq > stargazers-ghuntley-mops.tmp

mv stargazers-ghuntley-mops.tmp stargazers-ghuntley-mops.md

# 4. clean up
rm *.tmp
#!/bin/bash
VAULT="../filmdone-vault"
CONTENT="./src/content"

# Clean target dirs first so removed/renamed vault files don't linger
rm -rf "$CONTENT/gallery" "$CONTENT/insights" "$CONTENT/analysis" "$CONTENT/proposals"
mkdir -p "$CONTENT/gallery" "$CONTENT/insights" "$CONTENT/analysis" "$CONTENT/proposals"

find "$VAULT/01_gallery/" -name "*.md" -exec cp {} "$CONTENT/gallery/" \; 2>/dev/null
find "$VAULT/02_skill_insight/" -name "*.md" -exec cp {} "$CONTENT/insights/" \; 2>/dev/null
find "$VAULT/90_analysis/weekly/" -name "*.md" -exec cp {} "$CONTENT/analysis/" \; 2>/dev/null
find "$VAULT/91_proposals/" -name "*.md" -exec cp {} "$CONTENT/proposals/" \; 2>/dev/null

echo "동기화 완료: $(find "$CONTENT" -name '*.md' | wc -l)개 파일"

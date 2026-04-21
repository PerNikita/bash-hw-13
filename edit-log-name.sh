#!/bin/bash

SEARCH_LOG=$(find *log)

for file in $SEARCH_LOG; do
	NAME=$(echo "$file" | cut -d'.' -f1)
	EXT=$(echo "$file" | cut -d'.' -f2)
	RENAME=$(mv "$file" "${NAME}$(date +_%F_%H:%M.)${EXT}")
done

echo -e "Файлы переименованы\n---------------\n $SEARCH_LOG"

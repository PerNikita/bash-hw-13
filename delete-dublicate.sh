TEXT=$(cat text-error.txt  | awk '{
    for (i=1; i<=NF; i++) {
        if (!seen[$i]++) {
            printf "%s ", $i
        }
    }
    print ""
}')
echo $TEXT

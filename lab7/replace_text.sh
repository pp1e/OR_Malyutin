file=$1
search=$2
replace=$3

sed -i "s/$search/$replace/g" "$file"

